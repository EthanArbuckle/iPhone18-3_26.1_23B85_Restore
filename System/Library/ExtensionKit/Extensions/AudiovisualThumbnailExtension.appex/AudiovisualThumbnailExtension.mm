uint64_t sub_1000014E0()
{
  v0 = sub_10000641C();
  sub_100005C80(v0, qword_100010780);
  sub_100005034(v0, qword_100010780);
  return sub_10000640C();
}

uint64_t sub_100001560(uint64_t a1, uint64_t a2)
{
  v2[74] = a2;
  v2[73] = a1;
  v3 = sub_1000063EC();
  v2[75] = v3;
  v4 = *(v3 - 8);
  v2[76] = v4;
  v5 = *(v4 + 64) + 15;
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v6 = sub_10000622C();
  v2[80] = v6;
  v7 = *(v6 - 8);
  v2[81] = v7;
  v8 = *(v7 + 64) + 15;
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v9 = sub_10000632C();
  v2[84] = v9;
  v10 = *(v9 - 8);
  v2[85] = v10;
  v11 = *(v10 + 64) + 15;
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();

  return _swift_task_switch(sub_100001718, 0, 0);
}

uint64_t sub_100001718()
{
  v1 = v0[88];
  v2 = v0[85];
  v3 = v0[84];
  v4 = v0[74];
  sub_10000634C();
  sub_10000631C();
  v0[89] = v5;
  v6 = *(v2 + 8);
  v0[90] = v6;
  v0[91] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  sub_10000634C();
  sub_1000062EC();
  v0[92] = v7;
  v0[93] = v8;
  v6(v1, v3);
  sub_10000634C();
  sub_1000062FC();
  v6(v1, v3);
  v9 = async function pointer to ThumbnailRequest.fileURL.getter[1];
  v10 = swift_task_alloc();
  v0[94] = v10;
  *v10 = v0;
  v10[1] = sub_10000186C;
  v11 = v0[83];
  v12 = v0[74];

  return ThumbnailRequest.fileURL.getter(v11);
}

