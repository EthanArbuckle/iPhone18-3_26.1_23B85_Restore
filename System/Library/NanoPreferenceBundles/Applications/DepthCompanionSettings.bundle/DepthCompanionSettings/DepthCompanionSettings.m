id SettingsHeaderView.init(specifier:)(void *a1)
{
  v77.receiver = v1;
  v77.super_class = type metadata accessor for SettingsHeaderView();
  v3 = objc_msgSendSuper2(&v77, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v3 setPreservesSuperviewLayoutMargins:1];
  v71 = a1;
  if ([a1 propertyForKey:PSIconImageKey])
  {
    sub_A2F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v73 = 0u;
    v74 = 0u;
  }

  v75 = v73;
  v76 = v74;
  if (*(&v74 + 1))
  {
    sub_2578(0, &qword_14940, UIImage_ptr);
    if (swift_dynamicCast())
    {
      v4 = v72;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_2190(&v75);
    v4 = 0;
  }

  v69 = v4;
  v5 = [objc_allocWithZone(UIImageView) initWithImage:v4];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setContentMode:1];
  v70 = v5;
  [v3 addSubview:v5];
  v6 = [objc_allocWithZone(UILabel) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setAdjustsFontForContentSizeCategory:1];
  v7 = objc_opt_self();
  v8 = [v7 hk_preferredFontForTextStyle:UIFontTextStyleLargeTitle symbolicTraits:32770];
  [v6 setFont:v8];

  if ([v71 propertyForKey:PSTitleKey])
  {
    sub_A2F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v73 = 0u;
    v74 = 0u;
  }

  v75 = v73;
  v76 = v74;
  if (*(&v74 + 1))
  {
    if (swift_dynamicCast())
    {
      v9 = sub_A154();

      goto LABEL_17;
    }
  }

  else
  {
    sub_2190(&v75);
  }

  v9 = 0;
LABEL_17:
  [v6 setText:v9];

  v10 = objc_opt_self();
  v11 = [v10 whiteColor];
  [v6 setTextColor:v11];

  [v6 setTextAlignment:1];
  [v6 setNumberOfLines:0];
  [v3 addSubview:v6];
  v12 = [objc_allocWithZone(UILabel) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setAdjustsFontForContentSizeCategory:1];
  v13 = [v7 hk_preferredFontForTextStyle:?];
  [v12 setFont:v13];

  if ([v71 propertyForKey:PSStaticHeaderTextKey])
  {
    sub_A2F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v73 = 0u;
    v74 = 0u;
  }

  v75 = v73;
  v76 = v74;
  if (!*(&v74 + 1))
  {
    sub_2190(&v75);
    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v14 = v7;
    v15 = 0;
    goto LABEL_25;
  }

  v14 = v7;
  v15 = sub_A154();

LABEL_25:
  [v12 setText:v15];

  v16 = [v10 whiteColor];
  [v12 setTextColor:v16];

  [v12 setTextAlignment:1];
  [v12 setNumberOfLines:0];
  [v3 addSubview:v12];
  v68 = objc_opt_self();
  sub_21F8(&qword_14930, &qword_AC00);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_AB00;
  v18 = [v70 topAnchor];
  v19 = [v3 layoutMarginsGuide];
  v20 = [v19 topAnchor];

  v67 = v14;
  v21 = [v14 hk_preferredFontForTextStyle:UIFontTextStyleTitle1 symbolicTraits:0x8000];
  [v21 _scaledValueForValue:34.0];
  v23 = v22;

  v24 = [v18 constraintEqualToAnchor:v20 constant:v23];
  *(v17 + 32) = v24;
  v25 = [v70 centerXAnchor];
  v26 = [v3 layoutMarginsGuide];
  v27 = [v26 centerXAnchor];

  v28 = [v25 constraintEqualToAnchor:v27];
  *(v17 + 40) = v28;
  v29 = [v70 widthAnchor];
  v30 = [v70 heightAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v17 + 48) = v31;
  v32 = [v70 widthAnchor];
  v33 = [v32 constraintEqualToConstant:60.0];

  *(v17 + 56) = v33;
  v34 = [v6 firstBaselineAnchor];
  v35 = [v70 bottomAnchor];

  v36 = [v67 hk_preferredFontForTextStyle:UIFontTextStyleTitle1 symbolicTraits:0x8000];
  [v36 _scaledValueForValue:34.0];
  v38 = v37;

  v39 = [v34 constraintEqualToAnchor:v35 constant:v38];
  *(v17 + 64) = v39;
  v40 = [v6 leadingAnchor];
  v41 = [v3 layoutMarginsGuide];
  v42 = [v41 leadingAnchor];

  v43 = [v40 constraintEqualToAnchor:v42];
  *(v17 + 72) = v43;
  v44 = [v6 trailingAnchor];
  v45 = [v3 layoutMarginsGuide];
  v46 = [v45 trailingAnchor];

  v47 = [v44 constraintEqualToAnchor:v46];
  *(v17 + 80) = v47;
  v48 = [v12 firstBaselineAnchor];
  v49 = [v6 lastBaselineAnchor];

  v50 = [v67 hk_preferredFontForTextStyle:UIFontTextStyleBody];
  [v50 _scaledValueForValue:26.0];
  v52 = v51;

  v53 = [v48 constraintEqualToAnchor:v49 constant:v52];
  *(v17 + 88) = v53;
  v54 = [v12 leadingAnchor];
  v55 = [v3 layoutMarginsGuide];
  v56 = [v55 leadingAnchor];

  v57 = [v54 constraintEqualToAnchor:v56];
  *(v17 + 96) = v57;
  v58 = [v12 trailingAnchor];
  v59 = [v3 layoutMarginsGuide];
  v60 = [v59 trailingAnchor];

  v61 = [v58 constraintEqualToAnchor:v60];
  *(v17 + 104) = v61;
  v62 = [v3 bottomAnchor];

  v63 = [v12 bottomAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  *(v17 + 112) = v64;
  sub_2578(0, &qword_14938, NSLayoutConstraint_ptr);
  isa = sub_A1E4().super.isa;

  [v68 activateConstraints:isa];

  return v3;
}

uint64_t sub_2190(uint64_t a1)
{
  v2 = sub_21F8(&qword_14928, &unk_AB10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21F8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id SettingsHeaderView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id SettingsHeaderView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SettingsHeaderView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id SettingsHeaderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id SettingsHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double SettingsHeaderView.preferredHeight(forWidth:)(double a1)
{
  [v1 directionalLayoutMargins];
  v4 = a1 - v3;
  [v1 directionalLayoutMargins];
  v6 = v4 - v5;
  LODWORD(v7) = 1148846080;
  LODWORD(v5) = 1112014848;
  [v1 systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v7, v5}];
  return v8;
}

uint64_t sub_2578(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

HKQuantityType sub_25E8(uint64_t a1, id *a2, HKQuantityType *a3)
{
  sub_2578(0, &qword_14C38, HKQuantityType_ptr);
  result.super.super.super.isa = sub_A254(*a2).super.super.super.isa;
  a3->super.super.super.isa = result.super.super.super.isa;
  return result;
}

uint64_t sub_2644(uint64_t a1, uint64_t a2)
{
  v3 = sub_A0B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_A0D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2578(0, &qword_14C18, OS_dispatch_queue_ptr);
  v13 = sub_A264();
  aBlock[4] = sub_5260;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_294C;
  aBlock[3] = &unk_108C8;
  v14 = _Block_copy(aBlock);

  sub_A0C4();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_5280(&qword_14C20, &type metadata accessor for DispatchWorkItemFlags);
  sub_21F8(&qword_14C28, &qword_ABF8);
  sub_52C8();
  sub_A304();
  sub_A274();
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_28F4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2DF0();
  }

  return result;
}

uint64_t sub_294C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2990()
{
  swift_beginAccess();
  notify_cancel(*(v0 + 60));

  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  return swift_deallocClassInstance();
}

void sub_2A3C()
{
  v1 = v0;
  v2 = HKProtectedHealthDatabaseDidBecomeAvailableNotification;
  sub_2578(0, &qword_14C18, OS_dispatch_queue_ptr);
  v3 = sub_A264();
  v4 = swift_allocObject();
  swift_weakInit();
  v6[4] = sub_5524;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_2BDC;
  v6[3] = &unk_109B8;
  v5 = _Block_copy(v6);

  swift_beginAccess();
  notify_register_dispatch(v2, (v1 + 56), v3, v5);
  swift_endAccess();
  _Block_release(v5);
}

uint64_t sub_2B68()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_2DF0();
    swift_beginAccess();
    notify_cancel(*(v1 + 56));
  }

  return result;
}

