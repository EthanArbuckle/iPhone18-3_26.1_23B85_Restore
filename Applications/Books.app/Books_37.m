uint64_t sub_1004DEA2C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_10079BC44();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v32[-v8];
  sub_1001F1160(&qword_100ADBD40);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_10080EFF0;
  v10 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v11 = v10;
    sub_10079B9A4();

    v12 = *(v4 + 104);
    v33 = enum case for ColorScheme.light(_:);
    v34 = v12;
    v12(v6);
    v13 = sub_10079BC34();
    v14 = *(v4 + 8);
    v14(v6, v3);
    v14(v9, v3);
    if (v13)
    {
      v15 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      v15 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    v16 = v15;

    *(v36 + 32) = v16;
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v11;
    sub_10079B9A4();

    v34(v6, v33, v3);
    v18 = sub_10079BC34();
    v14(v6, v3);
    v14(v9, v3);
    if (v18)
    {
      _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    v19 = v35;

    v20 = sub_10079DE24();

    *(v36 + 40) = v20;
    sub_10079E644();
    sub_10079E654();
    sub_10079E364();
    sub_10079BFE4();
    sub_10079E474();
    sub_10079BE54();
    v21 = v44;
    v38[2] = v44;
    v22 = v46;
    v23 = v46;
    v24 = v45;
    v25 = v45;
    v38[3] = v45;
    v38[4] = v46;
    *(v19 + 32) = v44;
    *(v19 + 48) = v24;
    *(v19 + 64) = v22;
    v26 = v43;
    v27 = v43;
    v28 = v42;
    v38[0] = v42;
    v38[1] = v43;
    *v19 = v42;
    *(v19 + 16) = v26;
    v29 = v47;
    v30 = v47;
    *(v19 + 80) = v47;
    v39 = v29;
    v41 = v30;
    v40[3] = v25;
    v40[4] = v23;
    v40[1] = v27;
    v40[2] = v21;
    v40[0] = v28;
    sub_1000077D8(v38, &v37, &qword_100ADBD50);
    return sub_100007840(v40, &qword_100ADBD50);
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_1004E0E88(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1004DEE6C()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v25[-v5];
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v25[-v12];
  sub_1007A2154();
  sub_100796C94();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  sub_1007A22D4();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  sub_1001F1160(&unk_100AD5090);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10080B690;
  v17 = sub_100341270(0, 255, 0, 1);
  if (v17 == _s5Books17REActionMenuStateC9pageCountSivpfi_0() || v17 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17 - 1;
  }

  v20 = sub_1007A06F4(v19);
  v22 = v21;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_10000E4C4();
  *(v16 + 32) = v20;
  *(v16 + 40) = v22;
  v23 = sub_1007A2224();

  return v23;
}

uint64_t sub_1004DF194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(sub_1001F1160(&qword_100AE7998) + 36);
  v5 = enum case for RoundedCornerStyle.continuous(_:);
  v6 = sub_10079C9E4();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(sub_1001F1160(&unk_100AE42C0) + 36)) = 256;
  return sub_1000077D8(a1, a2, &qword_100AE7978);
}

uint64_t sub_1004DF260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(sub_1001F1160(&qword_100AE79A0) + 36));
  v5 = *(sub_10079C3D4() + 20);
  v6 = enum case for RoundedCornerStyle.continuous(_:);
  v7 = sub_10079C9E4();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  *&v4[*(sub_1001F1160(&qword_100AD97F8) + 36)] = 256;
  return sub_1000077D8(a1, a2, &qword_100AE7978);
}

uint64_t sub_1004DF348(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v22[1] = a3;
  v7 = sub_1007A1C54();
  v26 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1007A1CA4();
  v10 = *(v25 - 8);
  __chkstk_darwin(v25);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for REScrubberView();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = *a1;
  sub_10000A7C4(0, &qword_100AD1E10);
  v17 = sub_1007A2D74();
  sub_1004E0B04(a2, v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for REScrubberView);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = swift_allocObject();
  sub_1004E0B6C(v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for REScrubberView);
  *(v19 + ((v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  aBlock[4] = v23;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = v24;
  v20 = _Block_copy(aBlock);

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1004E0E88(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v20);

  (*(v26 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v25);
}

uint64_t sub_1004DF704()
{
  type metadata accessor for REScrubberView();
  sub_1001F1160(&qword_100AD7168);
  return sub_10079E004();
}

void sub_1004DF77C(void *a1)
{
  v2 = UIAccessibilityAnnouncementNotification;
  v3 = sub_1007A2214();
  UIAccessibilityPostNotification(v2, v3);

  [a1 invalidate];
  v4 = qword_100AE7770;
  qword_100AE7770 = 0;
}

uint64_t sub_1004DF7FC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v43 = a3;
  v42 = sub_1001F1160(&qword_100AE7B60) - 8;
  __chkstk_darwin(v42);
  v39 = &v36 - v4;
  v40 = sub_1001F1160(&qword_100AE7B68) - 8;
  __chkstk_darwin(v40);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  __chkstk_darwin(v9);
  v37 = &v36 - v10;
  v11 = sub_1001F1160(&qword_100AE7B70);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v36 - v13;
  v15 = sub_1001F1160(&qword_100AE7B78);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v36 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v36 - v19;
  __chkstk_darwin(v21);
  v23 = &v36 - v22;
  v24 = sub_1001F1160(&qword_100AE7B80);
  v25 = *(*(v24 - 8) + 16);
  v25(v14, a1, v24);
  v26 = (v38 & 1) == 0;
  if (v38)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = 1.0;
  }

  *&v14[*(v12 + 44)] = v27;
  if (v26)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = 1.0;
  }

  sub_10020B3C8(v14, v20, &qword_100AE7B70);
  *&v20[*(v16 + 44)] = 0x3FF0000000000000;
  sub_10020B3C8(v20, v23, &qword_100AE7B78);
  v29 = v39;
  v25(v39, a1, v24);
  *(v29 + *(v42 + 44)) = 1;
  sub_10020B3C8(v29, v8, &qword_100AE7B60);
  *&v8[*(v40 + 44)] = v28;
  v30 = v37;
  sub_10020B3C8(v8, v37, &qword_100AE7B68);
  v31 = v36;
  sub_1000077D8(v23, v36, &qword_100AE7B78);
  v32 = v41;
  sub_1000077D8(v30, v41, &qword_100AE7B68);
  v33 = v43;
  sub_1000077D8(v31, v43, &qword_100AE7B78);
  v34 = sub_1001F1160(&qword_100AE7B88);
  sub_1000077D8(v32, v33 + *(v34 + 48), &qword_100AE7B68);
  sub_100007840(v30, &qword_100AE7B68);
  sub_100007840(v23, &qword_100AE7B78);
  sub_100007840(v32, &qword_100AE7B68);
  return sub_100007840(v31, &qword_100AE7B78);
}

uint64_t sub_1004DFC18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  *a2 = sub_10079E484();
  a2[1] = v6;
  v7 = sub_1001F1160(&qword_100AE7B50);
  sub_1004DF7FC(a1, v5, a2 + *(v7 + 44));
  result = sub_1001F1160(&qword_100AE7B58);
  *(a2 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_1004DFCBC()
{
  result = qword_100AE78C8;
  if (!qword_100AE78C8)
  {
    sub_1001F1234(&qword_100AE7858);
    sub_1004DFD74();
    sub_100005920(&qword_100AE78E0, &qword_100AE78E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE78C8);
  }

  return result;
}

unint64_t sub_1004DFD74()
{
  result = qword_100AE78D0;
  if (!qword_100AE78D0)
  {
    sub_1001F1234(&qword_100AE7850);
    sub_100005920(&qword_100AE78D8, &qword_100AE7848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE78D0);
  }

  return result;
}

unint64_t sub_1004DFE44()
{
  result = qword_100AE78F0;
  if (!qword_100AE78F0)
  {
    sub_1001F1234(&qword_100AE7870);
    sub_1004DFED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE78F0);
  }

  return result;
}

unint64_t sub_1004DFED0()
{
  result = qword_100AE78F8;
  if (!qword_100AE78F8)
  {
    sub_1001F1234(&qword_100AE7868);
    sub_1001F1234(&qword_100AE7858);
    sub_10079CCC4();
    sub_1004DFCBC();
    sub_1004E0E88(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AE7900, &qword_100AE7908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE78F8);
  }

  return result;
}

unint64_t sub_1004E0014()
{
  result = qword_100AE7910;
  if (!qword_100AE7910)
  {
    sub_1001F1234(&qword_100AE7888);
    sub_1004E00A0();
    sub_1004E0198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7910);
  }

  return result;
}

unint64_t sub_1004E00A0()
{
  result = qword_100AE7918;
  if (!qword_100AE7918)
  {
    sub_1001F1234(&qword_100AE7880);
    sub_1001F1234(&qword_100AE7870);
    sub_1004DFE44();
    swift_getOpaqueTypeConformance2();
    sub_1004E0E88(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7918);
  }

  return result;
}

unint64_t sub_1004E0198()
{
  result = qword_100AE7920;
  if (!qword_100AE7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7920);
  }

  return result;
}

uint64_t sub_1004E02D8(uint64_t a1)
{
  v3 = *(type metadata accessor for REScrubberView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1004DAF4C(a1, v4);
}

unint64_t sub_1004E0348()
{
  result = qword_100AE7930;
  if (!qword_100AE7930)
  {
    sub_1001F1234(&qword_100AE78A0);
    sub_1004E03D4();
    sub_1004604F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7930);
  }

  return result;
}

unint64_t sub_1004E03D4()
{
  result = qword_100AE7938;
  if (!qword_100AE7938)
  {
    sub_1001F1234(&qword_100AE7898);
    sub_1004E048C(&qword_100AE7940, &qword_100AE7890, &unk_10082C2A0, sub_1004E0014);
    sub_1004604F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7938);
  }

  return result;
}

uint64_t sub_1004E048C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2);
    a4();
    sub_1004E0E88(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004E0540()
{
  result = qword_100AE79A8;
  if (!qword_100AE79A8)
  {
    sub_1001F1234(&qword_100AE7978);
    sub_1004E05CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE79A8);
  }

  return result;
}

unint64_t sub_1004E05CC()
{
  result = qword_100AE79B0;
  if (!qword_100AE79B0)
  {
    sub_1001F1234(&qword_100AE7990);
    sub_100005920(&qword_100AE79B8, &qword_100AE79C0);
    sub_100005920(&qword_100ADC1A8, &qword_100ADC1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE79B0);
  }

  return result;
}

unint64_t sub_1004E06B0()
{
  result = qword_100AE79C8;
  if (!qword_100AE79C8)
  {
    sub_1001F1234(&qword_100AE7998);
    sub_1004E0540();
    sub_100005920(&qword_100AD5530, &unk_100AE42C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE79C8);
  }

  return result;
}

unint64_t sub_1004E0768()
{
  result = qword_100AE79D0;
  if (!qword_100AE79D0)
  {
    sub_1001F1234(&qword_100AE79A0);
    sub_1004E0540();
    sub_100005920(&unk_100AF6660, &qword_100AD97F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE79D0);
  }

  return result;
}

uint64_t sub_1004E08F4()
{
  v1 = (type metadata accessor for REScrubberView() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[8];
  v4 = sub_1001F1160(qword_100ADC258);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1004E0A64(uint64_t (*a1)(unint64_t, __n128))
{
  v2 = *(type metadata accessor for REScrubberView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4.n128_u64[0] = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_1004E0B04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004E0B6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004E0BD4()
{
  v1 = (type metadata accessor for REScrubberView() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[8];
  v4 = sub_1001F1160(qword_100ADC258);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1004E0D40(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for REScrubberView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

double sub_1004E0DC4(_OWORD *a1)
{
  result = 0.0;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1004E0DEC()
{
  type metadata accessor for REScrubberView();

  return sub_1004D544C();
}

uint64_t sub_1004E0E88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004E0F00()
{
  result = qword_100AE7B38;
  if (!qword_100AE7B38)
  {
    sub_1001F1234(&qword_100AE7948);
    sub_1004E0F8C();
    sub_1002746A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7B38);
  }

  return result;
}

unint64_t sub_1004E0F8C()
{
  result = qword_100AE7B40;
  if (!qword_100AE7B40)
  {
    sub_1001F1234(&qword_100AE78B0);
    sub_1004E048C(&qword_100AE7B48, &qword_100AE78A8, &unk_10082C2B8, sub_1004E0348);
    sub_100005920(&qword_100AD53F8, &qword_100ADB9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7B40);
  }

  return result;
}

unint64_t sub_1004E108C()
{
  result = qword_100AE7B90;
  if (!qword_100AE7B90)
  {
    sub_1001F1234(&qword_100AE7B58);
    sub_100005920(&qword_100AE7B98, &qword_100AE7BA0);
    sub_100005920(&qword_100AE7BA8, &unk_100AE7BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7B90);
  }

  return result;
}

uint64_t sub_1004E1194()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE7BC0);
  sub_100008B98(v0, qword_100AE7BC0);
  sub_10000A7C4(0, &qword_100AD20A0);
  return sub_1007A33F4();
}

void *sub_1004E1298()
{
  v1 = type metadata accessor for _BookReaderInteractorState(0);
  __chkstk_darwin(v1 - 8);
  v61 = v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_100796CF4();
  v3 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v65 = v48 - v6;
  v67 = sub_1007A21D4();
  v7 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v48 - v10;
  v12 = type metadata accessor for BookReaderActionTarget();
  v69 = v0;
  v72.receiver = v0;
  v72.super_class = v12;
  v13 = objc_msgSendSuper2(&v72, "keyCommands");
  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    v15 = v13;
    sub_10000A7C4(0, &qword_100ADA970);
    v14 = sub_1007A25E4();
  }

  v73 = v14;
  v62 = OBJC_IVAR____TtC5Books22BookReaderActionTarget_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = "books_pageBackward:";
  v18 = "books_pageForward:";
  if (Strong)
  {
    swift_getObjectType();
    v19 = sub_1007A1364();
    swift_unknownObjectRelease();
    v17 = "books_pageBackward:";
    v18 = "books_pageForward:";
    if (v19)
    {
      v18 = "books_lineForward:";
      v17 = "books_lineBackward:";
    }
  }

  v48[3] = v18;
  v56 = "books_pageForward:";
  v58 = v17;
  v60 = "books_pageBackward:";
  sub_1001F1160(&unk_100AD8160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10081F2E0;
  sub_1007A2154();
  v20 = v65;
  sub_100796C94();
  v21 = *(v7 + 16);
  v22 = v67;
  v55 = v7 + 16;
  v54 = v21;
  v21(v64, v11, v67);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v52 = objc_opt_self();
  v53 = ObjCClassFromMetadata;
  v24 = [v52 bundleForClass:ObjCClassFromMetadata];
  v25 = v68;
  v51 = *(v3 + 16);
  v51(v66, v20, v68);
  v48[2] = sub_1007A22D4();
  v48[1] = v26;
  v27 = *(v3 + 8);
  v59 = v3 + 8;
  v50 = v27;
  v27(v20, v25);
  v28 = *(v7 + 8);
  v57 = v7 + 8;
  v49 = v28;
  v28(v11, v22);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v29 = v61;
    sub_1004A79C8(v61);
    swift_unknownObjectRelease();
    sub_10029819C(v29);
  }

  v30 = sub_1007A0CE4();
  v32 = v31;
  if (v30 == sub_1007A0CE4() && v32 == v33)
  {
  }

  else
  {
    sub_1007A3AB4();
  }

  sub_1007A2254();
  sub_10000A7C4(0, &qword_100ADA970);
  v70 = 0u;
  v71 = 0u;
  v34 = sub_1007A2964();
  [v34 setWantsPriorityOverSystemBehavior:1];
  v35 = inited;
  *(inited + 32) = v34;
  v70 = 0u;
  v71 = 0u;
  *(v35 + 40) = sub_1007A2964();
  sub_1007A2254();
  v70 = 0u;
  v71 = 0u;
  *(v35 + 48) = sub_1007A2964();
  sub_1007A2154();
  v36 = v65;
  sub_100796C94();
  v37 = v67;
  v54(v64, v11, v67);
  v38 = [v52 bundleForClass:v53];
  v39 = v68;
  v51(v66, v36, v68);
  sub_1007A22D4();
  v50(v36, v39);
  v49(v11, v37);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v40 = v61;
    sub_1004A79C8(v61);
    swift_unknownObjectRelease();
    sub_10029819C(v40);
  }

  v41 = sub_1007A0CE4();
  v43 = v42;
  if (v41 == sub_1007A0CE4() && v43 == v44)
  {
  }

  else
  {
    sub_1007A3AB4();
  }

  sub_1007A2254();
  v70 = 0u;
  v71 = 0u;
  v45 = sub_1007A2964();
  [v45 setWantsPriorityOverSystemBehavior:1];
  v46 = inited;
  *(inited + 56) = v45;
  v70 = 0u;
  v71 = 0u;
  *(v46 + 64) = sub_1007A2964();
  sub_1007A2254();
  v70 = 0u;
  v71 = 0u;
  *(v46 + 72) = sub_1007A2964();
  sub_100484B7C(v46);
  return v73;
}

uint64_t sub_1004E1DA8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = sub_1007A0404();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v11 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    v12 = a1;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    a4();
    sub_1006AD160(v10);

    swift_unknownObjectRelease();
    (*(v8 + 8))(v10, v7);
  }

  else
  {
  }

  return sub_100007840(v14, &unk_100AD5B40);
}

uint64_t sub_1004E1F2C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    if ((sub_1007A1364() & 1) != 0 && sub_1006A2C38())
    {
      sub_10079F024();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E1FEC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_100007840(v9, &unk_100AD5B40);
}

uint64_t sub_1004E20E8(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  v5 = sub_1007A0404();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _BookReaderInteractorState(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1004A79C8(v11);
    swift_unknownObjectRelease();
    sub_10029819C(v11);
  }

  v12 = sub_1007A0CE4();
  v14 = v13;
  if (v12 == sub_1007A0CE4() && v14 == v15)
  {

LABEL_7:
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    a2();
    goto LABEL_11;
  }

  v16 = sub_1007A3AB4();

  if (v16)
  {
    goto LABEL_7;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  a3();
LABEL_11:
  sub_1006AD160(v8);
  swift_unknownObjectRelease();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1004E2460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1007A26F4();
  v4[4] = sub_1007A26E4();
  v4[5] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1004E2508, v6, v5);
}

uint64_t sub_1004E2508()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_1004E260C;

    return sub_1006AD3D0();
  }

  else
  {

    v5 = sub_1007A2694();

    return _swift_task_switch(sub_1004EA6AC, v5, v4);
  }
}

uint64_t sub_1004E260C()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1004E2750, v3, v2);
}

uint64_t sub_1004E2750()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1004EA6AC, v1, v0);
}

uint64_t sub_1004E27F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = sub_1007A26F4();
  v4[5] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1004E288C, v6, v5);
}

uint64_t sub_1004E288C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    *(v0 + 72) = sub_1007A26E4();
    v3 = sub_1007A2694();
    *(v0 + 80) = v3;
    *(v0 + 88) = v2;

    return _swift_task_switch(sub_1004E2980, v3, v2);
  }

  else
  {

    **(v0 + 16) = *(v0 + 64) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1004E2980()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1004E2A1C;

  return sub_10022C598();
}

uint64_t sub_1004E2A1C()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1004E2B3C, v3, v2);
}

uint64_t sub_1004E2B3C()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_1004EA6A8, v1, v2);
}

void sub_1004E2BC8(uint64_t a1)
{
  v3 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22[-v4 - 8];
  v6 = sub_1004E9310(a1);
  if (v6 == 6)
  {
    if (qword_100AD1770 != -1)
    {
      swift_once();
    }

    v7 = sub_10079ACE4();
    sub_100008B98(v7, qword_100AE7BC0);
    sub_1000077D8(a1, v24, &unk_100AD5B40);
    v8 = sub_10079ACC4();
    v9 = sub_1007A29B4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136315138;
      sub_1000077D8(v24, v22, &unk_100AD5B40);
      sub_1001F1160(&unk_100AD5B40);
      v12 = sub_1007A22E4();
      v14 = v13;
      sub_100007840(v24, &unk_100AD5B40);
      v15 = sub_1000070F4(v12, v14, &v23);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Cannot set highlight style because sender did not provide a style %s", v10, 0xCu);
      sub_1000074E0(v11);
    }

    else
    {

      sub_100007840(v24, &unk_100AD5B40);
    }
  }

  else
  {
    v16 = v6;
    v17 = sub_1007A2744();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    sub_1007A26F4();
    v18 = v1;
    v19 = sub_1007A26E4();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = &protocol witness table for MainActor;
    *(v20 + 32) = v18;
    *(v20 + 40) = v16;
    sub_100345AA0(0, 0, v5, &unk_10082C998, v20);
  }
}

uint64_t sub_1004E2EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 104) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  *(v5 + 32) = sub_1007A26F4();
  *(v5 + 40) = sub_1007A26E4();
  v7 = sub_1007A2694();
  *(v5 + 48) = v7;
  *(v5 + 56) = v6;

  return _swift_task_switch(sub_1004E2F5C, v7, v6);
}

uint64_t sub_1004E2F5C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    *(v0 + 72) = sub_1007A26E4();
    v3 = sub_1007A2694();
    *(v0 + 80) = v3;
    *(v0 + 88) = v2;

    return _swift_task_switch(sub_1004E3050, v3, v2);
  }

  else
  {

    **(v0 + 16) = *(v0 + 64) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1004E3050()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1004E30F4;
  v2 = *(v0 + 104);

  return sub_10022B4D0(v2);
}

uint64_t sub_1004E30F4()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1004E2B3C, v3, v2);
}

uint64_t sub_1004E3240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = sub_1007A26F4();
  v4[7] = sub_1007A26E4();
  v4[8] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v4[9] = v6;
  v4[10] = v5;

  return _swift_task_switch(sub_1004E32E8, v6, v5);
}

