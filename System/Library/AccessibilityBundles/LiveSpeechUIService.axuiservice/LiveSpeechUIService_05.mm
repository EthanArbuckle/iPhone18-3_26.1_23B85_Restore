uint64_t sub_83370@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v6 = *(v1 + 2);
  v5 = *(v1 + 3);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  v8 = objc_opt_self();

  v9 = [v8 defaultCenter];
  if (qword_F82C8 != -1)
  {
    swift_once();
  }

  v10 = sub_2E50(&qword_FAF80);
  sub_BB400();

  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = v4;
  *(v11 + 32) = v6;
  *(v11 + 40) = v5;
  *a1 = sub_834FC;
  a1[1] = v7;
  v12 = (a1 + *(v10 + 56));
  *v12 = sub_8354C;
  v12[1] = v11;
}

uint64_t sub_8350C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_8355C(uint64_t a1, uint64_t a2)
{
  v4 = sub_B9F50();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_835C4()
{
  result = qword_FAFA8;
  if (!qword_FAFA8)
  {
    sub_5520(&qword_FAF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FAFA8);
  }

  return result;
}

uint64_t sub_8362C()
{
  result = sub_BAAF0();
  microphoneColor = result;
  return result;
}

uint64_t *microphoneColor.unsafeMutableAddressor()
{
  if (qword_F8338 != -1)
  {
    swift_once();
  }

  return &microphoneColor;
}

void (*AudioHistogramConfig.levelBarMaxHeight.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$levelBarMaxHeight.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFC8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFC0);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$levelBarMaxHeight.modify(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_2E50(&qword_FAFC8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarMaxHeight;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFC0);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

void (*AudioHistogramConfig.levelBarMinHeight.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$levelBarMinHeight.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFC8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFC0);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$levelBarMinHeight.modify(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_2E50(&qword_FAFC8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarMinHeight;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFC0);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

void (*AudioHistogramConfig.levelBarWidth.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$levelBarWidth.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFC8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFC0);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$levelBarWidth.modify(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_2E50(&qword_FAFC8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarWidth;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFC0);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

void (*AudioHistogramConfig.levelBarCount.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$levelBarCount.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFF0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFE8);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$levelBarCount.modify(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_2E50(&qword_FAFF0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarCount;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFE8);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

void (*AudioHistogramConfig.levelBarKeys.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$levelBarKeys.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFF0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFE8);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$levelBarKeys.modify(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_2E50(&qword_FAFF0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarKeys;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFE8);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

void (*AudioHistogramConfig.levelBarSpacing.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$levelBarSpacing.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFC8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFC0);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$levelBarSpacing.modify(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_2E50(&qword_FAFC8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarSpacing;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFC0);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

void (*AudioHistogramConfig.animationTimerDuration.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$animationTimerDuration.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFC8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFC0);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$animationTimerDuration.modify(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_2E50(&qword_FAFC8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__animationTimerDuration;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFC0);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

void (*AudioHistogramConfig.minBarScale.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$minBarScale.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFC8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFC0);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$minBarScale.modify(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_2E50(&qword_FAFC8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__minBarScale;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFC0);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

void (*AudioHistogramConfig.maxBarScale.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_B9B00();
  return sub_71464;
}

uint64_t AudioHistogramConfig.$maxBarScale.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFC8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFC0);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$maxBarScale.modify(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_2E50(&qword_FAFC8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__maxBarScale;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFC0);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

void (*AudioHistogramConfig.randomPower.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$randomPower.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFF0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFE8);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$randomPower.modify(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_2E50(&qword_FAFF0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__randomPower;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFE8);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

uint64_t sub_85DF8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_B9B20();
}

void (*AudioHistogramConfig.jitter.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$jitter.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFF0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFE8);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$jitter.modify(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_2E50(&qword_FAFF0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__jitter;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFE8);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

double sub_86220()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  return v1;
}

double sub_8628C@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_86330()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_B9B20();
}

uint64_t sub_863E4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_B9B20();
}

void (*AudioHistogramConfig.magnitude.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$magnitude.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFC8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFC0);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$magnitude.modify(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_2E50(&qword_FAFC8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__magnitude;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFC0);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

uint64_t sub_86828()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_B9B20();
}

uint64_t sub_868BC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_B9B20();
}

void (*AudioHistogramConfig.levelBarColor.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$levelBarColor.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FB048);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FB040);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$levelBarColor.modify(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_2E50(&qword_FB048);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarColor;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FB040);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

uint64_t AudioHistogramConfig.histogram.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  return v1;
}

uint64_t sub_86D54@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  *a1 = v3;
  return result;
}

uint64_t sub_86DD8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_B9B20();
}

uint64_t AudioHistogramConfig.histogram.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_B9B20();
}

void (*AudioHistogramConfig.histogram.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$histogram.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FB068);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FB060);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$histogram.modify(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_2E50(&qword_FB068);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__histogram;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FB060);
  sub_B9AE0();
  swift_endAccess();
  return sub_7172C;
}

uint64_t sub_87230()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();
}