uint64_t sub_10000186C()
{
  v2 = *(*v1 + 752);
  v5 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v3 = sub_100003550;
  }

  else
  {
    v3 = sub_100001980;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100001980()
{
  v51 = v0;
  v1 = v0[79];
  v2 = v0[74];
  sub_100004308(&qword_1000100C8, &qword_100006CE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100006C00;
  *(inited + 32) = sub_10000658C();
  *(inited + 72) = &type metadata for UInt;
  *(inited + 40) = v4;
  *(inited + 48) = 0xFFFFLL;
  *(inited + 80) = sub_10000658C();
  *(inited + 88) = v5;
  sub_1000062DC();
  if (sub_10000638C() == 0xD000000000000022 && 0x80000001000076E0 == v6)
  {

LABEL_5:
    v8 = v0[79];
    v9 = v0[78];
    v10 = v0[76];
    v11 = v0[75];
    sub_10000639C();
    v12 = sub_10000638C();
    v14 = v13;
    v15 = *(v10 + 8);
    v15(v9, v11);
    v15(v8, v11);
    goto LABEL_7;
  }

  v7 = sub_10000670C();

  if (v7)
  {
    goto LABEL_5;
  }

  v16 = v0[79];
  v17 = v0[76];
  v18 = v0[75];
  v12 = sub_10000638C();
  v14 = v19;
  v15 = *(v17 + 8);
  v15(v16, v18);
LABEL_7:
  v0[96] = v15;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v12;
  *(inited + 104) = v14;
  sub_100004F10(inited);
  swift_setDeallocating();
  sub_100004308(&qword_1000100D0, &qword_100006CF0);
  swift_arrayDestroy();
  if (qword_1000101D0 != -1)
  {
    swift_once();
  }

  v20 = v0[83];
  v21 = v0[82];
  v22 = v0[81];
  v23 = v0[80];
  v24 = sub_10000641C();
  v0[97] = sub_100005034(v24, qword_100010780);
  (*(v22 + 16))(v21, v20, v23);
  v25 = sub_1000063FC();
  v26 = sub_10000660C();
  v27 = os_log_type_enabled(v25, v26);
  v28 = v0[82];
  v29 = v0[81];
  v30 = v0[80];
  if (v27)
  {
    v31 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v31 = 136315394;
    v32 = sub_10000620C();
    v34 = v33;
    v49 = v26;
    v35 = *(v29 + 8);
    v35(v28, v30);
    v36 = sub_10000488C(v32, v34, &v50);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    v37 = sub_10000656C();
    v39 = sub_10000488C(v37, v38, &v50);

    *(v31 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v25, v49, "Loading asset %s with options: %s", v31, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v35 = *(v29 + 8);
    v35(v28, v30);
  }

  v0[98] = v35;
  v40 = v0[83];
  v41 = objc_allocWithZone(AVURLAsset);
  sub_10000621C(v42);
  v44 = v43;
  isa = sub_10000655C().super.isa;

  v46 = [v41 initWithURL:v44 options:isa];
  v0[99] = v46;

  v47 = swift_task_alloc();
  v0[100] = v47;
  *v47 = v0;
  v47[1] = sub_100001E5C;

  return sub_10000506C(v46);
}

uint64_t sub_100001E5C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[59] = v2;
  v4[60] = a1;
  v4[61] = a2;
  v5 = v3[100];
  v7 = *v2;
  v4[101] = a2;

  return _swift_task_switch(sub_100001F64, 0, 0);
}

uint64_t sub_100001F64()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 608) + 8;
  if (v1 >> 60 == 15)
  {
    v3 = *(v0 + 768);
    v4 = *(v0 + 624);
    v5 = *(v0 + 616);
    v6 = *(v0 + 600);
    v7 = *(v0 + 592);
    sub_1000062DC();
    sub_1000063BC();
    LOBYTE(v7) = sub_1000063DC();
    v3(v5, v6);
    v3(v4, v6);
    if (v7)
    {
      sub_1000065FC();
      *(v0 + 816) = sub_1000065EC();
      v9 = sub_1000065DC();

      return _swift_task_switch(sub_1000022B4, v9, v8);
    }

    else
    {
      v25 = *(v0 + 792);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 544;
      *(v0 + 24) = sub_1000024DC;
      v26 = swift_continuation_init();
      *(v0 + 264) = sub_100004308(&qword_1000100D8, &qword_100006D00);
      *(v0 + 208) = _NSConcreteStackBlock;
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_100003A08;
      *(v0 + 232) = &unk_10000C8F8;
      *(v0 + 240) = v26;
      [v25 loadTracksWithMediaCharacteristic:AVMediaCharacteristicVisual completionHandler:v0 + 208];

      return _swift_continuation_await(v0 + 16);
    }
  }

  else
  {
    v10 = *(v0 + 480);
    v11 = *(v0 + 792);
    v12 = *(v0 + 768);
    v13 = *(v0 + 624);
    v14 = *(v0 + 600);
    v15 = *(v0 + 584);
    sub_1000063CC();
    sub_1000062BC();
    v12(v13, v14);
    sub_1000062AC();
    sub_100005A44(v10, v1);

    v16 = *(v0 + 704);
    v17 = *(v0 + 696);
    v18 = *(v0 + 688);
    v19 = *(v0 + 656);
    v20 = *(v0 + 632);
    v21 = *(v0 + 624);
    v22 = *(v0 + 648) + 8;
    v23 = *(v0 + 616);
    (*(v0 + 784))(*(v0 + 664), *(v0 + 640));

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_1000022B4()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 744);
  v3 = *(v0 + 736);
  v4 = *(v0 + 584);

  *(v0 + 416) = sub_100003AF8;
  *(v0 + 424) = 0;
  *(v0 + 432) = 0x3FF0000000000000;
  *(v0 + 440) = 0;
  v5 = sub_100004308(&qword_100010100, &qword_100006D20);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_10000646C();
  sub_10000644C();
  sub_10000647C();

  sub_10000629C();

  return _swift_task_switch(sub_1000023E0, 0, 0);
}