uint64_t sub_1004E32E8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v0[12] = sub_1007A26E4();
    v2 = sub_1007A2694();
    v4 = v3;
    v0[13] = v2;
    v0[14] = v3;
    v5 = sub_1004E33CC;
    v6 = v2;
  }

  else
  {

    v7 = sub_1007A2694();
    v9 = v8;
    v5 = sub_1004E3624;
    v6 = v7;
    v4 = v9;
  }

  return _swift_task_switch(v5, v6, v4);
}

uint64_t sub_1004E33CC()
{
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1004E346C;

  return sub_10022B4D0(6);
}

uint64_t sub_1004E346C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v4[16] = a2;

  v5 = v3[14];
  v6 = v3[13];

  return _swift_task_switch(sub_1004E3594, v6, v5);
}

uint64_t sub_1004E3594()
{
  v1 = v0[16];

  if (v1)
  {
    sub_1006C5AD8(v0[3], v0[16]);
  }

  swift_unknownObjectRelease();
  v2 = v0[9];
  v3 = v0[10];

  return _swift_task_switch(sub_1004E3684, v2, v3);
}

uint64_t sub_1004E3624()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004E3684()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1004E3624, v1, v0);
}

uint64_t sub_1004E3724(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v8 - 8);
  v10 = v19 - v9;
  if (a3)
  {
    v11 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v20, 0, sizeof(v20));
    v12 = a1;
  }

  v13 = sub_1007A2744();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  sub_1000077D8(v20, v19, &unk_100AD5B40);
  sub_1007A26F4();
  v14 = a1;
  v15 = sub_1007A26E4();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = &protocol witness table for MainActor;
  *(v16 + 32) = v14;
  v17 = v19[1];
  *(v16 + 40) = v19[0];
  *(v16 + 56) = v17;
  sub_1003457A0(0, 0, v10, a5, v16);

  return sub_100007840(v20, &unk_100AD5B40);
}

uint64_t sub_1004E38D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = sub_1007A26F4();
  v4[5] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1004E3970, v6, v5);
}

uint64_t sub_1004E3970()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    *(v0 + 72) = sub_1007A26E4();
    v3 = sub_1007A2694();
    *(v0 + 80) = v3;
    *(v0 + 88) = v2;

    return _swift_task_switch(sub_1004E3A64, v3, v2);
  }

  else
  {

    **(v0 + 16) = *(v0 + 64) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1004E3A64()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1004E2A1C;

  return sub_10022CACC();
}

uint64_t sub_1004E3B20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v8 - 8);
  v10 = v18 - v9;
  if (a3)
  {
    v11 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v18, 0, sizeof(v18));
    v12 = a1;
  }

  v13 = sub_1007A2744();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  sub_1007A26F4();
  v14 = a1;
  v15 = sub_1007A26E4();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v14;
  sub_100345AA0(0, 0, v10, a5, v16);

  return sub_100007840(v18, &unk_100AD5B40);
}

uint64_t sub_1004E3D90(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
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
    memset(v13, 0, sizeof(v13));
    v7 = a1;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    a4(Strong, v9, v10, v11);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_100007840(v13, &unk_100AD5B40);
}

uint64_t sub_1004E3E74(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
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
    memset(v12, 0, sizeof(v12));
    v7 = a1;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(*(Strong + OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor) + 136);
    ObjectType = swift_getObjectType();
    a4(ObjectType, v9);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_100007840(v12, &unk_100AD5B40);
}

void sub_1004E3F64()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v0 = objc_opt_self();
    v1 = [v0 mainScreen];
    [v1 brightness];
    v3 = v2;

    v4 = [v0 mainScreen];
    [v4 setBrightness:{fmin(v3 + 0.05, 1.0)}];
  }
}

void sub_1004E4068()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v0 = objc_opt_self();
    v1 = [v0 mainScreen];
    [v1 brightness];
    v3 = v2;

    v4 = [v0 mainScreen];
    v6 = v4;
    v5 = v3 + -0.05;
    if (v3 + -0.05 < 0.0)
    {
      v5 = 0.0;
    }

    [v4 setBrightness:v5];
  }
}

uint64_t sub_1004E4170()
{
  v0 = sub_1007A1D04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    sub_10000A7C4(0, &qword_100AD1E10);
    swift_unknownObjectRetain();
    *v3 = sub_1007A2D74();
    (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
    v7 = sub_1007A1D34();
    result = (*(v1 + 8))(v3, v0);
    if (v7)
    {

      sub_1006AFE88(*(v6 + 16));

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1004E4308()
{
  v0 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_1007A2744();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    sub_1007A26F4();
    swift_unknownObjectRetain();
    v6 = sub_1007A26E4();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = &protocol witness table for MainActor;
    v7[4] = v4;
    sub_1003457A0(0, 0, v2, &unk_10083DF30, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E4478()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = sub_1006AB6C4();
    if (v1 == 2 || (v1 & 1) != 0)
    {
      sub_1006B0CE4(0);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E4504()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ((sub_1006AB6C4() & 1) == 0)
    {
      sub_1006B0CE4(1);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E4590(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = a1;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_1007A06B4();

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_100007840(v7, &unk_100AD5B40);
}

uint64_t sub_1004E4670()
{
  v0 = type metadata accessor for _BookReaderInteractorState(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1004A79C8(v2);
    v4 = sub_1007A0A14();
    v6 = v5;
    if (v4 == sub_1007A0A14() && v6 == v7)
    {

      v10 = 0;
    }

    else
    {
      v9 = sub_1007A3AB4();

      v10 = v9 ^ 1;
    }

    sub_10029819C(v2);
    sub_1006AE638(v10 & 1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E47B4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_1007A1194();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E4864()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    if (sub_1007A13B4() == 4)
    {
      sub_1007A09E4();
    }

    sub_1007A1194();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E4DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_1007A26F4();
  v5[5] = sub_1007A26E4();
  v5[6] = sub_1007A26E4();
  v7 = sub_1007A2694();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_1004E4E94, v7, v6);
}

uint64_t sub_1004E4E94()
{
  v1 = sub_1004E97B8(*(v0 + 24));
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1004E4F34;

  return sub_1004E8C24(v1);
}

uint64_t sub_1004E4F34()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_1004E5054, v3, v2);
}

uint64_t sub_1004E5054()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_10022C3F4, v1, v0);
}

uint64_t sub_1004E5268()
{
  v0 = type metadata accessor for _BookReaderInteractorState(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1004A79C8(v2);
    v4 = sub_1007A02B4();
    v6 = v5;
    if (v4 != sub_1007A02B4() || v6 != v7)
    {
      sub_1007A3AB4();
    }

    sub_10029819C(v2);
    sub_1007A0FA4();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E53E4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1007A0FA4();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E5484(uint64_t a1)
{
  result = sub_1004E9D88(a1);
  if (result != 4)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1007A0FA4();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1004E5534(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
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
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return sub_100007840(v9, &unk_100AD5B40);
}

uint64_t sub_1004E55C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = sub_1007A26F4();
  v4[5] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1004E5660, v6, v5);
}

uint64_t sub_1004E5660()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    *(v0 + 72) = sub_1007A26E4();
    v3 = sub_1007A2694();
    *(v0 + 80) = v3;
    *(v0 + 88) = v2;

    return _swift_task_switch(sub_1004E5754, v3, v2);
  }

  else
  {

    **(v0 + 16) = *(v0 + 64) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1004E5754()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1004E2A1C;

  return sub_10022863C();
}

uint64_t sub_1004E5810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = sub_1007A26F4();
  v4[5] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1004E58AC, v6, v5);
}

uint64_t sub_1004E58AC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    *(v0 + 72) = sub_1007A26E4();
    v3 = sub_1007A2694();
    *(v0 + 80) = v3;
    *(v0 + 88) = v2;

    return _swift_task_switch(sub_1004E59A0, v3, v2);
  }

  else
  {

    **(v0 + 16) = *(v0 + 64) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1004E59A0()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1004E2A1C;

  return sub_100227218();
}

uint64_t sub_1004E5A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = sub_1007A26F4();
  v4[5] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1004E5AF8, v6, v5);
}

uint64_t sub_1004E5AF8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    *(v0 + 72) = sub_1007A26E4();
    v3 = sub_1007A2694();
    *(v0 + 80) = v3;
    *(v0 + 88) = v2;

    return _swift_task_switch(sub_1004E5BEC, v3, v2);
  }

  else
  {

    **(v0 + 16) = *(v0 + 64) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1004E5BEC()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1004E5C88;

  return sub_100229624();
}

uint64_t sub_1004E5C88()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1004E5DA8, v3, v2);
}

uint64_t sub_1004E5DA8()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_1004E5E14, v1, v2);
}