uint64_t sub_2BDC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_2C30()
{
  if (kHKNanoLifestylePrivacyPreferencesChangedNotification)
  {
    v1 = v0;
    sub_A174();
    sub_2578(0, &qword_14C18, OS_dispatch_queue_ptr);
    v2 = sub_A264();
    v3 = swift_allocObject();
    swift_weakInit();
    v6[4] = sub_551C;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_2BDC;
    v6[3] = &unk_10990;
    v4 = _Block_copy(v6);

    v5 = sub_A1A4();

    swift_beginAccess();
    notify_register_dispatch((v5 + 32), (v1 + 60), v2, v4);
    swift_endAccess();

    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2D98()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_39E8();
  }

  return result;
}

void sub_2DF0()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[8];
  v4 = v0[3];
  v5 = v1[4];
  v6 = v2;
  v7 = v3;
  v8 = sub_A154();
  v9 = [v7 stringForKey:v8];

  if (v9)
  {
    v10 = v1[10];
    v11 = objc_opt_self();

    v12 = [v11 unitFromString:v9];

    v32[0] = v12;
    sub_A074();
  }

  v13 = v1[5];
  v14 = v1[6];
  v15 = v1[8];
  v16 = sub_A154();
  v17 = [v15 stringForKey:v16];

  if (v17)
  {
    v18 = v1[11];
    v19 = objc_opt_self();

    v20 = [v19 unitFromString:v17];

    v32[0] = v20;
    sub_A074();
  }

  v21 = v1[2];
  sub_21F8(&qword_14930, &qword_AC00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AB70;
  if (qword_148D8 != -1)
  {
    swift_once();
  }

  v23 = qword_149D0;
  *(inited + 32) = qword_149D0;
  v24 = qword_148E0;
  v25 = v23;
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = qword_149D8;
  *(inited + 40) = qword_149D8;
  v27 = v26;
  sub_4D78(inited);
  swift_setDeallocating();
  v28 = *(inited + 16);
  swift_arrayDestroy();
  sub_2578(0, &qword_14C38, HKQuantityType_ptr);
  sub_5374();
  isa = sub_A224().super.isa;

  v30 = swift_allocObject();
  *(v30 + 16) = v1;
  *(v30 + 24) = v6;
  v32[4] = sub_5414;
  v32[5] = v30;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 1107296256;
  v32[2] = sub_390C;
  v32[3] = &unk_10918;
  v31 = _Block_copy(v32);

  [v21 preferredUnitsForQuantityTypes:isa completion:v31];
  _Block_release(v31);
}

uint64_t sub_316C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v5 = sub_A044();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_A0B4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_A0D4();
  v39 = *(v15 - 8);
  v40 = v15;
  v16 = *(v39 + 64);
  __chkstk_darwin();
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_148D8 != -1)
  {
    swift_once();
  }

  v19 = sub_369C(qword_149D0, a1);
  if (v19)
  {
    v20 = v19;
    v37 = v11;
    if (qword_148E0 != -1)
    {
      swift_once();
    }

    v21 = sub_369C(qword_149D8, a1);
    if (v21)
    {
      v22 = v21;
      sub_2578(0, &qword_14C18, OS_dispatch_queue_ptr);
      v23 = sub_A264();
      v24 = swift_allocObject();
      v24[2] = v38;
      v24[3] = v20;
      v24[4] = v22;
      aBlock[4] = sub_54B0;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_294C;
      aBlock[3] = &unk_10968;
      v25 = _Block_copy(aBlock);

      v26 = v20;
      v27 = v22;

      sub_A0C4();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_5280(&qword_14C20, &type metadata accessor for DispatchWorkItemFlags);
      sub_21F8(&qword_14C28, &qword_ABF8);
      sub_52C8();
      sub_A304();
      sub_A274();
      _Block_release(v25);

      (*(v37 + 8))(v14, v10);
      return (*(v39 + 8))(v18, v40);
    }
  }

  sub_A0E4();
  swift_errorRetain();
  v29 = sub_A034();
  v30 = sub_A244();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v31 = 136315138;
    if (a2)
    {
      swift_getErrorValue();
      v33 = sub_A494();
      v35 = v34;
    }

    else
    {
      v35 = 0xE300000000000000;
      v33 = 7104878;
    }

    v36 = sub_3B10(v33, v35, aBlock);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_0, v29, v30, "Failed to retrieve preferred depth units from HealthKit with error %s", v31, 0xCu);
    sub_541C(v32);
  }

  return (*(v6 + 8))(v9, v5);
}