uint64_t sub_1000023E0()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 656);
  v5 = *(v0 + 632);
  v6 = *(v0 + 624);
  v7 = *(v0 + 648) + 8;
  v8 = *(v0 + 616);
  (*(v0 + 784))(*(v0 + 664), *(v0 + 640));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000024DC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 824) = v3;
  if (v3)
  {

    v4 = sub_100003620;
  }

  else
  {
    v4 = sub_1000025F4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000025F4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8[68];
  if (v9 >> 62)
  {
    if (v9 < 0)
    {
      v18 = v8[68];
    }

    v10 = sub_1000066EC();
    if (v10)
    {
LABEL_3:
      if ((v9 & 0xC000000000000001) != 0)
      {
        v11 = sub_1000066CC();
      }

      else
      {
        if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return AVAsynchronousKeyValueLoading.load<A, B, C>(_:_:_:isolation:)(v10, a2, a3, a4, a5, a6, a7, a8);
        }

        v11 = *(v9 + 32);
      }

      v8[104] = v11;
      v12 = v8[99];

      v13 = [objc_allocWithZone(AVAssetImageGenerator) initWithAsset:v12];
      v8[105] = v13;

      [v13 setAppliesPreferredTrackTransform:1];
      [v13 setUseSWDecoderForAV1:1];
      sub_100004308(&qword_1000100E0, &qword_100006D08);
      v14 = sub_10000623C();
      v8[106] = v14;
      sub_100004308(&qword_1000100E8, &qword_100006D10);
      v15 = sub_10000624C();
      v8[107] = v15;
      v16 = async function pointer to AVAsynchronousKeyValueLoading.load<A, B, C>(_:_:_:isolation:)[1];
      v17 = swift_task_alloc();
      v8[108] = v17;
      *v17 = v8;
      v17[1] = sub_100002934;
      v10 = (v8 + 62);
      a2 = v8 + 34;
      a3 = v8 + 10;
      a4 = v14;
      a5 = v15;
      a6 = v8 + 10;
      a7 = 0;
      a8 = 0;

      return AVAsynchronousKeyValueLoading.load<A, B, C>(_:_:_:isolation:)(v10, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }
  }

  v19 = v8[99];
  v20 = v8[98];
  v21 = v8[83];
  v22 = v8[81];
  v23 = v8[80];

  type metadata accessor for QLThumbnailError(0);
  v8[72] = 4;
  sub_100004F10(&_swiftEmptyArrayStorage);
  sub_1000042C0(&qword_1000100F8, type metadata accessor for QLThumbnailError);
  sub_1000061FC();
  v24 = v8[71];
  swift_willThrow();

  v20(v21, v23);
  v25 = v8[88];
  v26 = v8[87];
  v27 = v8[86];
  v28 = v8[83];
  v29 = v8[82];
  v30 = v8[79];
  v31 = v8[78];
  v32 = v8[77];

  v33 = v8[1];

  return v33();
}