uint64_t sub_1004E5E14()
{

  **(v0 + 16) = *(v0 + 64) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004E5EA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001F1160(&unk_100AE7C50);
  __chkstk_darwin(v6 - 8);
  v89 = &v86 - v7;
  v8 = sub_1007A0404();
  v90 = *(v8 - 8);
  v91 = v8;
  __chkstk_darwin(v8);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _BookReaderInteractorState(0);
  __chkstk_darwin(v11);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v86 - v15;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_100AD1770 != -1)
    {
      swift_once();
    }

    v35 = sub_10079ACE4();
    sub_100008B98(v35, qword_100AE7BC0);
    v24 = sub_10079ACC4();
    v36 = sub_1007A2994();
    if (os_log_type_enabled(v24, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v24, v36, "Cannot interact with no delegate", v37, 2u);
    }

    goto LABEL_15;
  }

  v18 = Strong;
  v87 = v13;
  v19 = swift_unknownObjectWeakLoadStrong();
  v92 = a1;
  if (v19)
  {
    sub_1004A79C8(v16);
    a1 = v92;
    swift_unknownObjectRelease();
    v20 = *(v11 + 20);
    v21 = sub_1007A05F4();
    v22 = sub_1007A0634();
    (*(*(v22 - 8) + 8))(&v16[v20], v22);
    if (v21)
    {
      if (qword_100AD1770 != -1)
      {
        swift_once();
      }

      v23 = sub_10079ACE4();
      sub_100008B98(v23, qword_100AE7BC0);
      v24 = sub_10079ACC4();
      v25 = sub_1007A2994();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Cannot interact while movementState is blocking.", v26, 2u);
      }

      swift_unknownObjectRelease();
LABEL_15:

LABEL_16:
      LOBYTE(v38) = 0;
      return v38 & 1;
    }
  }

  v88 = v18;
  v86 = a2;
  sub_1000077D8(a2, v94, &unk_100AD5B40);
  v27 = v95;
  if (v95)
  {
    v28 = sub_10000E3E8(v94, v95);
    v29 = *(v27 - 8);
    v30 = __chkstk_darwin(v28);
    v32 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v32, v30);
    v33 = sub_1007A3AA4();
    v34 = v32;
    a1 = v92;
    (*(v29 + 8))(v34, v27);
    sub_1000074E0(v94);
  }

  else
  {
    v33 = 0;
  }

  v39 = type metadata accessor for BookReaderActionTarget();
  v93.receiver = v3;
  v93.super_class = v39;
  v38 = objc_msgSendSuper2(&v93, "canPerformAction:withSender:", a1, v33);
  swift_unknownObjectRelease();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1004A79C8(v16);
    swift_unknownObjectRelease();
    sub_10029819C(v16);
  }

  v40 = sub_1007A0CE4();
  v42 = v41;
  v43 = 1;
  if (v40 != sub_1007A0CE4() || v42 != v44)
  {
    v43 = sub_1007A3AB4();
  }

  if (sub_100796E94())
  {
    if (v38)
    {
      sub_10022FB30(v94);
      LOBYTE(v38) = v95 != 0;
    }

    goto LABEL_33;
  }

  if (sub_100796E94())
  {
    if (v38)
    {
      sub_1007A0384();
LABEL_32:
      LOBYTE(v38) = sub_1005C1DB0(v10);
      (*(v90 + 8))(v10, v91);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  if (sub_100796E94())
  {
    if (v38)
    {
      sub_1007A0364();
      goto LABEL_32;
    }

LABEL_33:
    swift_unknownObjectRelease();
    return v38 & 1;
  }

  if (sub_100796E94() & 1) != 0 || (sub_100796E94())
  {
    if (v38)
    {
      swift_getObjectType();
      LOBYTE(v38) = sub_1007A1364();
    }

    goto LABEL_33;
  }

  if (sub_100796E94() & 1) != 0 || !(v43 & 1 | ((sub_100796E94() & 1) == 0)) || (sub_100796E94() & v43)
  {
    if (!v38)
    {
      goto LABEL_33;
    }

    sub_1007A0394();
    goto LABEL_32;
  }

  if (sub_100796E94() & 1) != 0 || !(v43 & 1 | ((sub_100796E94() & 1) == 0)) || (sub_100796E94() & v43)
  {
    if (!v38)
    {
      goto LABEL_33;
    }

    sub_1007A0374();
    goto LABEL_32;
  }

  if (sub_100796E94())
  {
    if (!v38)
    {
      goto LABEL_33;
    }

    sub_1007A0354();
    goto LABEL_32;
  }

  if (sub_100796E94())
  {
    if (v38)
    {
      sub_1007A0344();
      v46 = sub_1005C1DB0(v10);
      (*(v90 + 8))(v10, v91);
      LOBYTE(v38) = v46;
    }

    goto LABEL_33;
  }

  v47 = v38;
  if (sub_100796E94())
  {
    if (v38)
    {
      if (sub_1004A8620())
      {
        swift_unknownObjectRelease();
        LOBYTE(v38) = 1;
        return v38 & 1;
      }

      v50 = v89;
      sub_1004A8C68(v89);
      v51 = sub_1001F1160(&unk_100AF2670);
      LOBYTE(v38) = (*(*(v51 - 8) + 48))(v50, 1, v51) != 1;
      sub_100007840(v50, &unk_100AE7C50);
      goto LABEL_33;
    }

    goto LABEL_157;
  }

  if (sub_100796E94())
  {
    if (!v38)
    {
      goto LABEL_157;
    }

    sub_10022FB30(v94);
    v48 = v97;
    goto LABEL_62;
  }

  if (sub_100796E94())
  {
    goto LABEL_33;
  }

  if (sub_100796E94())
  {
    if (!v38)
    {
      goto LABEL_157;
    }

    v52 = sub_1006ACFC0();
LABEL_74:
    LOBYTE(v38) = v52;
    goto LABEL_33;
  }

  if (sub_100796E94())
  {
    if (!v38)
    {
      goto LABEL_157;
    }

    v52 = sub_1006AD200();
    goto LABEL_74;
  }

  if (sub_100796E94())
  {
    if (v38)
    {
      v53 = sub_1006AB6C4();
      swift_unknownObjectRelease();
      LOBYTE(v38) = (v53 == 2) | v53;
      return v38 & 1;
    }

    goto LABEL_157;
  }

  if (sub_100796E94())
  {
    if (v38)
    {
      v54 = sub_1006AB6C4();
      swift_unknownObjectRelease();
      LOBYTE(v38) = v54 ^ 1;
      return v38 & 1;
    }

    goto LABEL_157;
  }

  if (sub_100796E94())
  {
    if (v38)
    {
      sub_1004E950C(v86);
      swift_unknownObjectRelease();

      LOBYTE(v38) = 1;
      return v38 & 1;
    }

    goto LABEL_157;
  }

  if (sub_100796E94())
  {
    if (!v38)
    {
      goto LABEL_157;
    }

    v52 = sub_1006AE108();
    goto LABEL_74;
  }

  if (sub_100796E94())
  {
    if (!v38)
    {
      goto LABEL_157;
    }

    sub_10022FB30(v94);
    v48 = v94[1];
    goto LABEL_62;
  }

  if (sub_100796E94())
  {
    if (!v38)
    {
      goto LABEL_157;
    }

    swift_getObjectType();
    v55 = sub_1007A17C4();
LABEL_99:
    LOBYTE(v38) = v55;
    goto LABEL_33;
  }

  if (sub_100796E94())
  {
    if (!v38)
    {
      goto LABEL_157;
    }

    swift_getObjectType();
    v55 = sub_1007A1794();
    goto LABEL_99;
  }

  if (sub_100796E94())
  {
    if (!v38)
    {
      goto LABEL_157;
    }

    swift_getObjectType();
    v55 = sub_1007A17A4();
    goto LABEL_99;
  }

  if (sub_100796E94())
  {
    if (v38)
    {
      v56 = [objc_opt_self() mainScreen];
      [v56 brightness];
      v58 = v57;

      swift_unknownObjectRelease();
      LOBYTE(v38) = v58 < 1.0;
      return v38 & 1;
    }

    goto LABEL_157;
  }

  if (sub_100796E94())
  {
    if (v38)
    {
      v59 = [objc_opt_self() mainScreen];
      [v59 brightness];
      v61 = v60;

      swift_unknownObjectRelease();
      LOBYTE(v38) = v61 > 0.0;
      return v38 & 1;
    }

    goto LABEL_157;
  }

  if (sub_100796E94() & 1) != 0 || (sub_100796E94())
  {
    if (!v38)
    {
      goto LABEL_157;
    }

    swift_getObjectType();
    v55 = sub_1007A0A34();
    goto LABEL_99;
  }

  if (sub_100796E94())
  {
    sub_1004A79C8(v87);
    v62 = sub_1007A0A14();
    v64 = v63;
    if (v62 == sub_1007A0A14() && v64 == v65)
    {
      v66 = 1;
    }

    else
    {
      v66 = sub_1007A3AB4();
    }

    sub_10029819C(v87);
    if ((v47 & 1) == 0)
    {
      goto LABEL_157;
    }

    swift_getObjectType();
    sub_1007A1384();
    v71 = sub_1007A0A14();
    v73 = v72;
    if (v71 == sub_1007A0A14() && v73 == v74)
    {
      v75 = 1;
    }

    else
    {
      v75 = sub_1007A3AB4();
    }

    swift_unknownObjectRelease();
    LOBYTE(v38) = v66 ^ v75 ^ 1;
    return v38 & 1;
  }

  if (sub_100796E94())
  {
    if (v38)
    {
      swift_getObjectType();
      sub_1007A1384();
      v67 = sub_1007A0A14();
      v69 = v68;
      if (v67 == sub_1007A0A14() && v69 == v70)
      {

        LOBYTE(v38) = 0;
      }

      else
      {
        v82 = sub_1007A3AB4();

        LOBYTE(v38) = v82 ^ 1;
      }

      goto LABEL_33;
    }

    goto LABEL_157;
  }

  if ((sub_100796E94() & 1) == 0)
  {
    if (sub_100796E94())
    {
      if (!v38)
      {
        goto LABEL_157;
      }

      v81 = sub_1004E8A10(v86);
    }

    else
    {
      if ((sub_100796E94() & 1) == 0)
      {
        if ((sub_100796E94() & 1) == 0)
        {
          if (sub_100796E94())
          {
            if (!v38)
            {
              goto LABEL_157;
            }

            v52 = sub_1006AE6C0();
            goto LABEL_74;
          }

          if (sub_100796E94())
          {
            if (!v38)
            {
              goto LABEL_157;
            }

            sub_10022FB30(v94);
            v48 = v96;
LABEL_62:
            v49 = v48 != 0;
LABEL_63:
            LOBYTE(v38) = v49;
            goto LABEL_33;
          }

          if ((sub_100796E94() & 1) == 0)
          {
            goto LABEL_33;
          }

          if (v38)
          {
            v49 = sub_100228538();
            goto LABEL_63;
          }

LABEL_157:
          swift_unknownObjectRelease();
          goto LABEL_16;
        }

        if (!v38)
        {
          goto LABEL_157;
        }

        v85 = swift_unknownObjectWeakLoadStrong();
        LOBYTE(v38) = v85;
        if (!v85)
        {
          goto LABEL_33;
        }

LABEL_150:
        swift_getObjectType();
        LOBYTE(v38) = sub_1007A1184();
        swift_unknownObjectRelease();
        goto LABEL_33;
      }

      if (!v38)
      {
        goto LABEL_157;
      }

      v81 = sub_1004E97B8(v86);
    }

    v83 = v81;
    v84 = swift_unknownObjectWeakLoadStrong();
    LOBYTE(v38) = v84;
    if (!v84)
    {
      goto LABEL_33;
    }

    if (v83 == 6)
    {
      swift_unknownObjectRelease();
      goto LABEL_157;
    }

    goto LABEL_150;
  }

  if (!v38)
  {
    goto LABEL_157;
  }

  swift_getObjectType();
  sub_1007A1384();
  v76 = sub_1007A0A14();
  v78 = v77;
  if (v76 == sub_1007A0A14() && v78 == v79)
  {
    v80 = 1;
  }

  else
  {
    v80 = sub_1007A3AB4();
  }

  swift_unknownObjectRelease();
  LOBYTE(v38) = v80;
  return v38 & 1;
}

void sub_1004E6FE0(void *a1)
{
  v3 = sub_100796CF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v183 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v166 - v7;
  v9 = sub_1007A21D4();
  v184 = *(v9 - 8);
  v185 = v9;
  __chkstk_darwin(v9);
  v11 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v166 - v13;
  v179 = type metadata accessor for _BookReaderInteractorState(0);
  __chkstk_darwin(v179);
  v167 = &v166 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v170 = &v166 - v17;
  __chkstk_darwin(v18);
  v169 = &v166 - v19;
  __chkstk_darwin(v20);
  v172 = &v166 - v21;
  __chkstk_darwin(v22);
  v171 = &v166 - v23;
  __chkstk_darwin(v24);
  v168 = &v166 - v25;
  __chkstk_darwin(v26);
  v173 = &v166 - v27;
  __chkstk_darwin(v28);
  v174 = &v166 - v29;
  __chkstk_darwin(v30);
  v175 = &v166 - v31;
  __chkstk_darwin(v32);
  v176 = &v166 - v33;
  __chkstk_darwin(v34);
  v177 = &v166 - v35;
  __chkstk_darwin(v36);
  v178 = &v166 - v37;
  __chkstk_darwin(v38);
  v40 = &v166 - v39;
  v41 = type metadata accessor for BookReaderActionTarget();
  v188.receiver = v1;
  v188.super_class = v41;
  objc_msgSendSuper2(&v188, "validateCommand:", a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v182 = Strong;
    v166 = v1;
    v43 = swift_unknownObjectWeakLoadStrong();
    v186 = a1;
    v180 = v4;
    v181 = v3;
    if (v43)
    {
      sub_1004A79C8(v40);
      swift_unknownObjectRelease();
      sub_10029819C(v40);
    }

    v48 = sub_1007A0CE4();
    v50 = v49;
    v51 = 1;
    if (v48 != sub_1007A0CE4() || v50 != v52)
    {
      v51 = sub_1007A3AB4();
    }

    [v186 action];
    if (sub_100796E94() & 1) != 0 || (sub_100796E94())
    {
      sub_1007A2154();
      sub_100796C94();
      v54 = v184;
      v53 = v185;
      (*(v184 + 16))(v11, v14, v185);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v57 = v180;
      v56 = v181;
      (*(v180 + 16))(v183, v8, v181);
      sub_1007A22D4();
      (*(v57 + 8))(v8, v56);
      (*(v54 + 8))(v14, v53);
LABEL_18:
      v63 = sub_1007A2214();

      [v186 setTitle:v63];

LABEL_19:
      swift_unknownObjectRelease();
      return;
    }

    if (!(v51 & 1 | ((sub_100796E94() & 1) == 0)) || (sub_100796E94() & v51 & 1) != 0 || !(v51 & 1 | ((sub_100796E94() & 1) == 0)) || (sub_100796E94() & v51 & 1) != 0)
    {
      sub_1007A2154();
      sub_100796C94();
      v59 = v184;
      v58 = v185;
      (*(v184 + 16))(v11, v14, v185);
      type metadata accessor for BundleFinder();
      v60 = swift_getObjCClassFromMetadata();
      [objc_opt_self() bundleForClass:v60];
      v62 = v180;
      v61 = v181;
      (*(v180 + 16))(v183, v8, v181);
      sub_1007A22D4();
      (*(v62 + 8))(v8, v61);
      (*(v59 + 8))(v14, v58);
      goto LABEL_18;
    }

    if (sub_100796E94())
    {
      sub_1004A8620();
      sub_1007871BC();
      v64 = sub_1007A2214();

      v65 = v186;
      [v186 setTitle:v64];

      v66 = sub_1007A2214();

      v67 = [objc_opt_self() systemImageNamed:v66];

      [v65 setImage:v67];
      goto LABEL_19;
    }

    if (sub_100796E94())
    {
      sub_10022FB30(&v189);
      sub_100787894();
LABEL_27:
      v68 = sub_1007A2214();

      v69 = v186;
      [v186 setTitle:v68];

      sub_10022FB30(v191);
      v70 = v197;
      v71 = [v69 attributes];
      if (v70)
      {
        v72 = v71 & 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        v72 = (v71 & 0xFFFFFFFFFFFFFFFELL) + 1;
      }

      [v69 setAttributes:v72];
      goto LABEL_19;
    }

    if (sub_100796E94())
    {
      sub_10022FB30(&v189);
      sub_100787658();
      v73 = sub_1007A2214();

      v74 = v186;
      [v186 setTitle:v73];

      sub_10022FB30(v191);
      v75 = v198;
      v76 = [v74 attributes];
      if (v75)
      {
        v77 = v76 & 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        v77 = (v76 & 0xFFFFFFFFFFFFFFFELL) + 1;
      }

      [v74 setAttributes:v77];
      [v74 setAttributes:{objc_msgSend(v74, "attributes") | 2}];
      goto LABEL_19;
    }

    if (sub_100796E94())
    {
      sub_10022FB30(&v189);
      sub_100787414();
      goto LABEL_27;
    }

    if (sub_100796E94())
    {
      sub_10022FB30(v191);
      v78 = v199;
      v79 = v186;
      v80 = [v186 attributes];
      if (v78)
      {
        v81 = v80 & 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        v81 = (v80 & 0xFFFFFFFFFFFFFFFELL) + 1;
      }

      [v79 setAttributes:v81];
      goto LABEL_19;
    }

    v82 = sub_100796E94();
    v83 = v186;
    if (v82)
    {
      sub_1004A79C8(v40);
      v84 = v40[*(v179 + 24)];
      sub_10029819C(v40);
      [v83 setState:v84];
      goto LABEL_19;
    }

    if (sub_100796E94())
    {
      sub_1004A79C8(v40);
      v85 = v40[*(v179 + 24)];
      sub_10029819C(v40);
      [v83 setState:~v85 & 1];
      goto LABEL_19;
    }

    if (sub_100796E94())
    {
      sub_1004A79C8(v178);
      v86 = sub_1007A0A14();
      v88 = v87;
      if (v86 == sub_1007A0A14() && v88 == v89)
      {

        v90 = 1;
      }

      else
      {
        v96 = sub_1007A3AB4();

        v90 = v96 & 1;
      }

      v95 = v178;
      goto LABEL_57;
    }

    if (sub_100796E94())
    {
      sub_1004A79C8(v177);
      v91 = sub_1007A0A14();
      v93 = v92;
      if (v91 == sub_1007A0A14() && v93 == v94)
      {

        v90 = 1;
        v95 = v177;
      }

      else
      {
        v104 = sub_1007A3AB4();

        v90 = v104 & 1;
        v95 = v177;
      }

LABEL_57:
      sub_10029819C(v95);
      v97 = "setState:";
      v98 = v186;
      v99 = v90;
LABEL_58:
      [v98 v97];
      goto LABEL_19;
    }

    if (sub_100796E94())
    {
      sub_1004A79C8(v176);
      v100 = sub_1007A0A14();
      v102 = v101;
      if (v100 == sub_1007A0A14() && v102 == v103)
      {

        v90 = 0;
        v95 = v176;
      }

      else
      {
        v108 = sub_1007A3AB4();

        v90 = ~v108 & 1;
        v95 = v176;
      }

      goto LABEL_57;
    }

    if (sub_100796E94())
    {
      v192 = sub_10000A7C4(0, &qword_100AECAB0);
      v191[0] = v186;
      v105 = v186;
      v106 = sub_1004E97B8(v191);
      sub_100007840(v191, &unk_100AD5B40);
      v107 = v175;
LABEL_69:
      sub_1004A79C8(v107);
      sub_10029819C(v107);
      if (v106 == 6)
      {
        goto LABEL_90;
      }

      v109 = sub_10079F914();
      v111 = v110;
      v112 = sub_10079F914();
      goto LABEL_71;
    }

    if (sub_100796E94())
    {
      v192 = sub_10000A7C4(0, &qword_100AECAB0);
      v191[0] = v186;
      v105 = v186;
      v106 = sub_1004E97B8(v191);
      sub_100007840(v191, &unk_100AD5B40);
      v107 = v174;
      goto LABEL_69;
    }

    if (sub_100796E94())
    {
      v192 = sub_10000A7C4(0, &qword_100AECAB0);
      v191[0] = v186;
      v105 = v186;
      v114 = sub_1004E97B8(v191);
      sub_100007840(v191, &unk_100AD5B40);
      v115 = v173;
      sub_1004A79C8(v173);
      sub_10029819C(v115);
      if (v114 == 6)
      {
        goto LABEL_80;
      }

      v116 = sub_10079F914();
      v118 = v117;
      if (v116 == sub_10079F914() && v118 == v119)
      {
      }

      else
      {
        v127 = sub_1007A3AB4();

        if ((v127 & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      goto LABEL_90;
    }

    if (sub_100796E94())
    {
      v192 = sub_10000A7C4(0, &qword_100AECAB0);
      v191[0] = v186;
      v105 = v186;
      v121 = sub_1004E97B8(v191);
      sub_100007840(v191, &unk_100AD5B40);
      if (v121 == 6)
      {
        [v105 setState:0];
        v122 = [v105 attributes];
LABEL_84:
        v99 = v122 | 1;
LABEL_114:
        v97 = "setAttributes:";
        goto LABEL_92;
      }

      v128 = v168;
      sub_1004A79C8(v168);
      sub_10029819C(v128);
      v129 = sub_10079F914();
      v131 = v130;
      if (v129 == sub_10079F914() && v131 == v132)
      {

        v133 = 1;
      }

      else
      {
        v139 = sub_1007A3AB4();

        v133 = v139 & 1;
      }

      [v105 setState:v133];
      if (!swift_unknownObjectWeakLoadStrong() || (swift_getObjectType(), v140 = sub_1007A1184(), swift_unknownObjectRelease(), (v140 & 1) == 0))
      {
        v141 = v171;
        sub_1004A79C8(v171);
        sub_10029819C(v141);
        v142 = sub_10079F914();
        v144 = v143;
        if (v142 != sub_10079F914() || v144 != v145)
        {
          v150 = sub_1007A3AB4();

          v122 = [v105 attributes];
          if ((v150 & 1) == 0)
          {
            goto LABEL_84;
          }

LABEL_113:
          v99 = v122 & 0xFFFFFFFFFFFFFFFELL;
          goto LABEL_114;
        }
      }

      v122 = [v105 attributes];
      goto LABEL_113;
    }

    if (sub_100796E94())
    {
      sub_1004A79C8(v172);
      v123 = sub_1007A02B4();
      v125 = v124;
      if (v123 == sub_1007A02B4() && v125 == v126)
      {

        v90 = 1;
        v95 = v172;
      }

      else
      {
        v138 = sub_1007A3AB4();

        v90 = v138 & 1;
        v95 = v172;
      }

      goto LABEL_57;
    }

    if (sub_100796E94())
    {
      sub_1004A79C8(v169);
      v134 = sub_1007A02B4();
      v136 = v135;
      if (v134 == sub_1007A02B4() && v136 == v137)
      {

        v90 = 1;
        v95 = v169;
      }

      else
      {
        v151 = sub_1007A3AB4();

        v90 = v151 & 1;
        v95 = v169;
      }

      goto LABEL_57;
    }

    if (sub_100796E94())
    {
      sub_1004A79C8(v170);
      v146 = sub_1007A02B4();
      v148 = v147;
      if (v146 == sub_1007A02B4() && v148 == v149)
      {

        v90 = 0;
        v95 = v170;
      }

      else
      {
        v155 = sub_1007A3AB4();

        v90 = ~v155 & 1;
        v95 = v170;
      }

      goto LABEL_57;
    }

    if (sub_100796E94())
    {
      v192 = sub_10000A7C4(0, &qword_100AECAB0);
      v191[0] = v186;
      v105 = v186;
      v152 = sub_1004E9D88(v191);
      sub_100007840(v191, &unk_100AD5B40);
      v153 = v167;
      sub_1004A79C8(v167);
      sub_10029819C(v153);
      if (v152 == 4)
      {
        goto LABEL_90;
      }

      v109 = sub_1007A02B4();
      v111 = v154;
      v112 = sub_1007A02B4();
LABEL_71:
      if (v109 == v112 && v111 == v113)
      {

LABEL_80:
        v99 = 1;
LABEL_91:
        v97 = "setState:";
LABEL_92:
        v98 = v105;
        goto LABEL_58;
      }

      v120 = sub_1007A3AB4();

      if (v120)
      {
        goto LABEL_80;
      }

LABEL_90:
      v99 = 0;
      goto LABEL_91;
    }

    if (sub_100796E94())
    {
      v156 = 0xE000000000000000;
      sub_1005FB8C4(0, 0xE000000000000000);
      v157 = sub_1007A2214();

      [v186 setTitle:v157];

      sub_10022FB30(v191);
      *(v190 + 9) = *(v196 + 9);
      v189 = v195;
      v190[0] = v196[0];
      v158 = *(v196 + 9) >> 56;
      if (v158)
      {
        v159 = *(&v190[0] + 1);
        v160 = *&v190[0];
        v202 = v195;
        v200 = *(&v190[0] + 1);
        v201 = *&v190[1];
        v161 = &unk_100AE7C40;
LABEL_126:
        sub_1000077D8(&v189, v187, v161);
        sub_1002BB1A4(&v200, v187);
        sub_100007840(&v202, &qword_100AD4F30);
        v187[0] = v160;
        sub_100007840(v187, &qword_100AD6188);
        sub_1002308AC(&v200);
        v156 = v158;
LABEL_128:
        if (v159 || v156 != 0xE000000000000000)
        {
          v164 = sub_1007A3AB4();

          v163 = [v186 attributes];
          if ((v164 & 1) == 0)
          {
            v165 = v163 & 0xFFFFFFFFFFFFFFFELL;
            goto LABEL_134;
          }
        }

        else
        {

          v163 = [v186 attributes];
        }

        v165 = v163 | 1;
LABEL_134:
        [v186 setAttributes:v165];
        goto LABEL_19;
      }
    }

    else
    {
      if ((sub_100796E94() & 1) == 0)
      {
        goto LABEL_19;
      }

      v156 = 0xE000000000000000;
      sub_1005FBE34(0, 0xE000000000000000);
      v162 = sub_1007A2214();

      [v186 setTitle:v162];

      sub_10022FB30(v191);
      *(v190 + 9) = *(v194 + 9);
      v189 = v193;
      v190[0] = v194[0];
      v158 = *(v194 + 9) >> 56;
      if (v158)
      {
        v159 = *(&v190[0] + 1);
        v160 = *&v190[0];
        v202 = v193;
        v200 = *(&v190[0] + 1);
        v201 = *&v190[1];
        v161 = &unk_100AD6180;
        goto LABEL_126;
      }
    }

    v159 = 0;
    goto LABEL_128;
  }

  if (qword_100AD1770 != -1)
  {
    swift_once();
  }

  v44 = sub_10079ACE4();
  sub_100008B98(v44, qword_100AE7BC0);
  v45 = sub_10079ACC4();
  v46 = sub_1007A2994();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Cannot interact with no delegate", v47, 2u);
  }
}

uint64_t sub_1004E8A10(uint64_t a1)
{
  v2 = type metadata accessor for _BookReaderInteractorState(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 6;
  }

  v5 = sub_1004E97B8(a1);
  if (v5 == 6)
  {
    swift_unknownObjectRelease();
    return 6;
  }

  v7 = v5;
  sub_1004A79C8(v4);
  sub_10029819C(v4);
  v8 = sub_10079F914();
  v10 = v9;
  if (v8 == sub_10079F914() && v10 == v11)
  {

    v14 = 0;
  }

  else
  {
    v13 = sub_1007A3AB4();

    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = v7;
    }
  }

  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_1004E8B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5[2] = sub_1007A26F4();
  v5[3] = sub_1007A26E4();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1004B06E4;

  return sub_1004E8C24(a5);
}

uint64_t sub_1004E8C24(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 104) = a1;
  *(v2 + 24) = sub_1007A26F4();
  *(v2 + 32) = sub_1007A26E4();
  v4 = sub_1007A2694();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return _swift_task_switch(sub_1004E8CC4, v4, v3);
}

uint64_t sub_1004E8CC4()
{
  if (*(v0 + 104) == 6 || (Strong = swift_unknownObjectWeakLoadStrong(), (*(v0 + 56) = Strong) == 0))
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    *(v0 + 64) = sub_1007A26E4();
    v3 = sub_1007A2694();
    *(v0 + 72) = v3;
    *(v0 + 80) = v2;

    return _swift_task_switch(sub_1004E8DB0, v3, v2);
  }
}

uint64_t sub_1004E8DB0()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1004E8E54;
  v2 = *(v0 + 104);

  return sub_1004AA91C(v2);
}

uint64_t sub_1004E8E54()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1004E8FFC;
  }

  else
  {
    v5 = sub_1004E8F90;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004E8F90()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1002AE80C, v1, v2);
}

uint64_t sub_1004E8FFC()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1004E9068, v1, v2);
}

uint64_t sub_1004E9068()
{
  v14 = v0;

  if (qword_100AD1770 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AE7BC0);
  swift_errorRetain();
  v2 = sub_10079ACC4();
  v3 = sub_1007A29B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v4 = 136315394;
    v7 = sub_10079F8E4();
    v9 = sub_1000070F4(v7, v8, &v13);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2112;
    v10 = sub_1007967C4();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to change theme ID to %s; error: %@", v4, 0x16u);
    sub_100007840(v5, &unk_100AD9480);

    sub_1000074E0(v6);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

id sub_1004E92A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BookReaderActionTarget();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004E9310(uint64_t a1)
{
  sub_1000077D8(a1, &v7, &unk_100AD5B40);
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return LOBYTE(v6[0]);
    }
  }

  else
  {
    sub_100007840(&v7, &unk_100AD5B40);
  }

  sub_1000077D8(a1, &v7, &unk_100AD5B40);
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      result = sub_1007A00D4();
      if (result != 6)
      {
        return result;
      }
    }
  }

  else
  {
    sub_100007840(&v7, &unk_100AD5B40);
  }

  sub_1000077D8(a1, v6, &unk_100AD5B40);
  if (v6[3])
  {
    sub_1001F1160(&unk_100AE7C30);
    if (swift_dynamicCast())
    {
      v3 = *(&v8 + 1);
      if (*(&v8 + 1))
      {
        v4 = v9;
        sub_10000E3E8(&v7, *(&v8 + 1));
        v5 = (*(v4 + 8))(v3, v4);
        sub_1000074E0(&v7);
        return v5;
      }
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }
  }

  else
  {
    sub_100007840(v6, &unk_100AD5B40);
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
  }

  sub_100007840(&v7, &qword_100AE7C28);
  return 6;
}

id sub_1004E950C(uint64_t a1)
{
  sub_1000077D8(a1, v6, &unk_100AD5B40);
  if (v7)
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_100007840(v6, &unk_100AD5B40);
  }

  sub_1000077D8(a1, v6, &unk_100AD5B40);
  if (v7)
  {
    sub_1001F1160(&qword_100AE7C60);
    if (swift_dynamicCast())
    {
      v3 = [v5 appIntentsSearchQuery];
      swift_unknownObjectRelease();
      v4 = sub_1007A2254();

      return v4;
    }
  }

  else
  {
    sub_100007840(v6, &unk_100AD5B40);
  }

  return 0;
}

id sub_1004E9660(uint64_t a1)
{
  sub_1000077D8(a1, v6, &unk_100AD5B40);
  if (v7)
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_100007840(v6, &unk_100AD5B40);
  }

  sub_1000077D8(a1, v6, &unk_100AD5B40);
  if (v7)
  {
    sub_1001F1160(&qword_100AE7C10);
    if (swift_dynamicCast())
    {
      v3 = [v5 books_themeID];
      swift_unknownObjectRelease();
      if (v3)
      {
        v4 = sub_1007A2254();

        return v4;
      }
    }
  }

  else
  {
    sub_100007840(v6, &unk_100AD5B40);
  }

  return 0;
}

uint64_t sub_1004E97B8(uint64_t a1)
{
  v2 = sub_1004E9660(a1);
  if (!v3)
  {
    if (qword_100AD1770 != -1)
    {
      swift_once();
    }

    v16 = sub_10079ACE4();
    sub_100008B98(v16, qword_100AE7BC0);
    sub_1000077D8(a1, v28, &unk_100AD5B40);
    v8 = sub_10079ACC4();
    v17 = sub_1007A29B4();
    if (os_log_type_enabled(v8, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315138;
      sub_1000077D8(v28, v26, &unk_100AD5B40);
      sub_1001F1160(&unk_100AD5B40);
      v20 = sub_1007A22E4();
      v22 = v21;
      sub_100007840(v28, &unk_100AD5B40);
      v23 = sub_1000070F4(v20, v22, &v27);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v8, v17, "Unable to extract theme ID from sender: %s", v18, 0xCu);
      sub_1000074E0(v19);
      goto LABEL_11;
    }

LABEL_15:
    sub_100007840(v28, &unk_100AD5B40);
    return 6;
  }

  v4 = v2;
  v5 = v3;

  v6 = sub_10079F904();
  if (v6 != 6)
  {
    v24 = v6;

    return v24;
  }

  if (qword_100AD1770 != -1)
  {
    swift_once();
  }

  v7 = sub_10079ACE4();
  sub_100008B98(v7, qword_100AE7BC0);
  sub_1000077D8(a1, v28, &unk_100AD5B40);

  v8 = sub_10079ACC4();
  v9 = sub_1007A29B4();

  if (!os_log_type_enabled(v8, v9))
  {

    goto LABEL_15;
  }

  v10 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  *v10 = 136315394;
  v11 = sub_1000070F4(v4, v5, &v27);

  *(v10 + 4) = v11;
  *(v10 + 12) = 2080;
  sub_1000077D8(v28, v26, &unk_100AD5B40);
  sub_1001F1160(&unk_100AD5B40);
  v12 = sub_1007A22E4();
  v14 = v13;
  sub_100007840(v28, &unk_100AD5B40);
  v15 = sub_1000070F4(v12, v14, &v27);

  *(v10 + 14) = v15;
  _os_log_impl(&_mh_execute_header, v8, v9, "Ignoring invalid theme ID '%s' from sender: %s", v10, 0x16u);
  swift_arrayDestroy();
LABEL_11:

  return 6;
}

uint64_t sub_1004E9B8C(uint64_t a1)
{
  sub_1000077D8(a1, &v7, &unk_100AD5B40);
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return LOBYTE(v6[0]);
    }
  }

  else
  {
    sub_100007840(&v7, &unk_100AD5B40);
  }

  sub_1000077D8(a1, &v7, &unk_100AD5B40);
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      result = sub_1007A02A4();
      if (result != 4)
      {
        return result;
      }
    }
  }

  else
  {
    sub_100007840(&v7, &unk_100AD5B40);
  }

  sub_1000077D8(a1, v6, &unk_100AD5B40);
  if (v6[3])
  {
    sub_1001F1160(&qword_100AE7C20);
    if (swift_dynamicCast())
    {
      v3 = *(&v8 + 1);
      if (*(&v8 + 1))
      {
        v4 = v9;
        sub_10000E3E8(&v7, *(&v8 + 1));
        v5 = (*(v4 + 8))(v3, v4);
        sub_1000074E0(&v7);
        return v5;
      }
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }
  }

  else
  {
    sub_100007840(v6, &unk_100AD5B40);
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
  }

  sub_100007840(&v7, &qword_100AE7C18);
  return 4;
}