void *sub_369C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_A434();

    if (v4)
    {
      sub_2578(0, &qword_14C48, HKUnit_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_4C60(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_3760(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 80);

  sub_A074();

  v6 = *(a1 + 88);
  v19 = a3;

  sub_A074();

  v7 = *(a1 + 80);
  v8 = *(a1 + 64);

  sub_A084();

  v9 = [v19 unitString];

  if (!v9)
  {
    sub_A174();
    v9 = sub_A154();
  }

  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = sub_A154();
  [v8 setObject:v9 forKey:v12];

  v13 = *(a1 + 88);
  v14 = *(a1 + 64);

  sub_A084();

  v15 = [v19 unitString];

  if (!v15)
  {
    sub_A174();
    v15 = sub_A154();
  }

  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = sub_A154();
  [v14 setObject:v15 forKey:v18];
}

void sub_390C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_2578(0, &qword_14C38, HKQuantityType_ptr);
  sub_2578(0, &qword_14C48, HKUnit_ptr);
  sub_5374();
  v6 = sub_A0F4();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_39E8()
{
  sub_A174();
  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = sub_A154();

  v3 = [v1 initWithSuiteName:v2];

  if (v3)
  {
    [v3 hk_BOOLForKey:kHKPrivacyPreferencesKeyEnableFitnessTracking defaultValue:1];
    v4 = *(v0 + 96);

    sub_A074();
  }

  else
  {
    result = sub_A444();
    __break(1u);
  }

  return result;
}

uint64_t sub_3B10(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_3BDC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_54BC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_541C(v11);
  return v7;
}

unint64_t sub_3BDC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_3CE8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_A3D4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_3CE8(uint64_t a1, unint64_t a2)
{
  v4 = sub_3D34(a1, a2);
  sub_3E64(&off_10878);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_3D34(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_3F50(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_A3D4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_A1C4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_3F50(v10, 0);
        result = sub_A3A4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_3E64(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_3FC4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_3F50(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_21F8(&qword_14C50, &qword_AC08);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_3FC4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_21F8(&qword_14C50, &qword_AC08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_40B8(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_A344();

    if (v9)
    {

      sub_2578(0, &qword_14C38, HKQuantityType_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_A334();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_42F0(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_44E0(v21 + 1);
    }

    v19 = v8;
    sub_4708(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_2578(0, &qword_14C38, HKQuantityType_ptr);
  v11 = sub_A2C4(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_478C(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_A2D4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

Swift::Int sub_42F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_21F8(&qword_14C58, &unk_AC10);
    v2 = sub_A384();
    v15 = v2;
    sub_A324();
    if (sub_A354())
    {
      sub_2578(0, &qword_14C38, HKQuantityType_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_44E0(v9 + 1);
        }

        v2 = v15;
        result = sub_A2C4(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_A354());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_44E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_21F8(&qword_14C58, &unk_AC10);
  result = sub_A374();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_A2C4(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_4708(uint64_t a1, uint64_t a2)
{
  sub_A2C4(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_A314();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_478C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_44E0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_48FC();
      goto LABEL_12;
    }

    sub_4A4C(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_A2C4(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_2578(0, &qword_14C38, HKQuantityType_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_A2D4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_A484();
  __break(1u);
}

id sub_48FC()
{
  v1 = v0;
  sub_21F8(&qword_14C58, &unk_AC10);
  v2 = *v0;
  v3 = sub_A364();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_4A4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_21F8(&qword_14C58, &unk_AC10);
  result = sub_A374();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_A2C4(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_4C60(uint64_t a1)
{
  v2 = v1;
  v4 = sub_A2C4(*(v2 + 40));

  return sub_4CA4(a1, v4);
}

unint64_t sub_4CA4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2578(0, &qword_14C38, HKQuantityType_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_A2D4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_4D78(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (1)
  {
    sub_2578(0, &qword_14C38, HKQuantityType_ptr);
    sub_5374();
    result = sub_A234();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_A3B4();
      }

      else
      {
        if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_40B8(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_A454();
  }

  v6 = result;
  v5 = sub_A454();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

void *sub_4EB8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_A284();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[3] = 0x6544646568636143;
  v2[4] = 0xEF74696E55687470;
  v2[5] = 0xD00000000000001ALL;
  v2[6] = 0x800000000000B750;
  v2[7] = 0;
  v2[9] = 0;
  if (qword_148D8 != -1)
  {
    swift_once();
  }

  result = _HKGenerateDefaultUnitForQuantityType();
  if (result)
  {
    v28 = result;
    v12 = sub_21F8(&qword_14C00, "H\b");
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v2[10] = sub_A094();
    if (qword_148E0 != -1)
    {
      swift_once();
    }

    result = _HKGenerateDefaultUnitForQuantityType();
    if (result)
    {
      v28 = result;
      v15 = *(v12 + 48);
      v16 = *(v12 + 52);
      swift_allocObject();
      v2[11] = sub_A094();
      LOBYTE(v28) = 1;
      v17 = sub_21F8(&qword_14C08, &qword_ABF0);
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      swift_allocObject();
      v2[12] = sub_A094();
      v2[8] = a2;
      v2[2] = a1;
      v20 = objc_opt_self();
      v21 = a2;
      v22 = a1;
      v23 = [v20 defaultCenter];
      v24 = v22;
      sub_A294();

      swift_allocObject();
      swift_weakInit();
      sub_5280(&qword_14C10, &type metadata accessor for NSNotificationCenter.Publisher);
      v25 = sub_A0A4();

      (*(v7 + 8))(v10, v6);
      v26 = v3[9];
      v3[9] = v25;

      sub_2A3C();
      sub_2C30();
      sub_2DF0();
      sub_39E8();
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_5220()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5268(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5280(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_52C8()
{
  result = qword_14C30;
  if (!qword_14C30)
  {
    sub_532C(&qword_14C28, &qword_ABF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14C30);
  }

  return result;
}

uint64_t sub_532C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_5374()
{
  result = qword_14C40;
  if (!qword_14C40)
  {
    sub_2578(255, &qword_14C38, HKQuantityType_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14C40);
  }

  return result;
}

uint64_t sub_53DC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_541C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_5468()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_54BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_554C()
{
  v1 = OBJC_IVAR____TtC22DepthCompanionSettings23DepthSettingsController____lazy_storage___healthUnitsStore;
  if (*(v0 + OBJC_IVAR____TtC22DepthCompanionSettings23DepthSettingsController____lazy_storage___healthUnitsStore))
  {
    v2 = *(v0 + OBJC_IVAR____TtC22DepthCompanionSettings23DepthSettingsController____lazy_storage___healthUnitsStore);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC22DepthCompanionSettings23DepthSettingsController_healthStore);
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 standardUserDefaults];
    type metadata accessor for HealthKitSettingsStore();
    swift_allocObject();
    v7 = v0;
    v2 = sub_4EB8(v5, v6);

    v8 = *(v0 + v1);
    *(v7 + v1) = v2;
  }

  return v2;
}

char *sub_562C(uint64_t a1, uint64_t a2, void *a3)
{

  v5 = OBJC_IVAR____TtC22DepthCompanionSettings23DepthSettingsController_common;
  type metadata accessor for DepthSettingsCommon();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v3[v5] = v6;
  v7 = OBJC_IVAR____TtC22DepthCompanionSettings23DepthSettingsController_healthStore;
  *&v3[v7] = [objc_allocWithZone(HKHealthStore) init];
  *&v3[OBJC_IVAR____TtC22DepthCompanionSettings23DepthSettingsController____lazy_storage___healthUnitsStore] = 0;
  if (&_swiftEmptyArrayStorage >> 62 && sub_A454())
  {
    v8 = sub_6F68(&_swiftEmptyArrayStorage);
  }

  else
  {
    v8 = &_swiftEmptySetSingleton;
  }

  *&v3[OBJC_IVAR____TtC22DepthCompanionSettings23DepthSettingsController_subscriptions] = v8;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for DepthSettingsController();
  v9 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", 0, 0);
  v10 = sub_554C()[10];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21F8(&qword_14C00, "H\b");
  sub_77EC(&qword_14CF0, &qword_14C00, "H\b");
  sub_A0A4();

  swift_beginAccess();
  sub_A054();
  swift_endAccess();

  v12 = *(*&v9[OBJC_IVAR____TtC22DepthCompanionSettings23DepthSettingsController____lazy_storage___healthUnitsStore] + 88);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_A0A4();

  swift_beginAccess();
  sub_A054();
  swift_endAccess();

  return v9;
}

void sub_58F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong reloadSpecifiers];
  }
}

uint64_t sub_59D0(int a1)
{
  v31 = a1;
  v2 = (*(*(sub_21F8(&qword_14CA8, &unk_AC48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v29 - v3;
  v5 = *(*(sub_9FC4() - 8) + 64);
  __chkstk_darwin();
  v6 = sub_9F54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(*(sub_A134() - 8) + 64);
  __chkstk_darwin();
  v29 = sub_9F64();
  v12 = *(v29 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DepthSettingsController();
  v30 = v1;
  v33.receiver = v1;
  v33.super_class = v16;
  objc_msgSendSuper2(&v33, "viewWillAppear:", v31 & 1);
  sub_A124();
  *v10 = v16;
  (*(v7 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v6);
  sub_9FB4();
  sub_9F74();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v19 = [v18 bundleIdentifier];
  if (v19)
  {
    v20 = v19;
    v21 = sub_A174();
    v23 = v22;

    v24 = [v18 bundleIdentifier];
    if (v24)
    {
      v25 = v24;
      sub_A174();

      strcpy(v32, "bridge:root=");
      HIBYTE(v32[6]) = 0;
      v32[7] = -5120;
      v34._countAndFlagsBits = v21;
      v34._object = v23;
      sub_A1B4(v34);
      sub_9F94();

      v26 = sub_9FA4();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v4, 1, v26) != 1)
      {

        sub_A014();
        sub_A004();

        (*(v27 + 8))(v4, v26);
        [v30 reloadSpecifiers];

        return (*(v12 + 8))(v15, v29);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  result = sub_A444();
  __break(1u);
  return result;
}

char *sub_5F70()
{
  v1 = *(*(sub_9FC4() - 8) + 64);
  __chkstk_darwin();
  v2 = *(*(sub_A134() - 8) + 64);
  __chkstk_darwin();
  v3 = type metadata accessor for DepthSettingsController();
  v31.receiver = v0;
  v31.super_class = v3;
  result = objc_msgSendSuper2(&v31, "specifiers");
  if (!result)
  {
    goto LABEL_15;
  }

  v5 = result;
  v6 = sub_A1F4();

  v7 = sub_6360(v6);

  if (v7 >> 62)
  {
    result = sub_A454();
    if (!result)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  result = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  if (result)
  {
LABEL_4:
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = sub_A3B4();
      goto LABEL_7;
    }

    if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
    {
      v8 = *(v7 + 32);
LABEL_7:
      v9 = v8;
      sub_A144();
      type metadata accessor for DepthSettingsCommon();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      sub_9FB4();
      sub_A194();
      v12 = sub_A154();

      [v9 setName:v12];

      goto LABEL_8;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

LABEL_8:
  sub_21F8(&qword_14930, &qword_AC00);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AC20;
  v14 = *&v0[OBJC_IVAR____TtC22DepthCompanionSettings23DepthSettingsController_common];
  sub_7BB8();
  *(v13 + 32) = v15;
  v30 = v13;
  sub_6654(v7);
  v16 = sub_554C();
  sub_84C0(v16);
  v18 = v17;

  sub_6654(v18);
  v19 = *&v0[OBJC_IVAR____TtC22DepthCompanionSettings23DepthSettingsController____lazy_storage___healthUnitsStore];

  sub_8A94(v20);
  v22 = v21;

  sub_6654(v22);
  v29[3] = v3;
  v29[0] = v0;
  v23 = v0;
  v24 = NSStringFromSelector("openUserGuide");
  sub_A174();

  sub_9010(v29);

  sub_541C(v29);
  sub_A1D4();
  if (*(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v30 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v28 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
    sub_A204();
  }

  sub_A214();
  v25 = v30;
  sub_6458(v30);
  isa = sub_A1E4().super.isa;

  [v23 setSpecifiers:{isa, v29[0]}];

  v27 = sub_6458(v25);

  return v27;
}

void *sub_6360(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v7 = &_swiftEmptyArrayStorage;
    sub_A404();
    v4 = a1 + 32;
    do
    {
      sub_54BC(v4, &v6);
      sub_2578(0, &qword_14CC0, PSSpecifier_ptr);
      swift_dynamicCast();
      sub_A3E4();
      v5 = v7[2];
      sub_A414();
      sub_A424();
      sub_A3F4();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

char *sub_6458(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_A454();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_6BFC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_A3B4();
        sub_2578(0, &qword_14CC0, PSSpecifier_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_6BFC((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_7760(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_2578(0, &qword_14CC0, PSSpecifier_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_6BFC((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_7760(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_6654(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_A454();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_A454();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_6B5C(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_6D2C(v9 + 8 * *(&dword_10 + v9) + 32, (*(&dword_18 + v9) >> 1) - *(&dword_10 + v9), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_67B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_A154();
  v5 = [v1 valueForKey:v4];

  if (v5)
  {
    sub_A2F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (!*(&v15 + 1))
  {
    sub_7700(v16, &qword_14928, &unk_AB10);
    goto LABEL_11;
  }

  sub_7760(v16, &v17);
  sub_21F8(&qword_14CB8, &unk_AC58);
  swift_dynamicCast();
  isa = sub_9FD4().super.isa;
  v7 = [v2 indexForIndexPath:isa];

  if ((v12 & 0xC000000000000001) != 0)
  {
    v8 = sub_A3B4();
    goto LABEL_9;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
  {
    v8 = *(v12 + 8 * v7 + 32);
LABEL_9:
    v9 = v8;

    v10 = sub_554C();
    sub_975C(v9, v10);

LABEL_11:
    v11 = sub_9FD4().super.isa;
    v13.receiver = v2;
    v13.super_class = type metadata accessor for DepthSettingsController();
    objc_msgSendSuper2(&v13, "tableView:didSelectRowAtIndexPath:", a1, v11);

    return;
  }

  __break(1u);
}

id sub_6A98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DepthSettingsController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_6B5C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_A454();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_A3C4();
  *v1 = result;
  return result;
}

char *sub_6BFC(char *a1, int64_t a2, char a3)
{
  result = sub_6C1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6C1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_21F8(&qword_14CC8, &qword_AC68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_6D2C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_A454();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_A454();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_77EC(&qword_14CD0, &qword_14CB8, &unk_AC58);
          for (i = 0; i != v6; ++i)
          {
            sub_21F8(&qword_14CB8, &unk_AC58);
            v9 = sub_6EE0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_2578(0, &qword_14CC0, PSSpecifier_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_6EE0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_A3B4();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_6F60;
  }

  __break(1u);
  return result;
}

unint64_t sub_6F68(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_A454();
    if (result)
    {
LABEL_3:
      sub_21F8(&qword_14CD8, qword_AC70);
      result = sub_A394();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_A454();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = (v3 + 7);
  v21 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    result = sub_A3B4();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v10 = v3[5];
    sub_A064();
    sub_7770(&qword_14CE0);
    result = sub_A104();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_7770(&qword_14CE8);
      while (1)
      {
        v22 = *(v3[6] + 8 * v12);
        result = sub_A114();
        if (result)
        {
          break;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_71D4()
{
  v1 = OBJC_IVAR____TtC22DepthCompanionSettings23DepthSettingsController_common;
  type metadata accessor for DepthSettingsCommon();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC22DepthCompanionSettings23DepthSettingsController_healthStore;
  *(v0 + v3) = [objc_allocWithZone(HKHealthStore) init];
  *(v0 + OBJC_IVAR____TtC22DepthCompanionSettings23DepthSettingsController____lazy_storage___healthUnitsStore) = 0;
  if (&_swiftEmptyArrayStorage >> 62 && sub_A454())
  {
    v4 = sub_6F68(&_swiftEmptyArrayStorage);
  }

  else
  {
    v4 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC22DepthCompanionSettings23DepthSettingsController_subscriptions) = v4;
  sub_A444();
  __break(1u);
}

uint64_t sub_7690(uint64_t a1, uint64_t a2)
{
  v4 = sub_21F8(&qword_14928, &unk_AB10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7700(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_21F8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_7760(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_7770(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_A064();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_77B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_77EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_532C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_7854(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

NSNumber sub_78E8()
{
  sub_2578(0, &qword_14CB0, NSNumber_ptr);
  result.super.super.isa = sub_A2B4(0).super.super.isa;
  qword_14D08 = result.super.super.isa;
  return result;
}

NSNumber sub_7950()
{
  sub_2578(0, &qword_14CB0, NSNumber_ptr);
  result.super.super.isa = sub_A2B4(1).super.super.isa;
  qword_14D20 = result.super.super.isa;
  return result;
}

NSNumber sub_79C0()
{
  sub_2578(0, &qword_14CB0, NSNumber_ptr);
  result.super.super.isa = sub_A2B4(0).super.super.isa;
  qword_14D38 = result.super.super.isa;
  return result;
}

uint64_t sub_7A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = *(*(sub_9FC4() - 8) + 64);
  __chkstk_darwin();
  v8 = *(*(sub_A134() - 8) + 64);
  __chkstk_darwin();
  sub_A144();
  type metadata accessor for DepthSettingsCommon();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_9FB4();
  result = sub_A194();
  *a4 = result;
  *a5 = v12;
  return result;
}

NSNumber sub_7B70()
{
  sub_2578(0, &qword_14CB0, NSNumber_ptr);
  result.super.super.isa = sub_A2B4(1).super.super.isa;
  qword_14D50 = result.super.super.isa;
  return result;
}

void sub_7BB8()
{
  v1 = *v0;
  v2 = *(*(sub_9FC4() - 8) + 64);
  __chkstk_darwin();
  v3 = *(*(sub_A134() - 8) + 64);
  __chkstk_darwin();
  v4 = objc_opt_self();
  v5 = sub_A154();
  v6 = [v4 groupSpecifierWithID:v5];

  if (v6)
  {
    type metadata accessor for SettingsHeaderView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v8)
    {
      sub_A174();
      v8 = sub_A154();
    }

    [v6 setProperty:v8 forKey:PSHeaderCellClassGroupKey];

    v9 = swift_getObjCClassFromMetadata();
    v10 = objc_opt_self();
    v11 = [v10 bundleForClass:v9];
    v12 = sub_A154();
    v13 = [objc_opt_self() imageNamed:v12 inBundle:v11];

    [v6 setProperty:v13 forKey:PSIconImageKey];
    sub_A144();
    type metadata accessor for DepthSettingsCommon();
    v14 = swift_getObjCClassFromMetadata();
    v15 = [v10 bundleForClass:v14];
    sub_9FB4();
    sub_A194();
    v16 = sub_A154();

    [v6 setProperty:v16 forKey:PSTitleKey];

    sub_A144();
    v17 = [v10 bundleForClass:v14];
    sub_9FB4();
    sub_A194();
    v18 = sub_A154();

    [v6 setProperty:v18 forKey:PSStaticHeaderTextKey];
  }

  else
  {
    __break(1u);
  }
}

void sub_7F60()
{
  v1 = *(*(sub_9FC4() - 8) + 64);
  __chkstk_darwin();
  v2 = *(*(sub_A134() - 8) + 64);
  __chkstk_darwin();
  v3 = *(v0 + 16);
  if (v3)
  {
    v4 = *(v0 + 16);
  }

  else
  {
    sub_2578(0, &qword_14C38, HKQuantityType_ptr);
    isa = sub_A254(HKQuantityTypeIdentifierUnderwaterDepth).super.super.super.isa;
    v6 = _HKGenerateDefaultUnitForQuantityType();

    if (!v6)
    {
      v6 = [objc_opt_self() meterUnit];
    }

    v4 = v6;
    v3 = 0;
  }

  v7 = v3;
  v8 = [v4 unitString];

  v9 = sub_A174();
  v11 = v10;

  v12 = [objc_opt_self() meterUnit];
  v13 = [v12 unitString];

  v14 = sub_A174();
  v16 = v15;

  if (v9 == v14 && v11 == v16)
  {

    v17 = 0xE100000000000000;
    v18 = 77;
  }

  else
  {
    v19 = sub_A474();

    if (v19)
    {
      v18 = 77;
    }

    else
    {
      v18 = 21574;
    }

    if (v19)
    {
      v17 = 0xE100000000000000;
    }

    else
    {
      v17 = 0xE200000000000000;
    }
  }

  v20 = [objc_opt_self() sharedInstance];
  if (!v20)
  {
    __break(1u);
    goto LABEL_28;
  }

  v21 = v20;
  v22 = [v20 getActivePairedDevice];

  if (!v22)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v23 = [v22 valueForProperty:NRDevicePropertyAbsoluteDepthLimit];

  if (v23)
  {
    sub_A2F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34[0] = v32;
  v34[1] = v33;
  if (*(&v33 + 1))
  {
    sub_2578(0, &qword_14CB0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v24 = sub_A2B4(6).super.super.isa;
      sub_A2D4();

      sub_21F8(&qword_14E50, "t\b");
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_AC90;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_9708();
      *(v25 + 32) = v18;
      *(v25 + 40) = v17;
      sub_A184();

      sub_A144();
      type metadata accessor for DepthSettingsCommon();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v27 = objc_opt_self();
      v28 = [v27 bundleForClass:ObjCClassFromMetadata];
      sub_9FB4();
      sub_A194();
      sub_A144();
      v29 = [v27 bundleForClass:ObjCClassFromMetadata];
      sub_9FB4();
      sub_A194();

      return;
    }
  }

  else
  {

    sub_2190(v34);
  }

  sub_A244();
  sub_2578(0, &qword_14E60, OS_os_log_ptr);
  v30 = sub_A2E4();
  sub_A024();
}

void sub_84C0(uint64_t a1)
{
  v2 = v1;
  v4 = *(*(sub_9FC4() - 8) + 64);
  __chkstk_darwin();
  v5 = *(*(sub_A134() - 8) + 64);
  __chkstk_darwin();
  v6 = objc_opt_self();
  v7 = sub_A154();
  sub_A144();
  type metadata accessor for DepthSettingsCommon();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_9FB4();
  sub_A194();
  v10 = sub_A154();

  v11 = [v6 groupSpecifierWithID:v7 name:v10];

  if (!v11)
  {
    __break(1u);
    return;
  }

  sub_2578(0, &qword_14CB0, NSNumber_ptr);
  isa = sub_A2A4(1).super.super.isa;
  [v11 setProperty:isa forKey:PSIsRadioGroupKey];

  if (qword_148E8 != -1)
  {
    swift_once();
  }

  v13 = qword_14CF8;
  v14 = qword_14D00;
  if (qword_148F0 != -1)
  {
    v38 = qword_14CF8;
    v39 = qword_14D00;
    swift_once();
    v14 = v39;
    v13 = v38;
  }

  v15 = qword_14D08;
  sub_955C(v13, v14, 0xD000000000000010, 0x800000000000BB70, qword_14D08);
  if (qword_148F8 != -1)
  {
    v40 = v16;
    swift_once();
    v16 = v40;
  }

  v46 = v16;
  v17 = qword_14D10;
  v18 = *algn_14D18;
  if (qword_14900 != -1)
  {
    v41 = qword_14D10;
    v42 = *algn_14D18;
    swift_once();
    v18 = v42;
    v17 = v41;
  }

  v19 = qword_14D20;
  v47 = v2;
  sub_955C(v17, v18, 0xD000000000000012, 0x800000000000BB90, qword_14D20);
  v21 = v20;
  v22 = a1;
  v23 = *(a1 + 80);

  sub_A084();

  v24 = objc_opt_self();
  v25 = v48;
  v26 = [v24 footUnit];
  sub_2578(0, &qword_14C48, HKUnit_ptr);
  v27 = sub_A2D4();

  if (v27)
  {

    v28 = v46;
    v29 = v46;
    v19 = v15;
    v30 = v21;
LABEL_13:
    [v11 setProperty:v29 forKey:{PSRadioGroupCheckedSpecifierKey, v46}];
    [v11 setProperty:v19 forKey:PSValueKey];
    goto LABEL_14;
  }

  v31 = [v24 meterUnit];
  v32 = sub_A2D4();

  v29 = v21;
  v28 = v46;
  v30 = v21;
  if (v32)
  {
    goto LABEL_13;
  }

LABEL_14:
  v33 = *(v22 + 80);

  sub_A084();

  v34 = *(v47 + 16);
  *(v47 + 16) = v48;

  v35 = v11;
  sub_A1D4();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v43 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_A204();
  }

  sub_A214();
  v36 = v28;
  sub_A1D4();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v44 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_A204();
  }

  sub_A214();
  v37 = v30;
  sub_A1D4();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v45 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_A204();
  }

  sub_A214();
}

void sub_8A94(uint64_t a1)
{
  v2 = *(*(sub_9FC4() - 8) + 64);
  __chkstk_darwin();
  v3 = *(*(sub_A134() - 8) + 64);
  __chkstk_darwin();
  v4 = objc_opt_self();
  v5 = sub_A154();
  sub_A144();
  type metadata accessor for DepthSettingsCommon();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_9FB4();
  sub_A194();
  v8 = sub_A154();

  v9 = [v4 groupSpecifierWithID:v5 name:v8];

  if (!v9)
  {
    __break(1u);
    return;
  }

  sub_2578(0, &qword_14CB0, NSNumber_ptr);
  isa = sub_A2A4(1).super.super.isa;
  [v9 setProperty:isa forKey:PSIsRadioGroupKey];

  if (qword_14908 != -1)
  {
    swift_once();
  }

  v11 = qword_14D28;
  v12 = qword_14D30;
  if (qword_14910 != -1)
  {
    v32 = qword_14D28;
    v33 = qword_14D30;
    swift_once();
    v12 = v33;
    v11 = v32;
  }

  v13 = qword_14D38;
  sub_955C(v11, v12, 0xD000000000000022, 0x800000000000BB20, qword_14D38);
  v15 = v14;
  if (qword_14918 != -1)
  {
    swift_once();
  }

  v16 = qword_14D40;
  v17 = *algn_14D48;
  if (qword_14920 != -1)
  {
    v34 = qword_14D40;
    v35 = *algn_14D48;
    swift_once();
    v17 = v35;
    v16 = v34;
  }

  v18 = qword_14D50;
  sub_955C(v16, v17, 0xD00000000000001FLL, 0x800000000000BB50, qword_14D50);
  v20 = v19;
  v21 = *(a1 + 88);

  sub_A084();

  v22 = objc_opt_self();
  v23 = v39;
  v24 = [v22 degreeFahrenheitUnit];
  sub_2578(0, &qword_14C48, HKUnit_ptr);
  v25 = sub_A2D4();

  if (v25)
  {

    v26 = v15;
    v18 = v13;
LABEL_13:
    [v9 setProperty:v26 forKey:PSRadioGroupCheckedSpecifierKey];
    [v9 setProperty:v18 forKey:PSValueKey];
    goto LABEL_14;
  }

  v27 = [v22 degreeCelsiusUnit];
  v28 = sub_A2D4();

  v26 = v20;
  if (v28)
  {
    goto LABEL_13;
  }

LABEL_14:
  v29 = v9;
  sub_A1D4();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v36 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_A204();
  }

  sub_A214();
  v30 = v15;
  sub_A1D4();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v37 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_A204();
  }

  sub_A214();
  v31 = v20;
  sub_A1D4();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v38 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_A204();
  }

  sub_A214();
}

void sub_9010(void *a1)
{
  v1 = *(*(sub_9FC4() - 8) + 64);
  __chkstk_darwin();
  v2 = *(*(sub_A134() - 8) + 64);
  __chkstk_darwin();
  sub_7F60();
  v5 = v4;
  v30 = v3;
  if (v3)
  {
    v6 = v3;
    sub_A144();
    type metadata accessor for DepthSettingsCommon();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_9FB4();
    sub_A194();
    sub_21F8(&qword_14E50, "t\b");
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_AC90;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_9708();
    *(v9 + 32) = v5;
    *(v9 + 40) = v6;

    sub_A164();
  }

  else
  {
    sub_A144();
    type metadata accessor for DepthSettingsCommon();
    v10 = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass:v10];
    sub_9FB4();
    sub_A194();
  }

  v12 = sub_A154();

  v13 = objc_opt_self();
  v14 = v12;
  v15 = sub_A154();
  v16 = [v13 groupSpecifierWithID:v15];

  if (v16)
  {
    sub_A144();
    type metadata accessor for DepthSettingsCommon();
    v17 = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass:v17];
    sub_9FB4();
    sub_A194();
    v19 = sub_A154();

    v20 = [v14 rangeOfString:v19];
    v22 = v21;

    v32.location = v20;
    v32.length = v22;
    v23 = NSStringFromRange(v32);
    if (!v23)
    {
      sub_A174();
      v23 = sub_A154();
    }

    sub_2578(0, &qword_14E48, PSFooterHyperlinkView_ptr);
    v24 = swift_getObjCClassFromMetadata();
    v25 = NSStringFromClass(v24);
    if (!v25)
    {
      sub_A174();
      v25 = sub_A154();
    }

    [v16 setProperty:v25 forKey:PSFooterCellClassGroupKey];

    [v16 setProperty:v14 forKey:PSFooterHyperlinkViewTitleKey];
    [v16 setProperty:v23 forKey:PSFooterHyperlinkViewLinkRangeKey];

    sub_96C4(a1, a1[3]);
    v26 = sub_A464();
    v27 = [objc_opt_self() valueWithNonretainedObject:v26];
    swift_unknownObjectRelease();
    [v16 setProperty:v27 forKey:PSFooterHyperlinkViewTargetKey];

    v28 = sub_A154();
    v29 = PSFooterHyperlinkViewActionKey;
    [v16 setProperty:v28 forKey:v29];

    if (v30)
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_955C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_opt_self();
  v8 = sub_A154();
  v9 = [v7 preferenceSpecifierNamed:v8 target:v5 set:0 get:0 detail:0 cell:3 edit:0];

  if (v9)
  {
    v10 = sub_A154();
    [v9 setProperty:v10 forKey:PSIDKey];

    [v9 setProperty:a5 forKey:PSValueKey];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_9668()
{

  return swift_deallocClassInstance();
}

void *sub_96C4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_9708()
{
  result = qword_14E58;
  if (!qword_14E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14E58);
  }

  return result;
}

void sub_975C(void *a1, uint64_t a2)
{
  v3 = [a1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_A174();
    v7 = v6;

    v8 = v5 == 0xD000000000000010 && 0x800000000000BB70 == v7;
    if (v8 || (sub_A474() & 1) != 0)
    {

      v9 = [objc_opt_self() footUnit];
      v10 = *(a2 + 80);
      v48 = v9;

      sub_A074();

      v11 = *(a2 + 80);

      sub_A084();

      v12 = v9;
      if (qword_148D8 != -1)
      {
        swift_once();
      }

      v13 = qword_149D0;
      v14 = *(a2 + 24);
      v15 = *(a2 + 32);
      v16 = *(a2 + 64);
      v17 = [v12 unitString];
      if (!v17)
      {
        sub_A174();
        v17 = sub_A154();
      }

      v18 = sub_A154();
      [v16 setObject:v17 forKey:v18];

      v19 = *(a2 + 16);
      v52 = nullsub_1;
      v53 = 0;
      v48 = _NSConcreteStackBlock;
      v49 = 1107296256;
      v20 = &unk_10A80;
LABEL_12:
      v50 = sub_7854;
      v51 = v20;
      v21 = _Block_copy(&v48);
      [v19 _setPreferredUnit:v12 forType:v13 completion:{v21, v48, v49}];
      _Block_release(v21);

      return;
    }

    v22 = v5 == 0xD000000000000012 && 0x800000000000BB90 == v7;
    if (v22 || (sub_A474() & 1) != 0)
    {

      v23 = [objc_opt_self() meterUnit];
      v24 = *(a2 + 80);
      v48 = v23;

      sub_A074();

      v25 = *(a2 + 80);

      sub_A084();

      v12 = v23;
      if (qword_148D8 != -1)
      {
        swift_once();
      }

      v13 = qword_149D0;
      v26 = *(a2 + 24);
      v27 = *(a2 + 32);
      v28 = *(a2 + 64);
      v29 = [v12 unitString];
      if (!v29)
      {
        sub_A174();
        v29 = sub_A154();
      }

      v30 = sub_A154();
      [v28 setObject:v29 forKey:v30];

      v19 = *(a2 + 16);
      v52 = nullsub_1;
      v53 = 0;
      v48 = _NSConcreteStackBlock;
      v49 = 1107296256;
      v20 = &unk_10A58;
      goto LABEL_12;
    }

    if (v5 == 0xD000000000000022 && 0x800000000000BB20 == v7 || (sub_A474() & 1) != 0)
    {

      v31 = [objc_opt_self() degreeFahrenheitUnit];
      v32 = *(a2 + 88);
      v48 = v31;

      sub_A074();

      v33 = *(a2 + 88);

      sub_A084();

      v12 = v31;
      if (qword_148E0 != -1)
      {
        swift_once();
      }

      v13 = qword_149D8;
      v34 = *(a2 + 40);
      v35 = *(a2 + 48);
      v36 = *(a2 + 64);
      v37 = [v12 unitString];
      if (!v37)
      {
        sub_A174();
        v37 = sub_A154();
      }

      v38 = sub_A154();
      [v36 setObject:v37 forKey:v38];

      v19 = *(a2 + 16);
      v52 = nullsub_1;
      v53 = 0;
      v48 = _NSConcreteStackBlock;
      v49 = 1107296256;
      v20 = &unk_10A30;
      goto LABEL_12;
    }

    if (v5 == 0xD00000000000001FLL && 0x800000000000BB50 == v7)
    {

LABEL_36:
      v40 = [objc_opt_self() degreeCelsiusUnit];
      v41 = *(a2 + 88);
      v48 = v40;

      sub_A074();

      v42 = *(a2 + 88);

      sub_A084();

      v12 = v40;
      if (qword_148E0 != -1)
      {
        swift_once();
      }

      v13 = qword_149D8;
      v43 = *(a2 + 40);
      v44 = *(a2 + 48);
      v45 = *(a2 + 64);
      v46 = [v12 unitString];
      if (!v46)
      {
        sub_A174();
        v46 = sub_A154();
      }

      v47 = sub_A154();
      [v45 setObject:v46 forKey:v47];

      v19 = *(a2 + 16);
      v52 = nullsub_1;
      v53 = 0;
      v48 = _NSConcreteStackBlock;
      v49 = 1107296256;
      v20 = &unk_10A08;
      goto LABEL_12;
    }

    v39 = sub_A474();

    if (v39)
    {
      goto LABEL_36;
    }
  }
}

uint64_t sub_9EF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}