uint64_t sub_8739C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (__OFSUB__(*&v2, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v1 = v2 * *&v2 + v2 * (*&v2 - 1);
  if (COERCE__INT64(fabs(v1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t AudioHistogramConfig.deinit()
{
  v1 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarMaxHeight;
  v2 = sub_2E50(&qword_FAFC0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarMinHeight, v2);
  v3(v0 + OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarWidth, v2);
  v4 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarCount;
  v5 = sub_2E50(&qword_FAFE8);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarKeys, v5);
  v3(v0 + OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarSpacing, v2);
  v3(v0 + OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__animationTimerDuration, v2);
  v3(v0 + OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__minBarScale, v2);
  v3(v0 + OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__maxBarScale, v2);
  v6(v0 + OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__randomPower, v5);
  v6(v0 + OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__jitter, v5);
  v3(v0 + OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__magnitude, v2);
  v7 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarColor;
  v8 = sub_2E50(&qword_FB040);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__histogram;
  v10 = sub_2E50(&qword_FB060);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t AudioHistogramConfig.__deallocating_deinit()
{
  AudioHistogramConfig.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_87840()
{
  v1 = sub_2E50(&qword_FB060);
  v40 = *(v1 - 8);
  v41 = v1;
  __chkstk_darwin(v1);
  v39 = v34 - v2;
  v3 = sub_2E50(&qword_FB040);
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v36 = v34 - v4;
  v35 = sub_2E50(&qword_FAFE8);
  v5 = *(v35 - 8);
  __chkstk_darwin(v35);
  v7 = v34 - v6;
  v8 = sub_2E50(&qword_FAFC0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v34 - v10;
  v12 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarMaxHeight;
  v42 = 0x403C000000000000;
  sub_B9AD0();
  v13 = *(v9 + 32);
  v13(v0 + v12, v11, v8);
  v14 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarMinHeight;
  v42 = 0x4000000000000000;
  sub_B9AD0();
  v13(v0 + v14, v11, v8);
  v15 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarWidth;
  v42 = 0x4000000000000000;
  sub_B9AD0();
  v13(v0 + v15, v11, v8);
  v16 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarCount;
  v42 = 16;
  sub_B9AD0();
  v17 = *(v5 + 32);
  v18 = v35;
  v17(v0 + v16, v7, v35);
  v34[1] = v5 + 32;
  v19 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarKeys;
  v42 = 10;
  sub_B9AD0();
  v17(v0 + v19, v7, v18);
  v20 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarSpacing;
  v42 = 0x4000000000000000;
  sub_B9AD0();
  v13(v0 + v20, v11, v8);
  v21 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__animationTimerDuration;
  v42 = 0x401C000000000000;
  sub_B9AD0();
  v13(v0 + v21, v11, v8);
  v22 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__minBarScale;
  v42 = 0x3FB999999999999ALL;
  sub_B9AD0();
  v13(v0 + v22, v11, v8);
  v23 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__maxBarScale;
  v42 = 0x3FF0000000000000;
  sub_B9AD0();
  v13(v0 + v23, v11, v8);
  v24 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__randomPower;
  v42 = 80;
  sub_B9AD0();
  v17(v0 + v24, v7, v18);
  v25 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__jitter;
  v42 = 29;
  sub_B9AD0();
  v17(v0 + v25, v7, v18);
  v26 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__magnitude;
  v42 = 0x3FF0000000000000;
  sub_B9AD0();
  v13(v0 + v26, v11, v8);
  v27 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarColor;
  if (qword_F8338 != -1)
  {
    swift_once();
  }

  v42 = microphoneColor;

  v28 = v36;
  sub_B9AD0();
  (*(v37 + 32))(v0 + v27, v28, v38);
  v29 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__histogram;
  v30 = sub_BB120();
  *(v30 + 16) = 16;
  v31 = vdupq_n_s64(0x3FB999999999999AuLL);
  *(v30 + 32) = v31;
  *(v30 + 48) = v31;
  *(v30 + 64) = v31;
  *(v30 + 80) = v31;
  *(v30 + 96) = v31;
  *(v30 + 112) = v31;
  *(v30 + 128) = v31;
  *(v30 + 144) = v31;
  v42 = v30;
  sub_2E50(&qword_FB050);
  v32 = v39;
  sub_B9AD0();
  (*(v40 + 32))(v0 + v29, v32, v41);
  return v0;
}

uint64_t sub_87E70@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AudioHistogramConfig();
  result = sub_B9AA0();
  *a1 = result;
  return result;
}

uint64_t sub_87EB0()
{
  v0 = sub_2E50(&qword_F8FA0);
  __chkstk_darwin(v0 - 8);
  v2 = v9 - v1;
  sub_8A3DC();
  v3 = [objc_opt_self() mainRunLoop];
  v4 = sub_BB4B0();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = NSRunLoopCommonModes;
  v6 = sub_BB440();

  sub_C5E8(v2, &qword_F8FA0);
  v9[1] = v6;
  sub_BB430();
  sub_8A428(&qword_FB4D8, &type metadata accessor for NSTimer.TimerPublisher);
  v7 = sub_B9AB0();

  qword_FAFB0 = v7;
  return result;
}

uint64_t sub_8806C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v0 = 1.0;
  if (v11 > 0.0)
  {
    sub_2E50(&qword_FA208);
    sub_BABD0();
    v0 = v10 / v11;
  }

  sub_2E50(&qword_FB4C0);
  sub_BABD0();
  v1 = *(v10 + 16);

  if (v1)
  {
    v2 = sub_BB120();
    v2[2] = v1;
    v3 = v2 + 2;
    bzero(v2 + 4, 8 * v1);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
    v3 = &_swiftEmptyArrayStorage[2];
    v1 = _swiftEmptyArrayStorage[2];
    if (!v1)
    {
      return v2;
    }
  }

  v4 = 4;
  while (1)
  {
    v5 = v4 - 4;
    sub_BABD0();
    result = v10;
    if ((v4 - 4) >= *(v10 + 16))
    {
      break;
    }

    v7 = *(v10 + 8 * v4);

    sub_BABD0();
    result = v10;
    if (v5 >= *(v10 + 16))
    {
      goto LABEL_14;
    }

    v8 = *(v10 + 8 * v4);

    sub_BABD0();
    result = v10;
    if (v5 >= *(v10 + 16))
    {
      goto LABEL_15;
    }

    v9 = *(v10 + 8 * v4);

    if (v5 >= *v3)
    {
      goto LABEL_16;
    }

    *&v2[v4++] = v7 + v0 * (v8 - v9);
    if (!--v1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_88298()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v35 = v3;
  v36 = v2;
  *&v34 = v2;
  *(&v34 + 1) = v3;
  sub_57A0(&v36, &v33, &qword_FB050);
  sub_57A0(&v35, &v33, &qword_FB4C8);
  sub_57A0(&v36, &v33, &qword_FB050);
  sub_57A0(&v35, &v33, &qword_FB4C8);
  sub_2E50(&qword_FB4C0);
  sub_BABD0();
  v4 = v33[2];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v4 != v34)
  {
    sub_87230();
    v31 = v5;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    v7 = v34;
    if ((v34 & 0x8000000000000000) != 0)
    {
LABEL_28:
      __break(1u);
      return result;
    }

    if (v34)
    {
      v8 = sub_BB120();
      v8[1].i64[0] = v7;
      i64 = v8[2].i64;
      if (v7 > 3)
      {
        v10 = v7 & 0x7FFFFFFFFFFFFFFCLL;
        i64 += v7 & 0x7FFFFFFFFFFFFFFCLL;
        v11 = v31;
        v12 = vdupq_lane_s64(v31, 0);
        v13 = v8 + 3;
        v14 = v7 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v13[-1] = v12;
          *v13 = v12;
          v13 += 2;
          v14 -= 4;
        }

        while (v14);
        if (v7 == v10)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v10 = 0;
        v11 = v31;
      }

      v15 = v7 - v10;
      do
      {
        *i64++ = v11;
        --v15;
      }

      while (v15);
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

LABEL_12:
    *&v34 = v2;
    *(&v34 + 1) = v3;
    v33 = v8;
    sub_BABE0();
  }

  sub_C5E8(&v36, &qword_FB050);
  sub_C5E8(&v35, &qword_FB4C8);
  *&v34 = v2;
  *(&v34 + 1) = v3;
  sub_BABD0();
  v34 = *(v1 + 16);
  sub_BABE0();
  v34 = *(v1 + 64);
  v33 = 0;
  sub_2E50(&qword_FA208);
  sub_BABE0();
  *&v34 = v2;
  *(&v34 + 1) = v3;
  sub_BABD0();
  v16 = v33;
  v17 = v33[2];
  if (v17)
  {
    v33 = _swiftEmptyArrayStorage;
    v29 = v17;
    result = sub_7D48C(0, v17, 0);
    v18 = 0;
    v19 = v33;
    v30 = v16[2];
    while (v30 != v18)
    {
      if (v18 >= v16[2])
      {
        goto LABEL_27;
      }

      v20 = *&v16[v18 + 4];
      v21 = v2;
      *&v34 = v2;
      *(&v34 + 1) = v3;
      sub_BABD0();
      v22 = *(v32 + 16);

      v23 = sin(v18 / v22 * 3.14159265);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();

      v24 = *&v34;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();

      v25 = v23 * (v24 - *&v34);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();

      if (v20 * (v25 + *&v34) > 0.1)
      {
        v26 = v20 * (v25 + *&v34);
      }

      else
      {
        v26 = 0.1;
      }

      v33 = v19;
      v28 = v19[2];
      v27 = v19[3];
      if (v28 >= v27 >> 1)
      {
        result = sub_7D48C((v27 > 1), v28 + 1, 1);
        v19 = v33;
      }

      ++v18;
      v19[2] = v28 + 1;
      *&v19[v28 + 4] = v26;
      v2 = v21;
      if (v29 == v18)
      {

        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_25:
  *&v34 = v2;
  *(&v34 + 1) = v3;
  v33 = v19;
  sub_BABE0();
  sub_C5E8(&v36, &qword_FB050);
  return sub_C5E8(&v35, &qword_FB4C8);
}

uint64_t sub_887F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_BA1D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  v9 = v2[3];
  v8[3] = v2[2];
  v8[4] = v9;
  v8[5] = v2[4];
  v10 = v2[1];
  v8[1] = *v2;
  v8[2] = v10;
  (*(v5 + 104))(v7, enum case for ColorRenderingMode.nonLinear(_:), v4);
  sub_89F50(v2, v20);
  sub_BAC50();
  sub_8739C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  sub_BADE0();
  sub_B9CF0();
  v11 = (a1 + *(sub_2E50(&qword_FB4A8) + 36));
  v12 = v22;
  *v11 = v21;
  v11[1] = v12;
  v11[2] = v23;
  if (qword_F8340 != -1)
  {
    swift_once();
  }

  v13 = qword_FAFB0;
  v14 = swift_allocObject();
  v15 = v2[3];
  *(v14 + 3) = v2[2];
  *(v14 + 4) = v15;
  *(v14 + 5) = v2[4];
  v16 = v2[1];
  *(v14 + 1) = *v2;
  *(v14 + 2) = v16;
  v17 = sub_2E50(&qword_FB4B0);
  *(a1 + *(v17 + 52)) = v13;
  v18 = (a1 + *(v17 + 56));
  *v18 = sub_8A3D4;
  v18[1] = v14;
  sub_89F50(v2, v20);
}

uint64_t sub_88A90(CGContext *a1, uint64_t a2)
{
  v15 = a1;
  v16 = sub_B9300();
  v14 = *(v16 - 8);
  __chkstk_darwin(v16);
  v13 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  Mutable = CGPathCreateMutable();
  v19 = *(a2 + 48);
  sub_2E50(&qword_FB4C0);
  sub_BABD0();
  v5 = *(v18 + 16);

  if (v5)
  {
    v6 = 0;
    v19 = 0x3FF0000000000000uLL;
    v20 = 0;
    v21 = 0x3FF0000000000000;
    v22 = 0;
    v23 = 0;
    while (1)
    {
      v18 = *(a2 + 48);
      sub_BABD0();
      result = v17;
      if (v6 >= *(v17 + 16))
      {
        break;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();

      sub_BB330();
      if (v5 == ++v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v8 = v15;
    CGContextAddPath(v15, Mutable);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    GenericGray = sub_BAA60();

    if (!GenericGray)
    {
      GenericGray = CGColorCreateGenericGray(1.0, 1.0);
    }

    CGContextSetFillColorWithColor(v8, GenericGray);

    CGContextSetLineWidth(v8, 0.0);
    v11 = v13;
    v10 = v14;
    v12 = v16;
    (*(v14 + 104))(v13, enum case for CGPathFillRule.winding(_:), v16);
    sub_BB2D0();

    return (*(v10 + 8))(v11, v12);
  }

  return result;
}

uint64_t sub_88E3C(uint64_t a1, uint64_t a2)
{
  v9 = *(a2 + 64);
  *v7 = *(a2 + 64);
  v10 = *(&v9 + 1);
  sub_57A0(&v10, &v6, &qword_FB4B8);
  sub_2E50(&qword_FA208);
  result = sub_BABD0();
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v9;
  sub_BABE0();
  sub_C5E8(&v9, &qword_FA208);
  *v7 = v9;
  sub_BABD0();
  v4 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if ((*&v7[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v7[0] <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v7[0] >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v4 >= v7[0])
  {
    sub_88298();
  }

  v5 = sub_8806C();
  *v7 = *(a2 + 48);
  *&v6 = v5;
  sub_2E50(&qword_FB4C0);
  return sub_BABE0();
}

uint64_t type metadata accessor for AudioHistogramConfig()
{
  result = qword_FB0B8;
  if (!qword_FB0B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_890CC()
{
  type metadata accessor for AudioHistogramConfig();
  v0 = swift_allocObject();
  sub_87840();
  return v0;
}

uint64_t sub_89120(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v7 = type metadata accessor for AudioHistogramConfig();
  v8 = sub_8A428(&qword_FB070, type metadata accessor for AudioHistogramConfig);

  return a4(a1, a2, a3 & 1, v7, v8);
}

__n128 AXLTAudioHistogramView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for AudioHistogramConfig();
  sub_8A428(&qword_FB070, type metadata accessor for AudioHistogramConfig);
  sub_B9C90();
  sub_89DF8(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v4[4];
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

__n128 sub_89284@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for AudioHistogramConfig();
  sub_8A428(&qword_FB070, type metadata accessor for AudioHistogramConfig);
  sub_B9C90();
  sub_89DF8(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v4[4];
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

double AXLTAudioHistogramViewGenerator.height.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_B9B10();

  return v1;
}

uint64_t AXLTAudioHistogramViewGenerator.height.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_B9B20();
}

uint64_t (*AXLTAudioHistogramViewGenerator.height.modify(void *a1))(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_config;
  a1[2] = v1;
  a1[3] = v3;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_B9B10();

  *a1 = a1[1];
  return sub_89618;
}

uint64_t sub_89618(uint64_t *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v2;

  return sub_B9B20();
}

uint64_t AXLTAudioHistogramViewGenerator.histogram.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_B9B10();

  return v1;
}

uint64_t AXLTAudioHistogramViewGenerator.histogram.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_B9B20();
}

uint64_t (*AXLTAudioHistogramViewGenerator.histogram.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_config;
  a1[2] = v1;
  a1[3] = v3;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_B9B10();

  *a1 = a1[1];
  return sub_899B0;
}

uint64_t sub_899B0(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v4;
  if (a2)
  {

    sub_B9B20();
  }

  else
  {

    return sub_B9B20();
  }
}

id AXLTAudioHistogramViewGenerator.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_config;
  type metadata accessor for AudioHistogramConfig();
  v3 = swift_allocObject();
  sub_87840();
  *&v1[v2] = v3;

  sub_89DF8(v9);
  v4 = &v1[OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView];
  v5 = v9[3];
  *(v4 + 2) = v9[2];
  *(v4 + 3) = v5;
  *(v4 + 4) = v9[4];
  v6 = v9[1];
  *v4 = v9[0];
  *(v4 + 1) = v6;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AXLTAudioHistogramViewGenerator();
  return objc_msgSendSuper2(&v8, "init");
}

UIViewController __swiftcall AXLTAudioHistogramViewGenerator.viewController()()
{
  v1 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView + 16);
  v2 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView + 48);
  v9 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView + 32);
  v10 = v2;
  v3 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView + 48);
  v11 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView + 64);
  v4 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView + 16);
  v8[0] = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView);
  v8[1] = v4;
  v7[7] = v9;
  v7[8] = v3;
  v7[9] = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView + 64);
  v7[5] = v8[0];
  v7[6] = v1;
  v5 = objc_allocWithZone(sub_2E50(&qword_FB088));
  sub_89F50(v8, v7);
  return sub_BA370();
}

id AXLTAudioHistogramViewGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXLTAudioHistogramViewGenerator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_89DF8@<X0>(uint64_t *a1@<X8>)
{
  sub_2E50(&qword_FB050);
  sub_BABC0();
  sub_BABC0();
  sub_BABC0();
  sub_BABC0();
  type metadata accessor for AudioHistogramConfig();
  sub_8A428(&qword_FB070, type metadata accessor for AudioHistogramConfig);
  result = sub_B9DC0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v4;
  a1[7] = v5;
  a1[8] = v4;
  a1[9] = v5;
  return result;
}

void sub_89FAC()
{
  sub_8A130(319, &qword_FB0C8);
  if (v0 <= 0x3F)
  {
    sub_8A130(319, &qword_FB0D0);
    if (v1 <= 0x3F)
    {
      sub_8A130(319, &qword_FB0D8);
      if (v2 <= 0x3F)
      {
        sub_8A17C();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_8A130(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_B9B30();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_8A17C()
{
  if (!qword_FB0E0)
  {
    sub_5520(&qword_FB050);
    v0 = sub_B9B30();
    if (!v1)
    {
      atomic_store(v0, &qword_FB0E0);
    }
  }
}

uint64_t sub_8A1EC(uint64_t a1, unsigned int a2)
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

uint64_t sub_8A234(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_8A28C()
{
  result = qword_FB4A0;
  if (!qword_FB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB4A0);
  }

  return result;
}

uint64_t sub_8A364()
{

  return _swift_deallocObject(v0, 96, 7);
}

unint64_t sub_8A3DC()
{
  result = qword_FB4D0;
  if (!qword_FB4D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_FB4D0);
  }

  return result;
}

uint64_t sub_8A428(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_8A494()
{
  result = qword_FB4E0;
  if (!qword_FB4E0)
  {
    sub_5520(&qword_FB4B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB4E0);
  }

  return result;
}

uint64_t sub_8A504()
{
  v0 = sub_BA320();
  v8 = 1;
  sub_8A764(__src);
  memcpy(__dst, __src, 0x121uLL);
  memcpy(v10, __src, 0x121uLL);
  sub_57A0(__dst, v6, &qword_FB4F8);
  sub_C5E8(v10, &qword_FB4F8);
  memcpy(&v7[7], __dst, 0x121uLL);
  v6[0] = v0;
  v6[1] = 0;
  LOBYTE(v6[2]) = v8;
  memcpy(&v6[2] + 1, v7, 0x128uLL);
  sub_BAD80();
  v1 = sub_2E50(&qword_FB500);
  sub_2E50(&qword_FB508);
  sub_2E50(&qword_FB510);
  v2 = sub_D150(&qword_FB518, &qword_FB500);
  v3 = sub_B9F50();
  v4 = sub_8D2BC(&qword_F8E40, &type metadata accessor for RoundedRectangle);
  __src[0] = v1;
  __src[1] = v3;
  __src[2] = v2;
  __src[3] = v4;
  swift_getOpaqueTypeConformance2();
  sub_8C44C();
  sub_BAA20();
  memcpy(__src, v6, 0x139uLL);
  return sub_C5E8(__src, &qword_FB500);
}

uint64_t sub_8A764@<X0>(uint64_t a1@<X8>)
{
  sub_BABC0();
  v33 = v68;
  v32 = *(&v68 + 1);
  sub_BADE0();
  sub_B9CF0();
  v34 = v44;
  v30 = v48;
  v31 = v46;
  [objc_allocWithZone(UIColor) initWithWhite:0.2 alpha:1.0];
  v27 = sub_BAB40();
  KeyPath = swift_getKeyPath();
  LOBYTE(v68) = v45;
  v28 = v45;
  v29 = v47;
  LOBYTE(v63) = v47;
  v26 = sub_BA320();
  LOBYTE(v35) = 1;
  sub_8ABAC(&v68);
  v55 = *&v69[80];
  v56 = *&v69[96];
  v51 = *&v69[16];
  v52 = *&v69[32];
  v53 = *&v69[48];
  v54 = *&v69[64];
  v49 = v68;
  v50 = *v69;
  v58[5] = *&v69[64];
  v58[6] = *&v69[80];
  v58[7] = *&v69[96];
  v58[8] = *&v69[112];
  v58[1] = *v69;
  v58[2] = *&v69[16];
  v58[3] = *&v69[32];
  v58[4] = *&v69[48];
  v57 = *&v69[112];
  v58[0] = v68;
  sub_57A0(&v49, &v63, &qword_FB550);
  sub_C5E8(v58, &qword_FB550);
  *(&v43[5] + 7) = v54;
  *(&v43[6] + 7) = v55;
  *(&v43[7] + 7) = v56;
  *(&v43[8] + 7) = v57;
  *(&v43[1] + 7) = v50;
  *(&v43[2] + 7) = v51;
  *(&v43[3] + 7) = v52;
  *(&v43[4] + 7) = v53;
  *(v43 + 7) = v49;
  v3 = sub_BA660();
  sub_B9B90();
  *&v59 = v44;
  BYTE8(v59) = v45;
  *&v60 = v46;
  BYTE8(v60) = v47;
  v61 = v48;
  v4 = *(&v48 + 1);
  *&v62 = KeyPath;
  *(&v62 + 1) = v27;
  v63 = v26;
  v64[0] = 1;
  *&v64[17] = v43[1];
  *&v64[1] = v43[0];
  v5 = v43[4];
  *&v64[81] = v43[5];
  v6 = v43[3];
  *&v64[65] = v43[4];
  v7 = v43[2];
  *&v64[49] = v43[3];
  v8 = v43[0];
  v9 = v43[1];
  *&v64[33] = v43[2];
  *&v64[144] = *(&v43[8] + 15);
  v10 = v43[7];
  *&v64[129] = v43[8];
  v11 = v43[6];
  *&v64[113] = v43[7];
  v12 = v43[5];
  *&v64[97] = v43[6];
  v64[152] = v3;
  *&v65 = v13;
  *(&v65 + 1) = v14;
  *&v66 = v15;
  *(&v66 + 1) = v16;
  v17 = v60;
  *(a1 + 16) = v59;
  *(a1 + 32) = v17;
  v18 = v62;
  *(a1 + 48) = v61;
  *(a1 + 64) = v18;
  v19 = *v64;
  *(a1 + 80) = v63;
  *(a1 + 96) = v19;
  v20 = *&v64[64];
  *(a1 + 144) = *&v64[48];
  *(a1 + 160) = v20;
  v21 = *&v64[32];
  *(a1 + 112) = *&v64[16];
  *(a1 + 128) = v21;
  v22 = *&v64[128];
  *(a1 + 208) = *&v64[112];
  *(a1 + 224) = v22;
  v23 = *&v64[96];
  *(a1 + 176) = *&v64[80];
  *(a1 + 192) = v23;
  v24 = v66;
  *(a1 + 256) = v65;
  *(a1 + 272) = v24;
  *(a1 + 240) = *&v64[144];
  *&v69[97] = v11;
  *&v69[113] = v10;
  *v70 = v43[8];
  *&v69[33] = v7;
  *&v69[49] = v6;
  v67 = 0;
  *a1 = v33;
  *(a1 + 8) = v32;
  *(a1 + 288) = 0;
  v68 = v26;
  v69[0] = 1;
  *&v70[15] = *(&v43[8] + 15);
  *&v69[65] = v5;
  *&v69[81] = v12;
  *&v69[1] = v8;
  *&v69[17] = v9;
  v71 = v3;
  v72 = v13;
  v73 = v14;
  v74 = v15;
  v75 = v16;
  v76 = 0;

  sub_57A0(&v59, &v35, &qword_FB558);
  sub_57A0(&v63, &v35, &qword_FB560);
  sub_C5E8(&v68, &qword_FB560);
  v35 = v34;
  v36 = v28;
  v37 = v31;
  v38 = v29;
  v39 = v30;
  v40 = v4;
  v41 = KeyPath;
  v42 = v27;
  sub_C5E8(&v35, &qword_FB558);
}

uint64_t sub_8ABAC@<X0>(uint64_t a1@<X8>)
{
  sub_BABC0();
  v13 = v22;
  v2 = v23;
  sub_BADE0();
  sub_B9CF0();
  v3 = sub_BAAE0();
  v4 = sub_BA640();
  LOBYTE(v22) = v15;
  sub_BABC0();
  v5 = v23;
  *&v19 = v14;
  BYTE8(v19) = v15;
  *&v20 = v16;
  BYTE8(v20) = v17;
  *v21 = v18;
  *&v21[16] = v3;
  v21[24] = v4;
  *a1 = 0;
  v6 = v20;
  *(a1 + 40) = v19;
  __asm { FMOV            V0.2D, #16.0 }

  *(a1 + 8) = _Q0;
  *(a1 + 24) = v13;
  *(a1 + 32) = v2;
  *(a1 + 56) = v6;
  *(a1 + 72) = *v21;
  *(a1 + 81) = *&v21[9];
  *(a1 + 104) = 1;
  *(a1 + 112) = _Q0;
  *(a1 + 128) = v15;
  *(a1 + 136) = v5;

  sub_57A0(&v19, &v22, &qword_FB568);
  v22 = v14;
  LOBYTE(v23) = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v27 = v3;
  v28 = v4;
  sub_C5E8(&v22, &qword_FB568);
}

uint64_t sub_8AD58(const void *a1)
{
  v2 = sub_B9F50();
  __chkstk_darwin(v2);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(v14, a1, sizeof(v14));
  v5 = *(v2 + 20);
  v6 = enum case for RoundedCornerStyle.continuous(_:);
  v7 = sub_BA270();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  sub_2E50(&qword_FB500);
  sub_D150(&qword_FB518, &qword_FB500);
  sub_8D2BC(&qword_F8E40, &type metadata accessor for RoundedRectangle);
  sub_BA810();
  return sub_8C5E8(v4);
}

uint64_t sub_8AEF8@<X0>(void *__src@<X0>, char *a2@<X8>)
{
  memcpy(__dst, __src, 0x139uLL);
  v4 = &a2[*(sub_2E50(&qword_FB530) + 36)];
  sub_BAD50();
  v5 = sub_BA640();
  v4[*(sub_2E50(&qword_FB540) + 36)] = v5;
  memcpy(a2, __src, 0x139uLL);
  v6 = &a2[*(sub_2E50(&qword_FB510) + 36)];
  v7 = *(sub_B9F50() + 20);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = sub_BA270();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  *&v6[*(sub_2E50(&qword_FAF30) + 36)] = 256;
  return sub_57A0(__dst, &v16, &qword_FB500);
}

uint64_t sub_8B054@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v59 = sub_BA2D0();
  v64 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BA5E0();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2E50(&qword_FB570);
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  v52 = sub_2E50(&qword_FB578);
  __chkstk_darwin(v52);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v55 = &v48 - v12;
  v54 = sub_2E50(&qword_FB580);
  __chkstk_darwin(v54);
  v60 = &v48 - v13;
  v62 = sub_2E50(&qword_FB588);
  __chkstk_darwin(v62);
  v61 = &v48 - v14;
  v15 = sub_BA1C0();
  v65[0] = 1;
  sub_8BA74(v2, v81);
  v76 = v81[8];
  v77 = v81[9];
  v78 = v81[10];
  v79 = v81[11];
  v72 = v81[4];
  v73 = v81[5];
  v74 = v81[6];
  v75 = v81[7];
  v68 = v81[0];
  v69 = v81[1];
  v70 = v81[2];
  v71 = v81[3];
  v80[8] = v81[8];
  v80[9] = v81[9];
  v80[10] = v81[10];
  v80[11] = v81[11];
  v80[4] = v81[4];
  v80[5] = v81[5];
  v80[6] = v81[6];
  v80[7] = v81[7];
  v80[0] = v81[0];
  v80[1] = v81[1];
  v80[2] = v81[2];
  v80[3] = v81[3];
  sub_57A0(&v68, v66, &qword_FB590);
  sub_C5E8(v80, &qword_FB590);
  *&v67[135] = v76;
  *&v67[151] = v77;
  *&v67[167] = v78;
  *&v67[183] = v79;
  *&v67[71] = v72;
  *&v67[87] = v73;
  *&v67[103] = v74;
  *&v67[119] = v75;
  *&v67[7] = v68;
  *&v67[23] = v69;
  *&v67[39] = v70;
  *&v67[55] = v71;
  v16 = v65[0];
  v17 = sub_BAAF0();
  KeyPath = swift_getKeyPath();
  v19 = sub_BA690();
  sub_B9B90();
  *(&v66[20] + 1) = *&v67[144];
  *(&v66[22] + 1) = *&v67[160];
  *(&v66[24] + 1) = *&v67[176];
  *(&v66[12] + 1) = *&v67[80];
  *(&v66[14] + 1) = *&v67[96];
  *(&v66[16] + 1) = *&v67[112];
  *(&v66[18] + 1) = *&v67[128];
  *(&v66[4] + 1) = *&v67[16];
  *(&v66[6] + 1) = *&v67[32];
  *(&v66[8] + 1) = *&v67[48];
  *(&v66[10] + 1) = *&v67[64];
  LOBYTE(v81[0]) = 0;
  v66[0] = v15;
  v66[1] = 0;
  LOBYTE(v66[2]) = v16;
  *(&v66[2] + 1) = *v67;
  v66[26] = *&v67[191];
  v66[27] = KeyPath;
  v66[28] = v17;
  LOBYTE(v66[29]) = v19;
  v66[30] = v20;
  v66[31] = v21;
  v66[32] = v22;
  v66[33] = v23;
  LOWORD(v66[34]) = 0;
  sub_BA5D0();
  v24 = sub_2E50(&qword_FB598);
  v25 = sub_8D0F4();
  v53 = v9;
  sub_BA950();
  (*(v49 + 8))(v6, v50);
  memcpy(v81, v66, 0x112uLL);
  sub_C5E8(v81, &qword_FB598);
  v26 = *(v2 + 32);
  v66[0] = *(v2 + 24);
  v66[1] = v26;
  sub_2E50(&qword_F96C8);
  sub_BABD0();
  if (v65[0] == 1)
  {
    sub_2E50(&qword_F8E08);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_C0020;
    sub_BA280();
    v66[0] = v27;
  }

  else
  {
    v66[0] = _swiftEmptyArrayStorage;
  }

  sub_8D2BC(&qword_F8E10, &type metadata accessor for AccessibilityTraits);
  sub_2E50(&qword_F8E18);
  sub_D150(&qword_F8E20, &qword_F8E18);
  v29 = v58;
  v28 = v59;
  sub_BB510();
  v66[0] = v24;
  v66[1] = v25;
  swift_getOpaqueTypeConformance2();
  v30 = v51;
  v31 = v57;
  v32 = v53;
  sub_BA990();
  (*(v64 + 8))(v29, v28);
  (*(v56 + 8))(v32, v31);
  v33 = v55;
  sub_B9E90();
  sub_C5E8(v30, &qword_FB578);
  v34 = swift_allocObject();
  v35 = *(v2 + 16);
  *(v34 + 16) = *v2;
  *(v34 + 32) = v35;
  *(v34 + 48) = *(v2 + 32);
  v36 = v60;
  sub_66B8(v33, v60, &qword_FB578);
  v37 = (v36 + *(v54 + 36));
  *v37 = sub_8D33C;
  v37[1] = v34;
  v37[2] = 0;
  v37[3] = 0;
  v38 = objc_opt_self();
  v66[0] = v26;
  sub_57A0(v66, v65, &qword_FB5D8);
  v39 = [v38 defaultCenter];
  if (qword_F82B0 != -1)
  {
    swift_once();
  }

  v41 = v61;
  v40 = v62;
  sub_BB400();

  v42 = swift_allocObject();
  v43 = *(v2 + 16);
  *(v42 + 16) = *v2;
  *(v42 + 32) = v43;
  *(v42 + 48) = *(v2 + 32);
  sub_66B8(v36, v41, &qword_FB580);
  v44 = (v41 + *(v40 + 56));
  *v44 = sub_8D344;
  v44[1] = v42;
  v45 = swift_allocObject();
  v46 = *(v2 + 16);
  *(v45 + 16) = *v2;
  *(v45 + 32) = v46;
  *(v45 + 48) = *(v2 + 32);
  sub_57A0(v66, v65, &qword_FB5D8);
  sub_57A0(v66, v65, &qword_FB5D8);
  sub_D150(&qword_FB5E0, &qword_FB588);
  sub_BA860();

  return sub_C5E8(v41, &qword_FB588);
}

uint64_t sub_8BA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_BAB70();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53[0] = *(a1 + 24);
  sub_2E50(&qword_F96C8);
  sub_BABD0();
  if (v63 == 1)
  {
    sub_BAB60();
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v8 = sub_BABA0();

    (*(v5 + 8))(v7, v4);
    sub_BADE0();
    sub_B9CF0();
    LOBYTE(v53[0]) = 1;
    *&v40[6] = v60;
    *&v40[22] = v61;
    *&v40[38] = v62;
    v9 = sub_BA670();
    sub_B9B90();
    *(&v53[1] + 2) = *v40;
    LOBYTE(v57[0]) = 0;
    v53[0] = v8;
    LOWORD(v53[1]) = 1;
    *(&v53[2] + 2) = *&v40[16];
    *(&v53[3] + 2) = *&v40[32];
    *&v53[4] = *&v40[46];
    BYTE8(v53[4]) = v9;
    *&v54 = v10;
    *(&v54 + 1) = v11;
    *&v55 = v12;
    *(&v55 + 1) = v13;
    LOBYTE(v56) = 0;
    v14 = 0;
  }

  else
  {
    v15 = sub_BAAE0();
    sub_BADE0();
    sub_B9CF0();
    *&v59[6] = v60;
    *&v59[22] = v61;
    *&v59[38] = v62;
    v16 = sub_BA670();
    sub_B9B90();
    *(v53 + 10) = *v59;
    v14 = 1;
    LOBYTE(v57[0]) = 1;
    *&v53[0] = v15;
    WORD4(v53[0]) = 256;
    *(&v53[1] + 10) = *&v59[16];
    *(&v53[2] + 10) = *&v59[32];
    *(&v53[3] + 1) = *&v59[46];
    LOBYTE(v53[4]) = v16;
    *(&v53[4] + 1) = v17;
    *&v54 = v18;
    *(&v54 + 1) = v19;
    *&v55 = v20;
    BYTE8(v55) = 0;
  }

  BYTE1(v56) = v14;
  sub_2E50(&qword_FB5E8);
  sub_2E50(&qword_FB5F0);
  sub_8D354(&qword_FB5F8, &qword_FB5E8, &unk_C27A8, sub_3B098);
  sub_8D3D8();
  sub_BA430();
  v21 = *a1;
  *&v53[0] = sub_8D894(*a1);
  *(&v53[0] + 1) = v22;
  sub_B320();
  v23 = sub_BA800();
  v25 = v24;
  v39 = v26;
  v28 = v27;
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  *&v57[0] = AXLTSettingsManager.buttonScaledHeight.getter();
  sub_BABC0();
  v29 = v53[0];
  v47 = v67;
  v48 = v68;
  v49 = v69;
  v50 = v70;
  v43 = v63;
  v44 = v64;
  v45 = v65;
  v46 = v66;
  v51[2] = v65;
  v51[3] = v66;
  v51[0] = v63;
  v51[1] = v64;
  v52 = v70;
  v51[5] = v68;
  v51[6] = v69;
  v51[4] = v67;
  v53[2] = v65;
  v53[3] = v66;
  v53[0] = v63;
  v53[1] = v64;
  LOWORD(v56) = v70;
  v54 = v68;
  v55 = v69;
  v53[4] = v67;
  v30 = v39 & 1;
  v42 = v39 & 1;
  v41 = 1;
  v31 = v63;
  v32 = v64;
  v33 = v66;
  *(a2 + 32) = v65;
  *(a2 + 48) = v33;
  *a2 = v31;
  *(a2 + 16) = v32;
  v34 = v53[4];
  v35 = v55;
  v36 = v56;
  *(a2 + 80) = v54;
  *(a2 + 96) = v35;
  *(a2 + 64) = v34;
  *(a2 + 112) = v36;
  *(a2 + 120) = v23;
  *(a2 + 128) = v25;
  *(a2 + 136) = v30;
  *(a2 + 144) = v28;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  *(a2 + 168) = v21;
  *(a2 + 176) = v29;
  sub_57A0(v51, v57, &qword_FB628);
  sub_21808(v23, v25, v30);

  sub_C004(v23, v25, v30);

  v57[4] = v47;
  v57[5] = v48;
  v57[6] = v49;
  v58 = v50;
  v57[0] = v43;
  v57[1] = v44;
  v57[2] = v45;
  v57[3] = v46;
  return sub_C5E8(v57, &qword_FB628);
}

uint64_t sub_8BFF4(_BYTE *a1)
{
  if (*a1)
  {
    if (qword_F82A0 != -1)
    {
      swift_once();
    }

    if (qword_F82A8 != -1)
    {
      swift_once();
    }

    if (byte_FA364 == 1)
    {
LABEL_13:
      sub_B98B0();
      sub_B98B0();
    }
  }

  else
  {
    if (qword_F82A0 != -1)
    {
      swift_once();
    }

    if (qword_F82A8 != -1)
    {
      swift_once();
    }

    if (byte_FA364 == 1)
    {
      goto LABEL_13;
    }
  }

  sub_2E50(&qword_F96C8);
  return sub_BABE0();
}

uint64_t sub_8C1C0(uint64_t a1, uint64_t a2)
{
  result = sub_B8FE0();
  if (result)
  {
    v4 = result;
    v8 = sub_B9840();
    sub_BB550();
    if (*(v4 + 16) && (v5 = sub_7D058(v9), (v6 & 1) != 0))
    {
      sub_3ADF4(*(v4 + 56) + 32 * v5, v10);
      sub_3ADA0(v9);

      result = swift_dynamicCast();
      if (result)
      {
        v7 = v8;
        if (*a2)
        {
          v7 = v8 ^ 1;
        }

        v9[0] = *(a2 + 24);
        v10[0] = v7;
        sub_2E50(&qword_F96C8);
        return sub_BABE0();
      }
    }

    else
    {

      return sub_3ADA0(v9);
    }
  }

  return result;
}

uint64_t sub_8C2CC(_BYTE *a1)
{
  sub_2E50(&qword_F96C8);
  sub_BABD0();
  if ((v3 & 1) == 0)
  {
    if (qword_F8320 != -1)
    {
      swift_once();
    }

    sub_6643C((*a1 & 1) == 0, 1);
  }

  return _AXSLiveTranscriptionSetPaused();
}

unint64_t sub_8C3DC()
{
  result = qword_FB4F0;
  if (!qword_FB4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB4F0);
  }

  return result;
}

unint64_t sub_8C44C()
{
  result = qword_FB520;
  if (!qword_FB520)
  {
    sub_5520(&qword_FB510);
    sub_8C504();
    sub_D150(&qword_FB548, &qword_FAF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB520);
  }

  return result;
}

unint64_t sub_8C504()
{
  result = qword_FB528;
  if (!qword_FB528)
  {
    sub_5520(&qword_FB530);
    sub_D150(&qword_FB518, &qword_FB500);
    sub_D150(&qword_FB538, &qword_FB540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB528);
  }

  return result;
}

uint64_t sub_8C5E8(uint64_t a1)
{
  v2 = sub_B9F50();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8C644@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v5 = sub_2E50(&qword_FB630);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - v7;
  v9 = sub_BA250();
  v18[1] = v10;
  v18[2] = v9;
  v11 = a1 & 1;
  v24 = a1 & 1;
  v25 = a2;
  sub_2E50(&qword_FB638);
  sub_BABF0();
  v20 = a1 & 1;
  v21 = a2;
  sub_2E50(&qword_FB640);
  sub_8D6E8();
  sub_8D73C();
  v12 = v19;
  sub_BAC60();
  LOBYTE(v22) = a1 & 1;
  v23 = a2;
  sub_BABD0();
  LOBYTE(v22) = v24;
  sub_D150(&qword_FB660, &qword_FB630);
  sub_8C3DC();
  sub_BAA00();
  (*(v6 + 8))(v8, v5);
  v13 = [objc_opt_self() defaultCenter];
  if (qword_F82B0 != -1)
  {
    swift_once();
  }

  v14 = sub_2E50(&qword_FB668);
  sub_BB400();

  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  *(v15 + 24) = a2;
  v16 = (v12 + *(v14 + 56));
  *v16 = sub_8D87C;
  v16[1] = v15;
}

uint64_t sub_8C964(char a1, uint64_t a2)
{
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1 & 1;
  *(v4 + 24) = a2;

  sub_2E50(&qword_FB670);
  sub_2E50(&qword_FB678);
  sub_D150(&qword_FB680, &qword_FB670);
  sub_8D6E8();
  sub_5520(&qword_F83D8);
  sub_D150(&qword_FB658, &qword_F83D8);
  swift_getOpaqueTypeConformance2();
  return sub_BACD0();
}

double sub_8CB24@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_BA1C0();
  v18 = 1;
  sub_8CBD4(v3, v12);
  v5 = v12[0];
  result = v13;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  v10 = v14;
  v11 = v18;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 24) = v5;
  *(a2 + 32) = result;
  *(a2 + 40) = v10;
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9;
  *(a2 + 80) = v3;
  *(a2 + 81) = 1;
  return result;
}

uint64_t sub_8CBD4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  AXLTSettingsManager.buttonScaledHeight.getter();
  sub_BABC0();
  v4 = a1 & 1;
  sub_8D894(v4);
  sub_B320();
  v5 = sub_BA800();
  v7 = v6;
  *a2 = v4;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  v9 = v8 & 1;
  *(a2 + 40) = v8 & 1;
  *(a2 + 48) = v10;

  sub_21808(v5, v7, v9);

  sub_C004(v5, v7, v9);
}

uint64_t sub_8CD08(uint64_t a1, char *a2)
{
  v2 = *a2;
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  sub_6643C(v2 ^ 1, 1);

  return _AXSLiveTranscriptionSetPaused();
}

uint64_t sub_8CD84(uint64_t a1, char a2, uint64_t a3)
{
  result = sub_B8FE0();
  if (result)
  {
    v6 = result;
    v9 = sub_B9840();
    sub_BB550();
    if (*(v6 + 16) && (v7 = sub_7D058(v10), (v8 & 1) != 0))
    {
      sub_3ADF4(*(v6 + 56) + 32 * v7, v12);
      sub_3ADA0(v10);

      result = swift_dynamicCast();
      if (result)
      {
        v10[0] = a2 & 1;
        v11 = a3;
        v12[0] = (v9 & 1) == 0;
        sub_2E50(&qword_FB638);
        return sub_BABE0();
      }
    }

    else
    {

      return sub_3ADA0(v10);
    }
  }

  return result;
}

uint64_t sub_8CEB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_8CF0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_8CF78()
{
  sub_5520(&qword_FB500);
  sub_5520(&qword_FB508);
  sub_5520(&qword_FB510);
  sub_D150(&qword_FB518, &qword_FB500);
  sub_B9F50();
  sub_8D2BC(&qword_F8E40, &type metadata accessor for RoundedRectangle);
  swift_getOpaqueTypeConformance2();
  sub_8C44C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_8D0F4()
{
  result = qword_FB5A0;
  if (!qword_FB5A0)
  {
    sub_5520(&qword_FB598);
    sub_8D354(&qword_FB5A8, &qword_FB5B0, &unk_C2790, sub_8D1D8);
    sub_D150(&qword_F9C30, &qword_F9C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB5A0);
  }

  return result;
}

unint64_t sub_8D1D8()
{
  result = qword_FB5B8;
  if (!qword_FB5B8)
  {
    sub_5520(&qword_FB5C0);
    sub_D150(&qword_FB5C8, &qword_FB5D0);
    sub_D150(&qword_F8DF0, &qword_F8DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB5B8);
  }

  return result;
}

uint64_t sub_8D2BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_8D304()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_8D354(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_5520(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_8D3D8()
{
  result = qword_FB600;
  if (!qword_FB600)
  {
    sub_5520(&qword_FB5F0);
    sub_8D464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB600);
  }

  return result;
}

unint64_t sub_8D464()
{
  result = qword_FB608;
  if (!qword_FB608)
  {
    sub_5520(&qword_FB610);
    sub_D150(&qword_FB618, &qword_FB620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB608);
  }

  return result;
}

uint64_t sub_8D51C()
{
  if (qword_F82A0 != -1)
  {
    swift_once();
  }

  if (qword_F82A8 != -1)
  {
    swift_once();
  }

  if (byte_FA364 == 1)
  {
    sub_B98B0();
    sub_B98B0();
  }

  sub_BABC0();
  return v1;
}

uint64_t sub_8D628()
{
  sub_5520(&qword_FB588);
  sub_D150(&qword_FB5E0, &qword_FB588);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_8D6E8()
{
  result = qword_FB648;
  if (!qword_FB648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB648);
  }

  return result;
}

unint64_t sub_8D73C()
{
  result = qword_FB650;
  if (!qword_FB650)
  {
    sub_5520(&qword_FB640);
    sub_5520(&qword_F83D8);
    sub_D150(&qword_FB658, &qword_F83D8);
    sub_8D6E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB650);
  }

  return result;
}

uint64_t sub_8D844()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_8D894(char a1)
{
  v1 = 0xD000000000000016;
  if (a1)
  {
    if (AXDeviceIsPad())
    {
      v7 = "LiveCaptionsiPhoneAudio";
      v8 = 0xD000000000000015;
    }

    else
    {
      v7 = "istogram";
      v8 = 0xD000000000000017;
    }

    v9 = v7 | 0x8000000000000000;
    return LiveSpeechCaptionsLocString(_:)(*&v8)._countAndFlagsBits;
  }

  else
  {
    if (qword_F8220 != -1)
    {
      swift_once();
    }

    if (qword_F8228)
    {
      v2 = qword_F8228;
      v3 = sub_BAFA0();
      v4 = sub_BAFA0();
      v5 = sub_BAFA0();
      v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

      v1 = sub_BAFD0();
    }
  }

  return v1;
}

uint64_t sub_8DA5C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_2E50(&qword_FA6E0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for LiveCaptionsRootView();
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v4 = v2[6];
  *(a1 + v4) = swift_getKeyPath();
  sub_2E50(&qword_F8AF0);
  swift_storeEnumTagMultiPayload();
  v5 = a1 + v2[7];
  *v5 = swift_getKeyPath();
  *(v5 + 4) = 0;
  v6 = a1 + v2[8];
  sub_BABC0();
  *v6 = v39;
  *(v6 + 1) = *(&v39 + 1);
  v7 = a1 + v2[9];
  sub_BABC0();
  *v7 = v39;
  *(v7 + 1) = *(&v39 + 1);
  v8 = (a1 + v2[10]);
  sub_BABC0();
  *v8 = v39;
  v9 = a1 + v2[11];
  type metadata accessor for CGSize(0);
  sub_BABC0();
  *v9 = v39;
  *(v9 + 2) = v40;
  v10 = a1 + v2[12];
  sub_BABC0();
  *v10 = v39;
  *(v10 + 2) = v40;
  v11 = a1 + v2[13];
  sub_BABC0();
  *v11 = v39;
  *(v11 + 2) = v40;
  v12 = a1 + v2[14];
  sub_BABC0();
  *v12 = v39;
  *(v12 + 2) = v40;
  v13 = a1 + v2[15];
  sub_BABC0();
  *v13 = v39;
  *(v13 + 2) = v40;
  v14 = (a1 + v2[16]);
  sub_BABC0();
  *v14 = v39;
  v15 = a1 + v2[17];
  type metadata accessor for CGRect(0);
  sub_BABC0();
  *v15 = v39;
  *(v15 + 1) = v40;
  *(v15 + 4) = v41;
  v16 = (a1 + v2[18]);
  sub_BABC0();
  *v16 = v39;
  v17 = (a1 + v2[19]);
  sub_BABC0();
  *v17 = v39;
  v18 = v2[20];
  sub_2E50(&qword_F9020);
  sub_BABC0();
  *(a1 + v18) = v39;
  v19 = a1 + v2[21];
  sub_BABC0();
  *v19 = v39;
  *(v19 + 1) = *(&v39 + 1);
  v20 = v2[22];
  sub_BABC0();
  *(a1 + v20) = v39;
  v21 = v2[23];
  *(a1 + v21) = [objc_allocWithZone(LCSystemUtilities) init];
  v22 = a1 + v2[24];
  sub_2E50(&qword_FB728);
  sub_BABC0();
  *v22 = v39;
  *(v22 + 1) = *(&v39 + 1);
  v23 = a1 + v2[25];
  LOBYTE(v38) = 0;
  sub_BABC0();
  *v23 = v39;
  *(v23 + 1) = *(&v39 + 1);
  v24 = (a1 + v2[26]);
  [objc_allocWithZone(type metadata accessor for ForeheadWindow()) init];
  sub_A00C0(&qword_FB740, type metadata accessor for ForeheadWindow);
  *v24 = sub_B9DC0();
  v24[1] = v25;
  v26 = (a1 + v2[27]);
  if (qword_F82A0 != -1)
  {
    swift_once();
  }

  v27 = static AXLTCaptionsProvider.shared;
  type metadata accessor for AXLTCaptionsProvider();
  sub_A00C0(&unk_FB750, type metadata accessor for AXLTCaptionsProvider);
  v28 = v27;
  *v26 = sub_B9DC0();
  v26[1] = v29;
  v30 = v2[28];
  if (qword_F8258 != -1)
  {
    swift_once();
  }

  v31 = static LiveSpeechCaptionsViewsCoordinator.shared;
  *(a1 + v30) = static LiveSpeechCaptionsViewsCoordinator.shared;
  v32 = v2[29];
  v33 = qword_F8320;
  v34 = v31;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = a1 + v32;
  v36 = AXLTSettingsManager.contentCategory.getter();
  sub_BB410();

  result = sub_BABC0();
  *v35 = v39;
  *(v35 + 1) = *(&v39 + 1);
  return result;
}

unint64_t sub_8E098@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s19LiveSpeechUIService11WindowStateO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t *sub_8E0C4@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

NSString sub_8E0DC()
{
  result = sub_BAFA0();
  qword_100D78 = result;
  return result;
}

uint64_t sub_8E114()
{
  result = AXDeviceIsPad();
  v1 = 300.0;
  if (result)
  {
    v1 = 600.0;
  }

  qword_100D80 = *&v1;
  return result;
}

uint64_t sub_8E154()
{
  result = AXDeviceHasJindo();
  v1 = 0.0;
  if (result)
  {
    v1 = 10.0;
  }

  qword_100D88 = *&v1;
  return result;
}

Swift::Int IconDirection.hashValue.getter(unsigned __int8 a1)
{
  sub_BB790();
  sub_BB7A0(a1);
  return sub_BB7D0();
}

uint64_t sub_8E204()
{
  v1 = sub_BA180();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for LiveCaptionsRootView() + 28);
  result = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 9) != 1)
  {
    v8 = *v5;

    sub_BB310();
    v9 = sub_BA610();
    sub_B99F0();

    sub_BA170();
    swift_getAtKeyPath();
    sub_E538(v8, v7, 0);
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  return result;
}

uint64_t sub_8E370()
{
  v0 = sub_BA500();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2E50(&qword_FA6D8);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  v7 = sub_2E50(&qword_F8530);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  if (!AXDeviceIsPhone())
  {
    return AXDeviceIsPad();
  }

  sub_B5A10(v15);
  (*(v1 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 48);
  sub_57A0(v15, v6, &qword_F8530);
  sub_57A0(v12, &v6[v16], &qword_F8530);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) == 1)
  {
    sub_C5E8(v12, &qword_F8530);
    sub_C5E8(v15, &qword_F8530);
    if (v17(&v6[v16], 1, v0) == 1)
    {
      sub_C5E8(v6, &qword_F8530);
      return 1;
    }

    goto LABEL_7;
  }

  sub_57A0(v6, v9, &qword_F8530);
  if (v17(&v6[v16], 1, v0) == 1)
  {
    sub_C5E8(v12, &qword_F8530);
    sub_C5E8(v15, &qword_F8530);
    (*(v1 + 8))(v9, v0);
LABEL_7:
    sub_C5E8(v6, &qword_FA6D8);
    return AXDeviceIsPad();
  }

  (*(v1 + 32))(v3, &v6[v16], v0);
  sub_A00C0(&qword_FA6E8, &type metadata accessor for UserInterfaceSizeClass);
  v19 = sub_BAF90();
  v20 = *(v1 + 8);
  v20(v3, v0);
  sub_C5E8(v12, &qword_F8530);
  sub_C5E8(v15, &qword_F8530);
  v20(v9, v0);
  sub_C5E8(v6, &qword_F8530);
  if (v19)
  {
    return 1;
  }

  return AXDeviceIsPad();
}

uint64_t sub_8E7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v158 = a1;
  v159 = a2;
  v148 = a3;
  v144 = sub_B9C10();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_2E50(&qword_FB830);
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = &v117 - v5;
  v134 = sub_BA440();
  __chkstk_darwin(v134);
  v133 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_B9D40();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v150 = v7;
  v151 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_2E50(&qword_FB838);
  __chkstk_darwin(v153);
  v156 = (&v117 - v8);
  v139 = sub_2E50(&qword_FB840);
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v136 = &v117 - v9;
  v141 = sub_2E50(&qword_FB848);
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v155 = &v117 - v10;
  v11 = type metadata accessor for LiveCaptionsRootView();
  v12 = *(v11 - 8);
  v122 = (v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BA480();
  __chkstk_darwin(v15);
  v149 = sub_B9C60();
  v16 = *(v149 - 8);
  __chkstk_darwin(v149);
  v18 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_2E50(&qword_F9BB8);
  v157 = *(v152 - 8);
  __chkstk_darwin(v152);
  v20 = &v117 - v19;
  v137 = sub_2E50(&qword_F9BC0);
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v154 = (&v117 - v21);
  sub_BA570();
  sub_B9C20();
  v118 = v14;
  sub_A2438(a2, v14, type metadata accessor for LiveCaptionsRootView);
  v22 = *(v12 + 80);
  v23 = (v22 + 16) & ~v22;
  v24 = v23 + v13;
  v25 = v22 | 7;
  v161 = v24;
  v26 = swift_allocObject();
  sub_A2628(v14, v26 + v23, type metadata accessor for LiveCaptionsRootView);
  v27 = sub_A00C0(&qword_F9BF8, &type metadata accessor for DragGesture);
  v28 = sub_A00C0(&qword_F9C00, &type metadata accessor for DragGesture.Value);
  v29 = v149;
  v126 = v27;
  v125 = v28;
  sub_BAD00();

  v30 = *(v16 + 8);
  v128 = v18;
  v130 = v16 + 8;
  v124 = v30;
  v30(v18, v29);
  v31 = v159;
  v32 = v118;
  sub_A2438(v159, v118, type metadata accessor for LiveCaptionsRootView);
  v33 = swift_allocObject();
  v34 = v32;
  sub_A2628(v32, v33 + v23, type metadata accessor for LiveCaptionsRootView);
  v35 = sub_D150(&qword_F9C08, &qword_F9BB8);
  v36 = v154;
  v37 = v152;
  v127 = v35;
  sub_BACF0();

  v38 = *(v157 + 8);
  v129 = v20;
  v157 += 8;
  v123 = v38;
  v38(v20, v37);
  v39 = sub_BADA0();
  v40 = v156;
  *v156 = v39;
  v40[1] = v41;
  v42 = sub_2E50(&qword_FB850);
  sub_917FC(v31, v158, v36, v40 + *(v42 + 44));
  sub_A2438(v31, v32, type metadata accessor for LiveCaptionsRootView);
  v160 = v25;
  v43 = swift_allocObject();
  v162 = v23;
  v44 = v43 + v23;
  v45 = v34;
  sub_A2628(v34, v44, type metadata accessor for LiveCaptionsRootView);
  v46 = sub_BADE0();
  v48 = v47;
  v49 = (v40 + *(sub_2E50(&qword_FB858) + 36));
  *v49 = sub_B58F8;
  v49[1] = 0;
  v49[2] = v46;
  v49[3] = v48;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_A03A4;
  *(v50 + 24) = v43;
  v51 = (v40 + *(sub_2E50(&qword_FB860) + 36));
  *v51 = sub_A0434;
  v51[1] = v50;
  v52 = v31 + v122[19];
  v53 = *(v52 + 32);
  v54 = *(v52 + 16);
  v167 = *v52;
  v168 = v54;
  v169 = v53;
  sub_2E50(&qword_FB868);
  sub_BABD0();
  v55 = v31;
  v56 = sub_93118(v163, v164, v165, v166);
  v58 = v57;
  v59 = v40;
  v60 = (v40 + *(sub_2E50(&qword_FB870) + 36));
  *v60 = v56;
  *(v60 + 1) = v58;
  v61 = objc_opt_self();
  v62 = [v61 defaultCenter];
  if (qword_F82D0 != -1)
  {
    swift_once();
  }

  v63 = sub_2E50(&qword_FB878);
  sub_BB400();

  sub_A2438(v55, v34, type metadata accessor for LiveCaptionsRootView);
  v64 = swift_allocObject();
  sub_A2628(v34, v64 + v162, type metadata accessor for LiveCaptionsRootView);
  v65 = (v40 + *(v63 + 56));
  *v65 = sub_A0464;
  v65[1] = v64;
  v66 = [v61 defaultCenter];
  if (qword_F8268 != -1)
  {
    swift_once();
  }

  v67 = sub_2E50(&qword_FB880);
  sub_BB400();

  sub_A2438(v55, v34, type metadata accessor for LiveCaptionsRootView);
  v68 = swift_allocObject();
  sub_A2628(v34, v68 + v162, type metadata accessor for LiveCaptionsRootView);
  v69 = (v40 + *(v67 + 56));
  *v69 = sub_A047C;
  v69[1] = v68;
  v70 = [v61 defaultCenter];
  if (qword_F8260 != -1)
  {
    swift_once();
  }

  v71 = sub_2E50(&qword_FB888);
  sub_BB400();

  v72 = v34;
  sub_A2438(v55, v34, type metadata accessor for LiveCaptionsRootView);
  v73 = swift_allocObject();
  v74 = v162;
  sub_A2628(v45, v73 + v162, type metadata accessor for LiveCaptionsRootView);
  v75 = (v59 + *(v71 + 56));
  *v75 = sub_A0494;
  v75[1] = v73;
  sub_A2438(v55, v45, type metadata accessor for LiveCaptionsRootView);
  v76 = v131;
  v77 = *(v131 + 16);
  v121 = v131 + 16;
  v122 = v77;
  v78 = v151;
  v79 = v132;
  (v77)(v151, v158, v132);
  v120 = *(v76 + 80);
  v80 = (v161 + v120) & ~v120;
  v119 = v80;
  v81 = swift_allocObject();
  sub_A2628(v72, v81 + v74, type metadata accessor for LiveCaptionsRootView);
  v82 = v156;
  v131 = *(v76 + 32);
  (v131)(v81 + v80, v78, v79);
  v83 = (v82 + *(sub_2E50(&qword_FB890) + 36));
  v84 = v82;
  *v83 = sub_A04B0;
  v83[1] = v81;
  v83[2] = 0;
  v83[3] = 0;
  v85 = v159;
  sub_A2438(v159, v72, type metadata accessor for LiveCaptionsRootView);
  v86 = swift_allocObject();
  v87 = v162;
  sub_A2628(v72, v86 + v162, type metadata accessor for LiveCaptionsRootView);
  v88 = (v84 + *(v153 + 36));
  *v88 = 0;
  v88[1] = 0;
  v88[2] = sub_A057C;
  v88[3] = v86;
  v89 = v158;
  sub_B9D20();
  *&v167 = v90;
  *(&v167 + 1) = v91;
  sub_A2438(v85, v72, type metadata accessor for LiveCaptionsRootView);
  v92 = v151;
  (v122)(v151, v89, v79);
  v93 = v119;
  v94 = swift_allocObject();
  sub_A2628(v72, v94 + v87, type metadata accessor for LiveCaptionsRootView);
  (v131)(v94 + v93, v92, v79);
  type metadata accessor for CGSize(0);
  v151 = v95;
  v150 = sub_A0B20();
  v158 = sub_A00C0(&qword_FB8B0, type metadata accessor for CGSize);
  v96 = v136;
  v97 = v153;
  v98 = v156;
  sub_BAA00();

  sub_C5E8(v98, &qword_FB838);
  sub_BA550();
  v99 = v128;
  sub_B9C20();
  sub_A2438(v159, v72, type metadata accessor for LiveCaptionsRootView);
  v100 = swift_allocObject();
  v101 = v72;
  sub_A2628(v72, v100 + v162, type metadata accessor for LiveCaptionsRootView);
  v102 = v129;
  v103 = v149;
  sub_BAD00();

  v124(v99, v103);
  sub_B9C80();
  *&v167 = v97;
  *(&v167 + 1) = v151;
  *&v168 = v150;
  *(&v168 + 1) = v158;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v105 = v139;
  v106 = v152;
  v107 = v127;
  sub_BA940();
  v123(v102, v106);
  (*(v138 + 8))(v96, v105);
  v108 = v142;
  sub_B9C00();
  sub_A2438(v159, v101, type metadata accessor for LiveCaptionsRootView);
  v109 = swift_allocObject();
  sub_A2628(v101, v109 + v162, type metadata accessor for LiveCaptionsRootView);
  v110 = swift_allocObject();
  *(v110 + 16) = sub_A0D00;
  *(v110 + 24) = v109;
  v111 = v145;
  v112 = v144;
  sub_BACF0();

  (*(v143 + 8))(v108, v112);
  sub_B9C80();
  *&v167 = v105;
  *(&v167 + 1) = v106;
  *&v168 = OpaqueTypeConformance2;
  *(&v168 + 1) = v107;
  swift_getOpaqueTypeConformance2();
  sub_D150(&qword_FB8B8, &qword_FB830);
  v113 = v141;
  v114 = v147;
  v115 = v155;
  sub_BA940();
  (*(v146 + 8))(v111, v114);
  (*(v140 + 8))(v115, v113);
  return (*(v135 + 8))(v154, v137);
}

uint64_t sub_8FB44(uint64_t a1)
{
  type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_FB868);
  sub_BABD0();
  return sub_8FBCC(a1, v3, v4, v5, v6);
}

uint64_t sub_8FBCC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v170 = a1;
  v10 = sub_B9C50();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v165 = COERCE_DOUBLE(sub_B9A10());
  v14 = *(v165 - 8);
  __chkstk_darwin(v165);
  v16 = &v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v151 - v18;
  v168 = type metadata accessor for LiveCaptionsRootView();
  v20 = v168[8];
  v169 = v5;
  v21 = (*&v5 + v20);
  v22 = *v21;
  v23 = v21[1];
  LODWORD(v166) = v22;
  LOBYTE(v176) = v22;
  v167 = v23;
  v177 = v23;
  v24 = sub_2E50(&qword_FB8C0);
  result = sub_BABD0();
  if (LOBYTE(v173.width) != 3)
  {
    v164 = v14;
    v163 = v24;
    v26 = v168;
    v27 = v169;
    v28 = (*&v169 + v168[14]);
    v29 = *v28;
    v30 = v28[1];
    v31 = v28[2];
    v176 = *v28;
    v177 = v30;
    v178 = v31;
    *&v32 = COERCE_DOUBLE(sub_2E50(&qword_F8AE0));
    sub_BABD0();
    v33 = 0.0;
    v180.width = 0.0;
    v180.height = 0.0;
    if (CGSizeEqualToSize(v173, v180))
    {
      v156 = v31;
      v161 = a2;
      v162 = a3;
      v34 = (*&v27 + v26[11]);
      v35 = v34[1];
      v36 = v34[2];
      v154 = *v34;
      v176 = v154;
      v177 = v35;
      v153 = v35;
      v178 = v36;
      sub_BABD0();
      height = v173.height;
      width = v173.width;
      v39 = (*&v27 + v26[25]);
      v40 = *v39;
      v41 = v39[1];
      LOBYTE(v176) = v40;
      v177 = v41;
      sub_2E50(&qword_FB820);
      sub_BABD0();
      v42 = 0.0;
      if (LOBYTE(v173.width) != 1)
      {
        LOBYTE(v176) = LOBYTE(v166);
        v177 = v167;
        sub_BABD0();
        v33 = sub_9E5DC(LOBYTE(v173.width), v161, v162, a4, a5);
        v42 = v43;
      }

      if (qword_F8258 != -1)
      {
        swift_once();
      }

      v44 = static LiveSpeechCaptionsViewsCoordinator.shared;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();

      v158 = a5;
      v157 = a4;
      v155 = v30;
      if (v33 == 0.0 && v42 == 0.0)
      {
        v33 = *(v44 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
        v42 = *(v44 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
      }

      v45 = v176;
      v46 = v177;
      v160 = v178;
      v159 = v179;
      sub_B95F0();
      v47 = sub_B9A00();
      v48 = sub_BB2F0();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *&v173.width = swift_slowAlloc();
        *v49 = 136315394;
        v176 = width;
        v177 = height;
        type metadata accessor for CGSize(0);
        v50 = sub_BAFF0();
        v152 = v36;
        v52 = sub_7A1D8(v50, v51, &v173);

        *(v49 + 4) = v52;
        v26 = v168;
        *(v49 + 12) = 2080;
        v176 = v33;
        v177 = v42;
        v53 = sub_BAFF0();
        v55 = sub_7A1D8(v53, v54, &v173);
        v27 = v169;

        *(v49 + 14) = v55;
        v36 = v152;
        _os_log_impl(&dword_0, v47, v48, "Calculate safeOffset offset: %s size: %s", v49, 0x16u);
        swift_arrayDestroy();
      }

      (*(v164 + 8))(v19, v165);
      v169 = v29;
      v56 = v156;
      if (qword_F8250 != -1)
      {
        swift_once();
      }

      v57 = *&qword_100C08;
      if (AXDeviceIsPad() && *(v44 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
      {
        v57 = 0.0;
      }

      HasJindo = AXDeviceHasJindo();
      v182.origin.x = v45;
      v182.origin.y = v46;
      v182.size.width = v160;
      v182.size.height = v159;
      if (height < v46 + CGRectGetHeight(v182) + -37.3333333 && HasJindo)
      {
        v183.origin.x = v45;
        v183.origin.y = v46;
        v183.size.width = v160;
        v183.size.height = v159;
        height = v46 + CGRectGetHeight(v183) + -37.3333333;
      }

      v59 = v157;
      v60 = v157 - v33 + v57;
      if (v60 >= width)
      {
        v60 = width;
      }

      v61 = v33;
      v62 = v161;
      v63 = v162;
      v64 = v158;
      v65 = sub_3C824(v60, height, v61, v42, v161, v162, v157);
      if (v64 - v42 + -4.0 < v66)
      {
        v66 = v64 - v42 + -4.0;
      }

      if (v65 < -v57)
      {
        v65 = -v57;
      }

      v176 = v154;
      v177 = v153;
      v178 = v36;
      if (v66 < 0.0)
      {
        v66 = 0.0;
      }

      v173.width = v65;
      v173.height = v66;
      sub_BABE0();
      LOBYTE(v176) = LOBYTE(v166);
      v177 = v167;
      sub_BABD0();
      if (LOBYTE(v173.width) == 2)
      {
        sub_9B2B4(v62, v63, v59, v64);
        v68 = v67;
        v69 = (*&v27 + v26[15]);
        v71 = v69[1];
        v72 = v69[2];
        v176 = *v69;
        v70 = v176;
        v177 = v71;
        v178 = v72;

        sub_BABD0();
        v173.width = v70;
        v173.height = v71;
        v174 = v72;
        v171 = v175;
        v172 = v68;
        sub_BABE0();
      }

      sub_B9C30();
      v176 = v169;
      v177 = v155;
      v178 = v56;
      v173.width = v73;
      v173.height = v74;
      return sub_BABE0();
    }

    else
    {
      v176 = v29;
      v177 = v30;
      v178 = v31;
      sub_BABD0();
      v75 = v173.width;
      sub_B9C30();
      v77 = *&v16;
      if (vabdd_f64(v75, v76) >= 2.0 || (v176 = v29, v177 = v30, v178 = v31, sub_BABD0(), v78 = v29, v79 = v173.height, result = sub_B9C30(), v81 = vabdd_f64(v79, v80), v29 = v78, v81 >= 2.0))
      {
        v82 = sub_BB2F0();
        if (qword_F8278 != -1)
        {
          swift_once();
        }

        v83 = qword_100C30;
        (*(v11 + 16))(v13, v170, v10);
        v84 = a4;
        if (os_log_type_enabled(v83, v82))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v160 = *&v32;
          v87 = v86;
          *&v173.width = v86;
          *v85 = 136315138;
          v159 = v77;
          LODWORD(v162) = v82;
          sub_B9C30();
          v176 = v88;
          v177 = v89;
          type metadata accessor for CGSize(0);
          v90 = sub_BAFF0();
          v92 = v91;
          (*(v11 + 8))(v13, v10);
          v93 = sub_7A1D8(v90, v92, &v173);

          *(v85 + 4) = v93;
          v77 = v159;
          _os_log_impl(&dword_0, v83, LOBYTE(v162), "drag translation: %s", v85, 0xCu);
          sub_28020(v87);
          *&v32 = v160;
        }

        else
        {
          (*(v11 + 8))(v13, v10);
        }

        sub_B9C30();
        v176 = v29;
        v177 = v30;
        v178 = v31;
        v173.width = v94;
        v173.height = v95;
        sub_BABE0();
        sub_B9C40();
        v97 = v96;
        sub_B9C30();
        v99 = v98;
        sub_B9C40();
        v101 = v100;
        result = sub_B9C30();
        v103 = vabdd_f64(v97, v99);
        v104 = v164;
        if (qword_F8350 != -1)
        {
          v150 = v102;
          result = swift_once();
          v102 = v150;
        }

        if (v103 <= *&qword_100D80 && fabs(v101 - v102) <= *&qword_100D80)
        {
          v105 = v84;
          v106 = v168;
          v107 = v169;
          v108 = (*&v169 + v168[13]);
          v109 = *v108;
          v110 = v108[1];
          v111 = *(v108 + 2);
          v176 = *v108;
          v177 = v110;
          v178 = *&v111;
          sub_BABD0();
          v112 = 0.0;
          v181.width = 0.0;
          v181.height = 0.0;
          if (CGSizeEqualToSize(v173, v181))
          {
            v161 = a2;
            v162 = a3;
            v113 = (*&v107 + v106[11]);
            v114 = v113[1];
            v115 = v113[2];
            v155 = *v113;
            v176 = v155;
            v177 = v114;
            v154 = v114;
            v178 = v115;
            sub_BABD0();
            v156 = v173.height;
            v116 = v173.width;
            v117 = (*&v107 + v106[25]);
            v118 = *v117;
            v119 = v117[1];
            LOBYTE(v176) = v118;
            v177 = v119;
            sub_2E50(&qword_FB820);
            sub_BABD0();
            v120 = 0.0;
            if (LOBYTE(v173.width) != 1)
            {
              LOBYTE(v176) = LOBYTE(v166);
              v177 = v167;
              sub_BABD0();
              v112 = sub_9E5DC(LOBYTE(v173.width), v161, v162, v105, a5);
              v120 = v121;
            }

            v160 = *&v32;
            if (qword_F8258 != -1)
            {
              swift_once();
            }

            v122 = static LiveSpeechCaptionsViewsCoordinator.shared;
            swift_getKeyPath();
            swift_getKeyPath();
            sub_B9B10();

            v158 = a5;
            if (v112 == 0.0)
            {
              v123 = v165;
              if (v120 == 0.0)
              {
                v112 = *(v122 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
                v120 = *(v122 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
              }
            }

            else
            {
              v123 = v165;
            }

            v124 = v177;
            v168 = *&v176;
            v167 = v178;
            v166 = v179;
            sub_B95F0();
            v125 = sub_B9A00();
            v126 = sub_BB2F0();
            if (os_log_type_enabled(v125, v126))
            {
              v127 = swift_slowAlloc();
              v128 = swift_slowAlloc();
              v163 = v122;
              *&v173.width = v128;
              *v127 = 136315394;
              v176 = v116;
              v177 = v156;
              type metadata accessor for CGSize(0);
              v129 = sub_BAFF0();
              v165 = v111;
              v159 = v77;
              v131 = v115;
              v132 = sub_7A1D8(v129, v130, &v173);

              *(v127 + 4) = v132;
              v115 = v131;
              *(v127 + 12) = 2080;
              v176 = v112;
              v177 = v120;
              v133 = sub_BAFF0();
              v135 = sub_7A1D8(v133, v134, &v173);

              *(v127 + 14) = v135;
              _os_log_impl(&dword_0, v125, v126, "Calculate safeOffset offset: %s size: %s", v127, 0x16u);
              swift_arrayDestroy();

              v111 = v165;
              (*(v104 + 8))(COERCE_CGFLOAT(*&v159), v123);
              v122 = v163;
            }

            else
            {

              (*(v104 + 8))(COERCE_DOUBLE(*&v77), v123);
            }

            v107 = v169;
            v169 = v110;
            if (qword_F8250 != -1)
            {
              swift_once();
            }

            v136 = v109;
            v137 = *&qword_100C08;
            if (AXDeviceIsPad() && *(v122 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
            {
              v137 = 0.0;
            }

            v138 = AXDeviceHasJindo();
            *&v184.origin.x = v168;
            v184.origin.y = v124;
            v184.size.width = v167;
            v184.size.height = v166;
            v139 = CGRectGetHeight(v184);
            v140 = v156;
            if (v156 < v124 + v139 + -37.3333333 && v138)
            {
              *&v185.origin.x = v168;
              v185.origin.y = v124;
              v185.size.width = v167;
              v185.size.height = v166;
              v140 = v124 + CGRectGetHeight(v185) + -37.3333333;
            }

            v141 = v105 - v112 + v137;
            if (v141 >= v116)
            {
              v141 = v116;
            }

            v142 = v161;
            a3 = v162;
            a5 = v158;
            v143 = sub_3C824(v141, v140, v112, v120, v161, v162, v105);
            v145 = a5 - v120;
            a2 = v142;
            v146 = v145 + -4.0;
            if (v146 < v144)
            {
              v144 = v146;
            }

            if (v143 < -v137)
            {
              v143 = -v137;
            }

            v147 = v155;
            v148 = v154;
            v176 = v155;
            v177 = v154;
            v178 = v115;
            if (v144 < 0.0)
            {
              v144 = 0.0;
            }

            v173.width = v143;
            v173.height = v144;
            sub_BABE0();
            v176 = v147;
            v177 = v148;
            v178 = v115;
            sub_BABD0();
            v176 = v136;
            v177 = v169;
            v178 = *&v111;
            sub_BABE0();
          }

          sub_BAE20();
          sub_BAE10();

          sub_BAE00();

          __chkstk_darwin(v149);
          *(&v151 - 6) = v170;
          *(&v151 - 5) = v107;
          *(&v151 - 4) = a2;
          *(&v151 - 3) = a3;
          *(&v151 - 2) = v105;
          *(&v151 - 1) = a5;
          sub_B9D80();
        }
      }
    }
  }

  return result;
}

void sub_90CF4(uint64_t a1)
{
  type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_F8AE0);
  sub_BABE0();
  sub_BABE0();
  sub_2E50(&qword_FB868);
  sub_BABD0();
  sub_90DFC(a1, 0.0, 0.0, v2, v3);
  sub_915B8();
}

void sub_90DFC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v71 = a3;
  v9 = sub_B9E70();
  v74 = *(v9 - 8);
  v75 = v9;
  __chkstk_darwin(v9);
  v73 = &v69[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v72 = &v69[-v12];
  v13 = sub_B9C50();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v69[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_B9C40();
  v18 = v17;
  sub_B9C30();
  v20 = v19;
  sub_B9C40();
  v22 = v21;
  sub_B9C30();
  v24 = v23;
  v25 = sub_BB2F0();
  if (qword_F8278 != -1)
  {
    swift_once();
  }

  v26 = v18 - v20;
  v27 = v22 - v24;
  v28 = qword_100C30;
  (*(v14 + 16))(v16, a1, v13);
  if (os_log_type_enabled(v28, v25))
  {
    v29 = swift_slowAlloc();
    v77[0] = swift_slowAlloc();
    *v29 = 136315394;
    v78 = v26;
    v79 = v22 - v24;
    type metadata accessor for CGSize(0);
    v30 = sub_BAFF0();
    v32 = sub_7A1D8(v30, v31, v77);
    v70 = v25;
    v33 = v32;

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    sub_B9C30();
    v78 = v34;
    v79 = v35;
    v36 = sub_BAFF0();
    v38 = v37;
    (*(v14 + 8))(v16, v13);
    v39 = sub_7A1D8(v36, v38, v77);

    *(v29 + 14) = v39;
    _os_log_impl(&dword_0, v28, v70, "handleFastSwipe velocity: %s, translation: %s", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    (*(v14 + 8))(v16, v13);
  }

  sub_B9C30();
  v41 = fabs(v40);
  sub_B9C30();
  v43 = fabs(v42);
  v44 = fabs(v26);
  v45 = v76;
  if (qword_F8350 != -1)
  {
    swift_once();
  }

  v46 = *&qword_100D80 < v44;
  v47 = *&qword_100D80 < fabs(v27);
  v48 = v43 < 50.0 && v47;
  sub_B9C30();
  v50 = fabs(v49) > 100.0;
  v51 = v41 < 50.0 && v46;
  v52 = v41 < 50.0 && v50;
  v53 = sub_BB2F0();
  if (os_log_type_enabled(v28, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 67110144;
    *(v54 + 4) = v41 < 50.0;
    *(v54 + 8) = 1024;
    *(v54 + 10) = v43 < 50.0;
    *(v54 + 14) = 1024;
    *(v54 + 16) = v51;
    *(v54 + 20) = 1024;
    *(v54 + 22) = v48;
    *(v54 + 26) = 1024;
    *(v54 + 28) = v52;
    _os_log_impl(&dword_0, v28, v53, "H: %{BOOL}d, V: %{BOOL}d fast H: %{BOOL}d, fast V: %{BOOL}d, long H: %{BOOL}d", v54, 0x20u);
  }

  if (v51)
  {
    if (sub_9A8B8())
    {
      return;
    }
  }

  else
  {
    if (!AXDeviceIsPhone() || (sub_8E370() & 1) != 0 || !v52)
    {
      v62 = (v45 + *(type metadata accessor for LiveCaptionsRootView() + 32));
      v63 = *v62;
      v64 = v62[1];
      LOBYTE(v78) = *v62;
      v79 = v64;
      sub_2E50(&qword_FB8C0);
      sub_BABD0();
      if (LOBYTE(v77[0]) != 3)
      {
        LOBYTE(v78) = v63;
        v79 = v64;
        sub_BABD0();
        if (LOBYTE(v77[0]) != 2 && v48)
        {
          LOBYTE(v78) = v63;
          v79 = v64;
          sub_BABD0();
          v65 = v71;
          sub_9E5DC(v77[0], a2, v71, a4, a5);
          v67 = __chkstk_darwin(v66).n128_u64[0];
          *&v69[-64] = v45;
          v69[-56] = v27 < 0.0;
          *&v69[-48] = a2;
          *&v69[-40] = v65;
          *&v69[-32] = a4;
          *&v69[-24] = a5;
          *&v69[-16] = v67;
          *&v69[-8] = v68;
          sub_BAE30();
          sub_B9D80();
        }
      }

      goto LABEL_33;
    }

    if (sub_9A8B8())
    {
      return;
    }

    sub_B9C30();
  }

  v55 = type metadata accessor for LiveCaptionsRootView();
  v56 = v72;
  sub_B5C08(v72);
  v58 = v73;
  v57 = v74;
  v59 = v75;
  (*(v74 + 104))(v73, enum case for LayoutDirection.rightToLeft(_:), v75);
  sub_B9E60();
  v60 = *(v57 + 8);
  v60(v58, v59);
  v61 = (v60)(v56, v59);
  if (__chkstk_darwin(v61).n128_f64[0] <= 0.0)
  {
    v69[-32] = 1;
  }

  else
  {
    v69[-32] = 2;
  }

  *&v69[-24] = v45;
  *&v69[-16] = a4;
  *&v69[-8] = a5;
  sub_BAE30();
  sub_B9D80();

  sub_915B8();
  LiveSpeechCaptionsViewsCoordinator.updateLiveCaptionsWindowState(_:)(LiveSpeechUIService_LiveSpeechCaptionsWindowState_pip);
  sub_9D610();
  [*(v45 + *(v55 + 92)) idleSleepTimerDisabled:0];
LABEL_33:
  sub_915B8();
}

void sub_915B8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_FB8C0);
  sub_BABD0();
  v1 = sub_BAFA0();
  [v0 setInteger:LOBYTE(v6.width) forKey:v1];

  sub_2E50(&qword_F8AE0);
  sub_BABD0();
  v2 = NSStringFromCGSize(v6);
  if (!v2)
  {
    sub_BAFD0();
    v2 = sub_BAFA0();
  }

  v3 = sub_BAFA0();
  [v0 setObject:v2 forKey:v3];

  sub_BABD0();
  v4 = NSStringFromCGSize(v6);
  if (!v4)
  {
    sub_BAFD0();
    v4 = sub_BAFA0();
  }

  v5 = sub_BAFA0();
  [v0 setObject:v4 forKey:v5];
}

uint64_t sub_917FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)()@<X2>, uint64_t a4@<X8>)
{
  v42 = a2;
  v43 = a3;
  v45 = a4;
  v44 = sub_2E50(&qword_FB8C8);
  v5 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v40 - v6;
  v7 = sub_2E50(&qword_FB8D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  v13 = sub_2E50(&qword_FB8D8);
  __chkstk_darwin(v13 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  v19 = type metadata accessor for LiveCaptionsRootView();
  v20 = (a1 + *(v19 + 68));
  v21 = *v20;
  v22 = v20[1];
  v23 = v20[2];
  v24 = v20[3];
  v25 = v20[4];
  v50 = *v20;
  v51 = v22;
  v52 = v23;
  v53 = v24;
  v54 = v25;
  sub_2E50(&qword_FB868);
  sub_BABD0();
  v26 = v46;
  v27 = v47;
  v28 = v48;
  v29 = v49;
  sub_B9D10();
  sub_91BEC(v43, v18, v26, v27, v28, v29, v30, v31);
  v32 = (a1 + *(v19 + 100));
  v33 = *v32;
  v34 = *(v32 + 1);
  LOBYTE(v50) = v33;
  v51 = v34;
  sub_2E50(&qword_FB820);
  sub_BABD0();
  if (LOBYTE(v46) == 1)
  {
    v50 = v21;
    v51 = v22;
    v52 = v23;
    v53 = v24;
    v54 = v25;
    sub_BABD0();
    v35 = v41;
    sub_929EC(v41, v46, v47, v48, v49);
    sub_66B8(v35, v12, &qword_FB8C8);
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  (*(v5 + 56))(v12, v36, 1, v44);
  sub_57A0(v18, v15, &qword_FB8D8);
  sub_57A0(v12, v9, &qword_FB8D0);
  v37 = v45;
  sub_57A0(v15, v45, &qword_FB8D8);
  v38 = sub_2E50(&qword_FB8E0);
  sub_57A0(v9, v37 + *(v38 + 48), &qword_FB8D0);
  sub_C5E8(v12, &qword_FB8D0);
  sub_C5E8(v18, &qword_FB8D8);
  sub_C5E8(v9, &qword_FB8D0);
  return sub_C5E8(v15, &qword_FB8D8);
}

uint64_t sub_91BEC@<X0>(uint64_t (*a1)()@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D6>)
{
  v9 = v8;
  v103 = a2;
  v17 = type metadata accessor for LiveCaptionsRootView();
  v97 = *(v17 - 8);
  __chkstk_darwin(v17);
  v98 = v18;
  v102 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_BAA80();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2E50(&qword_FB918);
  __chkstk_darwin(v20);
  v22 = (&v80 - v21);
  v81 = sub_2E50(&qword_FB920) - 8;
  __chkstk_darwin(v81);
  v80 = &v80 - v23;
  v84 = sub_2E50(&qword_FB928);
  __chkstk_darwin(v84);
  v83 = &v80 - v24;
  v82 = sub_2E50(&qword_FB930);
  __chkstk_darwin(v82);
  v85 = &v80 - v25;
  v87 = sub_2E50(&qword_FB938);
  __chkstk_darwin(v87);
  v86 = &v80 - v26;
  v91 = sub_2E50(&qword_FB940);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v80 - v27;
  v88 = sub_2E50(&qword_FB948);
  __chkstk_darwin(v88);
  v92 = &v80 - v28;
  v104 = sub_2E50(&qword_FB950);
  __chkstk_darwin(v104);
  v96 = &v80 - v29;
  v101 = sub_2E50(&qword_FB958);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v80 - v30;
  *v22 = sub_BADE0();
  v22[1] = v31;
  v32 = sub_2E50(&qword_FB960);
  sub_95E94(v9, a1, v22 + *(v32 + 44), a3, a4, a5, a6, a7, a8);
  v105 = v17;
  v33 = v9 + *(v17 + 32);
  v35 = *(v33 + 8);
  LOBYTE(v117) = *v33;
  v34 = v117;
  *(&v117 + 1) = v35;
  sub_2E50(&qword_FB8C0);
  sub_BABD0();
  sub_9E5DC(v113, a3, a4, a5, a6);
  LOBYTE(v117) = v34;
  *(&v117 + 1) = v35;
  sub_BABD0();
  sub_9E5DC(v113, a3, a4, a5, a6);
  sub_BADE0();
  sub_B9CF0();
  v36 = (v22 + *(v20 + 36));
  v37 = v118;
  *v36 = v117;
  v36[1] = v37;
  v36[2] = v119;
  sub_BAD80();
  v107 = v9;
  v108 = a3;
  v109 = a4;
  v110 = a5;
  v111 = a6;
  v106 = v9;
  sub_2E50(&qword_FB968);
  sub_2E50(&qword_FB970);
  v38 = sub_A1530();
  v39 = sub_B9F50();
  v40 = sub_A00C0(&qword_F8E40, &type metadata accessor for RoundedRectangle);
  v113 = v20;
  v114 = v39;
  v115 = v38;
  v116 = v40;
  swift_getOpaqueTypeConformance2();
  sub_A15E8();
  v41 = v80;
  sub_BAA20();
  sub_C5E8(v22, &qword_FB918);
  v42 = sub_99C7C();
  *(v41 + *(sub_2E50(&qword_FB998) + 36)) = v42;
  v43 = (v41 + *(v81 + 44));
  v44 = v9;
  sub_99900(v43, a3, a4, a5, a6);
  *(v43 + *(sub_2E50(&qword_FAF30) + 36)) = 256;
  LOBYTE(v113) = v34;
  v114 = v35;
  sub_BABD0();
  v45 = 0;
  if (v112 == 3)
  {
    v45 = sub_B9EF0();
  }

  v46 = sub_BA640();
  v47 = v83;
  sub_66B8(v41, v83, &qword_FB920);
  v48 = v47 + *(v84 + 36);
  *v48 = v45;
  *(v48 + 8) = v46;
  v49 = sub_BA640();
  v50 = v47;
  v51 = v85;
  sub_66B8(v50, v85, &qword_FB928);
  v52 = v51 + *(v82 + 36);
  *v52 = v49;
  *(v52 + 8) = 0u;
  *(v52 + 24) = 0u;
  *(v52 + 40) = 0;
  LOBYTE(v113) = v34;
  v114 = v35;
  sub_BABD0();
  if (v112)
  {
    LOBYTE(v113) = v34;
    v114 = v35;
    sub_BABD0();
    if (v112 == 1)
    {
      v53 = 5.0;
    }

    else
    {
      v53 = 0.0;
    }
  }

  else
  {
    v53 = 5.0;
  }

  (*(v94 + 104))(v93, enum case for Color.RGBColorSpace.sRGBLinear(_:), v95);
  v54 = sub_BAB30();
  v55 = v86;
  sub_66B8(v51, v86, &qword_FB930);
  v56 = v55 + *(v87 + 36);
  *v56 = v54;
  *(v56 + 8) = v53;
  sub_A16A0();
  *(v56 + 16) = 0;
  *(v56 + 24) = 0;
  v57 = v89;
  sub_BA930();
  sub_C5E8(v55, &qword_FB938);
  v58 = v102;
  sub_A2438(v44, v102, type metadata accessor for LiveCaptionsRootView);
  v59 = *(v97 + 80);
  v60 = ((v59 + 16) & ~v59) + v98;
  v61 = swift_allocObject();
  sub_A2628(v58, v61 + ((v59 + 16) & ~v59), type metadata accessor for LiveCaptionsRootView);
  v62 = v92;
  (*(v90 + 32))(v92, v57, v91);
  v63 = (v62 + *(v88 + 36));
  *v63 = sub_A1A94;
  v63[1] = v61;
  v63[2] = 0;
  v63[3] = 0;
  v64 = v44;
  sub_A2438(v44, v58, type metadata accessor for LiveCaptionsRootView);
  v97 = v59;
  v65 = v60;
  v66 = swift_allocObject();
  v67 = (v59 + 16) & ~v59;
  v95 = v67;
  sub_A2628(v58, v66 + v67, type metadata accessor for LiveCaptionsRootView);
  v68 = v96;
  sub_66B8(v62, v96, &qword_FB948);
  v69 = (v68 + *(v104 + 36));
  *v69 = 0;
  v69[1] = 0;
  v69[2] = sub_A1AAC;
  v69[3] = v66;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  sub_A2438(v64, v58, type metadata accessor for LiveCaptionsRootView);
  v70 = (v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  sub_A2628(v58, v71 + v67, type metadata accessor for LiveCaptionsRootView);
  v72 = (v71 + v70);
  *v72 = a3;
  v72[1] = a4;
  v72[2] = a5;
  v72[3] = a6;
  sub_2E50(&qword_FA368);
  sub_A1B44();
  sub_A1C98();
  v73 = v99;
  sub_BAA10();

  sub_C5E8(v68, &qword_FB950);
  swift_beginAccess();
  v74 = sub_2E50(&qword_FB8D8);
  sub_2E50(&qword_FA700);
  v75 = v103;
  sub_B9AE0();
  swift_endAccess();
  sub_A2438(v64, v58, type metadata accessor for LiveCaptionsRootView);
  v76 = swift_allocObject();
  sub_A2628(v58, v76 + v95, type metadata accessor for LiveCaptionsRootView);
  v77 = (v76 + v70);
  *v77 = a3;
  v77[1] = a4;
  v77[2] = a5;
  v77[3] = a6;
  result = (*(v100 + 32))(v75, v73, v101);
  v79 = (v75 + *(v74 + 56));
  *v79 = sub_A1D4C;
  v79[1] = v76;
  return result;
}

uint64_t sub_929EC@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v52 = a1;
  v10 = type metadata accessor for LiveCaptionsRootView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_B9C10();
  v14 = *(v45 - 8);
  __chkstk_darwin(v45);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2E50(&qword_FB830);
  v48 = *(v17 - 8);
  v49 = v17;
  __chkstk_darwin(v17);
  v46 = &v43 - v18;
  v19 = sub_2E50(&qword_FB8E8);
  v50 = *(v19 - 8);
  v51 = v19;
  __chkstk_darwin(v19);
  v47 = &v43 - v20;
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v21 = AXLTSettingsManager.buttonScaledHeight.getter();
  v22 = v5 + *(v10 + 32);
  v23 = *v22;
  v24 = *(v22 + 8);
  LOBYTE(v53) = v23;
  v54 = v24;
  sub_2E50(&qword_FB8C0);
  v25 = sub_BABD0();
  v28 = 12.0;
  if (v55 == 3)
  {
    v28 = 24.0;
  }

  v29 = LiveSpeechStore.SpeechContext.init(text:highlightRange:)(v25, v21 + v28 + 8.0 + -1.0, -1.0, v26, v27);
  v44 = v5;
  sub_9B970();
  sub_BADE0();
  sub_B9CF0();
  v53 = v29;
  v54 = 0x4020000000000000;
  sub_B9C00();
  sub_A2438(v5, &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveCaptionsRootView);
  v30 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v43 = v30 + v12;
  v31 = swift_allocObject();
  sub_A2628(&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for LiveCaptionsRootView);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_A3298;
  *(v32 + 24) = v31;
  v33 = v46;
  v34 = v45;
  sub_BACF0();

  (*(v14 + 8))(v16, v34);
  sub_B9C80();
  sub_2E50(&qword_FB8F0);
  sub_A1370();
  sub_D150(&qword_FB8B8, &qword_FB830);
  v35 = v47;
  v36 = v49;
  sub_BA940();
  (*(v48 + 8))(v33, v36);
  sub_A2438(v44, v13, type metadata accessor for LiveCaptionsRootView);
  v37 = (v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  sub_A2628(v13, v38 + v30, type metadata accessor for LiveCaptionsRootView);
  v39 = (v38 + v37);
  *v39 = a2;
  v39[1] = a3;
  v39[2] = a4;
  v39[3] = a5;
  v40 = v52;
  (*(v50 + 32))(v52, v35, v51);
  result = sub_2E50(&qword_FB8C8);
  v42 = (v40 + *(result + 36));
  *v42 = sub_A14DC;
  v42[1] = v38;
  v42[2] = 0;
  v42[3] = 0;
  return result;
}

uint64_t sub_92F90(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = sub_BB2F0();
  if (qword_F8278 != -1)
  {
    swift_once();
  }

  v9 = qword_100C30;
  if (os_log_type_enabled(qword_100C30, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    type metadata accessor for CGRect(0);
    v12 = sub_BAFF0();
    v14 = sub_7A1D8(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v9, v8, "New window frame: %s", v10, 0xCu);
    sub_28020(v11);
  }

  type metadata accessor for LiveCaptionsRootView();
  return LiveSpeechCaptionsViewsCoordinator.updateLiveCaptionsFrame(_:)(a1, a2, a3, a4);
}

double sub_93118(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_B9A10();
  v79 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LiveCaptionsRootView();
  v14 = (v4 + v13[8]);
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v80) = *v14;
  *(&v80 + 1) = v16;
  v17 = sub_2E50(&qword_FB8C0);
  sub_BABD0();
  v18 = 0.0;
  v19 = 0.0;
  if (LOBYTE(v83[0]) != 3)
  {
    LOBYTE(v80) = v15;
    *(&v80 + 1) = v16;
    sub_BABD0();
    if (LOBYTE(v83[0]) == 4)
    {
      v20 = v13[12];
    }

    else
    {
      v20 = v13[11];
    }

    v21 = (v4 + v20);
    v22 = v21[2];
    v80 = *v21;
    v81 = v22;
    sub_2E50(&qword_F8AE0);
    sub_BABD0();
    v23 = *&v83[1];
    v78 = *v83;
    v24 = (v4 + v13[25]);
    v25 = *v24;
    v26 = *(v24 + 1);
    LOBYTE(v80) = v25;
    *(&v80 + 1) = v26;
    sub_2E50(&qword_FB820);
    sub_BABD0();
    v27 = 0.0;
    if (LOBYTE(v83[0]) != 1)
    {
      LOBYTE(v80) = v15;
      *(&v80 + 1) = v16;
      sub_BABD0();
      v27 = sub_9E5DC(v83[0], a1, a2, a3, a4);
      v19 = v28;
    }

    if (qword_F8258 != -1)
    {
      swift_once();
    }

    v77 = static LiveSpeechCaptionsViewsCoordinator.shared;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    v74 = a3;
    v73 = a2;
    v72 = a1;
    if (v27 == 0.0 && v19 == 0.0)
    {
      v27 = *(v77 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
      v19 = *(v77 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
    }

    v29 = *(&v80 + 1);
    v30 = v81;
    v75 = v82;
    v76 = *&v80;
    sub_B95F0();
    v31 = sub_B9A00();
    v32 = sub_BB2F0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v69 = v12;
      v34 = v33;
      v83[0] = swift_slowAlloc();
      *v34 = 136315394;
      *&v80 = v78;
      *(&v80 + 1) = v23;
      type metadata accessor for CGSize(0);
      v71 = v17;
      v35 = sub_BAFF0();
      v70 = v13;
      v37 = sub_7A1D8(v35, v36, v83);
      v68 = v10;
      v38 = v5;
      v39 = v15;
      v40 = v37;

      *(v34 + 4) = v40;
      *(v34 + 12) = 2080;
      *&v80 = v27;
      *(&v80 + 1) = v19;
      v41 = sub_BAFF0();
      v43 = sub_7A1D8(v41, v42, v83);
      v13 = v70;

      *(v34 + 14) = v43;
      v15 = v39;
      v5 = v38;
      _os_log_impl(&dword_0, v31, v32, "Calculate safeOffset offset: %s size: %s", v34, 0x16u);
      swift_arrayDestroy();

      (*(v79 + 8))(v69, v68);
    }

    else
    {

      (*(v79 + 8))(v12, v10);
    }

    v44 = v77;
    if (qword_F8250 != -1)
    {
      swift_once();
    }

    v45 = *&qword_100C08;
    if (AXDeviceIsPad() && *(v44 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
    {
      v45 = 0.0;
    }

    HasJindo = AXDeviceHasJindo();
    v84.size.height = v75;
    v84.origin.x = v76;
    v84.origin.y = v29;
    v84.size.width = v30;
    if (v23 < v29 + CGRectGetHeight(v84) + -37.3333333 && HasJindo)
    {
      v85.size.height = v75;
      v85.origin.x = v76;
      v85.origin.y = v29;
      v85.size.width = v30;
      v23 = v29 + CGRectGetHeight(v85) + -37.3333333;
    }

    v47 = v74;
    v48 = v74 - v27 + v45;
    if (v48 >= v78)
    {
      v48 = v78;
    }

    v49 = v27;
    v50 = v72;
    v51 = v73;
    v52 = sub_3C824(v48, v23, v49, v19, v72, v73, v74);
    if (a4 - v19 + -4.0 < v53)
    {
      v53 = a4 - v19 + -4.0;
    }

    if (v52 >= -v45)
    {
      v18 = v52;
    }

    else
    {
      v18 = -v45;
    }

    v54 = (v5 + v13[16]);
    v55 = *v54;
    v56 = v54[1];
    if (v53 >= 0.0)
    {
      v57 = v53;
    }

    else
    {
      v57 = 0.0;
    }

    *&v80 = *v54;
    *(&v80 + 1) = v56;
    sub_2E50(&qword_FA710);
    sub_BABD0();
    if (*v83 != 0.0)
    {
      LOBYTE(v80) = v15;
      *(&v80 + 1) = v16;
      sub_BABD0();
      sub_9E5DC(v83[0], v50, v51, v47, a4);
      v59 = v58;
      *&v80 = v55;
      *(&v80 + 1) = v56;
      sub_BABD0();
      if (*v83 - v59 < v57)
      {
        *&v80 = v55;
        *(&v80 + 1) = v56;
        sub_BABD0();
        v57 = *v83 - v59;
      }

      if (v57 < 0.0)
      {
        v57 = 0.0;
      }
    }

    LOBYTE(v80) = v15;
    *(&v80 + 1) = v16;
    sub_BABD0();
    if (LOBYTE(v83[0]) != 4 && (sub_8E370() & 1) == 0)
    {
      LOBYTE(v80) = v15;
      *(&v80 + 1) = v16;
      sub_BABD0();
      if (LOBYTE(v83[0]))
      {
        v18 = 12.0;
      }

      else
      {
        v18 = 16.0;
      }

      v60 = sub_BB2F0();
      if (qword_F8278 != -1)
      {
        swift_once();
      }

      v61 = qword_100C30;
      if (os_log_type_enabled(qword_100C30, v60))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v83[0] = v63;
        *v62 = 136315138;
        *&v80 = v18;
        *(&v80 + 1) = v57;
        type metadata accessor for CGSize(0);
        v64 = sub_BAFF0();
        v66 = sub_7A1D8(v64, v65, v83);

        *(v62 + 4) = v66;
        _os_log_impl(&dword_0, v61, v60, "currentStateOffset %s", v62, 0xCu);
        sub_28020(v63);
      }
    }
  }

  return v18;
}

uint64_t sub_9391C()
{
  sub_BAE30();
  sub_B9D80();
}

uint64_t sub_93988()
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v0 = AXLTSettingsManager.contentCategory.getter();
  sub_BB410();

  type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_F96C8);
  return sub_BABE0();
}

id sub_93A5C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_FB8C0);
  result = sub_BABD0();
  if (v7 != 4)
  {
    sub_BB320();
    result = AXLogLiveTranscription();
    if (result)
    {
      v5 = result;
      sub_B99F0();

      sub_2E50(&qword_FB868);
      v6 = sub_BABD0();
      __chkstk_darwin(v6);
      sub_BAE30();
      sub_B9D80();

      sub_915B8();
      LiveSpeechCaptionsViewsCoordinator.updateLiveCaptionsWindowState(_:)(LiveSpeechUIService_LiveSpeechCaptionsWindowState_pip);
      sub_9D610();
      return [*(a2 + *(v3 + 92)) idleSleepTimerDisabled:0];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_93C18()
{
  type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_FB8C0);
  result = sub_BABD0();
  if (LOBYTE(v2) == 3)
  {
    sub_BB320();
    result = AXLogLiveTranscription();
    if (result)
    {
      v1 = result;
      sub_B99F0();

      sub_2E50(&qword_FB868);
      sub_BABD0();
      return sub_93D34(1, v2, v3, v4, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_93D34(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (a1 == 4)
  {
    __chkstk_darwin(a1);
    sub_BAE30();
    sub_B9D80();

    sub_915B8();
    v8 = type metadata accessor for LiveCaptionsRootView();
    LiveSpeechCaptionsViewsCoordinator.updateLiveCaptionsWindowState(_:)(LiveSpeechUIService_LiveSpeechCaptionsWindowState_pip);
    sub_9D610();
    return [*(v5 + *(v8 + 92)) idleSleepTimerDisabled:0];
  }

  else
  {
    sub_9A8B8();
    v10 = type metadata accessor for LiveCaptionsRootView();
    LiveSpeechCaptionsViewsCoordinator.updateLiveCaptionsWindowState(_:)(LiveSpeechUIService_LiveSpeechCaptionsWindowState_compact);
    [*(v5 + *(v10 + 92)) idleSleepTimerDisabled:1];
    sub_2E50(&qword_F9C88);
    sub_BABD0();
    [v12 invalidate];

    sub_BABE0();
    sub_2E50(&qword_F96C8);
    sub_BABD0();
    v11 = sub_95574(a4, a5);
    __chkstk_darwin(v11);
    sub_BAE30();
    sub_B9D80();
  }
}

void sub_94060()
{
  sub_B9D10();
  v1 = v0;
  sub_B9D10();
  v3 = v2;
  sub_B9D20();
  v5 = v4;
  v6 = sub_B9D20();
  v8 = LiveSpeechStore.SpeechContext.init(text:highlightRange:)(v6, v1, v3, v5, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_FB868);
  sub_BABE0();
  sub_BABD0();
  sub_94198(v8, v10, v12, v14);
  AXLTCaptionsProvider.activate(_:)(1);
}

void sub_94198(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v101 = a2;
  v100 = a1;
  v94 = sub_B9A10();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v98 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BB2F0();
  if (qword_F8278 != -1)
  {
    swift_once();
  }

  sub_B99F0();
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = sub_BAFA0();
  v11 = [v9 integerForKey:v10];

  if (v11 >= 5)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v13 = type metadata accessor for LiveCaptionsRootView();
  v14 = v5 + v13[8];
  v16 = *(v14 + 8);
  LOBYTE(v104) = *v14;
  v15 = v104;
  *(&v104 + 1) = v16;
  LOBYTE(v109.width) = v12;
  sub_2E50(&qword_FB8C0);
  sub_BABE0();
  LOBYTE(v104) = v15;
  *(&v104 + 1) = v16;
  sub_BABD0();
  if (!LOBYTE(v109.width))
  {
    LOBYTE(v104) = v15;
    *(&v104 + 1) = v16;
    LOBYTE(v109.width) = 1;
    sub_BABE0();
  }

  v17 = sub_BAFA0();
  v18 = [v9 stringForKey:v17];

  v102 = v9;
  if (v18)
  {
    v19 = CGSizeFromString(v18);

    v20 = (v5 + v13[12]);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    *&v104 = *v20;
    *(&v104 + 1) = v22;
    v105 = v23;
    v109 = v19;
    sub_2E50(&qword_F8AE0);
    sub_BABE0();
    if (!AXDeviceIsPad())
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (qword_F8250 != -1)
  {
    swift_once();
  }

  v24 = -*&qword_100C08;
  v25 = (v5 + v13[12]);
  v22 = v25[1];
  v23 = v25[2];
  *&v104 = *v25;
  v21 = *&v104;
  *(&v104 + 1) = v22;
  v105 = v23;

  sub_2E50(&qword_F8AE0);
  sub_BABD0();
  v109.width = v21;
  v109.height = v22;
  v110 = v23;
  v107 = v24;
  v108 = v112;
  sub_BABE0();

  if (AXDeviceIsPad())
  {
LABEL_14:
    v26 = sub_BAFA0();
    v27 = [v102 stringForKey:v26];

    if (v27)
    {
      v28 = CGSizeFromString(v27);

      v29 = (v5 + v13[15]);
      v30 = v29[2];
      v104 = *v29;
      v105 = v30;
      v109 = v28;
      sub_2E50(&qword_F8AE0);
      sub_BABE0();
    }

    v31 = (v5 + v13[15]);
    v32 = *v31;
    v33 = v31[1];
    v34 = v31[2];
    *&v104 = *v31;
    *(&v104 + 1) = v33;
    v105 = v34;
    sub_2E50(&qword_F8AE0);
    sub_BABD0();
    if (v109.height == 0.0)
    {
      v35 = sub_9EA78();
      *&v104 = v32;
      *(&v104 + 1) = v33;
      v105 = v34;

      sub_BABD0();
      v109.width = v32;
      v109.height = v33;
      v110 = v34;
      v107 = v111;
      v108 = v35;
      sub_BABE0();
    }
  }

LABEL_18:
  v36 = sub_BAFA0();
  v37 = [v102 stringForKey:v36];

  if (v37)
  {
    v38 = CGSizeFromString(v37);

    v39 = (v5 + v13[11]);
    v40 = *v39;
    v41 = v39[2];
    v103 = v39[1];
    *&v104 = v40;
    *(&v104 + 1) = v103;
    v105 = v41;
    v109 = v38;
  }

  else
  {
    LOBYTE(v104) = v15;
    *(&v104 + 1) = v16;
    sub_BABD0();
    if (LOBYTE(v109.width) == 2)
    {
      v42 = (v5 + v13[15]);
      v44 = *(v42 + 1);
      v45 = v42[2];
      *&v104 = *v42;
      v43 = v104;
      *(&v104 + 1) = v44;
      v105 = v45;
      sub_2E50(&qword_F8AE0);
      sub_BABD0();
      v46 = (a3 - v109.width) * 0.5;
      *&v104 = v43;
      *(&v104 + 1) = v44;
      v105 = v45;
      sub_BABD0();
      v47 = (v5 + v13[11]);
      v40 = *v47;
      v41 = v47[2];
      v103 = v47[1];
      *&v104 = v40;
      *(&v104 + 1) = v103;
      v105 = v41;
      v109.width = v46;
      v109.height = a4 - v109.height + -24.0;
      goto LABEL_31;
    }

    LOBYTE(v104) = v15;
    *(&v104 + 1) = v16;
    sub_BABD0();
    if (LOBYTE(v109.width) && (LOBYTE(v104) = v15, *(&v104 + 1) = v16, sub_BABD0(), LOBYTE(v109.width) != 1))
    {
      LOBYTE(v104) = v15;
      *(&v104 + 1) = v16;
      sub_BABD0();
      if (LOBYTE(v109.width))
      {
        v50 = 24.0;
      }

      else
      {
        v50 = 32.0;
      }

      v49 = sub_9E83C(a3, a4) - v50;
      v48 = sub_9E960();
    }

    else
    {
      LOBYTE(v104) = v15;
      *(&v104 + 1) = v16;
      sub_BABD0();
      v49 = sub_9E5DC(LOBYTE(v109.width), v100, v101, a3, a4);
    }

    v51 = (v5 + v13[11]);
    v40 = *v51;
    v41 = v51[2];
    v103 = v51[1];
    *&v104 = v40;
    *(&v104 + 1) = v103;
    v105 = v41;
    v109.width = (a3 - v49) * 0.5;
    v109.height = a4 - v48 + -24.0;
  }

  sub_2E50(&qword_F8AE0);
LABEL_31:
  sub_BABE0();
  LOBYTE(v104) = v15;
  *(&v104 + 1) = v16;
  sub_BABD0();
  if (LOBYTE(v109.width) == 4)
  {
    width_low = 1;
  }

  else
  {
    LOBYTE(v104) = v15;
    *(&v104 + 1) = v16;
    sub_BABD0();
    width_low = LOBYTE(v109.width);
  }

  v53 = (v5 + v13[9]);
  v54 = *v53;
  v55 = *(v53 + 1);
  LOBYTE(v104) = v54;
  *(&v104 + 1) = v55;
  LOBYTE(v109.width) = width_low;
  sub_BABE0();
  LOBYTE(v104) = v15;
  *(&v104 + 1) = v16;
  sub_BABD0();
  if (LOBYTE(v109.width) == 4)
  {
    *&v104 = v21;
    *(&v104 + 1) = v22;
    v105 = v23;
    sub_2E50(&qword_F8AE0);
    sub_BABD0();
    height = v109.height;
    v57 = v103;
    *&v104 = v40;
    *(&v104 + 1) = v103;
    v105 = v41;

    sub_BABD0();
    v109.width = v40;
    v109.height = v57;
    v110 = v41;
    v107 = v111;
    v108 = height;
    sub_BABE0();

    sub_9D610();
    v58 = LiveSpeechUIService_LiveSpeechCaptionsWindowState_pip;
  }

  else
  {
    *&v104 = v40;
    *(&v104 + 1) = v103;
    v105 = v41;
    sub_2E50(&qword_F8AE0);
    sub_BABD0();
    v59 = v109.height;
    *&v104 = v21;
    *(&v104 + 1) = v22;
    v105 = v23;

    sub_BABD0();
    v109.width = v21;
    v109.height = v22;
    v110 = v23;
    v107 = v111;
    v108 = v59;
    sub_BABE0();

    sub_95574(a3, a4);
    [*(v5 + v13[23]) idleSleepTimerDisabled:1];
    v58 = LiveSpeechUIService_LiveSpeechCaptionsWindowState_compact;
  }

  LiveSpeechCaptionsViewsCoordinator.updateLiveCaptionsWindowState(_:)(v58);
  *&v104 = v21;
  *(&v104 + 1) = v22;
  v105 = v23;
  sub_2E50(&qword_F8AE0);
  sub_BABD0();
  width = v109.width;
  v60 = v109.height;
  if (qword_F8240 != -1)
  {
    swift_once();
  }

  v62 = 0.0;
  if (v60 >= 0.0)
  {
    v62 = v60;
  }

  if (a4 - *&qword_100BF8 >= v60)
  {
    v63 = v62;
  }

  else
  {
    v63 = a4 - *&qword_100BF8;
  }

  v99 = a3;
  if (a3 * 0.5 >= width)
  {
    if (qword_F8250 != -1)
    {
      swift_once();
    }

    v64 = -*&qword_100C08;
  }

  else
  {
    v64 = a3 - *&qword_100BF0;
  }

  *&v104 = v21;
  *(&v104 + 1) = v22;
  v105 = v23;
  v109.width = v64;
  v109.height = v63;
  sub_BABE0();
  v92 = v40;
  *&v104 = v40;
  *(&v104 + 1) = v103;
  v105 = v41;
  sub_BABD0();
  v65 = v109.width;
  v66 = v109.height;
  v67 = (v5 + v13[25]);
  v68 = *v67;
  v69 = *(v67 + 1);
  LOBYTE(v104) = v68;
  *(&v104 + 1) = v69;
  sub_2E50(&qword_FB820);
  sub_BABD0();
  v70 = 0.0;
  v71 = 0.0;
  if (LOBYTE(v109.width) != 1)
  {
    LOBYTE(v104) = v15;
    *(&v104 + 1) = v16;
    sub_BABD0();
    v70 = sub_9E5DC(LOBYTE(v109.width), v100, v101, v99, a4);
    v71 = v72;
  }

  if (qword_F8258 != -1)
  {
    swift_once();
  }

  v73 = static LiveSpeechCaptionsViewsCoordinator.shared;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v74 = v98;
  v95 = a4;
  if (v70 == 0.0 && v71 == 0.0)
  {
    v70 = *(v73 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
    v71 = *(v73 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
  }

  v75 = *(&v104 + 1);
  v97 = *&v104;
  v76 = v105;
  v96 = v106;
  sub_B95F0();
  v77 = sub_B9A00();
  v78 = sub_BB2F0();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *&v109.width = swift_slowAlloc();
    *v79 = 136315394;
    *&v104 = v65;
    *(&v104 + 1) = v66;
    type metadata accessor for CGSize(0);
    v80 = sub_BAFF0();
    v82 = sub_7A1D8(v80, v81, &v109);

    *(v79 + 4) = v82;
    *(v79 + 12) = 2080;
    *&v104 = v70;
    *(&v104 + 1) = v71;
    v83 = sub_BAFF0();
    v85 = sub_7A1D8(v83, v84, &v109);

    *(v79 + 14) = v85;
    _os_log_impl(&dword_0, v77, v78, "Calculate safeOffset offset: %s size: %s", v79, 0x16u);
    swift_arrayDestroy();

    (*(v93 + 8))(v98, v94);
  }

  else
  {

    (*(v93 + 8))(v74, v94);
  }

  if (qword_F8250 != -1)
  {
    swift_once();
  }

  v86 = *&qword_100C08;
  if (AXDeviceIsPad() && *(v73 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
  {
    v86 = 0.0;
  }

  HasJindo = AXDeviceHasJindo();
  v113.origin.x = v97;
  v113.origin.y = v75;
  v113.size.width = v76;
  v113.size.height = v96;
  if (v66 < v75 + CGRectGetHeight(v113) + -37.3333333 && HasJindo)
  {
    v114.origin.x = v97;
    v114.origin.y = v75;
    v114.size.width = v76;
    v114.size.height = v96;
    v66 = v75 + CGRectGetHeight(v114) + -37.3333333;
  }

  v88 = v99 - v70 + v86;
  if (v88 >= v65)
  {
    v88 = v65;
  }

  v89 = v95;
  v90 = sub_3C824(v88, v66, v70, v71, v100, v101, v99);
  if (v89 - v71 + -4.0 < v91)
  {
    v91 = v89 - v71 + -4.0;
  }

  if (v90 < -v86)
  {
    v90 = -v86;
  }

  *&v104 = v92;
  *(&v104 + 1) = v103;
  v105 = v41;
  if (v91 < 0.0)
  {
    v91 = 0.0;
  }

  v109.width = v90;
  v109.height = v91;

  sub_BABE0();
}

void sub_95028()
{
  type metadata accessor for LiveCaptionsRootView();
  AXLTCaptionsProvider.activate(_:)(0);
  sub_2E50(&qword_F9C88);
  sub_BABD0();
  [v0 invalidate];

  sub_BABD0();
  [v0 invalidate];
}

uint64_t sub_950F8()
{
  v0 = sub_BB2F0();
  if (qword_F8278 != -1)
  {
    swift_once();
  }

  v1 = qword_100C30;
  v2 = os_log_type_enabled(qword_100C30, v0);
  if (v2)
  {
    v3 = swift_slowAlloc();
    v11[0] = swift_slowAlloc();
    *v3 = 136315394;
    type metadata accessor for CGSize(0);
    v4 = sub_BAFF0();
    v6 = sub_7A1D8(v4, v5, v11);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    v7 = sub_BAFF0();
    v9 = sub_7A1D8(v7, v8, v11);

    *(v3 + 14) = v9;
    _os_log_impl(&dword_0, v1, v0, "ContainerSize old: %s new: %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  __chkstk_darwin(v2);
  sub_BAE30();
  sub_B9D80();
}

uint64_t sub_95334(double a1, double a2, double a3)
{
  sub_B9D10();
  v7 = v6;
  v8 = sub_B9D10();
  v10 = LiveSpeechStore.SpeechContext.init(text:highlightRange:)(v8, v7, v9, a1, a2);
  v12 = v11;
  type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_FB868);
  sub_BABE0();
  sub_2E50(&qword_FB8C0);
  result = sub_BABD0();
  if (LOBYTE(v10) == 4)
  {
    sub_2E50(&qword_F8AE0);
    sub_BABD0();
    sub_BABD0();
    sub_363B8(2 * (a3 * 0.5 < v10), v10, v12, a1);
    return sub_BABE0();
  }

  return result;
}

uint64_t sub_95500()
{
  type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_FB868);
  sub_BABD0();
  return sub_95574(v1, v2);
}

uint64_t sub_95574(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for LiveCaptionsRootView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = (v2 + *(v9 + 96));
  v11 = *v10;
  v12 = v10[1];
  aBlock = *v10;
  v22 = v12;
  sub_2E50(&qword_F9C88);
  sub_BABD0();
  [v27 invalidate];

  sub_BB2F0();
  if (qword_F8278 != -1)
  {
    swift_once();
  }

  sub_B99F0();
  v13 = objc_opt_self();
  sub_A2438(v3, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveCaptionsRootView);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_A2628(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for LiveCaptionsRootView);
  v16 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a1;
  v16[1] = a2;
  v25 = sub_A11AC;
  v26 = v15;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_4E790;
  v24 = &unk_F2848;
  v17 = _Block_copy(&aBlock);

  v18 = [v13 scheduledTimerWithTimeInterval:0 repeats:v17 block:60.0];
  _Block_release(v17);
  aBlock = v11;
  v22 = v12;
  v27 = v18;
  return sub_BABE0();
}

uint64_t sub_95828()
{
  type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_FB868);
  sub_BABD0();
  return sub_95574(v1, v2);
}

uint64_t sub_9589C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v39 = sub_BA440();
  __chkstk_darwin(v39);
  v38 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_B9C60();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2E50(&qword_F9BB8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - v8;
  v10 = type metadata accessor for LiveCaptionsRootView();
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  v14 = sub_2E50(&qword_FB818);
  v40 = *(v14 - 8);
  v41 = v14;
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  v17 = v2;
  v18 = v2 + *(v11 + 108);
  v19 = *v18;
  v20 = *(v18 + 8);
  LOBYTE(v47) = v19;
  v48 = v20;
  sub_2E50(&qword_FB820);
  sub_BABD0();
  if (v46)
  {
    sub_BAAC0();
    v21 = sub_BAB10();
    v35 = v9;
    v22 = v21;

    v47 = v22;
    v37 = v7;
    sub_A2438(v2, &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveCaptionsRootView);
    v36 = v6;
    v23 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v24 = swift_allocObject();
    sub_A2628(&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for LiveCaptionsRootView);
    sub_BA860();

    sub_BA550();
    v25 = v42;
    sub_B9C20();
    sub_A2438(v17, &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveCaptionsRootView);
    v26 = swift_allocObject();
    sub_A2628(&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v23, type metadata accessor for LiveCaptionsRootView);
    sub_A00C0(&qword_F9BF8, &type metadata accessor for DragGesture);
    sub_A00C0(&qword_F9C00, &type metadata accessor for DragGesture.Value);
    v27 = v35;
    v28 = v44;
    sub_BAD00();

    (*(v43 + 8))(v25, v28);
    sub_B9C80();
    v47 = &type metadata for Color;
    v48 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    sub_D150(&qword_F9C08, &qword_F9BB8);
    v29 = v27;
    v30 = v41;
    v31 = v36;
    sub_BA9F0();
    (*(v37 + 8))(v29, v31);
    (*(v40 + 8))(v16, v30);
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = sub_2E50(&qword_FB828);
  return (*(*(v33 - 8) + 56))(v45, v32, 1, v33);
}

uint64_t sub_95E94@<X0>(uint64_t a1@<X0>, uint64_t (*a2)()@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D6>)
{
  v142 = a2;
  v170 = a3;
  v169 = sub_2E50(&qword_FB9E0);
  __chkstk_darwin(v169);
  v154 = &v141 - v16;
  v17 = sub_2E50(&qword_FB9E8);
  __chkstk_darwin(v17 - 8);
  v144 = (&v141 - v18);
  v143 = sub_2E50(&qword_FB9F0);
  __chkstk_darwin(v143);
  v146 = &v141 - v19;
  v145 = sub_2E50(&qword_FB9F8);
  __chkstk_darwin(v145);
  v149 = &v141 - v20;
  v148 = sub_2E50(&qword_FBA00);
  __chkstk_darwin(v148);
  v152 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v147 = &v141 - v23;
  __chkstk_darwin(v24);
  v153 = &v141 - v25;
  v167 = sub_2E50(&qword_FBA08);
  __chkstk_darwin(v167);
  v168 = &v141 - v26;
  v141 = type metadata accessor for LiveSpeechCaptionsPipView();
  v162 = *(v141 - 8);
  __chkstk_darwin(v141);
  v163 = v27;
  v164 = &v141 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2E50(&qword_F8FA0);
  __chkstk_darwin(v28 - 8);
  v157 = &v141 - v29;
  v158 = sub_2E50(&qword_F8FA8);
  v156 = *(v158 - 8);
  __chkstk_darwin(v158);
  v155 = &v141 - v30;
  v161 = sub_2E50(&qword_F8FB0);
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v159 = &v141 - v31;
  v151 = sub_B9A10();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  *&v165 = &v141 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for LiveCaptionsRootView();
  v34 = *(v33 - 1);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v166 = sub_2E50(&qword_F8FB8);
  __chkstk_darwin(v166);
  v37 = &v141 - v36;
  v38 = a1 + v33[8];
  v39 = *v38;
  v40 = *(v38 + 8);
  LOBYTE(v172) = *v38;
  *(&v172 + 1) = v40;
  sub_2E50(&qword_FB8C0);
  sub_BABD0();
  if (v175 == 4)
  {
    v41 = (a1 + v33[19]);
    v42 = *v41;
    v43 = v41[1];
    v175 = v42;
    v176 = v43;
    sub_2E50(&qword_F9018);
    sub_BABF0();
    v148 = *(&v172 + 1);
    v149 = v172;
    v44 = v173;
    v45 = a1 + v33[12];
    v46 = *(v45 + 8);
    v47 = *(v45 + 16);
    v154 = *v45;
    v175 = v154;
    v176 = v46;
    v177 = v47;
    v153 = sub_2E50(&qword_F8AE0);
    sub_BABF0();
    v48 = v172;
    v50 = v173;
    v49 = v174;
    sub_A2438(a1, &v141 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveCaptionsRootView);
    v51 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v52 = swift_allocObject();
    sub_A2628(&v141 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v52 + v51, type metadata accessor for LiveCaptionsRootView);
    v53 = (v52 + ((v35 + v51 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v53 = a4;
    v53[1] = a5;
    v53[2] = a6;
    v53[3] = a7;
    type metadata accessor for CGSize(0);
    v175 = 0;
    v176 = 0;
    sub_BABC0();
    v54 = v173;
    *(v37 + 8) = v172;
    *(v37 + 18) = v54;
    *(v37 + 21) = 0x4024000000000000;
    v175 = 0;
    sub_2E50(&qword_F9020);
    sub_BABC0();
    *(v37 + 11) = v172;
    if (qword_F8240 != -1)
    {
      swift_once();
    }

    *(v37 + 24) = *&qword_100BF0 / 1.2;
    *(v37 + 25) = 0x3FF0000000000000;
    v55 = v141;
    v56 = *(v141 + 64);
    *&v37[v56] = swift_getKeyPath();
    sub_2E50(&qword_F8AF0);
    swift_storeEnumTagMultiPayload();
    v57 = *(v55 + 68);
    v58 = [objc_allocWithZone(type metadata accessor for ForeheadWindow()) init];
    *&v37[v57] = v58;
    v152 = *(v55 + 72);
    *&v37[v152] = 0;
    v59 = v58;
    v60 = v165;
    sub_B95F0();

    v61 = sub_B9A00();
    v62 = sub_BB2F0();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v147 = v47;
      v64 = v63;
      v65 = swift_slowAlloc();
      v145 = v59;
      v175 = v65;
      *v64 = 136315650;
      LOBYTE(v172) = 1;
      v66 = sub_BAFF0();
      v68 = sub_7A1D8(v66, v67, &v175);
      v146 = v52;
      v69 = v68;

      *(v64 + 4) = v69;
      *(v64 + 12) = 2080;
      v172 = v48;
      v173 = v50;
      v174 = v49;

      sub_2E50(&qword_F9110);
      v70 = sub_BAFF0();
      v72 = sub_7A1D8(v70, v71, &v175);

      *(v64 + 14) = v72;
      *(v64 + 22) = 2080;
      *&v172 = a4;
      *(&v172 + 1) = a5;
      v173 = a6;
      v174 = a7;
      type metadata accessor for CGRect(0);
      v73 = sub_BAFF0();
      v75 = sub_7A1D8(v73, v74, &v175);
      v52 = v146;

      *(v64 + 24) = v75;
      _os_log_impl(&dword_0, v61, v62, "Pip init %s iconOffset %s containerRect: %s", v64, 0x20u);
      swift_arrayDestroy();
      v59 = v145;

      v47 = v147;

      (*(v150 + 8))(COERCE_DOUBLE(*&v165), v151);
    }

    else
    {

      (*(v150 + 8))(COERCE_DOUBLE(*&v60), v151);
    }

    *v37 = 1;
    *(v37 + 8) = a4;
    *(v37 + 9) = a5;
    *(v37 + 10) = a6;
    *(v37 + 11) = a7;
    *(v37 + 12) = sub_A2308;
    *(v37 + 13) = v52;
    *(v37 + 14) = LiveSpeechStore.SpeechContext.init(text:highlightRange:);
    *(v37 + 15) = 0;
    v123 = v148;
    *(v37 + 1) = v149;
    *(v37 + 2) = v123;
    *(v37 + 3) = v44;
    *(v37 + 2) = v48;
    *(v37 + 6) = v50;
    *(v37 + 7) = v49;
    v124 = qword_F82A0;

    if (v124 != -1)
    {
      swift_once();
    }

    v125 = static AXLTCaptionsProvider.shared;
    v126 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
    swift_beginAccess();
    LOBYTE(v171) = *(v125 + v126);
    sub_BABC0();
    v127 = v176;
    v37[152] = v175;
    *(v37 + 20) = v127;
    swift_beginAccess();
    sub_2E50(&qword_FA700);
    v128 = v155;
    sub_B9AE0();
    swift_endAccess();

    v129 = [objc_opt_self() mainRunLoop];
    v175 = v129;
    v130 = sub_BB4B0();
    v131 = v157;
    (*(*(v130 - 8) + 56))(v157, 1, 1, v130);
    sub_35DD4(0, &qword_F9028);
    sub_D150(&qword_F9030, &qword_F8FA8);
    sub_A23D0();
    v132 = v159;
    v133 = v158;
    sub_B9B40();
    sub_C5E8(v131, &qword_F8FA0);

    (*(v156 + 8))(v128, v133);
    v134 = v164;
    sub_A2438(v37, v164, type metadata accessor for LiveSpeechCaptionsPipView);
    v135 = (*(v162 + 80) + 16) & ~*(v162 + 80);
    v136 = swift_allocObject();
    sub_A2628(v134, v136 + v135, type metadata accessor for LiveSpeechCaptionsPipView);
    sub_D150(&qword_F9040, &qword_F8FB0);
    v137 = v161;
    v138 = sub_B9B50();

    (*(v160 + 8))(v132, v137);
    *&v37[v152] = v138;
    v175 = v154;
    v176 = v46;
    v177 = v47;
    sub_BABD0();
    sub_3A414(v171);
    v139 = &v37[*(v166 + 36)];
    *v139 = v140;
    *(v139 + 1) = 0;
    sub_57A0(v37, v168, &qword_F8FB8);
    swift_storeEnumTagMultiPayload();
    sub_23210();
    sub_D150(&qword_FBA20, &qword_FB9E0);
    sub_BA430();
    return sub_C5E8(v37, &qword_F8FB8);
  }

  else
  {
    LOBYTE(v172) = v39;
    *(&v172 + 1) = v40;
    sub_BABD0();
    v76 = v175;
    if (qword_F8320 != -1)
    {
      swift_once();
    }

    v77 = static AXLTSettingsManager.shared;
    v165 = AXLTSettingsManager.buttonScaledHeight.getter() + 12.0 + 6.0;
    v78 = OBJC_IVAR___AXLTSettingsManager_backgroundColor;
    swift_beginAccess();
    v171 = *(v77 + v78);

    sub_BABC0();
    v79 = v175;
    v80 = v176;
    v81 = sub_BA320();
    v82 = v144;
    *v144 = v81;
    v82[1] = 0;
    *(v82 + 16) = 0;
    v83 = sub_2E50(&qword_FBA10);
    sub_97328(a1, v142, v82 + *(v83 + 44), a8, a9);
    v84 = sub_BA650();
    LOBYTE(v175) = v39;
    v176 = v40;
    sub_BABD0();
    if (LOBYTE(v171) == 3 && (sub_8E370() & 1) == 0 && qword_F8358 != -1)
    {
      swift_once();
    }

    sub_B9B90();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = v82;
    v94 = v146;
    sub_66B8(v93, v146, &qword_FB9E8);
    v95 = v94 + *(v143 + 36);
    *v95 = v84;
    *(v95 + 8) = v86;
    *(v95 + 16) = v88;
    *(v95 + 24) = v90;
    *(v95 + 32) = v92;
    *(v95 + 40) = 0;
    v96 = sub_BA670();
    LOBYTE(v175) = v39;
    v176 = v40;
    sub_BABD0();
    sub_B9B90();
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v104 = v103;
    v105 = v149;
    sub_66B8(v94, v149, &qword_FB9F0);
    v106 = v105 + *(v145 + 36);
    *v106 = v96;
    *(v106 + 8) = v98;
    *(v106 + 16) = v100;
    *(v106 + 24) = v102;
    *(v106 + 32) = v104;
    *(v106 + 40) = 0;
    v107 = sub_BA690();
    LOBYTE(v175) = v39;
    v176 = v40;
    sub_BABD0();
    sub_B9B90();
    v109 = v108;
    v111 = v110;
    v113 = v112;
    v115 = v114;
    v116 = v147;
    sub_66B8(v105, v147, &qword_FB9F8);
    v117 = v116 + *(v148 + 36);
    *v117 = v107;
    *(v117 + 8) = v109;
    *(v117 + 16) = v111;
    *(v117 + 24) = v113;
    *(v117 + 32) = v115;
    *(v117 + 40) = 0;
    v118 = v153;
    sub_66B8(v116, v153, &qword_FBA00);
    v119 = v152;
    sub_57A0(v118, v152, &qword_FBA00);
    v120 = v154;
    *v154 = v76;
    *(v120 + 8) = v165;
    *(v120 + 16) = v79;
    *(v120 + 24) = v80;
    v121 = sub_2E50(&qword_FBA18);
    sub_57A0(v119, v120 + *(v121 + 48), &qword_FBA00);
    swift_retain_n();
    swift_retain_n();
    sub_C5E8(v119, &qword_FBA00);

    sub_57A0(v120, v168, &qword_FB9E0);
    swift_storeEnumTagMultiPayload();
    sub_23210();
    sub_D150(&qword_FBA20, &qword_FB9E0);
    sub_BA430();

    sub_C5E8(v120, &qword_FB9E0);
    return sub_C5E8(v118, &qword_FBA00);
  }
}

id sub_97284(double a1, double a2, double a3, double a4)
{
  type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_FB8C0);
  sub_BABD0();
  return sub_93D34(v9, a1, a2, a3, a4);
}

uint64_t sub_97328@<X0>(uint64_t a1@<X0>, uint64_t (*a2)()@<X1>, uint64_t a3@<X8>, double a4@<D4>, double a5@<D6>)
{
  v77 = a3;
  v9 = sub_2E50(&qword_FBA28);
  __chkstk_darwin(v9 - 8);
  v79 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v65 - v12);
  v14 = sub_2E50(&qword_FBA30);
  v74 = *(v14 - 8);
  v75 = v14;
  __chkstk_darwin(v14);
  v71 = &v65 - v15;
  v16 = sub_2E50(&qword_FBA38);
  __chkstk_darwin(v16 - 8);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v65 - v20;
  v22 = sub_2E50(&qword_FBA40);
  __chkstk_darwin(v22 - 8);
  v78 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v65 - v25;
  v27 = *(type metadata accessor for LiveCaptionsRootView() + 32);
  v80 = a1;
  v28 = a1 + v27;
  v30 = *(v28 + 8);
  LOBYTE(v119) = *v28;
  v29 = v119;
  *(&v119 + 1) = v30;
  sub_2E50(&qword_FB8C0);
  sub_BABD0();
  v81 = v26;
  v76 = a2;
  v73 = v29;
  v72 = v30;
  if (v106 == 1 || (LOBYTE(v119) = v29, *(&v119 + 1) = v30, sub_BABD0(), v106 == 3) || (LOBYTE(v119) = v29, *(&v119 + 1) = v30, sub_BABD0(), v106 == 2))
  {
    v70 = v13;
    sub_97C24(a2, v21);
    LOBYTE(v119) = v29;
    *(&v119 + 1) = v30;
    sub_BABD0();
    if (v106 == 3)
    {
      sub_BADE0();
      sub_B9CF0();
      v68 = 0;
      v69 = v132;
      v66 = v136;
      v67 = v134;
      v65 = v137;
      LOBYTE(v106) = 1;
      LOBYTE(v96[0]) = v133;
      LOBYTE(v83) = v135;
      v31 = 1;
      v32 = v133;
      v33 = v135;
      LOBYTE(v119) = 0;
    }

    else
    {
      v69 = 0;
      v66 = 0;
      v67 = 0;
      v65 = 0;
      v33 = 0;
      v32 = 0;
      v31 = 0;
      v68 = 1;
    }

    sub_57A0(v21, v18, &qword_FBA38);
    v34 = v71;
    sub_57A0(v18, v71, &qword_FBA38);
    v35 = v34 + *(sub_2E50(&qword_FBA78) + 48);
    *v35 = 0;
    *(v35 + 8) = v31;
    *(v35 + 16) = v69;
    *(v35 + 24) = v32;
    v36 = v66;
    *(v35 + 32) = v67;
    *(v35 + 40) = v33;
    v37 = v65;
    *(v35 + 48) = v36;
    *(v35 + 56) = v37;
    *(v35 + 64) = v68;
    sub_C5E8(v21, &qword_FBA38);
    sub_C5E8(v18, &qword_FBA38);
    v26 = v81;
    sub_66B8(v34, v81, &qword_FBA30);
    v38 = 0;
    v13 = v70;
  }

  else
  {
    v38 = 1;
  }

  (*(v74 + 56))(v26, v38, 1, v75);
  *v13 = sub_BADC0();
  v13[1] = v39;
  v40 = sub_2E50(&qword_FBA48);
  sub_987C0(v76, v13 + *(v40 + 44));
  v41 = v73;
  LOBYTE(v119) = v73;
  v42 = v72;
  *(&v119 + 1) = v72;
  sub_BABD0();
  if (v106 == 2)
  {
    sub_99278(v96);
    sub_A27A4(v96);
  }

  else
  {
    LOBYTE(v119) = v41;
    *(&v119 + 1) = v42;
    sub_BABD0();
    if (v106 != 3)
    {
      sub_A2690(&v119);
      goto LABEL_14;
    }

    v43 = sub_BAAE0();
    sub_996C0(a4, v44, a5);
    sub_BADE0();
    sub_B9CF0();
    *&v82[22] = v139;
    *&v82[38] = v140;
    *&v82[6] = v138;
    *(v96 + 10) = *v82;
    *&v96[0] = v43;
    WORD4(v96[0]) = 256;
    *(&v96[1] + 10) = *&v82[16];
    *(&v96[2] + 10) = *&v82[32];
    *(&v96[3] + 1) = *(&v140 + 1);
    sub_A26B8(v96);
  }

  v116 = v103;
  v117 = v104;
  v118 = v105;
  v112 = v99;
  v113 = v100;
  v114 = v101;
  v115 = v102;
  v108 = v96[2];
  v109 = v96[3];
  v110 = v97;
  v111 = v98;
  v106 = v96[0];
  v107 = v96[1];
  sub_2E50(&qword_FBA60);
  sub_2E50(&qword_FB610);
  sub_A26C4();
  sub_8D464();
  sub_BA430();
  v116 = v129;
  v117 = v130;
  v118 = v131;
  v112 = v125;
  v113 = v126;
  v114 = v127;
  v115 = v128;
  v108 = v121;
  v109 = v122;
  v110 = v123;
  v111 = v124;
  v106 = v119;
  v107 = v120;
  LiveSpeechStore.SpeechContext.init(text:highlightRange:)(&v106, *&v120, *&v119, v45, v46);
  v129 = v116;
  v130 = v117;
  v131 = v118;
  v125 = v112;
  v126 = v113;
  v127 = v114;
  v128 = v115;
  v121 = v108;
  v122 = v109;
  v123 = v110;
  v124 = v111;
  v119 = v106;
  v120 = v107;
LABEL_14:
  v47 = v26;
  v48 = v78;
  sub_57A0(v47, v78, &qword_FBA40);
  v49 = v79;
  sub_57A0(v13, v79, &qword_FBA28);
  v92 = v128;
  v93 = v129;
  v94 = v130;
  v88 = v124;
  v89 = v125;
  v95 = v131;
  v90 = v126;
  v91 = v127;
  v85 = v121;
  v86 = v122;
  v87 = v123;
  v83 = v119;
  v84 = v120;
  v50 = v77;
  sub_57A0(v48, v77, &qword_FBA40);
  v51 = sub_2E50(&qword_FBA50);
  sub_57A0(v49, v50 + *(v51 + 48), &qword_FBA28);
  v52 = v50 + *(v51 + 64);
  v53 = v92;
  v103 = v93;
  v104 = v94;
  v54 = v88;
  v55 = v89;
  v56 = v91;
  v99 = v89;
  v100 = v90;
  v57 = v90;
  v101 = v91;
  v102 = v92;
  v59 = v86;
  v58 = v87;
  v97 = v87;
  v98 = v88;
  v96[2] = v85;
  v96[3] = v86;
  v60 = v85;
  v61 = v84;
  v62 = v83;
  v96[0] = v83;
  v96[1] = v84;
  v63 = v94;
  *(v52 + 160) = v93;
  *(v52 + 176) = v63;
  *(v52 + 96) = v55;
  *(v52 + 112) = v57;
  *(v52 + 128) = v56;
  *(v52 + 144) = v53;
  *(v52 + 32) = v60;
  *(v52 + 48) = v59;
  *(v52 + 64) = v58;
  *(v52 + 80) = v54;
  v105 = v95;
  *(v52 + 192) = v95;
  *v52 = v62;
  *(v52 + 16) = v61;
  sub_57A0(v96, &v106, &qword_FBA58);
  sub_C5E8(v13, &qword_FBA28);
  sub_C5E8(v81, &qword_FBA40);
  v116 = v93;
  v117 = v94;
  v112 = v89;
  v113 = v90;
  v118 = v95;
  v114 = v91;
  v115 = v92;
  v108 = v85;
  v109 = v86;
  v110 = v87;
  v111 = v88;
  v106 = v83;
  v107 = v84;
  sub_C5E8(&v106, &qword_FBA58);
  sub_C5E8(v49, &qword_FBA28);
  return sub_C5E8(v48, &qword_FBA40);
}

uint64_t sub_97C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a1;
  v104 = a2;
  v3 = type metadata accessor for LiveCaptionsRootView();
  v4 = v3 - 8;
  v108 = *(v3 - 8);
  v5 = *(v108 + 64);
  __chkstk_darwin(v3);
  v98 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v77 - v7;
  __chkstk_darwin(v9);
  v11 = &v77 - v10;
  __chkstk_darwin(v12);
  v14 = &v77 - v13;
  v15 = sub_2E50(&qword_FBA80);
  v102 = *(v15 - 8);
  v103 = v15;
  __chkstk_darwin(v15);
  v97 = &v77 - v16;
  v101 = sub_2E50(&qword_FBA88);
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v96 = &v77 - v17;
  v18 = v2 + *(v4 + 104);
  v19 = *v18;
  v20 = *(v18 + 8);
  LOBYTE(v109) = v19;
  *(&v109 + 1) = v20;
  sub_2E50(&qword_FBA90);
  sub_BABF0();
  v90 = *(&v122 + 1);
  v91 = v122;
  v89 = v123;
  v21 = v2 + *(v4 + 40);
  v23 = *(v21 + 8);
  LOBYTE(v122) = *v21;
  v22 = v122;
  *(&v122 + 1) = v23;
  sub_2E50(&qword_FB8C0);
  sub_BABD0();
  v87 = v109;
  LOBYTE(v122) = v22;
  *(&v122 + 1) = v23;
  sub_BABD0();
  v86 = v109;
  sub_A2438(v2, v14, type metadata accessor for LiveCaptionsRootView);
  v24 = *(v108 + 80);
  v25 = (v24 + 16) & ~v24;
  v88 = swift_allocObject();
  sub_A2628(v14, v88 + v25, type metadata accessor for LiveCaptionsRootView);
  sub_A2438(v2, v11, type metadata accessor for LiveCaptionsRootView);
  v26 = swift_allocObject();
  sub_A2628(v11, v26 + v25, type metadata accessor for LiveCaptionsRootView);
  v100 = v2;
  sub_A2438(v2, v8, type metadata accessor for LiveCaptionsRootView);
  v92 = v25 + v5;
  v93 = v24;
  v27 = swift_allocObject();
  v94 = v25;
  v85 = v27;
  sub_A2628(v8, v27 + v25, type metadata accessor for LiveCaptionsRootView);
  LOBYTE(v109) = 2;
  sub_2E50(&qword_FBA98);
  sub_BABC0();
  v84 = v122;
  v83 = *(&v122 + 1);
  if (qword_F8320 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v108 = static AXLTSettingsManager.shared;
    v28 = AXLTSettingsManager.contentCategory.getter();
    v29 = qword_F8378;
    v30 = v28;
    if (v29 != -1)
    {
      swift_once();
    }

    v31 = sub_B9E30();
    sub_3CB8(v31, qword_100DA8);
    v32 = sub_1F22C();
    v33 = sub_BB420();

    if (v33)
    {
      v34 = sub_1F22C();

      v30 = v34;
    }

    if (qword_F8318 != -1)
    {
      swift_once();
    }

    sub_64E70(buttonFontStyle, UIFontWeightBold);

    *&v109 = sub_BA720();
    sub_BABC0();
    v81 = *(&v122 + 1);
    v82 = v122;
    if (qword_F82A0 != -1)
    {
      swift_once();
    }

    v35 = static AXLTCaptionsProvider.shared;
    LOBYTE(v109) = AXLTCaptionsProvider.canClearCaptions.getter() & 1;
    sub_BABC0();
    v80 = v122;
    v79 = *(&v122 + 1);
    if (*(v35 + OBJC_IVAR___AXLTCaptionsProvider_isDeviceLocked))
    {
      v36 = 0;
      goto LABEL_38;
    }

    v78 = v26;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    v26 = v122;
    if (v122 >> 62)
    {
      break;
    }

    v37 = *(&dword_10 + (v122 & 0xFFFFFFFFFFFFFF8));
    if (!v37)
    {
      goto LABEL_36;
    }

LABEL_14:
    v105 = OBJC_IVAR___AXLTSettingsManager_transcribeCalls;
    swift_beginAccess();
    v38 = 0;
    v107 = v26 & 0xFFFFFFFFFFFFFF8;
    v106 = AXLTCallID;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v39 = sub_BB590();
      }

      else
      {
        if (v38 >= *(v107 + 16))
        {
          goto LABEL_33;
        }

        v39 = *(v26 + 8 * v38 + 32);
      }

      v40 = v39;
      v41 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      v42 = sub_B9700();
      v44 = v43;
      if (v42 == sub_B97B0() && v44 == v45)
      {
      }

      else
      {
        v46 = sub_BB700();

        if (v46)
        {
        }

        else
        {
          v47 = sub_B9700();
          v49 = v48;
          if (v47 == sub_BAFD0() && v49 == v50)
          {
          }

          else
          {
            v51 = sub_BB700();

            if ((v51 & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          if (*(v108 + v105))
          {
LABEL_31:
            v36 = 1;
            goto LABEL_37;
          }
        }
      }

      ++v38;
      if (v41 == v37)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  v37 = sub_BB650();
  if (v37)
  {
    goto LABEL_14;
  }

LABEL_36:
  v36 = 0;
LABEL_37:

  v26 = v78;
LABEL_38:
  if (v86 == 3)
  {
    v52 = 24.0;
  }

  else
  {
    v52 = 12.0;
  }

  v53 = v87 != 1;
  LOBYTE(v109) = v36;
  sub_BABC0();
  v54 = v122;
  v55 = *(&v122 + 1);
  AXLTSettingsManager.buttonScaledHeight.getter();
  sub_BADE0();
  sub_B9CF0();
  *&v109 = v91;
  *(&v109 + 1) = v90;
  LOBYTE(v110) = v89;
  BYTE1(v110) = v53;
  *(&v110 + 1) = v52;
  *&v111 = sub_A27AC;
  *(&v111 + 1) = v88;
  *&v112 = sub_A27C4;
  *(&v112 + 1) = v26;
  *&v113 = sub_A27DC;
  *(&v113 + 1) = v85;
  LOBYTE(v114) = v84;
  *(&v114 + 1) = v83;
  *&v115 = v82;
  *(&v115 + 1) = v81;
  LOBYTE(v116) = v80;
  *(&v116 + 1) = v79;
  LOBYTE(v117) = v54;
  *(&v117 + 1) = v55;
  v121 = 0;
  sub_B9C80();
  v56 = sub_2E50(&qword_FBAA0);
  v57 = sub_2E50(&qword_F9BC0);
  v58 = sub_A27F4(&qword_FBAA8, &qword_FBAA0, &unk_C2E78, sub_A28A4);
  v59 = sub_D150(&qword_F9C40, &qword_F9BC0);
  v60 = v97;
  sub_BA9F0();
  v132 = v119;
  v133 = v120;
  v134 = v121;
  v128 = v115;
  v129 = v116;
  v130 = v117;
  v131 = v118;
  v124 = v111;
  v125 = v112;
  v126 = v113;
  v127 = v114;
  v122 = v109;
  v123 = v110;
  sub_C5E8(&v122, &qword_FBAA0);
  v61 = v98;
  sub_A2438(v100, v98, type metadata accessor for LiveCaptionsRootView);
  v62 = swift_allocObject();
  sub_A2628(v61, v62 + v94, type metadata accessor for LiveCaptionsRootView);
  *&v109 = v56;
  *(&v109 + 1) = v57;
  *&v110 = v58;
  *(&v110 + 1) = v59;
  swift_getOpaqueTypeConformance2();
  v63 = v96;
  v64 = v103;
  sub_BA860();

  (*(v102 + 8))(v60, v64);
  v65 = sub_BA660();
  sub_B9B90();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v104;
  (*(v99 + 32))(v104, v63, v101);
  result = sub_2E50(&qword_FBA38);
  v76 = v74 + *(result + 36);
  *v76 = v65;
  *(v76 + 8) = v67;
  *(v76 + 16) = v69;
  *(v76 + 24) = v71;
  *(v76 + 32) = v73;
  *(v76 + 40) = 0;
  return result;
}

uint64_t sub_987C0@<X0>(uint64_t (*a1)()@<X0>, uint64_t a2@<X8>)
{
  v84 = a1;
  v98 = a2;
  v3 = type metadata accessor for LiveCaptionsRootView();
  v4 = v3 - 8;
  v85 = *(v3 - 8);
  __chkstk_darwin(v3);
  v100 = v5;
  v97 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_B9C10();
  v87 = *(v89 - 1);
  __chkstk_darwin(v89);
  v86 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_2E50(&qword_FB830);
  v91 = *(v96 - 8);
  __chkstk_darwin(v96);
  v90 = &v66 - v7;
  v93 = sub_2E50(&qword_FBAC8);
  v88 = *(v93 - 8);
  __chkstk_darwin(v93);
  v99 = &v66 - v8;
  v9 = sub_2E50(&qword_FBAD0);
  v94 = *(v9 - 8);
  v95 = v9;
  __chkstk_darwin(v9);
  v92 = &v66 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v83 = v103[0];
  v11 = v2 + *(v4 + 40);
  v13 = *(v11 + 8);
  LOBYTE(v103[0]) = *v11;
  v12 = v103[0];
  v103[1] = v13;
  sub_2E50(&qword_FB8C0);
  sub_BABD0();
  LODWORD(v82) = LOBYTE(v102[0]);
  v14 = (v2 + *(v4 + 80));
  v15 = *v14;
  v16 = v14[1];
  v102[0] = v15;
  v102[1] = v16;
  sub_2E50(&qword_F9018);
  sub_BABF0();
  v79 = v103[1];
  v80 = v103[0];
  v81 = v103[2];
  LOBYTE(v102[0]) = 0;
  sub_BABC0();
  v78 = LOBYTE(v103[0]);
  v77 = v103[1];
  LOBYTE(v102[0]) = 0;
  sub_BABC0();
  v76 = LOBYTE(v103[0]);
  v75 = v103[1];
  v102[0] = 0;
  sub_2E50(&qword_F9020);
  sub_BABC0();
  v73 = v103[1];
  v74 = v103[0];
  LOBYTE(v102[0]) = 1;
  sub_BABC0();
  v72 = LOBYTE(v103[0]);
  v17 = v103[1];
  v102[0] = 0;
  sub_BABC0();
  v70 = v103[0];
  v18 = v103[1];
  v71 = sub_BA670();
  LOBYTE(v103[0]) = v12;
  v103[1] = v13;
  sub_BABD0();
  if (LOBYTE(v102[0]) == 3)
  {
    sub_8E370();
  }

  sub_B9B90();
  v68 = v20;
  v69 = v19;
  v66 = v22;
  v67 = v21;
  v104 = 0;
  v23 = sub_BA690();
  LOBYTE(v103[0]) = v12;
  v103[1] = v13;
  sub_BABD0();
  if (LOBYTE(v102[0]) == 3)
  {
    sub_8E370();
  }

  v101 = v2;
  sub_B9B90();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v105 = 0;
  v32 = sub_BA650();
  LOBYTE(v103[0]) = v12;
  v103[1] = v13;
  sub_BABD0();
  if (LOBYTE(v102[0]))
  {
    LOBYTE(v103[0]) = v12;
    v103[1] = v13;
    sub_BABD0();
    if (LOBYTE(v102[0]) != 1)
    {
      LOBYTE(v103[0]) = v12;
      v103[1] = v13;
      sub_BABD0();
      if (LOBYTE(v102[0]) != 2 && qword_F8358 != -1)
      {
        swift_once();
      }
    }
  }

  sub_B9B90();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v106 = 0;
  v41 = sub_BA660();
  LOBYTE(v103[0]) = v12;
  v103[1] = v13;
  sub_BABD0();
  if (LOBYTE(v102[0]))
  {
    LOBYTE(v103[0]) = v12;
    v103[1] = v13;
    sub_BABD0();
  }

  sub_B9B90();
  v107 = 0;
  v102[0] = v83;
  LOBYTE(v102[1]) = v82;
  v102[2] = v80;
  v102[3] = v79;
  v102[4] = v81;
  LOBYTE(v102[5]) = v78;
  v102[6] = v77;
  LOBYTE(v102[7]) = v76;
  v102[8] = v75;
  *&v102[9] = xmmword_C28E0;
  v102[11] = v74;
  v102[12] = v73;
  LOBYTE(v102[13]) = v72;
  v102[14] = v17;
  v102[15] = v70;
  v102[16] = v18;
  v102[17] = 0x4028000000000000;
  LOBYTE(v102[18]) = 0;
  LOBYTE(v102[19]) = v71;
  v102[20] = v69;
  v102[21] = v68;
  v102[22] = v67;
  v102[23] = v66;
  LOBYTE(v102[24]) = 0;
  LOBYTE(v102[25]) = v23;
  v102[26] = v25;
  v102[27] = v27;
  v102[28] = v29;
  v102[29] = v31;
  LOBYTE(v102[30]) = 0;
  LOBYTE(v102[31]) = v32;
  v102[32] = v34;
  v102[33] = v36;
  v102[34] = v38;
  v102[35] = v40;
  LOBYTE(v102[36]) = 0;
  LOBYTE(v102[37]) = v41;
  v102[38] = v42;
  v102[39] = v43;
  v102[40] = v44;
  v102[41] = v45;
  LOBYTE(v102[42]) = 0;
  sub_B9C80();
  v82 = sub_2E50(&qword_FBAD8);
  v81 = sub_2E50(&qword_F9BC0);
  v46 = sub_A2A14();
  v83 = &protocol conformance descriptor for _EndedGesture<A>;
  v47 = sub_D150(&qword_F9C40, &qword_F9BC0);
  sub_BA940();
  memcpy(v103, v102, 0x151uLL);
  sub_C5E8(v103, &qword_FBAD8);
  v48 = v86;
  sub_B9C00();
  v49 = v97;
  v84 = type metadata accessor for LiveCaptionsRootView;
  sub_A2438(v101, v97, type metadata accessor for LiveCaptionsRootView);
  v85 = *(v85 + 80);
  v50 = (v85 + 16) & ~v85;
  v51 = swift_allocObject();
  v52 = v49;
  sub_A2628(v49, v51 + v50, type metadata accessor for LiveCaptionsRootView);
  v53 = swift_allocObject();
  *(v53 + 16) = sub_A32CC;
  *(v53 + 24) = v51;
  v55 = v89;
  v54 = v90;
  sub_BACF0();

  (*(v87 + 8))(v48, v55);
  sub_B9C80();
  v102[0] = v82;
  v102[1] = v81;
  v102[2] = v46;
  v102[3] = v47;
  v89 = &opaque type descriptor for <<opaque return type of View.simultaneousGesture<A>(_:including:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = sub_D150(&qword_FB8B8, &qword_FB830);
  v58 = v92;
  v59 = v93;
  v60 = v96;
  v61 = v99;
  sub_BA940();
  (*(v91 + 8))(v54, v60);
  (*(v88 + 8))(v61, v59);
  v62 = v84;
  sub_A2438(v101, v52, v84);
  v63 = swift_allocObject();
  sub_A2628(v52, v63 + v50, v62);
  v102[0] = v59;
  v102[1] = v60;
  v102[2] = OpaqueTypeConformance2;
  v102[3] = v57;
  swift_getOpaqueTypeConformance2();
  v64 = v95;
  sub_BA860();

  return (*(v94 + 8))(v58, v64);
}

__n128 sub_99278@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LiveCaptionsRootView();
  v46 = *(v3 - 1);
  __chkstk_darwin(v3);
  v47 = v4;
  v48 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v1 + *(v5 + 68));
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  v11 = v6[4];
  *&v58 = *v6;
  *(&v58 + 1) = v8;
  v59 = v9;
  v60 = v10;
  v61 = v11;
  sub_2E50(&qword_FB868);
  sub_BABD0();
  v12 = v52;
  v13 = (v1 + v3[16]);
  v14 = *v13;
  v15 = v13[1];
  *&v58 = *v13;
  *(&v58 + 1) = v15;
  sub_2E50(&qword_FA710);
  sub_BABD0();
  if (*&v51 == 0.0)
  {
    *&v58 = v7;
    *(&v58 + 1) = v8;
    v59 = v9;
    v60 = v10;
    v61 = v11;
    sub_BABD0();
    v16 = *(&v52 + 1);
  }

  else
  {
    *&v58 = v14;
    *(&v58 + 1) = v15;
    sub_BABD0();
    v16 = v51;
  }

  v17 = v1 + v3[15];
  v18 = *(v17 + 16);
  v51 = *v17;
  *&v52 = v18;
  sub_2E50(&qword_F8AE0);
  sub_BABF0();
  v19 = *(&v58 + 1);
  v45 = v58;
  v20 = v59;
  v21 = v60;
  *&v58 = v7;
  *(&v58 + 1) = v8;
  v59 = v9;
  v60 = v10;
  v61 = v11;
  sub_BABD0();
  v22 = v51;
  v23 = v52;
  v24 = v1 + v3[8];
  v25 = *v24;
  v26 = *(v24 + 8);
  LOBYTE(v58) = v25;
  *(&v58 + 1) = v26;
  sub_2E50(&qword_FB8C0);
  sub_BABD0();
  v27 = sub_9E5DC(v51, *&v22, *(&v22 + 1), *&v23, *(&v23 + 1));
  v29 = v28;
  v30 = v1 + v3[11];
  v31 = *(v30 + 16);
  v58 = *v30;
  v59 = v31;
  sub_BABD0();
  v32 = v51;
  v33 = v48;
  sub_A2438(v1, v48, type metadata accessor for LiveCaptionsRootView);
  v34 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v35 = swift_allocObject();
  sub_A2628(v33, v35 + v34, type metadata accessor for LiveCaptionsRootView);
  type metadata accessor for CGSize(0);
  v51 = 0uLL;
  sub_BABC0();
  v51 = xmmword_C28F0;
  LOBYTE(v52) = 0;
  *(&v52 + 1) = *v50;
  DWORD1(v52) = *&v50[3];
  *(&v52 + 1) = v45;
  *&v53 = v19;
  *(&v53 + 1) = v20;
  *&v54 = v21;
  *(&v54 + 1) = v27;
  *v55 = v29;
  *&v55[8] = v32;
  *&v55[24] = v12;
  *v56 = v16;
  *&v56[8] = v58;
  *&v56[24] = v59;
  *&v57 = sub_A29A8;
  *(&v57 + 1) = v35;
  v58 = xmmword_C28F0;
  LOBYTE(v59) = 0;
  HIDWORD(v59) = *&v50[3];
  *(&v59 + 1) = *v50;
  v60 = v45;
  v61 = v19;
  v62 = v20;
  v63 = v21;
  v64 = v27;
  v65 = v29;
  v66 = v32;
  v67 = v12;
  v68 = __PAIR128__(*&v56[8], v16);
  v69 = *&v56[16];
  v70 = sub_A29A8;
  v71 = v35;
  sub_81CF4(&v51, v49);
  sub_A29C0(&v58);
  sub_BADE0();
  sub_B9CF0();
  v36 = *&v55[16];
  v37 = *&v56[16];
  *(a1 + 96) = *v56;
  *(a1 + 112) = v37;
  v38 = v57;
  v39 = v52;
  v40 = v54;
  *(a1 + 32) = v53;
  *(a1 + 48) = v40;
  *(a1 + 64) = *v55;
  *(a1 + 80) = v36;
  *a1 = v51;
  *(a1 + 16) = v39;
  v41 = v49[0];
  v42 = v49[1];
  *(a1 + 128) = v38;
  *(a1 + 144) = v41;
  result = v49[2];
  *(a1 + 160) = v42;
  *(a1 + 176) = result;
  return result;
}

double sub_996C0(double a1, double a2, double a3)
{
  type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_FA710);
  sub_BABD0();
  if (v9 != 0.0)
  {
    v5 = [objc_opt_self() mainScreen];
    [v5 bounds];
    v7 = v6;

    sub_BABD0();
    a3 = v7 - v9;
  }

  return a3 + a1;
}

uint64_t sub_997B0(double a1, double a2, double a3, double a4)
{
  v8 = sub_B9F50();
  __chkstk_darwin(v8);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_99900(v10, a1, a2, a3, a4);
  sub_2E50(&qword_FB918);
  sub_A1530();
  sub_A00C0(&qword_F8E40, &type metadata accessor for RoundedRectangle);
  sub_BA810();
  return sub_A1E88(v10, &type metadata accessor for RoundedRectangle);
}

uint64_t sub_99900@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_FB8C0);
  sub_BABD0();
  if (v18 == 4)
  {
    if (qword_F8248 != -1)
    {
      swift_once();
    }

    v10 = *&qword_100C00;
  }

  else
  {
    sub_BABD0();
    if (v18 == 3)
    {
      v11 = COERCE_DOUBLE(sub_8E204());
      if (v12)
      {
        v10 = 24.0;
      }

      else
      {
        v10 = v11;
      }
    }

    else if (_UISolariumEnabled())
    {
      sub_BABD0();
      sub_9E5DC(v18, a2, a3, a4, a5);
      AXCornerRadiusForBackgroundWithSize();
      v10 = v13;
    }

    else
    {
      sub_BABD0();
      v10 = 24.0;
    }
  }

  v14 = *(sub_B9F50() + 20);
  v15 = enum case for RoundedCornerStyle.continuous(_:);
  v16 = sub_BA270();
  result = (*(*(v16 - 8) + 104))(a1 + v14, v15, v16);
  *a1 = v10;
  a1[1] = v10;
  return result;
}

uint64_t sub_99AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_BAD70();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = (a2 + *(type metadata accessor for LiveCaptionsRootView() + 32));
  v11 = *v10;
  v12 = *(v10 + 1);
  v16[16] = v11;
  v17 = v12;
  sub_2E50(&qword_FB8C0);
  sub_BABD0();
  if (v16[15] == 3)
  {
    sub_BAD60();
  }

  else
  {
    sub_BAD40();
  }

  v13 = sub_BA640();
  v14 = a3 + *(sub_2E50(&qword_FB970) + 36);
  (*(v7 + 32))(v14, v9, v6);
  *(v14 + *(sub_2E50(&qword_FB540) + 36)) = v13;
  return sub_57A0(a1, a3, &qword_FB918);
}

double sub_99C7C()
{
  type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_FB8C0);
  sub_BABD0();
  result = 1.0;
  if (LOBYTE(v1) == 4)
  {
    sub_2E50(&qword_F9018);
    sub_BABD0();
    return v1;
  }

  return result;
}

uint64_t sub_99D3C(uint64_t a1)
{
  v2 = type metadata accessor for LiveCaptionsRootView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = *(a1 + *(v5 + 120));
  sub_A2438(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveCaptionsRootView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_A2628(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for LiveCaptionsRootView);
  v9 = (v6 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsAdjustFrame);
  *v9 = sub_A1DF0;
  v9[1] = v8;
}

unint64_t sub_99E6C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = type metadata accessor for LiveCaptionsRootView();
  __chkstk_darwin(v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BB2F0();
  if (qword_F8278 != -1)
  {
    swift_once();
  }

  v12 = qword_100C30;
  sub_A2438(a1, v10, type metadata accessor for LiveCaptionsRootView);
  if (!os_log_type_enabled(v12, v11))
  {
    sub_A1E88(v10, type metadata accessor for LiveCaptionsRootView);
    goto LABEL_16;
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v32 = v14;
  *v13 = 136315138;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v15 = v33;
  if (!(v33 >> 62))
  {
    v16 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
    if (v16)
    {
      goto LABEL_6;
    }

LABEL_14:

    v21 = 0;
    v23 = 0;
    goto LABEL_15;
  }

  v16 = sub_BB650();
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_6:
  v17 = __OFSUB__(v16, 1);
  result = v16 - 1;
  if (v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
LABEL_20:
    v19 = sub_BB590();
    goto LABEL_11;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (result >= *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v19 = *(v15 + 8 * result + 32);
LABEL_11:
  v20 = v19;

  v21 = sub_B96D0();
  v23 = v22;

LABEL_15:
  v33 = v21;
  v34 = v23;
  sub_2E50(&qword_F86B0);
  v24 = sub_BAFF0();
  v26 = v25;
  sub_A1E88(v10, type metadata accessor for LiveCaptionsRootView);
  v27 = sub_7A1D8(v24, v26, &v32);

  *(v13 + 4) = v27;
  _os_log_impl(&dword_0, v12, v11, "RootView: onChange provider.captions %s", v13, 0xCu);
  sub_28020(v14);

LABEL_16:
  v28 = a1 + *(v8 + 32);
  v29 = *v28;
  v30 = *(v28 + 8);
  LOBYTE(v33) = v29;
  v34 = v30;
  sub_2E50(&qword_FB8C0);
  result = sub_BABD0();
  if (v32 != 4)
  {
    return sub_95574(a4, a5);
  }

  return result;
}

uint64_t sub_9A1D0(CGFloat *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = sub_B9A10();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v73 = a1[1];
  v17 = a1[2];
  v18 = a1[3];
  v19 = type metadata accessor for LiveCaptionsRootView();
  v20 = (a2 + v19[11]);
  v21 = *v20;
  v22 = v20[2];
  v74 = v20[1];
  v75 = v21;
  *&v81 = v21;
  *(&v81 + 1) = v74;
  v82 = v22;
  v23 = sub_2E50(&qword_F8AE0);
  sub_BABD0();
  v77 = v80;
  v24 = v79;
  v25 = (a2 + v19[25]);
  v26 = *v25;
  v27 = *(v25 + 1);
  LOBYTE(v81) = v26;
  *(&v81 + 1) = v27;
  sub_2E50(&qword_FB820);
  sub_BABD0();
  v28 = 0.0;
  v29 = 0.0;
  if (v79 != 1)
  {
    v30 = (a2 + v19[8]);
    v31 = *v30;
    v32 = *(v30 + 1);
    LOBYTE(v81) = v31;
    *(&v81 + 1) = v32;
    sub_2E50(&qword_FB8C0);
    sub_BABD0();
    v28 = sub_9E5DC(v79, a3, a4, a5, a6);
  }

  if (qword_F8258 != -1)
  {
    *&v78 = v28;
    *(&v78 + 1) = v29;
    swift_once();
    v29 = *(&v78 + 1);
    v28 = *&v78;
  }

  v33 = static LiveSpeechCaptionsViewsCoordinator.shared;
  if (v28 == 0.0 && v29 == 0.0)
  {
    v28 = *(static LiveSpeechCaptionsViewsCoordinator.shared + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
    v29 = *(static LiveSpeechCaptionsViewsCoordinator.shared + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
  }

  *&v78 = v28;
  *(&v78 + 1) = v29;
  sub_B95F0();
  v34 = sub_B9A00();
  v35 = sub_BB2F0();
  v36 = os_log_type_enabled(v34, v35);
  v76 = a5;
  v72 = *&v24;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v68 = v15;
    v38 = v37;
    v39 = swift_slowAlloc();
    v69 = v33;
    v79 = v39;
    *v38 = 136315394;
    *&v81 = v24;
    *(&v81 + 1) = v77;
    type metadata accessor for CGSize(0);
    v71 = v22;
    v40 = sub_BAFF0();
    v67 = v12;
    v70 = v23;
    v42 = v13;
    v43 = sub_7A1D8(v40, v41, &v79);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2080;
    v81 = v78;
    v44 = sub_BAFF0();
    v46 = sub_7A1D8(v44, v45, &v79);

    *(v38 + 14) = v46;
    v22 = v71;
    _os_log_impl(&dword_0, v34, v35, "Calculate safeOffset offset: %s size: %s", v38, 0x16u);
    swift_arrayDestroy();
    v33 = v69;

    (*(v42 + 8))(v68, v67);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v47 = v18;
  v48 = a6;
  if (qword_F8250 != -1)
  {
    swift_once();
  }

  v49 = a3;
  v50 = *&qword_100C08;
  v51 = a4;
  if (AXDeviceIsPad() && *(v33 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
  {
    v50 = 0.0;
  }

  HasJindo = AXDeviceHasJindo();
  v83.origin.x = v16;
  v53 = v73;
  v83.origin.y = v73;
  v83.size.width = v17;
  v83.size.height = v47;
  Height = CGRectGetHeight(v83);
  v55 = v77;
  if (v77 < v53 + Height + -37.3333333 && HasJindo != 0)
  {
    v84.origin.x = v16;
    v84.origin.y = v53;
    v84.size.width = v17;
    v84.size.height = v47;
    v55 = v53 + CGRectGetHeight(v84) + -37.3333333;
  }

  v57 = *(&v78 + 1);
  v58 = v76 - *&v78 + v50;
  if (v58 >= v72)
  {
    v58 = v72;
  }

  v59 = sub_3C824(v58, v55, *&v78, *(&v78 + 1), v49, v51, v76);
  if (v48 - v57 + -4.0 < v60)
  {
    v60 = v48 - v57 + -4.0;
  }

  if (v59 < -v50)
  {
    v59 = -v50;
  }

  v62 = v74;
  v61 = v75;
  *&v81 = v75;
  *(&v81 + 1) = v74;
  v82 = v22;
  if (v60 < 0.0)
  {
    v60 = 0.0;
  }

  *&v79 = v59;
  v80 = v60;
  sub_BABE0();
  *&v81 = v61;
  *(&v81 + 1) = v62;
  v82 = v22;
  sub_BABD0();
  v63 = (a2 + v19[13]);
  v64 = *(v63 + 2);
  v81 = *v63;
  v82 = v64;
  return sub_BABE0();
}

id sub_9A780()
{
  type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_FB8C0);
  sub_BABD0();
  if (LOBYTE(v2) == 3 || (sub_BABD0(), LOBYTE(v2) == 2) || (sub_BABD0(), LOBYTE(v2) != 1))
  {
    v0 = 1;
  }

  else if (AXDeviceIsPad())
  {
    v0 = 2;
  }

  else
  {
    v0 = 3;
  }

  sub_2E50(&qword_FB868);
  sub_BABD0();
  return sub_93D34(v0, v2, v3, v4, v5);
}

BOOL sub_9A8B8()
{
  type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_FB820);
  v0 = sub_BABD0();
  if (v2)
  {
    __chkstk_darwin(v0);
    sub_BAE30();
    sub_B9D80();
  }

  return v2 != 0;
}

id sub_9A9A8()
{
  type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_FB8C0);
  sub_BABD0();
  if (LOBYTE(v2) == 1)
  {
    if (AXDeviceIsPad())
    {
      v0 = 2;
    }

    else
    {
      v0 = 3;
    }
  }

  else
  {
    v0 = 1;
  }

  sub_2E50(&qword_FB868);
  sub_BABD0();
  return sub_93D34(v0, v2, v3, v4, v5);
}

id sub_9AA8C(uint64_t a1)
{
  v2 = type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_FB868);
  sub_BABD0();
  sub_BAE30();
  sub_B9D80();

  sub_915B8();
  LiveSpeechCaptionsViewsCoordinator.updateLiveCaptionsWindowState(_:)(LiveSpeechUIService_LiveSpeechCaptionsWindowState_pip);
  sub_9D610();
  return [*(a1 + *(v2 + 92)) idleSleepTimerDisabled:0];
}

uint64_t sub_9AB88(uint64_t a1)
{
  v66 = sub_B9A10();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v3 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LiveCaptionsRootView();
  v5 = (a1 + v4[11]);
  v6 = v5[1];
  v7 = v5[2];
  v73 = *v5;
  v86 = v73;
  v87 = v6;
  v72 = v6;
  v88 = v7;
  sub_2E50(&qword_F8AE0);
  sub_BABD0();
  v8 = v82;
  v78 = v83;
  v9 = (a1 + v4[17]);
  v10 = v9[1];
  v11 = v9[2];
  v12 = v9[3];
  v13 = *(v9 + 4);
  v71 = *v9;
  v86 = v71;
  v87 = v10;
  v70 = v10;
  v69 = v11;
  v88 = v11;
  v89 = v12;
  v68 = v12;
  v90 = v13;
  sub_2E50(&qword_FB868);
  sub_BABD0();
  v14 = v82;
  v15 = v83;
  v17 = v84;
  v16 = v85;
  v18 = (a1 + v4[25]);
  v19 = *v18;
  v20 = v18[1];
  LOBYTE(v86) = v19;
  v87 = v20;
  sub_2E50(&qword_FB820);
  sub_BABD0();
  v21 = 0.0;
  v22 = 0.0;
  if (LOBYTE(v82) != 1)
  {
    v23 = (a1 + v4[8]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v86) = v24;
    v87 = v25;
    sub_2E50(&qword_FB8C0);
    sub_BABD0();
    v21 = sub_9E5DC(LOBYTE(v82), v14, v15, v17, v16);
    v22 = v26;
  }

  if (qword_F8258 != -1)
  {
    swift_once();
  }

  v77 = static LiveSpeechCaptionsViewsCoordinator.shared;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v21 == 0.0 && v22 == 0.0)
  {
    v21 = *(v77 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
    v22 = *(v77 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
  }

  v27 = v87;
  v76 = v86;
  v75 = v88;
  v74 = v89;
  sub_B95F0();
  v28 = sub_B9A00();
  v29 = v3;
  v30 = sub_BB2F0();
  v31 = os_log_type_enabled(v28, v30);
  v67 = v15;
  v64 = v22;
  if (v31)
  {
    v32 = swift_slowAlloc();
    *&v60 = COERCE_DOUBLE(swift_slowAlloc());
    v82 = *&v60;
    *v32 = 136315394;
    v86 = v8;
    v87 = v78;
    type metadata accessor for CGSize(0);
    v63 = v7;
    v33 = sub_BAFF0();
    v61 = v29;
    v35 = sub_7A1D8(v33, v34, &v82);
    v62 = a1;
    v36 = v35;

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    v86 = v21;
    v87 = v22;
    v37 = sub_BAFF0();
    v39 = sub_7A1D8(v37, v38, &v82);
    a1 = v62;

    *(v32 + 14) = v39;
    v7 = v63;
    _os_log_impl(&dword_0, v28, v30, "Calculate safeOffset offset: %s size: %s", v32, 0x16u);
    swift_arrayDestroy();

    (*(v65 + 8))(v61, v66);
  }

  else
  {

    (*(v65 + 8))(v29, v66);
  }

  v40 = v77;
  v41 = v17;
  v42 = v14;
  if (qword_F8250 != -1)
  {
    swift_once();
  }

  v43 = v16;
  v44 = *&qword_100C08;
  if (AXDeviceIsPad() && *(v40 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
  {
    v44 = 0.0;
  }

  HasJindo = AXDeviceHasJindo();
  v91.origin.x = v76;
  v91.origin.y = v27;
  v91.size.width = v75;
  v91.size.height = v74;
  Height = CGRectGetHeight(v91);
  v47 = v78;
  if (v78 < v27 + Height + -37.3333333 && HasJindo)
  {
    v92.origin.x = v76;
    v92.origin.y = v27;
    v92.size.width = v75;
    v92.size.height = v74;
    v47 = v27 + CGRectGetHeight(v92) + -37.3333333;
  }

  v48 = v41 - v21 + v44;
  if (v48 >= v8)
  {
    v48 = v8;
  }

  v49 = v64;
  v50 = sub_3C824(v48, v47, v21, v64, v42, v67, v41);
  if (v43 - v49 + -4.0 < v51)
  {
    v51 = v43 - v49 + -4.0;
  }

  if (v50 < -v44)
  {
    v50 = -v44;
  }

  v86 = v73;
  v87 = v72;
  v88 = v7;
  if (v51 < 0.0)
  {
    v51 = 0.0;
  }

  v82 = v50;
  v83 = v51;
  sub_BABE0();
  v86 = v71;
  v87 = v70;
  v88 = v69;
  v89 = v68;
  v90 = v13;
  sub_BABD0();
  sub_9B2B4(v82, v83, v84, v85);
  v53 = v52;
  v54 = (a1 + v4[15]);
  v56 = v54[1];
  v57 = v54[2];
  v86 = *v54;
  v55 = v86;
  v87 = v56;
  v88 = v57;

  sub_BABD0();
  v82 = v55;
  v83 = v56;
  v84 = v57;
  v79 = v81;
  v80 = v53;
  sub_BABE0();
}

void sub_9B2B4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_B9A10();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LiveCaptionsRootView();
  v15 = (v4 + v14[11]);
  v16 = v15[2];
  v72 = *v15;
  v73 = v16;
  sub_2E50(&qword_F8AE0);
  sub_BABD0();
  v70 = v76;
  v71 = v75;
  v17 = (v4 + v14[15]);
  v18 = *(v17 + 1);
  v19 = v17[2];
  v64 = *v17;
  *&v72 = v64;
  *(&v72 + 1) = v18;
  v63 = v18;
  v73 = v19;
  sub_BABD0();
  v21 = v75;
  v20 = v76;
  v22 = (v4 + v14[25]);
  v23 = *v22;
  v24 = *(v22 + 1);
  LOBYTE(v72) = v23;
  *(&v72 + 1) = v24;
  sub_2E50(&qword_FB820);
  sub_BABD0();
  v25 = 0.0;
  v26 = 0.0;
  if (LOBYTE(v75) != 1)
  {
    if (v21 == 0.0)
    {
      v25 = v21;
      v26 = v20;
      if (v20 == 0.0)
      {
        v27 = (v4 + v14[8]);
        v28 = *v27;
        v29 = *(v27 + 1);
        LOBYTE(v72) = v28;
        *(&v72 + 1) = v29;
        sub_2E50(&qword_FB8C0);
        sub_BABD0();
        v25 = sub_9E5DC(LOBYTE(v75), a1, a2, a3, a4);
        v26 = v30;
      }
    }

    else
    {
      v25 = v21;
      v26 = v20;
    }
  }

  if (qword_F8258 != -1)
  {
    swift_once();
  }

  v69 = static LiveSpeechCaptionsViewsCoordinator.shared;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v66 = a3;
  v65 = a1;
  if (v25 == 0.0 && v26 == 0.0)
  {
    v25 = *(v69 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
    v26 = *(v69 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
  }

  v31 = *(&v72 + 1);
  v32 = v73;
  v67 = v74;
  v68 = *&v72;
  sub_B95F0();
  v33 = sub_B9A00();
  v34 = sub_BB2F0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *&v36 = COERCE_DOUBLE(swift_slowAlloc());
    v60 = v13;
    v75 = *&v36;
    *v35 = 136315394;
    *&v72 = v71;
    *(&v72 + 1) = v70;
    type metadata accessor for CGSize(0);
    v62 = v19;
    v37 = sub_BAFF0();
    v59 = v10;
    v61 = v14;
    v39 = v11;
    v40 = sub_7A1D8(v37, v38, &v75);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    *&v72 = v25;
    *(&v72 + 1) = v26;
    v41 = sub_BAFF0();
    v43 = sub_7A1D8(v41, v42, &v75);
    v14 = v61;

    *(v35 + 14) = v43;
    v19 = v62;
    _os_log_impl(&dword_0, v33, v34, "Calculate safeOffset offset: %s size: %s", v35, 0x16u);
    swift_arrayDestroy();

    (*(v39 + 8))(v60, v59);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v44 = a2;
  v45 = v69;
  if (qword_F8250 != -1)
  {
    swift_once();
  }

  v46 = *&qword_100C08;
  if (AXDeviceIsPad() && *(v45 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
  {
    v46 = 0.0;
  }

  HasJindo = AXDeviceHasJindo();
  v77.size.height = v67;
  v77.origin.x = v68;
  v77.origin.y = v31;
  v77.size.width = v32;
  Height = CGRectGetHeight(v77);
  v49 = v70;
  if (v70 < v31 + Height + -37.3333333 && HasJindo)
  {
    v78.size.height = v67;
    v78.origin.x = v68;
    v78.origin.y = v31;
    v78.size.width = v32;
    v49 = v31 + CGRectGetHeight(v78) + -37.3333333;
  }

  v50 = v66 - v25 + v46;
  if (v50 >= v71)
  {
    v50 = v71;
  }

  sub_3C824(v50, v49, v25, v26, v65, v44, v66);
  v52 = a4 - v26 + -4.0;
  if (v52 >= v51)
  {
    v52 = v51;
  }

  if (v52 >= 0.0)
  {
    v53 = v52;
  }

  else
  {
    v53 = 0.0;
  }

  *&v72 = v64;
  *(&v72 + 1) = v63;
  v73 = v19;
  sub_BABD0();
  if (v53 + v76 <= a4)
  {
    v54 = v76;
  }

  else
  {
    v54 = a4 - v53;
  }

  v55 = (v5 + v14[16]);
  v56 = *v55;
  v57 = v55[1];
  *&v72 = *v55;
  *(&v72 + 1) = v57;
  sub_2E50(&qword_FA710);
  sub_BABD0();
  if (v75 != 0.0)
  {
    *&v72 = v56;
    *(&v72 + 1) = v57;
    sub_BABD0();
    if (v75 - v54 < v53)
    {
      *&v72 = v56;
      *(&v72 + 1) = v57;
      sub_BABD0();
      if (v75 < v54)
      {
        *&v72 = v56;
        *(&v72 + 1) = v57;
        sub_BABD0();
      }
    }
  }

  sub_9EA78();
}

double sub_9B970()
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v0 = AXLTSettingsManager.buttonScaledHeight.getter();
  type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_FB8C0);
  sub_BABD0();
  v1 = 12.0;
  if (LOBYTE(v5) == 3)
  {
    v1 = 24.0;
  }

  v2 = v0 + v1 + 8.0 + -1.0;
  sub_2E50(&qword_F96C8);
  sub_BABD0();
  if (LOBYTE(v5))
  {
    v3 = v2;
  }

  else
  {
    v3 = v2 + v2;
  }

  sub_2E50(&qword_FB868);
  sub_BABD0();
  sub_BABD0();
  return sub_9E5DC(LOBYTE(v5), v5, v6, v7, v8) - v3;
}

uint64_t sub_9BB34()
{
  sub_BAE30();
  sub_B9D80();
}

uint64_t sub_9BBA8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = sub_B9A10();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LiveCaptionsRootView();
  v16 = (a1 + v15[11]);
  v17 = v16[1];
  v18 = v16[2];
  v59 = *v16;
  v66 = v59;
  v67 = v17;
  v58 = v17;
  v68 = v18;
  sub_2E50(&qword_F8AE0);
  sub_BABD0();
  v19 = v70;
  v72 = v71;
  v20 = (a1 + v15[25]);
  v21 = *v20;
  v22 = v20[1];
  LOBYTE(v66) = v21;
  v67 = v22;
  sub_2E50(&qword_FB820);
  sub_BABD0();
  v23 = 0.0;
  v24 = 0.0;
  if (LOBYTE(v70) != 1)
  {
    v25 = (a1 + v15[8]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v66) = v26;
    v67 = v27;
    sub_2E50(&qword_FB8C0);
    sub_BABD0();
    v23 = sub_9E5DC(LOBYTE(v70), a2, a3, a4, a5);
    v24 = v28;
  }

  if (qword_F8258 != -1)
  {
    swift_once();
  }

  v65 = static LiveSpeechCaptionsViewsCoordinator.shared;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v61 = a3;
  v62 = a5;
  v60 = a2;
  if (v23 == 0.0 && v24 == 0.0)
  {
    v23 = *(v65 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
    v24 = *(v65 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
  }

  v29 = v67;
  v30 = v68;
  v63 = v69;
  v64 = v66;
  sub_B95F0();
  v31 = sub_B9A00();
  v32 = sub_BB2F0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *&v34 = COERCE_DOUBLE(swift_slowAlloc());
    v55 = v14;
    v70 = *&v34;
    *v33 = 136315394;
    v66 = v19;
    v67 = v72;
    type metadata accessor for CGSize(0);
    v57 = v5;
    v35 = sub_BAFF0();
    v54 = v11;
    v56 = v18;
    v37 = sub_7A1D8(v35, v36, &v70);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    v66 = v23;
    v67 = v24;
    v38 = sub_BAFF0();
    v40 = sub_7A1D8(v38, v39, &v70);

    *(v33 + 14) = v40;
    v18 = v56;
    _os_log_impl(&dword_0, v31, v32, "Calculate safeOffset offset: %s size: %s", v33, 0x16u);
    swift_arrayDestroy();

    (*(v12 + 8))(v55, v54);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v41 = a4;
  v42 = v65;
  if (qword_F8250 != -1)
  {
    swift_once();
  }

  v43 = *&qword_100C08;
  if (AXDeviceIsPad() && *(v42 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
  {
    v43 = 0.0;
  }

  HasJindo = AXDeviceHasJindo();
  v73.size.height = v63;
  v73.origin.x = v64;
  v73.origin.y = v29;
  v73.size.width = v30;
  Height = CGRectGetHeight(v73);
  v46 = v72;
  if (v72 < v29 + Height + -37.3333333 && HasJindo)
  {
    v74.size.height = v63;
    v74.origin.x = v64;
    v74.origin.y = v29;
    v74.size.width = v30;
    v46 = v29 + CGRectGetHeight(v74) + -37.3333333;
  }

  v47 = v41 - v23 + v43;
  if (v47 >= v19)
  {
    v47 = v19;
  }

  v48 = v41;
  v49 = v62;
  v50 = sub_3C824(v47, v46, v23, v24, v60, v61, v48);
  if (v49 - v24 + -4.0 < v51)
  {
    v51 = v49 - v24 + -4.0;
  }

  if (v50 < -v43)
  {
    v50 = -v43;
  }

  v66 = v59;
  v67 = v58;
  v68 = v18;
  if (v51 < 0.0)
  {
    v51 = 0.0;
  }

  v70 = v50;
  v71 = v51;
  return sub_BABE0();
}

uint64_t sub_9C14C()
{
  type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_FB820);
  return sub_BABE0();
}

uint64_t sub_9C1D0(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v143 = a4;
  v134 = a3;
  v10 = type metadata accessor for LiveCaptionsRootView();
  __chkstk_darwin(v10);
  v12 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_B9A10();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v133 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v129 = &v114 - v15;
  v16 = (a1 + v10[8]);
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v140) = *v16;
  *(&v140 + 1) = v18;
  *&v19 = COERCE_DOUBLE(sub_2E50(&qword_FB8C0));
  sub_BABD0();
  v132 = a5;
  if (v137 == 4)
  {
    v20 = a1 + v10[9];
    v21 = *v20;
    v22 = *(v20 + 8);
    LOBYTE(v140) = v21;
    *(&v140 + 1) = v22;
    sub_BABD0();
    LOBYTE(v140) = v17;
    *(&v140 + 1) = v18;
    v128 = *&v19;
    sub_BABE0();
    v23 = a1 + v10[12];
    v24 = *(v23 + 16);
    v140 = *v23;
    v141 = v24;
    v25 = sub_2E50(&qword_F8AE0);
    sub_BABD0();
    v26 = *(&v137 + 1);
    v27 = (a1 + v10[11]);
    v28 = *(v27 + 1);
    v30 = v27[2];
    *&v140 = *v27;
    v29 = v140;
    *(&v140 + 1) = v28;
    v141 = v30;

    sub_BABD0();
    *&v137 = v29;
    *(&v137 + 1) = v28;
    v138 = v30;
    v135 = v139;
    v136 = v26;
    sub_BABE0();
    *&v140 = v29;
    *(&v140 + 1) = v28;
    v115 = v28;
    v116 = v30;
    v141 = v30;
    v127 = v25;
    sub_BABD0();
    v126 = *(&v137 + 1);
    v31 = *&v137;
    v32 = a1 + v10[25];
    v33 = *v32;
    v34 = *(v32 + 8);
    LOBYTE(v140) = v33;
    *(&v140 + 1) = v34;
    sub_2E50(&qword_FB820);
    sub_BABD0();
    v35 = 0.0;
    v36 = 0.0;
    if (v137 != 1)
    {
      LOBYTE(v140) = v17;
      *(&v140 + 1) = v18;
      sub_BABD0();
      v35 = sub_9E5DC(v137, v134, v143, a5, a6);
      v36 = v37;
    }

    v117 = v12;
    v38 = v129;
    if (qword_F8258 != -1)
    {
      swift_once();
    }

    v125 = static LiveSpeechCaptionsViewsCoordinator.shared;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    if (v35 == 0.0 && v36 == 0.0)
    {
      v35 = *(v125 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
      v36 = *(v125 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
    }

    v39 = *(&v140 + 1);
    v124 = v140;
    v123 = v141;
    v122 = v142;
    sub_B95F0();
    v40 = sub_B9A00();
    v41 = sub_BB2F0();
    v42 = os_log_type_enabled(v40, v41);
    v119 = v17;
    v118 = v18;
    if (v42)
    {
      v43 = swift_slowAlloc();
      *&v137 = swift_slowAlloc();
      *v43 = 136315394;
      *&v140 = v31;
      *(&v140 + 1) = v126;
      type metadata accessor for CGSize(0);
      v44 = sub_BAFF0();
      v46 = sub_7A1D8(v44, v45, &v137);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2080;
      *&v140 = v35;
      *(&v140 + 1) = v36;
      v47 = sub_BAFF0();
      v49 = sub_7A1D8(v47, v48, &v137);

      *(v43 + 14) = v49;
      _os_log_impl(&dword_0, v40, v41, "Calculate safeOffset offset: %s size: %s", v43, 0x16u);
      swift_arrayDestroy();
      v18 = v118;

      (*(v130 + 8))(v129, v131);
    }

    else
    {

      (*(v130 + 8))(v38, v131);
    }

    v58 = v117;
    v59 = v125;
    if (qword_F8250 != -1)
    {
      swift_once();
    }

    v60 = *&qword_100C08;
    if (AXDeviceIsPad() && *(v59 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
    {
      v60 = 0.0;
    }

    HasJindo = AXDeviceHasJindo();
    *&v144.origin.x = v124;
    v144.origin.y = v39;
    v144.size.width = v123;
    v144.size.height = v122;
    Height = CGRectGetHeight(v144);
    v63 = v126;
    if (v126 < v39 + Height + -37.3333333 && HasJindo)
    {
      *&v145.origin.x = v124;
      v145.origin.y = v39;
      v145.size.width = v123;
      v145.size.height = v122;
      v63 = v39 + CGRectGetHeight(v145) + -37.3333333;
    }

    a5 = v132;
    v64 = v132 - v35 + v60;
    if (v64 >= v31)
    {
      v64 = v31;
    }

    v65 = sub_3C824(v64, v63, v35, v36, v134, v143, v132);
    if (a6 - v36 + -4.0 < v66)
    {
      v66 = a6 - v36 + -4.0;
    }

    if (v65 < -v60)
    {
      v65 = -v60;
    }

    *&v140 = v29;
    *(&v140 + 1) = v115;
    v141 = v116;
    if (v66 < 0.0)
    {
      v66 = 0.0;
    }

    *&v137 = v65;
    *(&v137 + 1) = v66;
    sub_BABE0();

    v67 = sub_BB2F0();
    if (qword_F8278 != -1)
    {
      swift_once();
    }

    v68 = qword_100C30;
    sub_A2438(a1, v58, type metadata accessor for LiveCaptionsRootView);
    if (os_log_type_enabled(v68, v67))
    {
      v69 = v58;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v139 = v71;
      *v70 = 136315138;
      v72 = v58 + v10[11];
      v73 = *(v72 + 16);
      v140 = *v72;
      v141 = v73;
      sub_BABD0();
      v140 = v137;
      type metadata accessor for CGSize(0);
      v74 = sub_BAFF0();
      v76 = v75;
      v77 = v69;
      v18 = v118;
      sub_A1E88(v77, type metadata accessor for LiveCaptionsRootView);
      v78 = sub_7A1D8(v74, v76, &v139);

      *(v70 + 4) = v78;
      _os_log_impl(&dword_0, v68, v67, "switchToState windowOffset: %s", v70, 0xCu);
      sub_28020(v71);
    }

    else
    {
      sub_A1E88(v58, type metadata accessor for LiveCaptionsRootView);
    }

    v57 = v133;
    v56 = v119;
  }

  else
  {
    LOBYTE(v140) = v17;
    *(&v140 + 1) = v18;
    LOBYTE(v137) = a2;
    sub_BABE0();
    if (a2 == 4)
    {
      v50 = a1 + v10[9];
      v51 = *v50;
      v52 = *(v50 + 8);
      LOBYTE(v140) = v51;
      *(&v140 + 1) = v52;
      sub_BABD0();
      a2 = v137;
    }

    v53 = a1 + v10[9];
    v54 = *v53;
    v55 = *(v53 + 8);
    LOBYTE(v140) = v54;
    *(&v140 + 1) = v55;
    LOBYTE(v137) = a2;
    sub_BABE0();
    v56 = v17;
    v57 = v133;
  }

  LOBYTE(v140) = v56;
  *(&v140 + 1) = v18;
  sub_BABD0();
  if (v137 != 3)
  {
    v79 = (a1 + v10[11]);
    v80 = *v79;
    v81 = v79[1];
    v82 = *(v79 + 2);
    v127 = *&v80;
    *&v140 = v80;
    *(&v140 + 1) = v81;
    v126 = v81;
    v125 = v82;
    v141 = *&v82;
    v124 = sub_2E50(&qword_F8AE0);
    sub_BABD0();
    v84 = *(&v137 + 1);
    v83 = *&v137;
    v85 = a1 + v10[25];
    v86 = *v85;
    v87 = *(v85 + 8);
    LOBYTE(v140) = v86;
    *(&v140 + 1) = v87;
    sub_2E50(&qword_FB820);
    sub_BABD0();
    v88 = 0.0;
    v89 = 0.0;
    if (v137 != 1)
    {
      LOBYTE(v140) = v56;
      *(&v140 + 1) = v18;
      sub_BABD0();
      v88 = sub_9E5DC(v137, v134, v143, a5, a6);
      v89 = v90;
    }

    if (qword_F8258 != -1)
    {
      swift_once();
    }

    v91 = static LiveSpeechCaptionsViewsCoordinator.shared;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    v121 = v10;
    v120 = a6;
    if (v88 == 0.0 && v89 == 0.0)
    {
      v88 = *(v91 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
      v89 = *(v91 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
    }

    v92 = *(&v140 + 1);
    v129 = v140;
    v93 = v142;
    v128 = v141;
    sub_B95F0();
    v94 = sub_B9A00();
    v95 = sub_BB2F0();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *&v137 = swift_slowAlloc();
      *v96 = 136315394;
      *&v140 = v83;
      *(&v140 + 1) = v84;
      type metadata accessor for CGSize(0);
      v97 = sub_BAFF0();
      v99 = v91;
      v100 = sub_7A1D8(v97, v98, &v137);

      *(v96 + 4) = v100;
      *(v96 + 12) = 2080;
      *&v140 = v88;
      *(&v140 + 1) = v89;
      v101 = sub_BAFF0();
      v103 = sub_7A1D8(v101, v102, &v137);
      v91 = v99;

      *(v96 + 14) = v103;
      _os_log_impl(&dword_0, v94, v95, "Calculate safeOffset offset: %s size: %s", v96, 0x16u);
      swift_arrayDestroy();

      (*(v130 + 8))(v133, v131);
    }

    else
    {

      (*(v130 + 8))(v57, v131);
    }

    v10 = v121;
    if (qword_F8250 != -1)
    {
      swift_once();
    }

    v104 = *&qword_100C08;
    if (AXDeviceIsPad() && *(v91 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
    {
      v104 = 0.0;
    }

    v105 = AXDeviceHasJindo();
    *&v146.origin.x = v129;
    v146.origin.y = v92;
    v146.size.width = v128;
    v146.size.height = v93;
    if (v84 < v92 + CGRectGetHeight(v146) + -37.3333333 && v105)
    {
      *&v147.origin.x = v129;
      v147.origin.y = v92;
      v147.size.width = v128;
      v147.size.height = v93;
      v84 = v92 + CGRectGetHeight(v147) + -37.3333333;
    }

    v106 = v132 - v88 + v104;
    if (v106 >= v83)
    {
      v106 = v83;
    }

    v107 = v120;
    v108 = sub_3C824(v106, v84, v88, v89, v134, v143, v132);
    if (v107 - v89 + -4.0 < v109)
    {
      v109 = v107 - v89 + -4.0;
    }

    if (v108 < -v104)
    {
      v108 = -v104;
    }

    *&v140 = v127;
    *(&v140 + 1) = v126;
    v141 = *&v125;
    if (v109 < 0.0)
    {
      v109 = 0.0;
    }

    *&v137 = v108;
    *(&v137 + 1) = v109;
    sub_BABE0();
  }

  sub_915B8();
  v110 = (a1 + v10[19]);
  v111 = *v110;
  v112 = v110[1];
  *&v140 = v111;
  *(&v140 + 1) = v112;
  *&v137 = 0x3FF0000000000000;
  sub_2E50(&qword_F9018);
  return sub_BABE0();
}

uint64_t sub_9D09C(uint64_t a1, uint64_t a2, double a3)
{
  v6 = type metadata accessor for LiveCaptionsRootView();
  __chkstk_darwin(v6);
  v8 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v50[-v10];
  v12 = sub_BB2F0();
  if (qword_F8278 != -1)
  {
    swift_once();
  }

  v13 = qword_100C30;
  sub_A2438(a2, v11, type metadata accessor for LiveCaptionsRootView);
  v14 = os_log_type_enabled(v13, v12);
  v52 = v13;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v51 = a1;
    v56 = v16;
    *v15 = 136315394;
    LOBYTE(v54) = v51;
    v17 = sub_BAFF0();
    v19 = sub_7A1D8(v17, v18, &v56);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = &v11[v6[12]];
    v21 = *(v20 + 2);
    v54 = *v20;
    v55 = v21;
    sub_2E50(&qword_F8AE0);
    sub_BABD0();
    v54 = v53;
    type metadata accessor for CGSize(0);
    v22 = sub_BAFF0();
    v24 = v23;
    sub_A1E88(v11, type metadata accessor for LiveCaptionsRootView);
    v25 = sub_7A1D8(v22, v24, &v56);
    v13 = v52;

    *(v15 + 14) = v25;
    _os_log_impl(&dword_0, v13, v12, "switchToIcon direction: %s iconOffset: %s", v15, 0x16u);
    swift_arrayDestroy();
    a1 = v51;
  }

  else
  {
    sub_A1E88(v11, type metadata accessor for LiveCaptionsRootView);
  }

  sub_9A8B8();
  v26 = (a2 + v6[12]);
  v28 = v26[1];
  v29 = v26[2];
  *&v54 = *v26;
  v27 = v54;
  *(&v54 + 1) = v28;
  v55 = v29;
  sub_2E50(&qword_F8AE0);
  sub_BABD0();
  sub_363B8(a1, *&v53, *(&v53 + 1), a3);
  *&v54 = v27;
  *(&v54 + 1) = v28;
  v55 = v29;
  *&v53 = v30;
  *(&v53 + 1) = v31;
  sub_BABE0();
  v32 = sub_BB2F0();
  sub_A2438(a2, v8, type metadata accessor for LiveCaptionsRootView);
  if (os_log_type_enabled(v13, v32))
  {
    v33 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v33 = 136315394;
    LOBYTE(v54) = a1;
    v34 = sub_BAFF0();
    v36 = sub_7A1D8(v34, v35, &v56);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    v37 = &v8[v6[12]];
    v38 = *(v37 + 2);
    v54 = *v37;
    v55 = v38;
    sub_BABD0();
    v54 = v53;
    type metadata accessor for CGSize(0);
    v39 = sub_BAFF0();
    v41 = v40;
    sub_A1E88(v8, type metadata accessor for LiveCaptionsRootView);
    v42 = sub_7A1D8(v39, v41, &v56);

    *(v33 + 14) = v42;
    _os_log_impl(&dword_0, v52, v32, "adjusted iconOffset: %s iconOffset: %s", v33, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_A1E88(v8, type metadata accessor for LiveCaptionsRootView);
  }

  v43 = a2 + v6[8];
  v44 = *v43;
  v45 = *(v43 + 8);
  LOBYTE(v54) = v44;
  *(&v54 + 1) = v45;
  LOBYTE(v53) = 4;
  sub_2E50(&qword_FB8C0);
  sub_BABE0();
  v46 = (a2 + v6[19]);
  v47 = *v46;
  v48 = v46[1];
  *&v54 = v47;
  *(&v54 + 1) = v48;
  *&v53 = 0x3FF0000000000000;
  sub_2E50(&qword_F9018);
  return sub_BABE0();
}

uint64_t sub_9D610()
{
  v1 = v0;
  v2 = type metadata accessor for LiveCaptionsRootView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_BB2F0();
  if (qword_F8278 != -1)
  {
    swift_once();
  }

  sub_B99F0();
  v5 = v0 + *(v2 + 80);
  v7 = *(v5 + 8);
  aBlock = *v5;
  v6 = aBlock;
  v16 = v7;
  sub_2E50(&qword_F9C88);
  sub_BABD0();
  [v21 invalidate];

  v8 = objc_opt_self();
  sub_A2438(v1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveCaptionsRootView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_A2628(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for LiveCaptionsRootView);
  v19 = sub_A1288;
  v20 = v10;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_4E790;
  v18 = &unk_F2898;
  v11 = _Block_copy(&aBlock);

  v12 = [v8 scheduledTimerWithTimeInterval:0 repeats:v11 block:30.0];
  _Block_release(v11);
  aBlock = v6;
  v16 = v7;
  v21 = v12;
  return sub_BABE0();
}

uint64_t sub_9D8A4(uint64_t a1, char a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v61 = sub_B9A10();
  v15 = *(v61 - 8);
  __chkstk_darwin(v61);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0.0;
  if (a2)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = a6 - a8;
  }

  v20 = type metadata accessor for LiveCaptionsRootView();
  v21 = (a1 + v20[11]);
  v23 = v21[1];
  v24 = v21[2];
  v68 = *v21;
  *&v22 = v68;
  v69 = v23;
  v70 = v24;

  sub_2E50(&qword_F8AE0);
  sub_BABD0();
  v74 = *&v22;
  v75 = v23;
  v76 = v24;
  v72 = v77;
  v73 = v19;
  sub_BABE0();
  v64 = v22;
  v68 = *&v22;
  v69 = v23;
  v63 = v23;
  v70 = v24;
  sub_BABD0();
  *&v25 = v74;
  v78 = v75;
  v26 = (a1 + v20[25]);
  v27 = *v26;
  v28 = v26[1];
  LOBYTE(v68) = v27;
  v69 = v28;
  sub_2E50(&qword_FB820);
  sub_BABD0();
  v29 = 0.0;
  if (LOBYTE(v74) != 1)
  {
    v30 = (a1 + v20[8]);
    v31 = *v30;
    v32 = v30[1];
    LOBYTE(v68) = v31;
    v69 = v32;
    sub_2E50(&qword_FB8C0);
    sub_BABD0();
    v18 = sub_9E5DC(LOBYTE(v74), a3, a4, a5, a6);
    v29 = v33;
  }

  if (qword_F8258 != -1)
  {
    swift_once();
  }

  v34 = static LiveSpeechCaptionsViewsCoordinator.shared;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v18 == 0.0 && v29 == 0.0)
  {
    v18 = *(v34 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
    v29 = *(v34 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
  }

  v35 = v69;
  v66 = v70;
  v67 = v68;
  v65 = v71;
  sub_B95F0();
  v36 = sub_B9A00();
  v37 = sub_BB2F0();
  v38 = os_log_type_enabled(v36, v37);
  v62 = v18;
  v60 = v29;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v74 = COERCE_DOUBLE(swift_slowAlloc());
    *v39 = 136315394;
    v68 = *&v25;
    v69 = v78;
    type metadata accessor for CGSize(0);
    v59 = v24;
    v58 = v34;
    v40 = sub_BAFF0();
    v57 = v17;
    v42 = sub_7A1D8(v40, v41, &v74);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2080;
    v68 = v18;
    v69 = v29;
    v43 = sub_BAFF0();
    v45 = sub_7A1D8(v43, v44, &v74);

    *(v39 + 14) = v45;
    v34 = v58;
    v24 = v59;
    _os_log_impl(&dword_0, v36, v37, "Calculate safeOffset offset: %s size: %s", v39, 0x16u);
    swift_arrayDestroy();

    (*(v15 + 8))(v57, v61);
  }

  else
  {

    (*(v15 + 8))(v17, v61);
  }

  v46 = *&v25;
  if (qword_F8250 != -1)
  {
    swift_once();
  }

  v47 = *&qword_100C08;
  if (AXDeviceIsPad() && *(v34 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
  {
    v47 = 0.0;
  }

  HasJindo = AXDeviceHasJindo();
  v79.size.width = v66;
  v79.origin.x = v67;
  v79.origin.y = v35;
  v79.size.height = v65;
  Height = CGRectGetHeight(v79);
  v50 = v78;
  if (v78 < v35 + Height + -37.3333333 && HasJindo)
  {
    v80.size.width = v66;
    v80.origin.x = v67;
    v80.origin.y = v35;
    v80.size.height = v65;
    v50 = v35 + CGRectGetHeight(v80) + -37.3333333;
  }

  v51 = a5;
  v52 = a5 - v62 + v47;
  if (v52 >= v46)
  {
    v52 = v46;
  }

  v53 = v60;
  v54 = sub_3C824(v52, v50, v62, v60, a3, a4, v51);
  if (a6 - v53 + -4.0 < v55)
  {
    v55 = a6 - v53 + -4.0;
  }

  if (v54 < -v47)
  {
    v54 = -v47;
  }

  v68 = *&v64;
  v69 = v63;
  v70 = v24;
  if (v55 < 0.0)
  {
    v55 = 0.0;
  }

  v74 = v54;
  v75 = v55;
  sub_BABE0();
}

uint64_t sub_9DED8(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v79 = a4;
  v80 = a5;
  v78 = a3;
  v11 = sub_B9A10();
  v73 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LiveCaptionsRootView();
  v15 = (v6 + v14[13]);
  v17 = v15[1];
  v18 = v15[2];
  v81 = *v15;
  v16 = v81;
  v82 = v17;
  v83 = v18;
  sub_2E50(&qword_F8AE0);
  sub_BABD0();
  v19 = v87 + a1;
  v20 = (v6 + v14[11]);
  v22 = v20[1];
  v23 = v20[2];
  v81 = *v20;
  v21 = v81;
  v82 = v22;
  v83 = v23;

  sub_BABD0();
  v87 = v21;
  v88 = v22;
  v89 = v23;
  v85 = v19;
  v86 = v91;
  sub_BABE0();
  v81 = v16;
  v82 = v17;
  v83 = v18;
  sub_BABD0();
  v24 = v88 + a2;
  v81 = v21;
  v82 = v22;
  v83 = v23;
  sub_BABD0();
  v87 = v21;
  v88 = v22;
  v89 = v23;
  v85 = v90;
  v86 = v24;
  sub_BABE0();
  v81 = v21;
  v82 = v22;
  v83 = v23;
  sub_BABD0();
  v25 = v87;
  v77 = v88;
  v26 = (v6 + v14[25]);
  v27 = *v26;
  v28 = v26[1];
  LOBYTE(v81) = v27;
  v82 = v28;
  sub_2E50(&qword_FB820);
  sub_BABD0();
  v29 = 0.0;
  v30 = 0.0;
  if (LOBYTE(v87) != 1)
  {
    v31 = (v6 + v14[8]);
    v32 = *v31;
    v33 = v31[1];
    LOBYTE(v81) = v32;
    v82 = v33;
    sub_2E50(&qword_FB8C0);
    sub_BABD0();
    v29 = sub_9E5DC(LOBYTE(v87), v78, v79, v80, a6);
    v30 = v34;
  }

  if (qword_F8258 != -1)
  {
    swift_once();
  }

  v35 = static LiveSpeechCaptionsViewsCoordinator.shared;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v74 = a6;
  if (v29 == 0.0 && v30 == 0.0)
  {
    v29 = *(v35 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
    v30 = *(v35 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
  }

  v36 = v81;
  v37 = v82;
  v76 = v83;
  v75 = v84;
  sub_B95F0();
  v38 = sub_B9A00();
  v39 = v13;
  v40 = sub_BB2F0();
  v41 = os_log_type_enabled(v38, v40);
  v72 = v30;
  if (v41)
  {
    v42 = swift_slowAlloc();
    *&v43 = COERCE_DOUBLE(swift_slowAlloc());
    v69 = v39;
    v87 = *&v43;
    *v42 = 136315394;
    v81 = v25;
    v82 = v77;
    type metadata accessor for CGSize(0);
    v68 = v11;
    v44 = sub_BAFF0();
    v71 = v14;
    v70 = v7;
    v46 = v35;
    v47 = sub_7A1D8(v44, v45, &v87);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2080;
    v81 = v29;
    v82 = v30;
    v48 = sub_BAFF0();
    v50 = sub_7A1D8(v48, v49, &v87);
    v35 = v46;

    *(v42 + 14) = v50;
    v7 = v70;
    v14 = v71;
    _os_log_impl(&dword_0, v38, v40, "Calculate safeOffset offset: %s size: %s", v42, 0x16u);
    swift_arrayDestroy();

    (*(v73 + 8))(v69, v68);
  }

  else
  {

    (*(v73 + 8))(v39, v11);
  }

  v51 = v25;
  if (qword_F8250 != -1)
  {
    swift_once();
  }

  v52 = *&qword_100C08;
  if (AXDeviceIsPad() && *(v35 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
  {
    v52 = 0.0;
  }

  HasJindo = AXDeviceHasJindo();
  v92.origin.x = v36;
  v92.origin.y = v37;
  v92.size.width = v76;
  v92.size.height = v75;
  Height = CGRectGetHeight(v92);
  v55 = v77;
  if (v77 < v37 + Height + -37.3333333 && HasJindo)
  {
    v93.origin.x = v36;
    v93.origin.y = v37;
    v93.size.width = v76;
    v93.size.height = v75;
    v55 = v37 + CGRectGetHeight(v93) + -37.3333333;
  }

  v56 = v80 - v29 + v52;
  if (v56 >= v51)
  {
    v56 = v51;
  }

  v57 = v72;
  v58 = v74;
  v59 = sub_3C824(v56, v55, v29, v72, v78, v79, v80);
  if (v58 - v57 + -4.0 < v60)
  {
    v60 = v58 - v57 + -4.0;
  }

  if (v59 < -v52)
  {
    v59 = -v52;
  }

  v81 = v21;
  v82 = v22;
  v83 = v23;
  if (v60 < 0.0)
  {
    v60 = 0.0;
  }

  v87 = v59;
  v88 = v60;
  sub_BABE0();

  v81 = v21;
  v82 = v22;
  v83 = v23;
  sub_BABD0();
  v61 = v88;
  v62 = (v7 + v14[12]);
  v64 = v62[1];
  v65 = v62[2];
  v81 = *v62;
  v63 = v81;
  v82 = v64;
  v83 = v65;

  sub_BABD0();
  v87 = v63;
  v88 = v64;
  v89 = v65;
  v85 = v90;
  v86 = v61;
  sub_BABE0();
}