uint64_t sub_1004E9D88(uint64_t a1)
{
  result = sub_1004E9B8C(a1);
  if (result == 4)
  {
    v3 = result;
    if (qword_100AD1770 != -1)
    {
      swift_once();
    }

    v4 = sub_10079ACE4();
    sub_100008B98(v4, qword_100AE7BC0);
    sub_1000077D8(a1, v15, &unk_100AD5B40);
    v5 = sub_10079ACC4();
    v6 = sub_1007A29B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136315138;
      sub_1000077D8(v15, v13, &unk_100AD5B40);
      sub_1001F1160(&unk_100AD5B40);
      v9 = sub_1007A22E4();
      v11 = v10;
      sub_100007840(v15, &unk_100AD5B40);
      v12 = sub_1000070F4(v9, v11, &v14);

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unable to extract theme appearance from sender: %s", v7, 0xCu);
      sub_1000074E0(v8);
    }

    else
    {

      sub_100007840(v15, &unk_100AD5B40);
    }

    return v3;
  }

  return result;
}

uint64_t sub_1004E9F80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009A34;

  return sub_1004E2EBC(a1, v4, v5, v6, v7);
}

uint64_t sub_1004EA044(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1004E5A5C(a1, v4, v5, v6);
}

uint64_t sub_1004EA0F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1004E5810(a1, v4, v5, v6);
}

uint64_t sub_1004EA1AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1004E55C4(a1, v4, v5, v6);
}

uint64_t sub_1004EA260(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009A34;

  return sub_1004E8B68(a1, v4, v5, v6, v7);
}

uint64_t sub_1004EA324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1004E38D4(a1, v4, v5, v6);
}

uint64_t sub_1004EA3D8()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    sub_1000074E0(v0 + 40);
  }

  return swift_deallocObject();
}

uint64_t sub_1004EA428(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1004E3240(a1, v4, v5, v6);
}

uint64_t sub_1004EA4E8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1004EA534(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1004E27F0(a1, v4, v5, v6);
}

uint64_t sub_1004EA5E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1004E2460(a1, v4, v5, v6);
}

unint64_t PersonalRecommendationIntent.Collection.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x756F792D726F66;
  v2 = 0xD000000000000016;
  if (a1 == 3)
  {
    v2 = 0xD000000000000014;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  v3 = 0xD00000000000001ALL;
  if (a1)
  {
    v3 = 0xD000000000000014;
  }

  if (a1 <= 1u)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

Swift::Int sub_1004EA764()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

uint64_t sub_1004EA850()
{
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_1004EA928()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

uint64_t sub_1004EAA10@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s5Books28PersonalRecommendationIntentV10CollectionO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1004EAA40(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x756F792D726F66;
  v5 = 0x80000001008BFD20;
  v6 = 0xD000000000000016;
  if (v2 == 3)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v5 = 0x80000001008BFD40;
  }

  if (v2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x80000001008BFCE0;
  v8 = 0xD00000000000001ALL;
  if (*v1)
  {
    v8 = 0xD000000000000014;
    v7 = 0x80000001008BFD00;
  }

  if (*v1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v7;
  }

  *a1 = v9;
  a1[1] = v3;
}

JSValue __swiftcall PersonalRecommendationIntent.makeValue(in:)(JSContext in)
{
  v3 = v2;
  v4 = v1;
  sub_1001F1160(&unk_100ADE550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080EFF0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEB00000000737265;
  v7 = sub_1001F1160(&unk_100AD61F0);
  *(inited + 48) = v4;
  *(inited + 72) = v7;
  *(inited + 80) = 0xD000000000000017;
  *(inited + 120) = &type metadata for Int;
  *(inited + 88) = 0x80000001008D8B70;
  *(inited + 96) = v3;

  sub_100019158(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100ADD560);
  swift_arrayDestroy();
  sub_1001F1160(&qword_100AD6710);
  v8 = sub_1007A3B04();
  v9 = [objc_opt_self() valueWithObject:v8 inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (v9)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004EAD14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1004EAD8C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t _s5Books28PersonalRecommendationIntentV10CollectionO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100A0D338;
  v6._object = a2;
  v4 = sub_1007A3964(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1004EAD8C(void *a1)
{
  v3 = sub_1001F1160(&qword_100AE7C70);
  __chkstk_darwin(v3 - 8);
  v5 = &v16[-1] - v4;
  v6 = sub_1007A1DC4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000E3E8(a1, a1[3]);
  sub_1007A3CA4();
  if (v1)
  {
    goto LABEL_8;
  }

  sub_10000E3E8(v16, v16[3]);
  sub_1004EB1F4(&qword_100AE7C78, &type metadata accessor for JSONObject);
  sub_1007A3AC4();
  sub_1000074E0(v16);
  sub_1007A1DB4();
  v11 = sub_1007A1E54();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_1004EB18C(v5);
LABEL_7:
    v10 = sub_1007A1FC4();
    sub_1004EB1F4(&qword_100AE7C80, &type metadata accessor for JSONError);
    swift_allocError();
    *v13 = &type metadata for PersonalRecommendationIntent.ReturnType;
    v13[1] = _swiftEmptyArrayStorage;
    (*(*(v10 - 8) + 104))(v13, enum case for JSONError.malformedDocument(_:), v10);
    swift_willThrow();
    (*(v7 + 8))(v9, v6);
LABEL_8:
    sub_1000074E0(a1);
    return v10;
  }

  sub_1001F1160(&unk_100AD5B40);
  v10 = sub_1007A1E44();
  (*(v12 + 8))(v5, v11);
  if (!v10)
  {
    goto LABEL_7;
  }

  (*(v7 + 8))(v9, v6);
  sub_1000074E0(a1);
  return v10;
}

unint64_t sub_1004EB108()
{
  result = qword_100AE7C68;
  if (!qword_100AE7C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7C68);
  }

  return result;
}

uint64_t sub_1004EB18C(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE7C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004EB1F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004EB240()
{
  result = qword_100AE7CA0;
  if (!qword_100AE7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7CA0);
  }

  return result;
}

uint64_t sub_1004EB294()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE7C88);
  sub_100008B98(v0, qword_100AE7C88);
  return sub_10079ACD4();
}

uint64_t sub_1004EB314()
{
  v0 = sub_1007967F4();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100796814();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100796CF4();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v22 = v3;
  sub_100009A38(v3, qword_100B23408);
  v21 = sub_100008B98(v3, qword_100B23408);
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  v18 = v23;
  (*(v5 + 16))(v7, v10, v23);
  *v2 = type metadata accessor for BundleFinder();
  (*(v25 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  v19 = v24;
  sub_100796834();
  (*(v5 + 8))(v10, v18);
  (*(v12 + 8))(v17, v11);
  return (*(v27 + 32))(v21, v19, v22);
}

uint64_t sub_1004EB6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  sub_1007A26F4();
  v3[7] = sub_1007A26E4();
  v5 = sub_1007A2694();

  return _swift_task_switch(sub_1004EB754, v5, v4);
}

uint64_t sub_1004EB754()
{

  sub_100795A94();
  v1 = v0[2];
  v2 = [v1 primarySceneController];

  v3 = [v2 rootBarCoordinator];
  if (v3)
  {
    type metadata accessor for RootBarCoordinator();
    if (swift_dynamicCastClass())
    {
      sub_100795DF4();
      sub_100242394(v0[2], v0[3]);

      sub_100795D24();
      swift_unknownObjectRelease();
      v4 = v0[1];
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
  }

  if (qword_100AD1778 != -1)
  {
    swift_once();
  }

  v5 = sub_10079ACE4();
  sub_100008B98(v5, qword_100AE7C88);
  v6 = sub_10079ACC4();
  v7 = sub_1007A29B4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "SearchBooksIntent: Failed getting root bar coordinator.", v8, 2u);
  }

  sub_1001FE9A0();
  swift_allocError();
  *v9 = 0;
  swift_willThrow();
  v4 = v0[1];
LABEL_10:

  return v4();
}

void (*sub_1004EB9C4(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_100795DE4();
  return sub_100220080;
}

unint64_t sub_1004EBA3C()
{
  result = qword_100AE7CA8;
  if (!qword_100AE7CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7CA8);
  }

  return result;
}

unint64_t sub_1004EBA94()
{
  result = qword_100AE7CB0;
  if (!qword_100AE7CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7CB0);
  }

  return result;
}

unint64_t sub_1004EBAEC()
{
  result = qword_100AE7CB8;
  if (!qword_100AE7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7CB8);
  }

  return result;
}

uint64_t sub_1004EBB9C()
{
  v0 = sub_1001F1160(&qword_100AE7D48);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1001F1160(&qword_100AE7D50);
  __chkstk_darwin(v1);
  sub_1007961D4();
  v3._countAndFlagsBits = 0x20686372616553;
  v3._object = 0xE700000000000000;
  sub_1007961C4(v3);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AE7D58);
  sub_1007961B4();

  v4._countAndFlagsBits = 0x6B6F6F42206E6920;
  v4._object = 0xE900000000000073;
  sub_1007961C4(v4);
  sub_1007961F4();
  return sub_1007961A4();
}

uint64_t sub_1004EBD50(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002812C;

  return sub_1004EB6B8(a1, v5, v4);
}

uint64_t sub_1004EBDFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004ECE00();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1004EBE24(uint64_t a1)
{
  v2 = sub_1004EBA3C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1004EBE64()
{
  result = qword_100AE7CC0;
  if (!qword_100AE7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7CC0);
  }

  return result;
}

unint64_t sub_1004EBEBC()
{
  result = qword_100AE7CC8;
  if (!qword_100AE7CC8)
  {
    sub_1007960A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7CC8);
  }

  return result;
}

uint64_t sub_1004EBF14()
{
  v0 = sub_1007967F4();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100796814();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100796CF4();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v22 = v3;
  sub_100009A38(v3, qword_100B23420);
  v21 = sub_100008B98(v3, qword_100B23420);
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  v18 = v23;
  (*(v5 + 16))(v7, v10, v23);
  *v2 = type metadata accessor for BundleFinder();
  (*(v25 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  v19 = v24;
  sub_100796834();
  (*(v5 + 8))(v10, v18);
  (*(v12 + 8))(v17, v11);
  return (*(v27 + 32))(v21, v19, v22);
}

uint64_t sub_1004EC2B8()
{
  sub_1001F1160(&qword_100AE7D30);
  v0 = sub_100796054();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10080B690;
  result = (*(v1 + 104))(v3 + v2, enum case for StringSearchScope.general(_:), v0);
  qword_100B23438 = v3;
  return result;
}

uint64_t sub_1004EC39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1007960A4();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_1007A26F4();
  v3[9] = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_1004EC494, v6, v5);
}

uint64_t sub_1004EC494()
{

  sub_100795A94();
  v1 = v0[2];
  v2 = [v1 primarySceneController];

  v3 = [v2 rootBarCoordinator];
  if (v3)
  {
    type metadata accessor for RootBarCoordinator();
    if (swift_dynamicCastClass())
    {
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      sub_100795DF4();
      v7 = sub_100796094();
      v9 = v8;
      (*(v5 + 8))(v4, v6);
      sub_100242394(v7, v9);

      sub_100795D24();
      swift_unknownObjectRelease();

      v10 = v0[1];
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
  }

  if (qword_100AD1778 != -1)
  {
    swift_once();
  }

  v11 = sub_10079ACE4();
  sub_100008B98(v11, qword_100AE7C88);
  v12 = sub_10079ACC4();
  v13 = sub_1007A29B4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "SearchBooksAppIntent: Failed getting root bar coordinator.", v14, 2u);
  }

  sub_1001FE9A0();
  swift_allocError();
  *v15 = 0;
  swift_willThrow();

  v10 = v0[1];
LABEL_10:

  return v10();
}

uint64_t sub_1004EC6F4@<X0>(void *a1@<X8>)
{
  if (qword_100AD1790 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_100B23438;
}

uint64_t sub_1004EC764(uint64_t a1)
{
  v2 = sub_1007960A4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_100795E04();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1004EC854(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_100795DE4();
  return sub_1004EDCC4;
}

unint64_t sub_1004EC8C8()
{
  result = qword_100AE7CD0;
  if (!qword_100AE7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7CD0);
  }

  return result;
}

unint64_t sub_1004EC920()
{
  result = qword_100AE7CD8;
  if (!qword_100AE7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7CD8);
  }

  return result;
}

unint64_t sub_1004EC978()
{
  result = qword_100AE7CE0;
  if (!qword_100AE7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7CE0);
  }

  return result;
}

uint64_t sub_1004ECA28@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_100796814();
  v6 = sub_100008B98(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1004ECAC4()
{
  v0 = sub_1001F1160(&qword_100AE7D18);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1001F1160(&qword_100AE7D20);
  __chkstk_darwin(v1);
  sub_1007961D4();
  v3._countAndFlagsBits = 0x20686372616553;
  v3._object = 0xE700000000000000;
  sub_1007961C4(v3);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AE7D28);
  sub_1007961B4();

  v4._countAndFlagsBits = 0x6B6F6F42206E6920;
  v4._object = 0xE900000000000073;
  sub_1007961C4(v4);
  sub_1007961F4();
  return sub_1007961A4();
}

uint64_t sub_1004ECC78(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009A34;

  return sub_1004EC39C(a1, v5, v4);
}

uint64_t sub_1004ECD24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004ED5A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1004ECD4C(uint64_t a1)
{
  v2 = sub_1004EC8C8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1004ECD8C()
{
  result = qword_100AE7CE8;
  if (!qword_100AE7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7CE8);
  }

  return result;
}

uint64_t sub_1004ECE00()
{
  v0 = sub_100796274();
  v56 = *(v0 - 8);
  v57 = v0;
  __chkstk_darwin(v0);
  v55 = v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1001F1160(&qword_100AD5CB0);
  __chkstk_darwin(v2 - 8);
  v54 = v41 - v3;
  v4 = sub_1001F1160(&qword_100AE7D38);
  __chkstk_darwin(v4 - 8);
  v53 = v41 - v5;
  v6 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v6 - 8);
  v52 = v41 - v7;
  v59 = sub_1007967F4();
  v61 = *(v59 - 8);
  __chkstk_darwin(v59);
  v9 = (v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_100796CF4();
  v60 = *(v47 - 8);
  v10 = v60;
  __chkstk_darwin(v47);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v41 - v14;
  v16 = sub_1007A21D4();
  v58 = v16;
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v41 - v21;
  v23 = sub_100796814();
  v49 = *(v23 - 8);
  v50 = v23;
  __chkstk_darwin(v23);
  v48 = v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1001F1160(&qword_100AE7D40);
  sub_1007A2154();
  sub_100796C94();
  v46 = *(v17 + 16);
  v46(v19, v22, v16);
  v45 = *(v10 + 16);
  v25 = v12;
  v26 = v12;
  v27 = v47;
  v45(v26, v15, v47);
  v44 = type metadata accessor for BundleFinder();
  *v9 = v44;
  v42 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v28 = *(v61 + 104);
  v61 += 104;
  v43 = v28;
  v41[0] = v9;
  v28(v9);
  sub_100796834();
  v29 = *(v60 + 8);
  v60 += 8;
  v30 = v27;
  v29(v15, v27);
  v31 = v17 + 8;
  v32 = *(v17 + 8);
  v41[1] = v31;
  v33 = v58;
  v32(v22, v58);
  sub_1007A2154();
  sub_100796C94();
  v46(v19, v22, v33);
  v34 = v30;
  v45(v25, v15, v30);
  v35 = v41[0];
  *v41[0] = v44;
  v43(v35, v42, v59);
  v36 = v52;
  sub_100796834();
  v29(v15, v34);
  v32(v22, v58);
  (*(v49 + 56))(v36, 0, 1, v50);
  v37 = sub_1007A2134();
  v62 = 0uLL;
  (*(*(v37 - 8) + 56))(v53, 1, 1, v37);
  v38 = sub_100795CE4();
  (*(*(v38 - 8) + 56))(v54, 1, 1, v38);
  (*(v56 + 104))(v55, enum case for InputConnectionBehavior.default(_:), v57);
  v39 = sub_100795EA4();
  sub_1001F1160(&qword_100AD4A58);
  sub_100795B74();
  v62 = 0u;
  v63 = 0u;
  v64 = 0;
  sub_100795B64();
  sub_100795AA4();
  return v39;
}

uint64_t sub_1004ED5A4()
{
  v0 = sub_100796274();
  v50 = *(v0 - 8);
  v51 = v0;
  __chkstk_darwin(v0);
  v49 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1001F1160(&qword_100AD5CB0);
  __chkstk_darwin(v2 - 8);
  v48 = &v34 - v3;
  v4 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v4 - 8);
  v47 = &v34 - v5;
  v55 = sub_1007967F4();
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = sub_100796CF4();
  v7 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  v13 = sub_1007A21D4();
  v52 = v13;
  v56 = *(v13 - 8);
  v14 = v56;
  __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  v20 = sub_100796814();
  v44 = *(v20 - 8);
  v45 = v20;
  __chkstk_darwin(v20);
  v54 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1001F1160(&qword_100AE7D10);
  sub_1007A2154();
  sub_100796C94();
  v42 = *(v14 + 16);
  v35 = v16;
  v42(v16, v19, v13);
  v41 = *(v7 + 16);
  v22 = v9;
  v23 = v43;
  v41(v9, v12, v43);
  v40 = type metadata accessor for BundleFinder();
  v24 = v53;
  *v53 = v40;
  v38 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v25 = *(v57 + 104);
  v57 += 104;
  v39 = v25;
  v25(v24);
  sub_100796834();
  v26 = *(v7 + 8);
  v36 = v7 + 8;
  v37 = v26;
  v26(v12, v23);
  v27 = *(v56 + 8);
  v56 += 8;
  v28 = v52;
  v27(v19, v52);
  sub_1007A2154();
  sub_100796C94();
  v42(v35, v19, v28);
  v41(v22, v12, v23);
  v29 = v53;
  *v53 = v40;
  v39(v29, v38, v55);
  v30 = v47;
  sub_100796834();
  v37(v12, v23);
  v27(v19, v52);
  (*(v44 + 56))(v30, 0, 1, v45);
  v31 = sub_100795CE4();
  (*(*(v31 - 8) + 56))(v48, 1, 1, v31);
  (*(v50 + 104))(v49, enum case for InputConnectionBehavior.default(_:), v51);
  v32 = sub_100795E84();
  sub_1001F1160(&qword_100AD4A58);
  sub_100795B74();
  v58 = 0u;
  v59 = 0u;
  v60 = 0;
  sub_100795B64();
  sub_100795AA4();
  return v32;
}

id sub_1004EDCD4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC5Books15BKTapActionView_listener + 8] = 0;
  v14 = swift_unknownObjectWeakInit();
  v15 = &v7[OBJC_IVAR____TtC5Books15BKTapActionView_action];
  *v15 = a6;
  *(v15 + 1) = a7;
  v16 = &v7[OBJC_IVAR____TtC5Books15BKTapActionView_fixedSize];
  *v16 = *&a1;
  v16[1] = *&a2;
  *(v16 + 16) = a3 & 1;
  *(v14 + 8) = a5;
  if (a3)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = *&a1;
  }

  if (a3)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = *&a2;
  }

  swift_unknownObjectWeakAssign();
  v27.receiver = v7;
  v27.super_class = type metadata accessor for BKTapActionView();

  v19 = objc_msgSendSuper2(&v27, "initWithFrame:", 0.0, 0.0, v17, v18);
  v20 = objc_allocWithZone(UITapGestureRecognizer);
  v21 = v19;
  v22 = [v20 initWithTarget:v21 action:{"fireAction:", v27.receiver, v27.super_class}];
  [v22 setDelegate:v21];
  v23 = v21;
  [v23 addGestureRecognizer:v22];
  v24 = [objc_opt_self() clearColor];
  [v23 setBackgroundColor:v24];

  v25 = [objc_allocWithZone(UIPointerInteraction) initWithDelegate:v23];
  [v23 addInteraction:v25];

  swift_unknownObjectRelease();

  return v23;
}

void sub_1004EDF2C()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BKTapActionView();
  objc_msgSendSuper2(&v4, "didMoveToWindow");
  v1 = [v0 window];
  if (v1)
  {

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_beginAccess();
      sub_1006E6D08(&v3, v0);
      swift_endAccess();
      swift_unknownObjectRelease();
    }
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    swift_beginAccess();
    v2 = sub_10062484C(v0);
    swift_endAccess();
    swift_unknownObjectRelease();
  }
}

id sub_1004EE1F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BKTapActionView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004EE3C0(id a1)
{
  if (*(v1 + 64))
  {
    v3 = sub_1007A2214();
    [a1 setLargeContentTitle:v3];

    [a1 setShowsLargeContentViewer:1];
    sub_1001F1160(&qword_100AE7EB8);
    sub_10079D0C4();
    v4 = *(v7 + 16);

    [a1 addInteraction:v4];
  }

  else
  {
    [a1 setLargeContentTitle:0];
    [a1 setShowsLargeContentViewer:0];
    sub_1001F1160(&qword_100AE7EB8);
    sub_10079D0C4();
    v4 = *(v7 + 16);

    [a1 removeInteraction:v4];
  }

  if (*(v1 + 80))
  {
    v5 = sub_1007A2214();
    v6 = [objc_opt_self() imageNamed:v5];

    [a1 setLargeContentImage:v6];
  }

  else
  {
    [a1 setLargeContentImage:0];
  }
}

id sub_1004EE55C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = objc_allocWithZone(type metadata accessor for BKTapActionView());
  swift_unknownObjectRetain();

  return sub_1004EDCD4(v1, v2, v3, v4, v5, v7, v6);
}