uint64_t sub_100002934()
{
  v2 = *v1;
  v3 = *(*v1 + 864);
  v4 = *v1;
  *(*v1 + 872) = v0;

  v5 = *(v2 + 856);
  v6 = *(v2 + 848);

  if (v0)
  {
    v7 = sub_100003730;
  }

  else
  {
    v7 = sub_100002A84;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100002E4C()
{
  v2 = *v1;
  v3 = *(*v1 + 904);
  v4 = *v1;

  v5 = *(v2 + 896);
  if (v0)
  {

    v6 = sub_100003840;
  }

  else
  {

    v6 = sub_100002F94;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100002F94()
{
  v1 = *(v0 + 444);
  v2 = *(v0 + 452);
  v3 = *(v0 + 460);
  v4 = v2 | (*(v0 + 456) << 32);
  v5 = sub_10000669C();
  value = kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  if (v5)
  {
    v8 = *&kCMTimeZero.timescale;
    v9 = kCMTimeZero.epoch;
    if (sub_10000666C())
    {
      sub_10000668C();
      v11 = v10;
      v12 = 10.0;
      if (v11 <= 20.0)
      {
        sub_10000668C();
        v12 = v13 * 0.5;
      }

      value = sub_10000667C(v12, v2);
      timescale = v14;
      epoch = v16;
      flags = HIDWORD(v14);
    }

    else
    {
      flags = HIDWORD(v8);
      timescale = v8;
    }
  }

  else
  {
    timescale = kCMTimeZero.timescale;
    flags = kCMTimeZero.flags;
  }

  v18 = async function pointer to AVAssetImageGenerator.image(at:)[1];
  v19 = swift_task_alloc();
  *(v0 + 912) = v19;
  v20 = timescale | (flags << 32);
  *v19 = v0;
  v19[1] = sub_100003118;
  v21 = *(v0 + 840);

  return AVAssetImageGenerator.image(at:)(value, v20, epoch);
}

uint64_t sub_100003118(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 912);
  v7 = *v2;
  *(v3 + 920) = a1;
  *(v3 + 928) = v1;

  if (v1)
  {
    v5 = sub_1000038F8;
  }

  else
  {
    v5 = sub_100003230;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100003230()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 536);
  v3 = *(v0 + 512);
  v4 = *(v0 + 520);
  v5 = *(v0 + 888);
  v6 = *(v0 + 728);
  v7 = *(v0 + 720);
  v8 = *(v0 + 704);
  v9 = *(v0 + 672);
  v10 = *(v0 + 592);
  if (*(v0 + 880) > v5)
  {
    v5 = *(v0 + 880);
  }

  v11 = v5 * *(v0 + 712);
  v12 = *(v0 + 920);
  sub_10000634C();
  sub_10000630C();
  v7(v8, v9);
  v13 = QLThumbnailingImageIOCreateCroppedAndScaledThumbnailToSatisfyConstraints();

  if (v13)
  {
    v14 = *(v0 + 920);
    v15 = *(v0 + 840);
    v16 = *(v0 + 832);
    v17 = *(v0 + 792);
    v18 = *(v0 + 712);
    v19 = *(v0 + 584);
    sub_1000062CC();

    sub_1000062AC();
    v20 = *(v0 + 704);
    v21 = *(v0 + 696);
    v22 = *(v0 + 688);
    v23 = *(v0 + 656);
    v24 = *(v0 + 632);
    v25 = *(v0 + 624);
    v26 = *(v0 + 648) + 8;
    v27 = *(v0 + 616);
    (*(v0 + 784))(*(v0 + 664), *(v0 + 640));
  }

  else
  {
    v29 = *(v0 + 920);
    v30 = *(v0 + 840);
    v31 = *(v0 + 832);
    v32 = *(v0 + 792);
    v46 = *(v0 + 784);
    v33 = *(v0 + 664);
    v34 = *(v0 + 648);
    v35 = *(v0 + 640);
    type metadata accessor for QLThumbnailError(0);
    *(v0 + 560) = 0;
    sub_100004F10(&_swiftEmptyArrayStorage);
    sub_1000042C0(&qword_1000100F8, type metadata accessor for QLThumbnailError);
    sub_1000061FC();
    v36 = *(v0 + 552);
    swift_willThrow();

    v46(v33, v35);
    v37 = *(v0 + 704);
    v38 = *(v0 + 696);
    v39 = *(v0 + 688);
    v40 = *(v0 + 664);
    v41 = *(v0 + 656);
    v42 = *(v0 + 632);
    v43 = *(v0 + 624);
    v44 = *(v0 + 616);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100003550()
{
  v1 = v0[95];
  v2 = v0[88];
  v3 = v0[87];
  v4 = v0[86];
  v5 = v0[83];
  v6 = v0[82];
  v7 = v0[79];
  v8 = v0[78];
  v9 = v0[77];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100003620()
{
  v1 = v0[103];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[83];
  v5 = v0[81];
  v6 = v0[80];
  swift_willThrow();

  v3(v4, v6);
  v7 = v0[103];
  v8 = v0[88];
  v9 = v0[87];
  v10 = v0[86];
  v11 = v0[83];
  v12 = v0[82];
  v13 = v0[79];
  v14 = v0[78];
  v15 = v0[77];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100003730()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v4 = *(v0 + 664);
  v5 = *(v0 + 648);
  v6 = *(v0 + 640);

  v3(v4, v6);
  v7 = *(v0 + 872);
  v8 = *(v0 + 704);
  v9 = *(v0 + 696);
  v10 = *(v0 + 688);
  v11 = *(v0 + 664);
  v12 = *(v0 + 656);
  v13 = *(v0 + 632);
  v14 = *(v0 + 624);
  v15 = *(v0 + 616);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100003840()
{
  v1 = *&kCMTimeZero.timescale;
  epoch = kCMTimeZero.epoch;
  v3 = async function pointer to AVAssetImageGenerator.image(at:)[1];
  v4 = swift_task_alloc();
  *(v0 + 912) = v4;
  *v4 = v0;
  v4[1] = sub_100003118;
  v5 = *(v0 + 840);

  return AVAssetImageGenerator.image(at:)(kCMTimeZero.value, v1, epoch);
}

uint64_t sub_1000038F8()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v4 = *(v0 + 664);
  v5 = *(v0 + 648);
  v6 = *(v0 + 640);

  v3(v4, v6);
  v7 = *(v0 + 928);
  v8 = *(v0 + 704);
  v9 = *(v0 + 696);
  v10 = *(v0 + 688);
  v11 = *(v0 + 664);
  v12 = *(v0 + 656);
  v13 = *(v0 + 632);
  v14 = *(v0 + 624);
  v15 = *(v0 + 616);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100003A08(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100005B94((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100004308(&qword_100010130, &qword_100006D78);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_100005C38(0, &qword_100010128, AVAssetTrack_ptr);
    **(*(v4 + 64) + 40) = sub_1000065CC();

    return _swift_continuation_throwingResume(v4);
  }
}

__n128 sub_100003AF8@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1000064EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(sub_100004308(&qword_100010108, &qword_100006D28) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = v21 - v8;
  v21[0] = sub_10000650C();
  sub_10000643C();
  v10 = sub_1000064CC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = sub_1000064DC();
  sub_100005BD8(v9, &qword_100010108, &qword_100006D28);
  KeyPath = swift_getKeyPath();
  sub_10000643C();
  sub_10000643C();
  sub_10000652C();
  sub_10000642C();
  v13 = enum case for Color.RGBColorSpace.sRGB(_:);
  v14 = *(v3 + 104);
  v14(v6, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  v15 = sub_1000064FC();
  sub_100004308(&qword_100010110, &qword_100006D60);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100006C00;
  v14(v6, v13, v2);
  *(v16 + 32) = sub_1000064FC();
  v14(v6, v13, v2);
  *(v16 + 40) = sub_1000064FC();
  sub_10000653C();
  sub_10000654C();
  sub_10000651C();
  sub_10000648C();
  v17 = v21[1];
  v18 = sub_1000064BC();
  *a1 = v21[0];
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v11;
  v19 = v25;
  *(a1 + 24) = v24;
  *(a1 + 40) = v19;
  *(a1 + 56) = v26;
  *(a1 + 72) = v15;
  *(a1 + 80) = v17;
  result = v22;
  *(a1 + 104) = v23;
  *(a1 + 88) = result;
  *(a1 + 120) = v18;
  return result;
}

uint64_t sub_100003E34@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000636C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100003E9C(uint64_t a1)
{
  v2 = sub_1000042C0(&qword_1000100C0, type metadata accessor for AudiovisualThumbnailExtension);

  return ThumbnailExtension.configuration.getter(a1, v2);
}

uint64_t sub_100003F18()
{
  v0 = *(*(sub_1000063EC() - 8) + 64);
  __chkstk_darwin();
  sub_1000063AC();
  return sub_10000635C();
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AudiovisualThumbnailExtension();
  sub_1000042C0(&qword_100010038, type metadata accessor for AudiovisualThumbnailExtension);
  sub_10000628C();
  return 0;
}

uint64_t type metadata accessor for AudiovisualThumbnailExtension()
{
  result = qword_1000101D8;
  if (!qword_1000101D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000409C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000636C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000411C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000636C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10000418C()
{
  result = sub_10000636C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000042C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004308(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004350(uint64_t a1)
{
  v2 = sub_1000042C0(&qword_100010188, type metadata accessor for QLThumbnailError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000043BC(uint64_t a1)
{
  v2 = sub_1000042C0(&qword_100010188, type metadata accessor for QLThumbnailError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000442C(uint64_t a1)
{
  v2 = sub_1000042C0(&qword_1000100F8, type metadata accessor for QLThumbnailError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000044B8(uint64_t a1)
{
  v2 = sub_1000042C0(&qword_1000100F8, type metadata accessor for QLThumbnailError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100004524(uint64_t a1)
{
  v2 = sub_1000042C0(&qword_1000100F8, type metadata accessor for QLThumbnailError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100004590(void *a1, uint64_t a2)
{
  v4 = sub_1000042C0(&qword_1000100F8, type metadata accessor for QLThumbnailError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100004644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000042C0(&qword_1000100F8, type metadata accessor for QLThumbnailError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000046C0()
{
  v2 = *v0;
  sub_10000674C();
  sub_10000657C();
  return sub_10000675C();
}

void *sub_100004720@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000473C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000042C0(&qword_1000100F8, type metadata accessor for QLThumbnailError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_1000047D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10000670C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10000488C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004958(v11, 0, 0, 1, a1, a2);
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
    sub_100005940(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000059A4(v11);
  return v7;
}

unint64_t sub_100004958(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004A64(a5, a6);
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
    result = sub_1000066DC();
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

char *sub_100004A64(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004AB0(a1, a2);
  sub_100004BE0(&off_10000C8D0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100004AB0(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004CCC(v5, 0);
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

  result = sub_1000066DC();
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
        v10 = sub_1000065AC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100004CCC(v10, 0);
        result = sub_1000066BC();
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

uint64_t sub_100004BE0(uint64_t result)
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

  result = sub_100004D40(result, v12, 1, v3);
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

void *sub_100004CCC(uint64_t a1, uint64_t a2)
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

  sub_100004308(&qword_100010118, &qword_100006D68);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004D40(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004308(&qword_100010118, &qword_100006D68);
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

uint64_t sub_100004E34(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  sub_10000674C();
  sub_10000659C();
  v7 = sub_10000675C();

  return a3(a1, a2, v7);
}

uint64_t sub_100004EB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000649C();
  *a1 = result;
  return result;
}

uint64_t sub_100004EE4(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000064AC();
}

unint64_t sub_100004F10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004308(&qword_100010120, &qword_100006D70);
    v3 = sub_1000066FC();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005B14(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100004E34(v13, v14, sub_1000047D4);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100005B84(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100005034(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000508C()
{
  sub_100004308(&qword_100010138, &qword_100006D80);
  v1 = sub_10000626C();
  v0[6] = v1;
  v2 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_100005158;
  v4 = v0[5];

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 4, v1, 0, 0);
}

uint64_t sub_100005158()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1000055CC;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_100005274;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100005274()
{
  v1 = v0[4];
  v2 = objc_opt_self();
  sub_100005C38(0, &qword_100010148, AVMetadataItem_ptr);
  isa = sub_1000065BC().super.isa;

  v4 = [v2 metadataItemsFromArray:isa filteredByIdentifier:AVMetadataCommonIdentifierArtwork];

  v5 = sub_1000065CC();
  if (v5 >> 62)
  {
    v9 = sub_1000066EC();
    if (v9)
    {
LABEL_3:
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = sub_1000066CC();
      }

      else
      {
        if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v9, v6, v7, v8);
        }

        v10 = *(v5 + 32);
      }

      v0[9] = v10;

      sub_100004308(&qword_100010150, &qword_100006D90);
      v11 = sub_10000625C();
      v0[10] = v11;
      v12 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
      v13 = swift_task_alloc();
      v0[11] = v13;
      *v13 = v0;
      v13[1] = sub_100005480;
      v9 = (v0 + 2);
      v6 = v11;
      v7 = 0;
      v8 = 0;

      return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v9, v6, v7, v8);
    }
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v14 = v0[1];

  return v14(0, 0xF000000000000000);
}

uint64_t sub_100005480()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_10000577C;
  }

  else
  {
    v6 = *(v2 + 72);
    v5 = *(v2 + 80);

    v4 = sub_1000055A0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000055A0()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 16);
  }

  if (v1 >> 60 == 15)
  {
    v3 = 0xF000000000000000;
  }

  else
  {
    v3 = *(v0 + 24);
  }

  return (*(v0 + 8))(v2, v3);
}

uint64_t sub_1000055CC()
{
  v1 = v0[6];

  v2 = v0[8];
  if (qword_1000101D0 != -1)
  {
    swift_once();
  }

  v3 = sub_10000641C();
  sub_100005034(v3, qword_100010780);
  swift_errorRetain();
  v4 = sub_1000063FC();
  v5 = sub_10000661C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to fetch artwork data: %@", v6, 0xCu);
    sub_100005BD8(v7, &qword_100010140, &qword_100006D88);
  }

  else
  {
  }

  v9 = v0[1];

  return v9(0, 0xF000000000000000);
}

uint64_t sub_10000577C()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[12];
  if (qword_1000101D0 != -1)
  {
    swift_once();
  }

  v4 = sub_10000641C();
  sub_100005034(v4, qword_100010780);
  swift_errorRetain();
  v5 = sub_1000063FC();
  v6 = sub_10000661C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to fetch artwork data: %@", v7, 0xCu);
    sub_100005BD8(v8, &qword_100010140, &qword_100006D88);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0, 0xF000000000000000);
}

uint64_t sub_100005940(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000059A4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100005A44(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005A58(a1, a2);
  }

  return a1;
}

uint64_t sub_100005A58(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_100005AAC(void (*a1)(void))
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v3();
  a1();
}

uint64_t sub_100005B14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004308(&qword_1000100D0, &qword_100006CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100005B84(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_100005B94(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005BD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004308(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100005C38(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t *sub_100005C80(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

__n128 sub_100005CE4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100005CFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005D1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 sub_100005D5C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100005D70(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005D90(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

__n128 sub_100005DDC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100005DE8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005E08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

unint64_t sub_100006054()
{
  result = qword_1000101B0;
  if (!qword_1000101B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101B0);
  }

  return result;
}

void sub_10000614C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

CGSize CGSizeApplyAffineTransform(CGSize size, CGAffineTransform *t)
{
  v4 = _CGSizeApplyAffineTransform(size, t);
  height = v4.height;
  width = v4.width;
  result.height = height;
  result.width = width;
  return result;
}