id sub_1004EE5E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TapActionView.Coordinator();
  v2 = swift_allocObject();
  result = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  *(v2 + 16) = result;
  *a1 = v2;
  return result;
}

uint64_t sub_1004EE638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004EEB50();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1004EE69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004EEB50();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1004EE700()
{
  sub_1004EEB50();
  sub_10079CC64();
  __break(1u);
}

id sub_1004EE728(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    sub_10000A7C4(0, &qword_100ADAF70);
    if (sub_1007A3184())
    {
      sub_10000A7C4(0, &qword_100AD7E90);
      [v2 bounds];
      sub_1007A2B84();
      v3 = sub_1007A2B94();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_1004EE830(void *a1)
{
  v2 = sub_1001F1160(&unk_100AE7EA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_10079B1D4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [a1 view];
  if (result)
  {
    v11 = result;
    sub_10000A7C4(0, &qword_100ADAF70);
    if (sub_1007A3184())
    {
      v12 = [objc_allocWithZone(UITargetedPreview) initWithView:v11];
      sub_10000A7C4(0, &unk_100AD7E80);
      *v9 = v12;
      (*(v6 + 104))(v9, enum case for UIPointerEffect.automatic(_:), v5);
      v13 = sub_10079B0F4();
      (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
      v14 = sub_1007A2AE4();

      return v14;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1004EEA4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1004EEA94(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_1004EEAFC()
{
  result = qword_100AE7EB0;
  if (!qword_100AE7EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7EB0);
  }

  return result;
}

unint64_t sub_1004EEB50()
{
  result = qword_100AE7EC0;
  if (!qword_100AE7EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7EC0);
  }

  return result;
}

uint64_t sub_1004EEBA4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1004EEBEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004EEC44()
{
  v1[45] = v0;
  sub_1007A26F4();
  v1[46] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[47] = v3;
  v1[48] = v2;

  return _swift_task_switch(sub_1004EECDC, v3, v2);
}

uint64_t sub_1004EECDC()
{
  v40 = v0;
  v1 = objc_opt_self();
  v2 = [v1 defaultManager];
  v3 = [v2 uiChildContext];
  *(v0 + 392) = v3;

  v4 = [v1 defaultManager];
  sub_10000A7C4(0, &qword_100AD6750);
  isa = sub_1007A25D4().super.isa;
  v6 = [v4 mostRecentlyEngagedLibraryAssetWithTypes:isa inManagedObjectContext:v3];

  v7 = v6;
  if (!v6)
  {
    v8 = [v1 defaultManager];
    v9 = sub_1007A25D4().super.isa;
    v10 = [v8 mostRecentlyOpenedLibraryAssetWithTypes:v9 inManagedObjectContext:v3];

    if (!v10)
    {

      if (qword_100AD1798 != -1)
      {
        swift_once();
      }

      v33 = sub_10079ACE4();
      sub_100008B98(v33, qword_100AE7ED0);
      v34 = sub_10079ACC4();
      v35 = sub_1007A29B4();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v39[0] = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_1000070F4(0xD000000000000010, 0x80000001008D91D0, v39);
        _os_log_impl(&_mh_execute_header, v34, v35, "%s: Failed to find recent book.", v36, 0xCu);
        sub_1000074E0(v37);
      }

      sub_1004FA080();
      swift_allocError();
      *v38 = 7;
      swift_willThrow();

      v32 = *(v0 + 8);
      goto LABEL_24;
    }

    v7 = v10;
  }

  *(v0 + 400) = v7;
  v11 = v6;

  sub_1001F1160(&unk_100AD8160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100811390;
  *(inited + 32) = v7;
  v13 = v7;
  v14 = sub_1004F6BD4(inited, v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (*(v14 + 2))
  {
    v15 = *(v14 + 3);
    *(v0 + 16) = *(v14 + 2);
    *(v0 + 32) = v15;
    v16 = *(v14 + 4);
    v17 = *(v14 + 5);
    v18 = *(v14 + 7);
    *(v0 + 80) = *(v14 + 6);
    *(v0 + 96) = v18;
    *(v0 + 48) = v16;
    *(v0 + 64) = v17;
    sub_1002A40C0(v0 + 16, v0 + 112);

    if (qword_100AD1798 != -1)
    {
      swift_once();
    }

    v19 = sub_10079ACE4();
    sub_100008B98(v19, qword_100AE7ED0);
    sub_1002A40C0(v0 + 16, v0 + 208);
    v20 = sub_10079ACC4();
    v21 = sub_1007A29D4();
    sub_1002A411C(v0 + 16);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 16);
      v23 = *(v0 + 24);
      v24 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v24 = 136315650;
      *(v24 + 4) = sub_1000070F4(0xD000000000000010, 0x80000001008D91D0, v39);
      *(v24 + 12) = 2080;

      v25 = sub_1000070F4(v22, v23, v39);

      *(v24 + 14) = v25;
      *(v24 + 22) = 2080;
      sub_100795D54();
      v26 = *(v0 + 352);
      if (v26)
      {
        v27 = *(v0 + 344);
      }

      else
      {
        v27 = 0x6E776F6E6B6E75;
      }

      if (v26)
      {
        v28 = *(v0 + 352);
      }

      else
      {
        v28 = 0xE700000000000000;
      }

      v29 = sub_1000070F4(v27, v28, v39);

      *(v24 + 24) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s: assetID: %s title: %s", v24, 0x20u);
      swift_arrayDestroy();
    }

    v30 = swift_task_alloc();
    *(v0 + 408) = v30;
    *v30 = v0;
    v30[1] = sub_1004EF2D4;

    return sub_1004F2C14((v0 + 16), v13);
  }

  v32 = *(v0 + 8);
LABEL_24:

  return v32();
}

uint64_t sub_1004EF2D4()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 384);
  v4 = *(v2 + 376);
  if (v0)
  {
    v5 = sub_1004EF48C;
  }

  else
  {
    v5 = sub_1004EF410;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004EF410()
{
  v1 = *(v0 + 392);

  sub_1002A411C(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004EF48C()
{
  v1 = *(v0 + 392);

  sub_1002A411C(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004EF508(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  sub_1007A26F4();
  v2[18] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v2[19] = v4;
  v2[20] = v3;

  return _swift_task_switch(sub_1004EF5A0, v4, v3);
}

uint64_t sub_1004EF5A0()
{
  v25 = v0;
  v1 = v0[16];
  v2 = *v1;
  v3 = v1[1];
  if (qword_100AD1798 != -1)
  {
    swift_once();
    v1 = v0[16];
  }

  v4 = sub_10079ACE4();
  sub_100008B98(v4, qword_100AE7ED0);

  sub_1002A40C0(v1, (v0 + 2));
  v5 = sub_10079ACC4();
  v6 = sub_1007A29D4();

  sub_1002A411C(v1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v7 = 136315650;
    *(v7 + 4) = sub_1000070F4(0xD000000000000011, 0x80000001008D9160, v24);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1000070F4(v2, v3, v24);
    *(v7 + 22) = 2080;
    sub_100795D54();
    v8 = v0[15];
    if (v8)
    {
      v9 = v0[14];
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (v8)
    {
      v10 = v0[15];
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    v11 = sub_1000070F4(v9, v10, v24);

    *(v7 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: assetID: %s title: %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  v12 = [objc_opt_self() defaultManager];
  v13 = sub_1007A2214();
  v14 = [v12 libraryAssetOnMainQueueWithAssetID:v13];
  v0[21] = v14;

  if (v14)
  {
    v15 = v14;
    v16 = swift_task_alloc();
    v0[22] = v16;
    *v16 = v0;
    v16[1] = sub_1004EFA04;
    v17 = v0[16];

    return sub_1004F2C14(v17, v15);
  }

  else
  {

    v19 = sub_10079ACC4();
    v20 = sub_1007A29B4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v24[0] = swift_slowAlloc();
      *v21 = 136315394;
      *(v21 + 4) = sub_1000070F4(0xD000000000000011, 0x80000001008D9160, v24);
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_1000070F4(v2, v3, v24);
      _os_log_impl(&_mh_execute_header, v19, v20, "%s: Library asset not found. assetID: %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    sub_1004FA080();
    swift_allocError();
    *v22 = 3;
    swift_willThrow();
    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_1004EFA04()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_1004EFBB4;
  }

  else
  {
    v5 = sub_1004EFB40;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004EFB40()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004EFBB4()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004EFC24(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_1007A26F4();
  v2[6] = sub_1007A26E4();
  v2[7] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_1004EFCCC, v4, v3);
}

uint64_t sub_1004EFCCC()
{
  v1 = v0[4];
  v2 = sub_1007A26E4();
  v0[10] = v2;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1004EFDD0;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, v2, &protocol witness table for MainActor, 0xD000000000000014, 0x80000001008D8F90, sub_1004FAC44, v3, &type metadata for () + 8);
}

uint64_t sub_1004EFDD0()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_1004EFF30, v3, v2);
}

uint64_t sub_1004EFF30()
{

  v2 = sub_1007A2694();
  *(v0 + 104) = v2;
  *(v0 + 112) = v1;

  return _swift_task_switch(sub_1004EFFB4, v2, v1);
}

uint64_t sub_1004EFFB4()
{
  v6 = *(v0 + 24);
  v1 = sub_1007A26E4();
  *(v0 + 120) = v1;
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  v2[1] = vextq_s8(v6, v6, 8uLL);
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  v4 = sub_1001F1160(&qword_100AE7F90);
  *v3 = v0;
  v3[1] = sub_1004F00E4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, v1, &protocol witness table for MainActor, 0xD00000000000001FLL, 0x80000001008D9230, sub_1004FA894, v2, v4);
}

uint64_t sub_1004F00E4()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_1004F0244, v3, v2);
}

uint64_t sub_1004F0244()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1004F02A8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = sub_1007A26F4();
  v3[7] = sub_1007A26E4();
  v3[8] = sub_1007A26E4();
  v5 = sub_1007A2694();
  v3[9] = v5;
  v3[10] = v4;

  return _swift_task_switch(sub_1004F0354, v5, v4);
}

uint64_t sub_1004F0354()
{
  v1 = v0[5];
  v2 = sub_1007A26E4();
  v0[11] = v2;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1004F0458;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, v2, &protocol witness table for MainActor, 0xD000000000000014, 0x80000001008D8F90, sub_1004FAC44, v3, &type metadata for () + 8);
}

uint64_t sub_1004F0458()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_1004F05B8, v3, v2);
}

uint64_t sub_1004F05B8()
{

  v2 = sub_1007A2694();
  *(v0 + 112) = v2;
  *(v0 + 120) = v1;

  return _swift_task_switch(sub_1004F063C, v2, v1);
}

uint64_t sub_1004F063C()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = sub_1007A26E4();
  v0[16] = v4;
  v5 = swift_task_alloc();
  v0[17] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v0[18] = v6;
  v7 = sub_1001F1160(&qword_100AE7F90);
  *v6 = v0;
  v6[1] = sub_1004F0764;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, v4, &protocol witness table for MainActor, 0xD00000000000001FLL, 0x80000001008D9210, sub_1004FA6E8, v5, v7);
}

uint64_t sub_1004F0764()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_1004F08C4, v3, v2);
}

uint64_t sub_1004F08C4()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1004F0928()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE7ED0);
  sub_100008B98(v0, qword_100AE7ED0);
  return sub_10079ACD4();
}

uint64_t sub_1004F09A8@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v29 = sub_1007967F4();
  v3 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_100796CF4();
  v6 = *(v32 - 8);
  __chkstk_darwin(v32);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v27 - v17;
  v19 = (v12 + 16);
  v20 = (v6 + 16);
  v21 = (v3 + 104);
  v28 = v22;
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      v25 = v16;
      sub_1007A2154();
      sub_100796C94();
      (*v19)(v14, v18, v25);
      v24 = v32;
      (*v20)(v30, v10, v32);
      *v5 = type metadata accessor for BundleFinder();
      (*v21)(v5, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v29);
      goto LABEL_7;
    }

    v23 = v16;
  }

  else
  {
    v23 = v16;
  }

  sub_1007A2154();
  sub_100796C94();
  (*v19)(v14, v18, v23);
  v24 = v32;
  (*v20)(v30, v10, v32);
  *v5 = type metadata accessor for BundleFinder();
  (*v21)(v5, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v29);
LABEL_7:
  sub_100796834();
  (*(v6 + 8))(v10, v24);
  return (*(v12 + 8))(v18, v28);
}

void sub_1004F133C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v6 = sub_1001F1160(&qword_100AE7F98);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = [objc_opt_self() defaultManager];
  v11 = *a2;
  v12 = *(a2 + 24);
  v21 = *(a2 + 16);
  v26 = *(a2 + 32);
  v27 = v12;
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v15 = *(a2 + 16);
  *(v14 + 16) = *a2;
  *(v14 + 32) = v15;
  v16 = v22;
  v17 = v23;
  *(v14 + 48) = *(a2 + 32);
  *(v14 + 56) = v16;
  *(v14 + 64) = v17;
  (*(v7 + 32))(v14 + v13, v9, v6);
  aBlock[4] = sub_1004FA7DC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = &unk_100A20C38;
  v18 = _Block_copy(aBlock);
  v19 = v11;
  swift_unknownObjectRetain();
  v20 = v21;
  sub_1000077D8(&v27, v24, &qword_100AE6A50);
  sub_1000077D8(&v26, v24, &qword_100AE6A50);

  [v10 performBackgroundReadOnlyBlock:v18];
  _Block_release(v18);
}

uint64_t sub_1004F15A4(uint64_t a1)
{
  v2 = [objc_opt_self() defaultManager];
  sub_10000A7C4(0, &qword_100AD9BD0);
  v3 = sub_1007A2F04();

  sub_1004F6BD4(v3, a1);

  sub_1001F1160(&qword_100AE7F98);
  return sub_1007A26B4();
}

uint64_t sub_1004F1698(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = sub_1007A26F4();
  v3[7] = sub_1007A26E4();
  v3[8] = sub_1007A26E4();
  v5 = sub_1007A2694();
  v3[9] = v5;
  v3[10] = v4;

  return _swift_task_switch(sub_1004F1744, v5, v4);
}

uint64_t sub_1004F1744()
{
  v1 = v0[5];
  v2 = sub_1007A26E4();
  v0[11] = v2;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1004F1848;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, v2, &protocol witness table for MainActor, 0xD000000000000014, 0x80000001008D8F90, sub_1004FA0D4, v3, &type metadata for () + 8);
}

uint64_t sub_1004F1848()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_1004F19A8, v3, v2);
}

uint64_t sub_1004F19A8()
{

  v2 = sub_1007A2694();
  *(v0 + 112) = v2;
  *(v0 + 120) = v1;

  return _swift_task_switch(sub_1004F1A2C, v2, v1);
}

uint64_t sub_1004F1A2C()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = sub_1007A26E4();
  v0[16] = v4;
  v5 = swift_task_alloc();
  v0[17] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v0[18] = v6;
  v7 = sub_1001F1160(&qword_100AE7F00);
  *v6 = v0;
  v6[1] = sub_1004F1B54;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, v4, &protocol witness table for MainActor, 0xD000000000000027, 0x80000001008D8FB0, sub_1004FA0DC, v5, v7);
}

uint64_t sub_1004F1B54()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_1004FAC24, v3, v2);
}

void sub_1004F1CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v6 = sub_1001F1160(&qword_100AE7F08);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = [objc_opt_self() defaultManager];
  v11 = *a2;
  v12 = *(a2 + 24);
  v21 = *(a2 + 16);
  v26 = *(a2 + 32);
  v27 = v12;
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v15 = *(a2 + 16);
  *(v14 + 16) = *a2;
  *(v14 + 32) = v15;
  v16 = v22;
  v17 = v23;
  *(v14 + 48) = *(a2 + 32);
  *(v14 + 56) = v16;
  *(v14 + 64) = v17;
  (*(v7 + 32))(v14 + v13, v9, v6);
  aBlock[4] = sub_1004FA0E8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = &unk_100A20A58;
  v18 = _Block_copy(aBlock);
  v19 = v11;
  swift_unknownObjectRetain();
  v20 = v21;
  sub_1000077D8(&v27, v24, &qword_100AE6A50);
  sub_1000077D8(&v26, v24, &qword_100AE6A50);

  [v10 performBackgroundReadOnlyBlock:v18];
  _Block_release(v18);
}

uint64_t sub_1004F1F1C(uint64_t a1)
{
  v2 = [objc_opt_self() defaultManager];
  sub_10000A7C4(0, &qword_100AD9BD0);
  v3 = sub_1007A2F04();

  sub_1004F6DE0(v3, a1);

  sub_1001F1160(&qword_100AE7F08);
  return sub_1007A26B4();
}

void sub_1004F2010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1001F1160(&qword_100AE7F98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = [objc_opt_self() defaultManager];
  v10 = *a2;
  v11 = *(a2 + 24);
  v20 = *(a2 + 16);
  v24 = *(a2 + 32);
  v25 = v11;
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v14 = *(a2 + 16);
  *(v13 + 16) = *a2;
  *(v13 + 32) = v14;
  v15 = v21;
  *(v13 + 48) = *(a2 + 32);
  *(v13 + 56) = v15;
  (*(v6 + 32))(v13 + v12, v8, v5);
  aBlock[4] = sub_1004FA984;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = &unk_100A20C88;
  v16 = _Block_copy(aBlock);
  v17 = v10;
  swift_unknownObjectRetain();
  v18 = v20;
  sub_1000077D8(&v25, v22, &qword_100AE6A50);
  sub_1000077D8(&v24, v22, &qword_100AE6A50);

  [v9 performBackgroundReadOnlyBlock:v16];
  _Block_release(v16);
}

uint64_t sub_1004F2274(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_1007A26F4();
  v2[6] = sub_1007A26E4();
  v2[7] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_1004F231C, v4, v3);
}

uint64_t sub_1004F231C()
{
  v1 = v0[4];
  v2 = sub_1007A26E4();
  v0[10] = v2;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1004F2420;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, v2, &protocol witness table for MainActor, 0xD000000000000014, 0x80000001008D8F90, sub_1004FAC44, v3, &type metadata for () + 8);
}

uint64_t sub_1004F2420()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_1004F2580, v3, v2);
}

uint64_t sub_1004F2580()
{

  v2 = sub_1007A2694();
  *(v0 + 104) = v2;
  *(v0 + 112) = v1;

  return _swift_task_switch(sub_1004F2604, v2, v1);
}

uint64_t sub_1004F2604()
{
  v6 = *(v0 + 24);
  v1 = sub_1007A26E4();
  *(v0 + 120) = v1;
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  v2[1] = vextq_s8(v6, v6, 8uLL);
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  v4 = sub_1001F1160(&qword_100AE7F00);
  *v3 = v0;
  v3[1] = sub_1004F2734;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, v1, &protocol witness table for MainActor, 0xD000000000000027, 0x80000001008D9110, sub_1004FA2B4, v2, v4);
}

uint64_t sub_1004F2734()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_1004FAC28, v3, v2);
}

void sub_1004F2894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1001F1160(&qword_100AE7F08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = [objc_opt_self() defaultManager];
  v10 = *a2;
  v11 = *(a2 + 24);
  v20 = *(a2 + 16);
  v24 = *(a2 + 32);
  v25 = v11;
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v14 = *(a2 + 16);
  *(v13 + 16) = *a2;
  *(v13 + 32) = v14;
  v15 = v21;
  *(v13 + 48) = *(a2 + 32);
  *(v13 + 56) = v15;
  (*(v6 + 32))(v13 + v12, v8, v5);
  aBlock[4] = sub_1004FA2BC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = &unk_100A20B20;
  v16 = _Block_copy(aBlock);
  v17 = v10;
  swift_unknownObjectRetain();
  v18 = v20;
  sub_1000077D8(&v25, v22, &qword_100AE6A50);
  sub_1000077D8(&v24, v22, &qword_100AE6A50);

  [v9 performBackgroundReadOnlyBlock:v16];
  _Block_release(v16);
}

uint64_t sub_1004F2AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t *a6)
{
  v9 = [objc_opt_self() defaultManager];
  isa = sub_1007A25D4().super.isa;
  v11 = [v9 libraryAssetsWithAssetIDs:isa inManagedObjectContext:a1];

  sub_10000A7C4(0, &qword_100ADA990);
  v12 = sub_1007A25E4();

  a5(v12, a1);

  sub_1001F1160(a6);
  return sub_1007A26B4();
}

uint64_t sub_1004F2C14(void *a1, uint64_t a2)
{
  v3[70] = v2;
  v3[69] = a2;
  v3[68] = a1;
  v3[71] = sub_1007A26F4();
  v3[72] = sub_1007A26E4();
  v5 = a1[1];
  v3[73] = *a1;
  v3[74] = v5;
  v3[75] = sub_1007A26E4();
  v7 = sub_1007A2694();
  v3[76] = v7;
  v3[77] = v6;

  return _swift_task_switch(sub_1004F2CE0, v7, v6);
}

uint64_t sub_1004F2CE0()
{
  v1 = *(v0[70] + 16);
  v0[78] = v1;
  v0[2] = v0;
  v0[7] = v0 + 66;
  v0[3] = sub_1004F2E04;
  v2 = swift_continuation_init();
  v0[53] = sub_1001F1160(&qword_100AE7EF0);
  v0[46] = _NSConcreteStackBlock;
  v0[47] = 1107296256;
  v0[48] = sub_1003807B4;
  v0[49] = &unk_100A20B48;
  v0[50] = v2;
  [v1 requestPrimaryScene:v0 + 46];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004F2E04()
{
  v1 = *(*v0 + 616);
  v2 = *(*v0 + 608);

  return _swift_task_switch(sub_1004F2F0C, v2, v1);
}

uint64_t sub_1004F2F0C()
{

  v1 = v0[66];
  v0[79] = [v1 newShowAssetTransaction];

  v3 = sub_1007A2694();
  v0[80] = v3;
  v0[81] = v2;

  return _swift_task_switch(sub_1004F2FBC, v3, v2);
}

uint64_t sub_1004F2FBC()
{
  v29 = v0;
  v1 = *(v0 + 632);
  v2 = *(v0 + 552);
  sub_1001F1160(&unk_100ADE550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100815060;
  *(inited + 32) = sub_1007A2254();
  *(inited + 40) = v4;
  *(inited + 72) = swift_getObjectType();
  *(inited + 48) = v1;
  *(inited + 80) = sub_1007A2254();
  *(inited + 88) = v5;
  swift_unknownObjectRetain();
  sub_100795D54();
  v6 = *(v0 + 496);
  v7 = *(v0 + 504);
  if (!v7)
  {
    v7 = 0xE000000000000000;
    v6 = 0;
  }

  *(inited + 96) = v6;
  *(inited + 104) = v7;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD00000000000002BLL;
  *(inited + 136) = 0x80000001008BF710;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  *(inited + 176) = sub_1007A2254();
  *(inited + 184) = v8;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  v9 = sub_100019158(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100ADD560);
  swift_arrayDestroy();
  if (([v2 isOwned] & 1) != 0 || objc_msgSend(*(v0 + 552), "isLocal"))
  {
    v10 = *(v0 + 632);
    v11 = [*(v0 + 624) bookPresenter];
    *(v0 + 656) = v11;
    swift_unknownObjectRetain();
    v12 = sub_1007A2214();
    *(v0 + 664) = v12;
    sub_10058096C(v9);

    isa = sub_1007A2024().super.isa;
    *(v0 + 672) = isa;

    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 512;
    *(v0 + 88) = sub_1004F357C;
    v14 = swift_continuation_init();
    *(v0 + 488) = sub_1001F1160(&qword_100AE7EF8);
    *(v0 + 432) = _NSConcreteStackBlock;
    *(v0 + 440) = 1107296256;
    *(v0 + 448) = sub_1004F3EAC;
    *(v0 + 456) = &unk_100A20B70;
    *(v0 + 464) = v14;
    [v11 showAssetWithTransaction:v10 assetID:v12 location:0 options:isa completion:v0 + 432];

    return _swift_continuation_await(v0 + 80);
  }

  else
  {
    v15 = *(v0 + 552);

    if ([v15 isNonLocalSample])
    {
      v16 = *(v0 + 632);
      v17 = *(v0 + 624);
      sub_1004F3F88(*(v0 + 552));
      v18 = [v17 bookPresenter];
      swift_unknownObjectRetain();
      v19 = sub_1007A2214();
      sub_10058096C(v9);

      v20 = sub_1007A2024().super.isa;

      [v18 showAssetWithTransaction:v16 storeID:v19 options:v20];
      swift_unknownObjectRelease_n();

      swift_unknownObjectRelease();
      v21 = *(v0 + 8);
    }

    else
    {

      if (qword_100AD1798 != -1)
      {
        swift_once();
      }

      v22 = sub_10079ACE4();
      sub_100008B98(v22, qword_100AE7ED0);
      v23 = sub_10079ACC4();
      v24 = sub_1007A29B4();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v28 = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_1000070F4(0xD00000000000001FLL, 0x80000001008D9180, &v28);
        _os_log_impl(&_mh_execute_header, v23, v24, "%s: Asset cannot be downloaded, device is offline.", v25, 0xCu);
        sub_1000074E0(v26);
      }

      sub_100795AD4();
      sub_100214F44();
      swift_allocError();
      sub_100795AB4();
      swift_willThrow();
      swift_unknownObjectRelease();
      v21 = *(v0 + 8);
    }

    return v21();
  }
}

uint64_t sub_1004F357C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 680) = v2;
  v3 = *(v1 + 648);
  v4 = *(v1 + 640);
  if (v2)
  {
    v5 = sub_1004F375C;
  }

  else
  {
    v5 = sub_1004F36AC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004F36AC()
{
  v1 = v0[84];
  v2 = v0[83];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1004F375C()
{
  v14 = v0;
  v1 = v0[84];
  v2 = v0[83];

  swift_willThrow();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (qword_100AD1798 != -1)
  {
    swift_once();
  }

  v3 = sub_10079ACE4();
  sub_100008B98(v3, qword_100AE7ED0);
  swift_errorRetain();
  v4 = sub_10079ACC4();
  v5 = sub_1007A29B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[85];
    v7 = swift_slowAlloc();
    v13[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1000070F4(0xD00000000000001FLL, 0x80000001008D9180, v13);
    *(v7 + 12) = 2080;
    v0[67] = v6;
    swift_errorRetain();
    sub_1001F1160(&unk_100AD67F0);
    v8 = sub_1007A22E4();
    v10 = sub_1000070F4(v8, v9, v13);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: showAsset failed. error: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  swift_unknownObjectRelease();
  v11 = v0[1];

  return v11();
}

uint64_t sub_1004F39A0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1007A26F4();
  v2[4] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1004F3A38, v4, v3);
}

id sub_1004F3A38()
{
  v1 = v0;
  result = [objc_msgSend(*(v0[3] + 16) "bookPresenter")];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  swift_unknownObjectRelease();
  sub_1001F1160(&unk_100AE7F40);
  v4 = sub_1007A25E4();

  if (v4 >> 62)
  {
LABEL_25:
    v5 = sub_1007A38D4();
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_26:

    v18 = swift_task_alloc();
    v1[7] = v18;
    *v18 = v1;
    v18[1] = sub_1004F3D0C;
    v19 = v1[2];

    return sub_1004EF508(v19);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_26;
  }

LABEL_4:
  v6 = 0;
  v20 = v1[2];
  while ((v4 & 0xC000000000000001) != 0)
  {
    v7 = sub_1007A3784();
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_19;
    }

LABEL_10:
    v9 = [v7 assetPresenterAssetID];
    if (v9)
    {
      v0 = v1;
      v10 = v1[2];
      v11 = v9;
      v12 = sub_1007A2254();
      v14 = v13;

      if (v12 == *v10 && v14 == *(v20 + 8))
      {
        goto LABEL_20;
      }

      v16 = sub_1007A3AB4();
      swift_unknownObjectRelease();

      v1 = v0;
      if (v16)
      {
        goto LABEL_21;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v6;
    if (v8 == v5)
    {
      goto LABEL_26;
    }
  }

  if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_25;
  }

  v7 = *(v4 + 8 * v6 + 32);
  swift_unknownObjectRetain();
  v8 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  v1 = v0;
  swift_unknownObjectRelease();

LABEL_21:

  v17 = v1[1];

  return v17();
}

uint64_t sub_1004F3D0C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_1004F3E48;
  }

  else
  {
    v5 = sub_1004AACB8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004F3E48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004F3EAC(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v7 = *sub_10000E3E8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001F1160(&unk_100AD67F0);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    *(v11 + 8) = a4;
    swift_unknownObjectRetain();

    return swift_continuation_throwingResume();
  }
}

void sub_1004F3F88(void *a1)
{
  v3 = [objc_opt_self() sharedInstance];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 assetID];
    v6 = *v1;
    v8 = *(v1 + 16);
    v7 = *(v1 + 24);
    v17 = *(v1 + 32);
    v18 = v7;
    v9 = swift_allocObject();
    v10 = *(v1 + 16);
    *(v9 + 24) = *v1;
    *(v9 + 16) = a1;
    *(v9 + 40) = v10;
    *(v9 + 56) = *(v1 + 32);
    aBlock[4] = sub_1004FA2E4;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004F4870;
    aBlock[3] = &unk_100A20BC0;
    v11 = _Block_copy(aBlock);
    v12 = a1;
    v13 = v6;
    swift_unknownObjectRetain();
    v14 = v8;
    sub_1000077D8(&v18, v15, &qword_100AE6A50);
    sub_1000077D8(&v17, v15, &qword_100AE6A50);

    [v4 sampleDownloadURLForAssetID:v5 completion:v11];
    _Block_release(v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_1004F4130(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1001F1160(&unk_100AD5AC0);
  __chkstk_darwin(v6 - 8);
  v8 = &aBlock[-1] - v7;
  v9 = sub_1007969B4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077D8(a1, v8, &unk_100AD5AC0);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v12, v8, v9);
    v20 = [objc_opt_self() delegate];
    v21 = [v20 primaryAnalyticsController];

    v22 = sub_100797CF4();
    if (v22)
    {
      v23 = v22;
      v24 = [a3 assetID];
      if (v24)
      {
        v25 = v24;
        v26 = sub_1007A2254();
        v28 = v27;

        v29 = sub_1004FA2F0(v26, v28);

LABEL_12:
        v30 = [objc_opt_self() defaultHelper];
        sub_100796944(v31);
        v33 = v32;
        aBlock[4] = sub_1004F45DC;
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1004F47E0;
        aBlock[3] = &unk_100A20BE8;
        v34 = _Block_copy(aBlock);
        [v30 downloadSampleWithURL:v33 contentData:v29 tracker:v22 completion:v34];
        _Block_release(v34);

        (*(v10 + 8))(v12, v9);
        return;
      }
    }

    v29 = 0;
    goto LABEL_12;
  }

  sub_100007840(v8, &unk_100AD5AC0);
  if (qword_100AD1798 != -1)
  {
    swift_once();
  }

  v13 = sub_10079ACE4();
  sub_100008B98(v13, qword_100AE7ED0);
  swift_errorRetain();
  v14 = sub_10079ACC4();
  v15 = sub_1007A29B4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_1000070F4(0xD000000000000023, 0x80000001008D91A0, aBlock);
    *(v16 + 12) = 2080;
    aBlock[6] = a2;
    swift_errorRetain();
    sub_1001F1160(&unk_100AE7F50);
    v17 = sub_1007A22E4();
    v19 = sub_1000070F4(v17, v18, aBlock);

    *(v16 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s: sampleDownloadURL failed. error: %s", v16, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_1004F45DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100AD1798 != -1)
    {
      swift_once();
    }

    v2 = sub_10079ACE4();
    sub_100008B98(v2, qword_100AE7ED0);
    swift_errorRetain();
    v3 = sub_10079ACC4();
    v4 = sub_1007A29B4();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v5 = 136315394;
      *(v5 + 4) = sub_1000070F4(0xD000000000000023, 0x80000001008D91A0, &v9);
      *(v5 + 12) = 2080;
      swift_errorRetain();
      sub_1001F1160(&unk_100AD67F0);
      v6 = sub_1007A22E4();
      v8 = sub_1000070F4(v6, v7, &v9);

      *(v5 + 14) = v8;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s: downloadSample failed. error: %s", v5, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1004F47E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_1007A25E4();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1004F4870(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1001F1160(&unk_100AD5AC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_100796974();
    v10 = sub_1007969B4();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_1007969B4();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_100007840(v8, &unk_100AD5AC0);
}

uint64_t sub_1004F49C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100ADA050);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-v6 - 8];
  v17 = sub_10000A7C4(0, &qword_100AD1E10);
  v8 = *a2;
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v19 = *(a2 + 32);
  v20 = v9;
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v13 = *(a2 + 16);
  *(v12 + 16) = *a2;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a2 + 32);
  (*(v5 + 32))(v12 + v11, v7, v4);
  v14 = v8;
  swift_unknownObjectRetain();
  v15 = v10;
  sub_1000077D8(&v20, v18, &qword_100AE6A50);
  sub_1000077D8(&v19, v18, &qword_100AE6A50);
  sub_1007A2CD4();
}

void sub_1004F4BA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100ADA050);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = *(a1 + 8);
  v9 = sub_1007A2214();
  (*(v5 + 16))(v7, a2, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_1004FA248;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10021B6B0;
  aBlock[3] = &unk_100A20AD0;
  v12 = _Block_copy(aBlock);

  [v8 appLaunchCoordinatorOnConditionMask:1 blockID:v9 performBlock:v12];
  _Block_release(v12);
}

void sub_1004F4D80(id *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v106 = a2;
  v121 = a3;
  v5 = sub_1001F1160(&unk_100ADB5C0);
  v6 = __chkstk_darwin(v5 - 8);
  v110 = v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v109 = v90 - v8;
  v9 = sub_1007967F4();
  v10 = *(v9 - 8);
  v125 = v9;
  v126 = v10;
  __chkstk_darwin(v9);
  v12 = (v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v124 = sub_100796CF4();
  v150 = *(v124 - 8);
  v13 = __chkstk_darwin(v124);
  v15 = v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v90 - v16;
  v18 = sub_1007A21D4();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v122 = v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v108 = v90 - v22;
  v23 = sub_100796814();
  __chkstk_darwin(v23 - 8);
  v107 = v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v26 = [*a1 assetID];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1007A2254();
    v103 = v29;
    v104 = v28;

    v30 = [v25 title];
    if (v30)
    {
      v31 = v30;
      v32 = sub_1007A2254();
      v101 = v33;
      v102 = v32;
    }

    else
    {
      v101 = 0;
      v102 = 0;
    }

    v40 = [v25 displayAuthor];
    v127 = v19;
    if (v40)
    {
      v41 = v40;
      v42 = sub_1007A2254();
      v97 = v43;
      v98 = v42;
    }

    else
    {
      v97 = 0;
      v98 = 0;
    }

    v120 = v18;
    v44 = [v25 storeID];
    v123 = v25;
    v105 = v3;
    v45 = v15;
    if (v44)
    {
      v46 = v44;
      v47 = sub_1007A2254();
      v99 = v48;
      v100 = v47;
    }

    else
    {
      v99 = 0;
      v100 = 0;
    }

    sub_1001F1160(&unk_100AD9510);
    v95 = sub_100795DC4();
    v96 = sub_100795DC4();
    v94 = sub_100795DC4();
    v49 = v108;
    sub_1007A2154();
    sub_100796C94();
    v50 = *(v127 + 16);
    v118 = v127 + 16;
    v119 = v50;
    v50(v122, v49, v120);
    v51 = *(v150 + 16);
    v116 = v150 + 16;
    v117 = v51;
    v52 = v124;
    v51(v45, v17, v124);
    v115 = type metadata accessor for BundleFinder();
    *v12 = v115;
    v114 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
    v53 = *(v126 + 104);
    v126 += 104;
    v113 = v53;
    v53(v12);
    sub_100796834();
    v54 = *(v150 + 8);
    v150 += 8;
    v112 = v54;
    v54(v17, v52);
    v55 = *(v127 + 8);
    v127 += 8;
    v111 = v55;
    v56 = v120;
    v55(v49, v120);
    v93 = sub_100795DB4();
    sub_1001F1160(&qword_100AE8370);
    v92 = sub_100795DA4();
    v91 = sub_1001F1160(&unk_100AD9520);
    sub_1007A2154();
    sub_100796C94();
    v57 = v122;
    v119(v122, v49, v56);
    v58 = v124;
    v117(v45, v17, v124);
    *v12 = v115;
    v113(v12, v114, v125);
    sub_100796834();
    v112(v17, v58);
    v111(v49, v56);
    sub_100211A50();
    v91 = sub_100795D74();
    v90[1] = sub_1001F1160(&unk_100AD9530);
    sub_1007A2154();
    sub_100796C94();
    v119(v57, v49, v56);
    v59 = v124;
    v117(v45, v17, v124);
    *v12 = v115;
    v113(v12, v114, v125);
    sub_100796834();
    v112(v17, v59);
    v111(v49, v56);
    sub_1004FA694(&unk_100AE7F80, &qword_100AD9540);
    v60 = sub_100795D84();
    v137 = v102;
    v138 = v101;
    v61 = v95;
    sub_100795D64();
    v137 = v98;
    v138 = v97;
    v62 = v94;
    sub_100795D64();
    LOBYTE(v137) = 0;
    v63 = v91;
    sub_100795D64();
    *(&v132 + 1) = *v130;
    DWORD1(v132) = *&v130[3];
    *&v131 = v104;
    *(&v131 + 1) = v103;
    LOBYTE(v132) = 0;
    *(&v132 + 1) = v61;
    *&v133 = v96;
    *(&v133 + 1) = v62;
    *&v134 = v93;
    *(&v134 + 1) = v92;
    *&v135 = v63;
    *(&v135 + 1) = v60;
    *&v136 = v100;
    *(&v136 + 1) = v99;
    v137 = v104;
    v138 = v103;
    v139 = 0;
    *v140 = *v130;
    *&v140[3] = *&v130[3];
    v141 = v61;
    v142 = v96;
    v143 = v62;
    v144 = v93;
    v145 = v92;
    v146 = v63;
    v147 = v60;
    v148 = v100;
    v149 = v99;
    sub_1002A40C0(&v131, &v128);
    sub_1002A411C(&v137);
    v64 = v123;
    v65 = [v123 seriesID];
    v66 = v121;
    v67 = v109;
    if (!v65)
    {
      goto LABEL_23;
    }

    v68 = v65;
    v69 = sub_1007A2254();
    v71 = v70;

    v72 = v106;
    if (*(v106 + 16))
    {
      v73 = sub_10000E53C(v69, v71);
      v75 = v74;

      if (v75)
      {
        v76 = *(*(v72 + 56) + 16 * v73);

LABEL_22:
        v128 = v76;
        v129 = v77;
        sub_100795D64();
        v64 = v123;
LABEL_23:
        v78 = [v64 genre];
        if (v78)
        {
          v79 = v78;
          v80 = sub_1007A2254();
          v82 = v81;

          v64 = v123;
        }

        else
        {
          v80 = 0;
          v82 = 0;
        }

        v128 = v80;
        v129 = v82;
        sub_100795D64();
        v83 = [v64 purchaseDate];
        if (v83)
        {
          v84 = v83;
          sub_100796B64();

          v85 = 0;
        }

        else
        {
          v85 = 1;
        }

        v86 = sub_100796BB4();
        (*(*(v86 - 8) + 56))(v67, v85, 1, v86);
        sub_1000077D8(v67, v110, &unk_100ADB5C0);
        sub_100795D64();
        sub_100007840(v67, &unk_100ADB5C0);
        LOBYTE(v128) = [v123 contentType] == 3;
        sub_100795D64();
        v87 = v134;
        v66[2] = v133;
        v66[3] = v87;
        v88 = v136;
        v66[4] = v135;
        v66[5] = v88;
        v89 = v132;
        *v66 = v131;
        v66[1] = v89;
        return;
      }
    }

    else
    {
    }

    v76 = 0;
    v77 = 0;
    goto LABEL_22;
  }

  if (qword_100AD1798 != -1)
  {
    swift_once();
  }

  v34 = sub_10079ACE4();
  sub_100008B98(v34, qword_100AE7ED0);
  v35 = sub_10079ACC4();
  v36 = sub_1007A29B4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v137 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_1000070F4(0xD00000000000001ELL, 0x80000001008D91F0, &v137);
    _os_log_impl(&_mh_execute_header, v35, v36, "%s: nil assetID.", v37, 0xCu);
    sub_1000074E0(v38);
  }

  v39 = v121;
  v121[4] = 0u;
  v39[5] = 0u;
  v39[2] = 0u;
  v39[3] = 0u;
  *v39 = 0u;
  v39[1] = 0u;
}

double sub_1004F5944@<D0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v131 = a3;
  v6 = sub_1007967F4();
  v150 = *(v6 - 8);
  __chkstk_darwin(v6);
  v126 = (&v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100796CF4();
  v149 = *(v8 - 8);
  __chkstk_darwin(v8);
  v148 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v134 = &v107 - v11;
  v136 = sub_1007A21D4();
  v169 = *(v136 - 8);
  __chkstk_darwin(v136);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v145 = &v107 - v15;
  v16 = sub_100796814();
  __chkstk_darwin(v16 - 8);
  v147 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v18 - 8);
  v128 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v127 = &v107 - v21;
  v23 = __chkstk_darwin(v22);
  v25 = &v107 - v24;
  v26 = *a1;
  v27 = [v26 assetID];
  if (v27)
  {
    v146 = v6;
    v28 = v27;
    v29 = sub_1007A2254();
    v123 = v30;
    v124 = v29;

    v31 = [v26 seriesID];
    v130 = v25;
    if (!v31)
    {
      v121 = 0;
      v122 = 0;
LABEL_15:
      v50 = [v26 title];
      if (v50)
      {
        v51 = v50;
        v52 = sub_1007A2254();
        v117 = v53;
        v118 = v52;
      }

      else
      {
        v117 = 0;
        v118 = 0;
      }

      v54 = [v26 displayAuthor];
      if (v54)
      {
        v55 = v54;
        v56 = sub_1007A2254();
        v115 = v57;
        v116 = v56;
      }

      else
      {
        v115 = 0;
        v116 = 0;
      }

      v58 = [v26 storeID];
      if (v58)
      {
        v59 = v58;
        v60 = sub_1007A2254();
        v119 = v61;
        v120 = v60;
      }

      else
      {
        v119 = 0;
        v120 = 0;
      }

      v62 = [v26 genre];
      if (v62)
      {
        v63 = v62;
        v64 = sub_1007A2254();
        v113 = v65;
        v114 = v64;
      }

      else
      {
        v113 = 0;
        v114 = 0;
      }

      v66 = [v26 purchaseDate];
      v125 = v3;
      if (v66)
      {
        v67 = v130;
        v68 = v66;
        sub_100796B64();

        v69 = sub_100796BB4();
        (*(*(v69 - 8) + 56))(v67, 0, 1, v69);
      }

      else
      {
        v70 = sub_100796BB4();
        (*(*(v70 - 8) + 56))(v130, 1, 1, v70);
      }

      v133 = sub_1001F1160(&unk_100AD9510);
      v71 = v145;
      sub_1007A2154();
      v72 = v134;
      sub_100796C94();
      v73 = *(v169 + 16);
      v135 = v169 + 16;
      v138 = v73;
      v74 = v13;
      v73(v13, v71, v136);
      v75 = v149;
      v76 = *(v149 + 16);
      v141 = v149 + 16;
      v142 = v76;
      v132 = v8;
      v76(v148, v72, v8);
      v137 = type metadata accessor for BundleFinder();
      v77 = v126;
      *v126 = v137;
      v140 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
      v143 = *(v150 + 104);
      v150 += 104;
      v143(v77);
      sub_100796834();
      v144 = *(v75 + 8);
      v149 = v75 + 8;
      v144(v72, v8);
      v78 = *(v169 + 8);
      v169 += 8;
      v139 = v78;
      v79 = v136;
      v78(v71, v136);
      v129 = sub_100795DB4();
      sub_1007A2154();
      sub_100796C94();
      v138(v13, v71, v79);
      v80 = v132;
      v142(v148, v72, v132);
      *v77 = v137;
      (v143)(v77, v140, v146);
      sub_100796834();
      v144(v72, v80);
      v81 = v145;
      v139(v145, v79);
      v112 = sub_100795DB4();
      sub_1007A2154();
      sub_100796C94();
      v138(v74, v81, v79);
      v82 = v72;
      v83 = v132;
      v142(v148, v72, v132);
      *v77 = v137;
      (v143)(v77, v140, v146);
      sub_100796834();
      v144(v72, v83);
      v84 = v145;
      v85 = v136;
      v139(v145, v136);
      v111 = sub_100795DB4();
      sub_1007A2154();
      sub_100796C94();
      v138(v74, v84, v85);
      v86 = v82;
      v87 = v82;
      v88 = v132;
      v142(v148, v87, v132);
      *v77 = v137;
      (v143)(v77, v140, v146);
      v89 = v74;
      sub_100796834();
      v90 = v88;
      v144(v86, v88);
      v91 = v145;
      v92 = v136;
      v139(v145, v136);
      v133 = sub_100795DB4();
      v110 = sub_1001F1160(&qword_100AE8370);
      sub_1007A2154();
      v93 = v134;
      sub_100796C94();
      v108 = v89;
      v138(v89, v91, v92);
      v142(v148, v93, v90);
      *v77 = v137;
      (v143)(v77, v140, v146);
      sub_100796834();
      v144(v93, v90);
      v94 = v145;
      v139(v145, v92);
      v110 = sub_100795D94();
      v109 = sub_1001F1160(&qword_100AE7F20);
      v95 = v94;
      sub_1007A2154();
      v96 = v134;
      sub_100796C94();
      v138(v108, v95, v92);
      v142(v148, v96, v90);
      *v77 = v137;
      (v143)(v77, v140, v146);
      sub_100796834();
      v144(v96, v90);
      v139(v95, v92);
      sub_1004FA694(&qword_100AE7F28, &unk_100AE7F30);
      v169 = sub_100795D84();
      v158 = v118;
      v159 = v117;
      sub_100795D64();
      v158 = v116;
      v159 = v115;
      v97 = v111;
      sub_100795D64();
      v158 = v122;
      v159 = v121;
      v98 = v112;
      sub_100795D64();
      v158 = v114;
      v159 = v113;
      v99 = v133;
      sub_100795D64();
      v100 = v130;
      v101 = v127;
      sub_1000077D8(v130, v127, &unk_100ADB5C0);
      sub_1000077D8(v101, v128, &unk_100ADB5C0);
      v102 = v110;
      sub_100795D64();
      sub_100007840(v101, &unk_100ADB5C0);
      sub_100007840(v100, &unk_100ADB5C0);
      *&v152 = v124;
      *(&v152 + 1) = v123;
      *&v153 = v129;
      *(&v153 + 1) = v98;
      *&v154 = v97;
      *(&v154 + 1) = v99;
      *&v155 = v102;
      *(&v155 + 1) = v169;
      *&v156 = v120;
      *(&v156 + 1) = v119;
      v157 = 0;
      v158 = v124;
      v159 = v123;
      v160 = v129;
      v161 = v98;
      v162 = v97;
      v163 = v99;
      v164 = v102;
      v165 = v169;
      v166 = v120;
      v167 = v119;
      v168 = 0;
      sub_1004FA128(&v152, &v151);
      sub_1004FA184(&v158);
      v103 = v155;
      v104 = v156;
      v105 = v131;
      *(v131 + 32) = v154;
      *(v105 + 48) = v103;
      *(v105 + 64) = v104;
      *(v105 + 80) = v157;
      result = *&v152;
      v106 = v153;
      *v105 = v152;
      *(v105 + 16) = v106;
      return result;
    }

    v32 = v31;
    v33 = v8;
    v34 = sub_1007A2254();
    v36 = v35;

    if (*(a2 + 16))
    {
      v37 = a2;
      v38 = sub_10000E53C(v34, v36);
      v40 = v39;

      if (v40)
      {
        v41 = (*(v37 + 56) + 16 * v38);
        v42 = *v41;
        v121 = v41[1];
        v122 = v42;

LABEL_14:
        v8 = v33;
        goto LABEL_15;
      }
    }

    else
    {
    }

    v121 = 0;
    v122 = 0;
    goto LABEL_14;
  }

  if (qword_100AD1798 != -1)
  {
    swift_once();
  }

  v43 = sub_10079ACE4();
  sub_100008B98(v43, qword_100AE7ED0);
  v44 = sub_10079ACC4();
  v45 = sub_1007A29B4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v158 = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_1000070F4(0xD000000000000023, 0x80000001008D8FE0, &v158);
    _os_log_impl(&_mh_execute_header, v44, v45, "%s: nil assetID.", v46, 0xCu);
    sub_1000074E0(v47);
  }

  v48 = v131;
  *(v131 + 80) = 0;
  result = 0.0;
  v48[3] = 0u;
  v48[4] = 0u;
  v48[1] = 0u;
  v48[2] = 0u;
  *v48 = 0u;
  return result;
}

void *sub_1004F6858(unint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = a1;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return &_swiftEmptyDictionarySingleton;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v39 = a2;
    v42 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v43 = v4;
    while (1)
    {
      if (v6)
      {
        v7 = sub_1007A3784();
      }

      else
      {
        v7 = *(isUniquelyReferenced_nonNull_native + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 seriesID];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1007A2254();
        v13 = v11;
        v14 = v12;
        if (*(&_swiftEmptyDictionarySingleton + 2) && (sub_10000E53C(v11, v12), (v15 & 1) != 0))
        {
        }

        else
        {
          v16 = [objc_opt_self() defaultManager];
          v17 = [v16 libraryAssetWithAssetID:v10 inManagedObjectContext:a2];

          if (v17)
          {
            v18 = [v17 title];
            if (v18)
            {
              v19 = isUniquelyReferenced_nonNull_native;
              v20 = v18;
              v40 = sub_1007A2254();
              v41 = v21;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v23 = sub_10000E53C(v13, v14);
              v24 = *(&_swiftEmptyDictionarySingleton + 2);
              v25 = (v22 & 1) == 0;
              v26 = v24 + v25;
              if (__OFADD__(v24, v25))
              {
                __break(1u);
LABEL_35:
                __break(1u);
LABEL_36:
                v4 = sub_1007A38D4();
                if (!v4)
                {
                  return &_swiftEmptyDictionarySingleton;
                }

                goto LABEL_3;
              }

              a2 = v22;
              if (*(&_swiftEmptyDictionarySingleton + 3) >= v26)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1002F0D14();
                }
              }

              else
              {
                sub_1003D3E94(v26, isUniquelyReferenced_nonNull_native);
                v27 = sub_10000E53C(v13, v14);
                if ((a2 & 1) != (v28 & 1))
                {
                  goto LABEL_39;
                }

                v23 = v27;
              }

              isUniquelyReferenced_nonNull_native = v19;
              if (a2)
              {
                v32 = (*(&_swiftEmptyDictionarySingleton + 7) + 16 * v23);
                *v32 = v40;
                v32[1] = v41;
              }

              else
              {
                *(&_swiftEmptyDictionarySingleton + (v23 >> 6) + 8) |= 1 << v23;
                v33 = (*(&_swiftEmptyDictionarySingleton + 6) + 16 * v23);
                *v33 = v13;
                v33[1] = v14;
                v34 = (*(&_swiftEmptyDictionarySingleton + 7) + 16 * v23);
                *v34 = v40;
                v34[1] = v41;
                v35 = *(&_swiftEmptyDictionarySingleton + 2);
                v36 = __OFADD__(v35, 1);
                v37 = v35 + 1;
                if (v36)
                {
                  goto LABEL_35;
                }

                *(&_swiftEmptyDictionarySingleton + 2) = v37;
              }

              a2 = v39;
            }

            else
            {
              v29 = sub_10000E53C(v13, v14);
              v31 = v30;

              if (v31)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1002F0D14();
                }

                sub_1002EF7D8(v29, &_swiftEmptyDictionarySingleton);
              }
            }
          }

          else
          {
          }

          v6 = v42;
          v4 = v43;
        }
      }

      else
      {
      }

      if (v4 == ++v5)
      {
        return &_swiftEmptyDictionarySingleton;
      }
    }
  }

  __break(1u);
LABEL_39:
  result = sub_1007A3B24();
  __break(1u);
  return result;
}

char *sub_1004F6BD4(unint64_t a1, uint64_t a2)
{
  v14 = sub_1004F6858(a1, a2);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_1007A3784();
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v32 = v6;
      sub_1004F4D80(&v32, v14, &v26);

      if (*(&v26 + 1))
      {
        v22 = v28;
        v23 = v29;
        v24 = v30;
        v25 = v31;
        v20 = v26;
        v21 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_10066A520(0, *(v5 + 2) + 1, 1, v5);
        }

        v10 = *(v5 + 2);
        v9 = *(v5 + 3);
        if (v10 >= v9 >> 1)
        {
          v5 = sub_10066A520((v9 > 1), v10 + 1, 1, v5);
        }

        v16 = v22;
        v17 = v23;
        v18 = v24;
        v19 = v25;
        v11 = v20;
        v15 = v21;
        *(v5 + 2) = v10 + 1;
        v12 = &v5[96 * v10];
        *(v12 + 3) = v15;
        *(v12 + 6) = v18;
        *(v12 + 7) = v19;
        *(v12 + 4) = v16;
        *(v12 + 5) = v17;
        *(v12 + 2) = v11;
      }

      else
      {
        v22 = v28;
        v23 = v29;
        v24 = v30;
        v25 = v31;
        v20 = v26;
        v21 = v27;
        sub_100007840(&v20, &unk_100AE7F60);
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_21:

  return v5;
}

char *sub_1004F6DE0(unint64_t a1, uint64_t a2)
{
  v14 = sub_1004F6858(a1, a2);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_1007A3784();
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v32 = v6;
      sub_1004F5944(&v32, v14, &v26);

      if (*(&v26 + 1))
      {
        v22 = v28;
        v23 = v29;
        v24 = v30;
        v25 = v31;
        v20 = v26;
        v21 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_10066BF88(0, *(v5 + 2) + 1, 1, v5);
        }

        v10 = *(v5 + 2);
        v9 = *(v5 + 3);
        if (v10 >= v9 >> 1)
        {
          v5 = sub_10066BF88((v9 > 1), v10 + 1, 1, v5);
        }

        v16 = v22;
        v17 = v23;
        v18 = v24;
        v19 = v25;
        v11 = v20;
        v15 = v21;
        *(v5 + 2) = v10 + 1;
        v12 = &v5[88 * v10];
        *(v12 + 3) = v15;
        v12[112] = v19;
        *(v12 + 5) = v17;
        *(v12 + 6) = v18;
        *(v12 + 4) = v16;
        *(v12 + 2) = v11;
      }

      else
      {
        v22 = v28;
        v23 = v29;
        v24 = v30;
        v25 = v31;
        v20 = v26;
        v21 = v27;
        sub_100007840(&v20, &unk_100AE7F10);
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_21:

  return v5;
}

uint64_t sub_1004F7010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[63] = a3;
  v4[64] = a4;
  v4[61] = a1;
  v4[62] = a2;
  v5 = sub_1007990E4();
  v4[65] = v5;
  v4[66] = *(v5 - 8);
  v4[67] = swift_task_alloc();
  v6 = sub_100798F44();
  v4[68] = v6;
  v4[69] = *(v6 - 8);
  v4[70] = swift_task_alloc();
  v7 = sub_100798FE4();
  v4[71] = v7;
  v4[72] = *(v7 - 8);
  v4[73] = swift_task_alloc();
  sub_1007A26F4();
  v4[74] = sub_1007A26E4();
  v8 = sub_1007A2694();
  v4[75] = v8;
  v4[76] = v9;

  return _swift_task_switch(sub_1004F71F8, v8, v9);
}

uint64_t sub_1004F71F8()
{
  v21 = v0;
  if (([*(v0 + 512) isPresentingWelcome] & 1) == 0)
  {
    if ([*(v0 + 504) isLocal] & 1) == 0 && (objc_msgSend(objc_opt_self(), "isOffline"))
    {

      if (qword_100AD1798 != -1)
      {
        swift_once();
      }

      v2 = sub_10079ACE4();
      sub_100008B98(v2, qword_100AE7ED0);
      v3 = sub_10079ACC4();
      v4 = sub_1007A29B4();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v20 = v6;
        *v5 = 136315138;
        *(v5 + 4) = sub_1000070F4(0xD00000000000001CLL, 0x80000001008D8F40, &v20);
        _os_log_impl(&_mh_execute_header, v3, v4, "%s: Nonlocal audiobook cannot be played, device is offline.", v5, 0xCu);
        sub_1000074E0(v6);
      }

      sub_1004FA080();
      swift_allocError();
      *v7 = 1;
      goto LABEL_16;
    }

    v8 = [objc_opt_self() sharedAVSystemController];
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_self() mainBundle];
      v11 = [v10 bundleIdentifier];

      v12 = AVSystemController_AllowAppToInitiatePlaybackTemporarilyAttribute;
      *(v0 + 464) = 0;
      LODWORD(v10) = [v9 setAttribute:v11 forKey:v12 error:v0 + 464];

      v13 = *(v0 + 464);
      if (!v10)
      {
        v17 = v13;

        sub_1007967D4();

        goto LABEL_16;
      }

      v14 = *(v0 + 512);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 472;
      *(v0 + 24) = sub_1004F7644;
      v15 = swift_continuation_init();
      *(v0 + 376) = sub_1001F1160(&qword_100AE7EF0);
      *(v0 + 320) = _NSConcreteStackBlock;
      *(v0 + 328) = 1107296256;
      *(v0 + 336) = sub_1003807B4;
      *(v0 + 344) = &unk_100A209E0;
      *(v0 + 352) = v15;
      v16 = v13;
      [v14 requestPrimaryScene:v0 + 320];
      v8 = (v0 + 16);
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_await(v8);
  }

  sub_1004FA080();
  swift_allocError();
  *v1 = 9;
LABEL_16:
  swift_willThrow();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1004F7644()
{
  v1 = *(*v0 + 608);
  v2 = *(*v0 + 600);

  return _swift_task_switch(sub_1004F7778, v2, v1);
}

uint64_t sub_1004F7778()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 472);
  *(v0 + 616) = v2;
  v3 = [v2 newShowAssetTransaction];
  *(v0 + 624) = v3;
  if (([v1 isNonLocalSample] & 1) != 0 || objc_msgSend(*(v0 + 504), "isSample"))
  {
    v4 = *(v0 + 560);
    v5 = *(v0 + 552);
    v6 = *(v0 + 544);
    sub_100798F74();
    (*(v5 + 104))(v4, enum case for MResourceType.audiobooks(_:), v6);
    sub_1007990F4();
    v7 = swift_task_alloc();
    *(v0 + 632) = v7;
    *v7 = v0;
    v7[1] = sub_1004F7BA8;

    JUMPOUT(0x100798FA4);
  }

  v8 = *(v0 + 512);
  sub_1001F1160(&unk_100ADE550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100812CF0;
  *(inited + 32) = sub_1007A2254();
  *(inited + 40) = v10;
  *(inited + 48) = 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD00000000000002BLL;
  *(inited + 88) = 0x80000001008BF710;
  *(inited + 96) = 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000031;
  *(inited + 136) = 0x80000001008CAA50;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  v11 = sub_100019158(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100ADD560);
  swift_arrayDestroy();
  v12 = [v8 bookPresenter];
  *(v0 + 656) = v12;
  swift_unknownObjectRetain();
  v13 = sub_1007A2214();
  *(v0 + 664) = v13;
  sub_10058096C(v11);

  isa = sub_1007A2024().super.isa;
  *(v0 + 672) = isa;

  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 448;
  *(v0 + 88) = sub_1004F82C4;
  v15 = swift_continuation_init();
  *(v0 + 440) = sub_1001F1160(&qword_100AE7EF8);
  *(v0 + 384) = _NSConcreteStackBlock;
  *(v0 + 392) = 1107296256;
  *(v0 + 400) = sub_1004F3EAC;
  *(v0 + 408) = &unk_100A20A08;
  *(v0 + 416) = v15;
  [v12 showAssetWithTransaction:v3 assetID:v13 location:0 options:isa completion:v0 + 384];

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_1004F7BA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[80] = a1;
  v4[81] = v1;

  v5 = v3[73];
  v6 = v3[72];
  v7 = v3[71];
  v8 = v3[70];
  v9 = v3[69];
  v10 = v3[68];
  (*(v3[66] + 8))(v3[67], v3[65]);
  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  v11 = v3[76];
  v12 = v3[75];
  if (v1)
  {
    v13 = sub_1004F8530;
  }

  else
  {
    v13 = sub_1004F7E28;
  }

  return _swift_task_switch(v13, v12, v11);
}

uint64_t sub_1004F7E28()
{
  v24 = v0;
  v1 = *(v0 + 640);

  if (v1)
  {
    v2 = *(v0 + 640);
    v3 = *(v0 + 624);
    v4 = *(v0 + 616);
    v5 = [*(v0 + 512) bookPresenter];
    swift_unknownObjectRetain();
    v6 = v2;
    sub_100013740(_swiftEmptyArrayStorage);
    isa = sub_1007A2024().super.isa;

    [v5 showStoreAsset:v3 asset:v6 options:isa];
    swift_unknownObjectRelease_n();

    swift_unknownObjectRelease();

    v8 = *(v0 + 8);
  }

  else
  {
    if (qword_100AD1798 != -1)
    {
      swift_once();
    }

    v9 = sub_10079ACE4();
    sub_100008B98(v9, qword_100AE7ED0);
    v10 = sub_10079ACC4();
    v11 = sub_1007A29B4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1000070F4(0xD00000000000001CLL, 0x80000001008D8F40, &v23);
      sub_1000074E0(v13);
    }

    v14 = *(v0 + 616);
    sub_100795AD4();
    sub_100214F44();
    v15 = swift_allocError();
    sub_100795AC4();
    swift_willThrow();
    swift_unknownObjectRelease();

    if (qword_100AD1798 != -1)
    {
      swift_once();
    }

    sub_100008B98(v9, qword_100AE7ED0);
    swift_errorRetain();
    v16 = sub_10079ACC4();
    v17 = sub_1007A29B4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v18 = 136315394;
      *(v18 + 4) = sub_1000070F4(0xD00000000000001CLL, 0x80000001008D8F40, &v23);
      *(v18 + 12) = 2080;
      *(v0 + 480) = v15;
      swift_errorRetain();
      sub_1001F1160(&unk_100AD67F0);
      v19 = sub_1007A22E4();
      v21 = sub_1000070F4(v19, v20, &v23);

      *(v18 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s: showAsset failed. error: %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();

    v8 = *(v0 + 8);
  }

  return v8();
}

uint64_t sub_1004F82C4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 680) = v2;
  v3 = *(v1 + 608);
  v4 = *(v1 + 600);
  if (v2)
  {
    v5 = sub_1004F8794;
  }

  else
  {
    v5 = sub_1004F8420;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004F8420()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[77];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004F8530()
{
  v13 = v0;
  v1 = v0[77];

  swift_unknownObjectRelease();

  v2 = v0[81];
  if (qword_100AD1798 != -1)
  {
    swift_once();
  }

  v3 = sub_10079ACE4();
  sub_100008B98(v3, qword_100AE7ED0);
  swift_errorRetain();
  v4 = sub_10079ACC4();
  v5 = sub_1007A29B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_1000070F4(0xD00000000000001CLL, 0x80000001008D8F40, &v12);
    *(v6 + 12) = 2080;
    v0[60] = v2;
    swift_errorRetain();
    sub_1001F1160(&unk_100AD67F0);
    v7 = sub_1007A22E4();
    v9 = sub_1000070F4(v7, v8, &v12);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: showAsset failed. error: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1004F8794()
{
  v15 = v0;
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[77];

  swift_willThrow();
  swift_unknownObjectRelease_n();

  swift_unknownObjectRelease();
  v4 = v0[85];
  if (qword_100AD1798 != -1)
  {
    swift_once();
  }

  v5 = sub_10079ACE4();
  sub_100008B98(v5, qword_100AE7ED0);
  swift_errorRetain();
  v6 = sub_10079ACC4();
  v7 = sub_1007A29B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_1000070F4(0xD00000000000001CLL, 0x80000001008D8F40, &v14);
    *(v8 + 12) = 2080;
    v0[60] = v4;
    swift_errorRetain();
    sub_1001F1160(&unk_100AD67F0);
    v9 = sub_1007A22E4();
    v11 = sub_1000070F4(v9, v10, &v14);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: showAsset failed. error: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1004F8A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_1007A26F4();
  v5[7] = sub_1007A26E4();
  v7 = sub_1007A2694();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_1004F8AC0, v7, v6);
}

uint64_t sub_1004F8AC0()
{
  v33 = v0;
  v1 = objc_opt_self();
  v0[10] = v1;
  v2 = [v1 sharedApplication];
  v3 = sub_1007A2214();
  v0[11] = [v2 beginBackgroundTaskWithName:v3 expirationHandler:0];

  if (qword_100AD1798 != -1)
  {
    swift_once();
  }

  v4 = v0[5];
  v5 = sub_10079ACE4();
  sub_100008B98(v5, qword_100AE7ED0);

  v6 = sub_10079ACC4();
  v7 = sub_1007A29D4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[5];
    v31 = v0[4];
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v11 = 136315650;
    *(v11 + 4) = sub_1000070F4(0xD000000000000015, 0x80000001008D9140, v32);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1000070F4(v10, v9, v32);
    *(v11 + 22) = 2080;
    if (v8)
    {
      v12 = v31;
    }

    else
    {
      v12 = 0x6E776F6E6B6E75;
    }

    if (v8)
    {
      v13 = v4;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    v14 = sub_1000070F4(v12, v13, v32);

    *(v11 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: assetID: %s title: %s", v11, 0x20u);
    swift_arrayDestroy();
  }

  v15 = [objc_opt_self() defaultManager];
  v16 = sub_1007A2214();
  v17 = [v15 libraryAssetOnMainQueueWithAssetID:v16];
  v0[12] = v17;

  if (v17)
  {
    v18 = v17;
    v19 = swift_task_alloc();
    v0[13] = v19;
    *v19 = v0;
    v19[1] = sub_1004F8FA4;
    v20 = v0[6];
    v22 = v0[2];
    v21 = v0[3];

    return sub_1004F7010(v22, v21, v18, v20);
  }

  else
  {

    v24 = sub_10079ACC4();
    v25 = sub_1007A29B4();

    if (os_log_type_enabled(v24, v25))
    {
      v27 = v0[2];
      v26 = v0[3];
      v28 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v28 = 136315394;
      *(v28 + 4) = sub_1000070F4(0xD000000000000015, 0x80000001008D9140, v32);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_1000070F4(v27, v26, v32);
      _os_log_impl(&_mh_execute_header, v24, v25, "%s: Library asset not found. assetID: %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    sub_1004FA080();
    swift_allocError();
    *v29 = 4;
    swift_willThrow();
    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_1004F8FA4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1004F918C;
  }

  else
  {
    v5 = sub_1004F90E0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004F90E0()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];

  v4 = [v3 sharedApplication];
  [v4 endBackgroundTask:v1];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004F918C()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004F91FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  sub_1007A26F4();
  v3[21] = sub_1007A26E4();
  v5 = sub_1007A2694();
  v3[22] = v5;
  v3[23] = v4;

  return _swift_task_switch(sub_1004F9298, v5, v4);
}

uint64_t sub_1004F9298()
{
  v1 = v0[18];
  v2 = sub_1007A2214();
  v0[24] = v2;
  v0[2] = v0;
  v0[7] = v0 + 30;
  v0[3] = sub_1004F93E8;
  v3 = swift_continuation_init();
  v0[17] = sub_1001F1160(&unk_100AD67E0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100298E88;
  v0[13] = &unk_100A209B8;
  v0[14] = v3;
  [v1 appLaunchCoordinatorOnConditionMask:0x2000 blockID:v2 performBlock:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004F93E8()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return _swift_task_switch(sub_1004F94F0, v2, v1);
}

uint64_t sub_1004F94F0()
{
  v46 = v0;

  v1 = objc_opt_self();
  v2 = [v1 defaultManager];
  v3 = [v2 uiChildContext];
  *(v0 + 200) = v3;

  v4 = [v1 defaultManager];
  sub_10000A7C4(0, &qword_100AD6750);
  isa = sub_1007A25D4().super.isa;
  v6 = [v4 mostRecentlyEngagedLibraryAssetWithTypes:isa inManagedObjectContext:v3];

  v7 = v6;
  if (!v6)
  {
    v8 = [v1 defaultManager];
    v9 = sub_1007A25D4().super.isa;
    v10 = [v8 mostRecentlyOpenedLibraryAssetWithTypes:v9 inManagedObjectContext:v3];

    if (!v10)
    {

      if (qword_100AD1798 != -1)
      {
        swift_once();
      }

      v33 = sub_10079ACE4();
      sub_100008B98(v33, qword_100AE7ED0);
      v34 = sub_10079ACC4();
      v35 = sub_1007A29B4();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v45[0] = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_1000070F4(0xD000000000000015, 0x80000001008D8F20, v45);
        _os_log_impl(&_mh_execute_header, v34, v35, "%s: Failed to find recent audiobook.", v36, 0xCu);
        sub_1000074E0(v37);
      }

      sub_1004FA080();
      swift_allocError();
      *v38 = 8;
      swift_willThrow();
      goto LABEL_21;
    }

    v7 = v10;
  }

  *(v0 + 208) = v7;
  v11 = v6;

  v12 = [v7 assetID];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1007A2254();
    v16 = v15;

    *(v0 + 216) = v16;
    if (qword_100AD1798 != -1)
    {
      swift_once();
    }

    v17 = sub_10079ACE4();
    sub_100008B98(v17, qword_100AE7ED0);

    v18 = v7;
    v19 = sub_10079ACC4();
    v20 = sub_1007A29D4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v45[0] = swift_slowAlloc();
      *v21 = 136315650;
      *(v21 + 4) = sub_1000070F4(0xD000000000000015, 0x80000001008D8F20, v45);
      *(v21 + 12) = 2080;
      v44 = v14;
      *(v21 + 14) = sub_1000070F4(v14, v16, v45);
      *(v21 + 22) = 2080;
      v22 = [v18 title];
      if (v22)
      {
        v23 = v22;
        v24 = sub_1007A2254();
        v26 = v25;
      }

      else
      {
        v26 = 0xE700000000000000;
        v24 = 0x6E776F6E6B6E75;
      }

      v41 = sub_1000070F4(v24, v26, v45);

      *(v21 + 24) = v41;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s: assetID: %s title: %s", v21, 0x20u);
      swift_arrayDestroy();

      v14 = v44;
    }

    else
    {
    }

    v42 = swift_task_alloc();
    *(v0 + 224) = v42;
    *v42 = v0;
    v42[1] = sub_1004F9BC0;
    v43 = *(v0 + 152);

    return sub_1004F7010(v14, v16, v18, v43);
  }

  if (qword_100AD1798 != -1)
  {
    swift_once();
  }

  v27 = sub_10079ACE4();
  sub_100008B98(v27, qword_100AE7ED0);
  v28 = sub_10079ACC4();
  v29 = sub_1007A29B4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v45[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1000070F4(0xD000000000000015, 0x80000001008D8F20, v45);
    _os_log_impl(&_mh_execute_header, v28, v29, "%s: nil assetID.", v30, 0xCu);
    sub_1000074E0(v31);
  }

  sub_1004FA080();
  swift_allocError();
  *v32 = 8;
  swift_willThrow();

LABEL_21:
  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1004F9BC0()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_1004F9D88;
  }

  else
  {
    v5 = sub_1004F9D14;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004F9D14()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004F9D88()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004F9DFC()
{
  sub_1007A26F4();
  *(v0 + 16) = sub_1007A26E4();
  v2 = sub_1007A2694();

  return _swift_task_switch(sub_1004F9E90, v2, v1);
}

uint64_t sub_1004F9E90()
{
  v11 = v0;

  v1 = [objc_opt_self() sharedInstance];
  if (qword_100AD1798 != -1)
  {
    swift_once();
  }

  v2 = sub_10079ACE4();
  sub_100008B98(v2, qword_100AE7ED0);
  v3 = v1;
  v4 = sub_10079ACC4();
  v5 = sub_1007A29D4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1000070F4(0xD000000000000017, 0x80000001008D8E90, &v10);
    *(v6 + 12) = 1024;
    *(v6 + 14) = [v3 isPlaying];

    _os_log_impl(&_mh_execute_header, v4, v5, "%s: audiobookPlayer.isPlaying: %{BOOL}d", v6, 0x12u);
    sub_1000074E0(v7);
  }

  else
  {
  }

  [v3 pause];
  v8 = *(v0 + 8);

  return v8();
}

unint64_t sub_1004FA080()
{
  result = qword_100AE7EE8;
  if (!qword_100AE7EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7EE8);
  }

  return result;
}

uint64_t sub_1004FA110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1004FA1D8()
{
  v1 = *(sub_1001F1160(&unk_100ADA050) - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  sub_1004F4BA0(v0 + 16, v2);
}

uint64_t sub_1004FA2F0(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_1007A2214();
  v6 = [v4 libraryAssetOnMainQueueWithAssetID:v5];

  if (!v6)
  {
    return 0;
  }

  v19._countAndFlagsBits = a1;
  v19._object = a2;
  sub_1007983D4(v19);
  if (v7)
  {
    v20._countAndFlagsBits = a1;
    v20._object = a2;
    sub_1007983C4(v20);
    if (v8)
    {
      v9 = v6;
      [v9 contentType];
      sub_1007984D4();
      sub_1007984A4();

      if ([v9 isOwned])
      {
        v10 = [v9 storeID];
        if (v10)
        {
          v11 = v10;
          sub_1007A2254();

          sub_1002060B4();
          sub_1007A28A4();
        }
      }

      sub_100798004();
      v13 = sub_100797FF4();
      sub_100797FA4();

      if ([v9 isAudiobook])
      {
        v14 = [v9 hasRACSupport];
        if (v14)
        {
          v15 = v14;
          [v14 BOOLValue];
        }
      }

      if ([v9 contentType] == 3)
      {
        [objc_allocWithZone(NSNumber) initWithLongLong:{objc_msgSend(v9, "pageCount")}];
      }

      v16 = [v9 supplementalContentAssets];
      if (v16)
      {
        sub_10000A7C4(0, &qword_100ADA990);
        sub_1002E4850();
        v17 = sub_1007A2834();

        if ((v17 & 0xC000000000000001) != 0)
        {
          v16 = sub_1007A3624();
        }

        else
        {
          v16 = *(v17 + 16);
        }
      }

      [objc_allocWithZone(NSNumber) initWithInteger:v16];
      objc_allocWithZone(sub_100798134());

      v18 = sub_100798114();

      return v18;
    }

    else
    {

      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1004FA694(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004FA6F4(uint64_t *a1)
{
  v2 = sub_1001F1160(a1);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);

  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1004FA804(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_1001F1160(a2) - 8);
  v7 = *(v4 + 56);
  v8 = *(v4 + 64);
  v9 = v4 + ((*(v6 + 80) + 72) & ~*(v6 + 80));

  return a4(a1, v4 + 16, v7, v8, v9);
}

uint64_t sub_1004FA89C(uint64_t *a1)
{
  v2 = sub_1001F1160(a1);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);

  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for BooksAssetAppIntentsPerformer.BooksAssetAppIntentsPerformerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BooksAssetAppIntentsPerformer.BooksAssetAppIntentsPerformerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1004FAB98()
{
  result = qword_100AE7FA0;
  if (!qword_100AE7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7FA0);
  }

  return result;
}

uint64_t sub_1004FAC58@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v19[1] = a1;
  v22 = a2;
  v20 = sub_1007967F4();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = (v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_100796CF4();
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  v23 = sub_1007A21D4();
  v11 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v19 - v15;
  sub_1007A2154();
  sub_100796C94();
  (*(v11 + 16))(v13, v16, v23);
  v17 = v21;
  (*(v5 + 16))(v7, v10, v21);
  *v4 = type metadata accessor for BundleFinder();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v20);
  sub_100796834();
  (*(v5 + 8))(v10, v17);
  return (*(v11 + 8))(v16, v23);
}

unint64_t sub_1004FB01C()
{
  result = qword_100AE7FB0;
  if (!qword_100AE7FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7FB0);
  }

  return result;
}

uint64_t *REConstants.floatingButtonHeight.unsafeMutableAddressor()
{
  if (qword_100AD17D0 != -1)
  {
    swift_once();
  }

  return &static REConstants.floatingButtonHeight;
}

uint64_t sub_1004FB180()
{
  result = sub_10079E404();
  v1 = 18.0;
  if (result)
  {
    v1 = 25.0;
  }

  qword_100B23470 = *&v1;
  return result;
}

uint64_t sub_1004FB1B0()
{
  v0 = sub_1001F1160(&unk_100AE3FB0);
  v1 = __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v21 - v4;
  v6 = sub_10079C0E4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = sub_1001F1160(&qword_100AD53B0);
  sub_100009A38(v13, qword_100B23478);
  v24 = sub_100008B98(v13, qword_100B23478);
  v14 = v7[13];
  v14(v12, enum case for DynamicTypeSize.xSmall(_:), v6);
  v14(v10, enum case for DynamicTypeSize.xxxLarge(_:), v6);
  sub_1004FB668();
  result = sub_1007A20F4();
  if (result)
  {
    v16 = v7[2];
    v16(v5, v12, v6);
    v16(&v5[*(v0 + 48)], v10, v6);
    sub_1004FB6C0(v5, v3);
    v17 = *(v0 + 48);
    v23 = v10;
    v21 = v0;
    v18 = v7[4];
    v19 = v24;
    v18(v24, v3, v6);
    v22 = v12;
    v20 = v7[1];
    v20(&v3[v17], v6);
    sub_1004FB730(v5, v3);
    v18(v19 + *(v13 + 36), &v3[*(v21 + 48)], v6);
    v20(v23, v6);
    v20(v22, v6);
    return (v20)(v3, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004FB4E8()
{
  result = sub_10079E404();
  v1 = 48.0;
  if ((result & 1) == 0)
  {
    v1 = 28.0;
  }

  static REConstants.floatingButtonHeight = *&v1;
  return result;
}

double static REConstants.floatingButtonHeight.getter()
{
  if (qword_100AD17D0 != -1)
  {
    swift_once();
  }

  return *&static REConstants.floatingButtonHeight;
}

id REConstants.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for REConstants();
  return objc_msgSendSuper2(&v2, "init");
}

id REConstants.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for REConstants();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1004FB668()
{
  result = qword_100AD6D58;
  if (!qword_100AD6D58)
  {
    sub_10079C0E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6D58);
  }

  return result;
}

uint64_t sub_1004FB6C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100AE3FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004FB730(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100AE3FB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1004FB7A0(uint64_t a1, char a2, double a3, double a4)
{
  v8 = sub_10079CAE4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v45[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v45[-v13];
  if (a4 >= a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = a4;
  }

  if (v15 >= 375.0)
  {
    v16 = 4.0;
  }

  else
  {
    v16 = 3.4;
  }

  v17 = *(v9 + 16);
  v48 = a1;
  if ((a2 & 1) == 0)
  {
    v31 = enum case for ContentSizeCategory.extraExtraLarge(_:);
    v19 = enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
    v20 = enum case for ContentSizeCategory.accessibilityLarge(_:);
    v21 = enum case for ContentSizeCategory.accessibilityExtraLarge(_:);
    v22 = enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:);
    v23 = enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:);
    v32 = 0.0;
    goto LABEL_41;
  }

  v47 = v17;
  v17(&v45[-v13], a1, v8);
  v18 = (*(v9 + 88))(v14, v8);
  v19 = enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
  v20 = enum case for ContentSizeCategory.accessibilityLarge(_:);
  v21 = enum case for ContentSizeCategory.accessibilityExtraLarge(_:);
  v22 = enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:);
  v23 = enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:);
  v46 = enum case for ContentSizeCategory.extraExtraLarge(_:);
  if (v18 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v18 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:) && v18 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v18 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v18 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v18 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    (*(v9 + 8))(v14, v8);
    v29 = 48.0;
    if (a3 < 375.0)
    {
      v29 = 40.8;
    }

    v33 = 48.0;
    if (a4 < 375.0)
    {
      v33 = 40.8;
    }

    if (a4 >= a3)
    {
      v30 = a3;
    }

    else
    {
      v29 = v33;
      v30 = a4;
    }

LABEL_37:
    v17 = v47;
    v31 = v46;
    goto LABEL_38;
  }

  if (a4 < a3)
  {
    v29 = 72.0;
    if (a4 < 375.0)
    {
      v29 = 61.2;
    }

    v30 = a4;
    goto LABEL_37;
  }

  v17 = v47;
  v31 = v46;
  if (a3 < 375.0)
  {
    v29 = 61.2;
    v30 = a3;
LABEL_38:
    v34 = v16 + v29;
    v35 = v30 < 375.0;
    v36 = 9.35;
    if (!v35)
    {
      v36 = 11.0;
    }

    goto LABEL_40;
  }

  v34 = v16 + 72.0;
  v36 = 11.0;
LABEL_40:
  v32 = v36 + v34;
LABEL_41:
  v17(v12, v48, v8);
  v37 = (*(v9 + 88))(v12, v8);
  if (v37 != v31 && v37 != v19 && v37 != v20 && v37 != v21 && v37 != v22 && v37 != v23)
  {
    (*(v9 + 8))(v12, v8);
    if (a4 >= a3)
    {
      if (a3 < 375.0)
      {
        goto LABEL_63;
      }
    }

    else if (a4 < 375.0)
    {
LABEL_63:
      v43 = 234.6;
      goto LABEL_69;
    }

    v44 = 0x4071400000000000;
LABEL_68:
    v43 = *&v44;
    goto LABEL_69;
  }

  if (a4 >= a3)
  {
    if (a3 < 375.0)
    {
      goto LABEL_60;
    }

LABEL_65:
    v44 = 0x4079E00000000000;
    goto LABEL_68;
  }

  if (a4 >= 375.0)
  {
    goto LABEL_65;
  }

LABEL_60:
  v43 = 351.9;
LABEL_69:
  sub_1004FBBD4(v43, a3 - (v16 + v16) - v32);
}

void sub_1004FBBDC(uint64_t a1, double a2, double a3)
{
  v6 = sub_10079CAE4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for ContentSizeCategory.extraExtraLarge(_:) || v10 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:) || v10 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v10 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v10 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v10 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    v16 = 84.0;
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    v16 = 56.0;
  }

  if (a3 >= a2)
  {
    v17 = a2;
  }

  else
  {
    v17 = a3;
  }

  if (v17 >= 375.0)
  {
    v18 = v16;
  }

  else
  {
    v18 = v16 * 0.85;
  }

  v19 = 33.0;
  if (v17 < 375.0)
  {
    v19 = 28.05;
  }

  v20 = a2 - v19;
  sub_1004FB7A0(a1, 1, a2, a3);
  sub_1004FBBD4(v18, v20 - v21);
}

id sub_1004FBDC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingState);
  v2 = *(v0 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingIndicator);
  if (v1)
  {
    result = [v2 setHidden:v1 != 1];
    v5 = *&v2[OBJC_IVAR___BKNowPlayingIndicatorView_playbackState];
    *&v2[OBJC_IVAR___BKNowPlayingIndicatorView_playbackState] = 2;
    if (v5 == 2)
    {
      return result;
    }

    return sub_100394C64();
  }

  result = [v2 setHidden:0];
  v4 = *&v2[OBJC_IVAR___BKNowPlayingIndicatorView_playbackState];
  *&v2[OBJC_IVAR___BKNowPlayingIndicatorView_playbackState] = 1;
  if (v4 != 1)
  {
    return sub_100394C64();
  }

  return result;
}

id sub_1004FBE74()
{
  result = [objc_opt_self() blackColor];
  qword_100AE8018 = result;
  return result;
}

id sub_1004FBEB0()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v0 setFont:v1];

  v2 = [objc_opt_self() bc_booksLabelColor];
  [v0 setTextColor:v2];

  [v0 setLineBreakMode:5];
  [v0 setNumberOfLines:2];
  return v0;
}

id sub_1004FBFBC()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v0 setFont:v1];

  v2 = [objc_opt_self() bc_booksSecondaryLabelColor];
  [v0 setTextColor:v2];

  [v0 setNumberOfLines:1];
  return v0;
}

id sub_1004FC0B4()
{
  if (qword_100AD17D8 != -1)
  {
    swift_once();
  }

  v0 = qword_100AE8018;
  v8.width = 9.0;
  v8.height = 9.0;
  UIGraphicsBeginImageContextWithOptions(v8, 0, 0.0);
  [v0 set];
  v1 = [objc_allocWithZone(UIBezierPath) init];
  sub_10079B614();
  [v1 addArcWithCenter:1 radius:4.5 startAngle:4.5 endAngle:3.0 clockwise:{0.0, v2 + v2}];
  [v1 closePath];
  [v1 fill];
  v3 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  if (v3)
  {
    v4 = [(UIImage *)v3 imageWithRenderingMode:2];
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(UIImageView) initWithImage:v4];
  [v5 setContentMode:4];
  v6 = [objc_opt_self() bc_booksKeyColor];
  [v5 setTintColor:v6];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setHidden:1];

  return v5;
}

uint64_t sub_1004FC28C()
{
  type metadata accessor for NowPlayingIndicatorView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = *&v0[OBJC_IVAR___BKNowPlayingIndicatorView_playbackState];
  *&v0[OBJC_IVAR___BKNowPlayingIndicatorView_playbackState] = 2;
  if (v1 != 2)
  {
    sub_100394C64();
  }

  [v0 setHidden:1];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v0[OBJC_IVAR___BKNowPlayingIndicatorView_numberOfLevels] = 4;
  sub_1003947FC();
  v2 = OBJC_IVAR___BKNowPlayingIndicatorView_levelCornerRadius;
  *&v0[OBJC_IVAR___BKNowPlayingIndicatorView_levelCornerRadius] = 0x4000000000000000;
  v3 = OBJC_IVAR___BKNowPlayingIndicatorView_levelViews;
  result = swift_beginAccess();
  v5 = *&v0[v3];
  if (v5 >> 62)
  {
    result = sub_1007A38D4();
    v6 = result;
    if (!result)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return result;
  }

  v7 = 0;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = sub_1007A3784();
    }

    else
    {
      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    ++v7;
    v10 = [v8 layer];
    [v10 setCornerRadius:*&v0[v2]];
  }

  while (v6 != v7);

LABEL_12:
  v11 = [objc_opt_self() secondaryLabelColor];
  v12 = *&v0[OBJC_IVAR___BKNowPlayingIndicatorView_levelColor];
  *&v0[OBJC_IVAR___BKNowPlayingIndicatorView_levelColor] = v11;
  v13 = v11;

  v14 = v0[OBJC_IVAR___BKNowPlayingIndicatorView_needsLevelUpdate];
  v0[OBJC_IVAR___BKNowPlayingIndicatorView_needsLevelUpdate] = 1;
  if ((v14 & 1) == 0)
  {
    [v0 setNeedsDisplay];
  }

  return v0;
}