uint64_t sub_1C97CAFFC()
{

  return sub_1C9A93CA8();
}

__n128 sub_1C97CB01C(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a19)
{
  result = a19;
  a1[1] = a19;
  return result;
}

__n128 sub_1C97CB02C(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a19)
{
  result = a19;
  a1[1] = a19;
  return result;
}

uint64_t sub_1C97CB038()
{

  return swift_allocObject();
}

uint64_t sub_1C97CB054()
{

  return swift_allocObject();
}

uint64_t sub_1C97CB0F0()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C97CB118()
{
  sub_1C97CB0F0();

  return swift_deallocClassInstance();
}

uint64_t *sub_1C97CB164@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  if ((*result * result[1]) >> 64 == (*result * result[1]) >> 63)
  {
    if ((result[3] * result[4]) >> 64 == (result[3] * result[4]) >> 63)
    {
      v3 = sub_1C9A930F8();
      v5 = v4;
      v7 = v6;
      v8 = HIDWORD(v4);
      result = sub_1C9A930F8();
      *a2 = v3;
      *(a2 + 8) = v5;
      *(a2 + 12) = v8;
      *(a2 + 16) = v7;
      *(a2 + 24) = result;
      *(a2 + 32) = v9;
      *(a2 + 36) = v10;
      *(a2 + 40) = v11;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C97CB2EC(__n128 *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v4 = a1[1].n128_i64[1];
  v5 = a1[2].n128_i32[0];
  if ((v4 * a1[2].n128_i32[0]) >> 64 == (v4 * v5) >> 63)
  {
    if (v4 * v5 < 0)
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (a2)
    {
LABEL_4:
      sub_1C97CE0E0(a1);
LABEL_8:
      v25 = *&range.start.epoch;
      *a3 = *&range.start.value;
      a3[1] = v25;
      a3[2] = *&range.duration.timescale;
      return;
    }

    sub_1C97CE0E0(a1);
    CMTimeRangeGetEnd(&v27, &range);
    if (v4 != 0x8000000000000000)
    {
      value = v27.value;
      v7 = *&v27.timescale;
      v8 = -v4;
      epoch = v27.epoch;
      v10 = CMTimeMake(&range.start, v8, v5);
      sub_1C97CE140(v10, v11, v12, v13, v14, v15, v16, v17, *&range.start.timescale, v18, v19, v20, v21, v22, v23, v24, range.start.value, v26, range.start.epoch, value, v7, epoch, range.start.value);
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

CMTimeValue sub_1C97CB3C0(CMTimeValue result, int a2, uint64_t a3, char a4)
{
  if (result < 0 && (a4 & 1) != 0 || a2 < 0 && (a4 & 1) == 0)
  {
    if (result == 0x8000000000000000)
    {
      __break(1u);
    }

    else if (a2 != 0x80000000)
    {
      v7 = v4;
      v8 = v5;
      CMTimeMake(&v6, -result, -a2);
      return v6.value;
    }

    __break(1u);
  }

  return result;
}

double sub_1C97CB43C@<D0>(__n128 *a1@<X0>, char a2@<W1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  sub_1C97CB2EC(a1, a2, &v20);
  v6 = sub_1C97CB3C0(v20, SDWORD2(v20), v21, a3);
  v8 = v7;
  v10 = v9;
  v11 = HIDWORD(v7);
  v12 = sub_1C97CB3C0(v22, v23, v24, a3);
  v18.epoch = v13;
  start.value = v6;
  start.timescale = v8;
  start.flags = v11;
  start.epoch = v10;
  v18.value = v12;
  v18.timescale = v14;
  v18.flags = v15;
  CMTimeRangeMake(&v25, &start, &v18);
  v16 = *&v25.start.epoch;
  *a4 = *&v25.start.value;
  a4[1] = v16;
  result = *&v25.duration.timescale;
  a4[2] = *&v25.duration.timescale;
  return result;
}

void sub_1C97CB574(__n128 *a1, __n128 *a2, uint64_t a3, void *a4)
{
  sub_1C97CB2EC(a2, 1, &v55);
  v5 = sub_1C97CB3C0(v55, SDWORD2(v55), v56, 0);
  v7 = v6;
  v9 = v8;
  v10 = HIDWORD(v6);
  v11 = sub_1C97CB3C0(v57, v58, v59, 0);
  start.value = v5;
  start.timescale = v7;
  start.flags = v10;
  start.epoch = v9;
  duration.start.value = v11;
  duration.start.timescale = v12;
  duration.start.flags = v13;
  duration.start.epoch = v14;
  CMTimeRangeMake(&v64, &start, &duration.start);
  value = v64.start.value;
  timescale = v64.start.timescale;
  flags = v64.start.flags;
  v65 = v64.duration;
  epoch = v64.start.epoch;
  sub_1C97CB2EC(a1, 1, &start);
  v19 = sub_1C97CB3C0(start.value, start.timescale, start.epoch, 0);
  LODWORD(v5) = v20;
  v22 = v21;
  v23 = HIDWORD(v20);
  v24 = sub_1C97CB3C0(v61, v62, v63, 0);
  duration.start.value = v19;
  duration.start.timescale = v5;
  duration.start.flags = v23;
  duration.start.epoch = v22;
  end.start.value = v24;
  end.start.timescale = v25;
  end.start.flags = v26;
  end.start.epoch = v27;
  CMTimeRangeMake(&v64, &duration.start, &end.start);
  v28 = v64.start.value;
  v29 = v64.start.timescale;
  v30 = v64.start.flags;
  v66 = v64.duration;
  v31 = v64.start.epoch;
  duration.start.value = value;
  duration.start.timescale = timescale;
  duration.start.flags = flags;
  duration.start.epoch = epoch;
  if (CMTimeCompare(&v64.start, &duration.start) < 0)
  {
    duration.start.value = v28;
    duration.start.timescale = v29;
    duration.start.flags = v30;
    duration.start.epoch = v31;
    end.start.value = value;
    end.start.timescale = timescale;
    end.start.flags = flags;
    end.start.epoch = epoch;
  }

  else
  {
    duration.start.value = v28;
    duration.start.timescale = v29;
    duration.start.flags = v30;
    duration.start.epoch = v31;
    end.start.value = v28;
    end.start.timescale = v29;
    end.start.flags = v30;
    end.start.epoch = v31;
  }

  CMTimeRangeFromTimeToTime(&v64, &duration.start, &end.start);
  duration.start.value = v28;
  duration.start.timescale = v29;
  duration.start.flags = v30;
  duration.start.epoch = v31;
  duration.duration = v66;
  CMTimeRangeGetEnd(&end.start, &duration);
  v32 = end.start.value;
  v33 = end.start.epoch;
  v34 = *&end.start.timescale;
  duration.start.value = value;
  duration.start.timescale = timescale;
  duration.start.flags = flags;
  duration.start.epoch = epoch;
  duration.duration = v65;
  CMTimeRangeGetEnd(&end.start, &duration);
  duration.start.value = v32;
  *&duration.start.timescale = v34;
  duration.start.epoch = v33;
  if (CMTimeCompare(&duration.start, &end.start) < 1)
  {
    duration.start.value = v28;
    duration.start.timescale = v29;
    duration.start.flags = v30;
    duration.start.epoch = v31;
    *&duration.duration.value = *&v66.value;
    v35 = v66.epoch;
  }

  else
  {
    duration.start.value = value;
    duration.start.timescale = timescale;
    duration.start.flags = flags;
    duration.start.epoch = epoch;
    *&duration.duration.value = *&v65.value;
    v35 = v65.epoch;
  }

  duration.duration.epoch = v35;
  CMTimeRangeGetEnd(&end.start, &duration);
  v36 = end.start.value;
  v37 = end.start.epoch;
  v38 = *&end.start.timescale;
  duration.start.value = v28;
  *&duration.start.timescale = __PAIR64__(v30, v29);
  duration.start.epoch = v31;
  duration.duration = v66;
  CMTimeRangeGetEnd(&end.start, &duration);
  v39 = end.start.value;
  v40 = end.start.epoch;
  v41 = *&end.start.timescale;
  end.start.value = v36;
  *&end.start.timescale = v38;
  end.start.epoch = v37;
  v48.value = v39;
  *&v48.timescale = v41;
  v48.epoch = v40;
  CMTimeRangeFromTimeToTime(&duration, &end.start, &v48);
  v42 = duration.start.value;
  v43 = *&duration.start.timescale;
  v44 = duration.start.epoch;
  v45 = *&duration.duration.value;
  v54 = duration.duration.epoch;
  duration = v64;
  v53 = v45;
  CMTimeRangeGetEnd(&end.start, &duration);
  duration.start.value = end.start.value;
  *&duration.start.timescale = *&end.start.timescale;
  duration.start.epoch = end.start.epoch;
  v48.value = v42;
  *&v48.timescale = v43;
  v48.epoch = v44;
  CMTimeRangeFromTimeToTime(&end, &duration.start, &v48);
  v46 = a4[2];
  duration = v64;
  v48.value = v42;
  *&v48.timescale = v43;
  v48.epoch = v44;
  v49 = v53;
  v50 = v54;
  v46(a4, &duration, &end, &v48);
  _Block_release(a4);
}

void *sub_1C97CB944(__n128 *a1, __n128 *a2, uint64_t a3, void *a4)
{
  sub_1C97CB2EC(a2, 1, &v49);
  start[0].start.value = sub_1C97CB3C0(v49, SDWORD2(v49), v50, 0);
  start[0].start.timescale = v5;
  start[0].start.flags = v6;
  start[0].start.epoch = v7;
  duration.start.value = sub_1C97CB3C0(v51, v52, v53, 0);
  duration.start.timescale = v8;
  duration.start.flags = v9;
  duration.start.epoch = v10;
  CMTimeRangeMake(range, &start[0].start, &duration.start);
  v11 = *range;
  v12 = *&range[8];
  v13 = *&range[12];
  v14 = *&range[16];
  v60 = *&range[24];
  v61 = *&range[40];
  sub_1C97CB2EC(a1, 1, &v54);
  v15 = sub_1C97CB3C0(v54, SDWORD2(v54), v55, 0);
  v17 = v16;
  v19 = v18;
  v20 = HIDWORD(v16);
  v21 = sub_1C97CB3C0(v56, v57, v58, 0);
  start[0].start.value = v15;
  start[0].start.timescale = v17;
  start[0].start.flags = v20;
  start[0].start.epoch = v19;
  duration.start.value = v21;
  duration.start.timescale = v22;
  duration.start.flags = v23;
  duration.start.epoch = v24;
  CMTimeRangeMake(range, &start[0].start, &duration.start);
  v25 = *range;
  v26 = *&range[8];
  v27 = *&range[12];
  v28 = *&range[16];
  v62 = *&range[24];
  v63 = *&range[40];
  start[0].start.value = v11;
  start[0].start.timescale = v12;
  start[0].start.flags = v13;
  start[0].start.epoch = v14;
  if (CMTimeCompare(range, &start[0].start) < 0)
  {
    *range = v25;
    *&range[8] = v26;
    *&range[12] = v27;
    *&range[16] = v28;
    start[0].start.value = v11;
    start[0].start.timescale = v12;
    start[0].start.flags = v13;
    start[0].start.epoch = v14;
  }

  else
  {
    *range = v25;
    *&range[8] = v26;
    *&range[12] = v27;
    *&range[16] = v28;
    start[0].start.value = v25;
    start[0].start.timescale = v26;
    start[0].start.flags = v27;
    start[0].start.epoch = v28;
  }

  CMTimeRangeFromTimeToTime(&duration, range, &start[0].start);
  *range = v25;
  *&range[8] = v26;
  *&range[12] = v27;
  *&range[16] = v28;
  *&range[24] = v62;
  *&range[40] = v63;
  CMTimeRangeGetEnd(&start[0].start, range);
  value = start[0].start.value;
  epoch = start[0].start.epoch;
  v31 = *&start[0].start.timescale;
  *range = v11;
  *&range[8] = v12;
  *&range[12] = v13;
  *&range[16] = v14;
  *&range[24] = v60;
  *&range[40] = v61;
  CMTimeRangeGetEnd(&start[0].start, range);
  *range = value;
  *&range[8] = v31;
  *&range[16] = epoch;
  if (CMTimeCompare(range, &start[0].start) < 1)
  {
    *range = v25;
    *&range[8] = v26;
    *&range[12] = v27;
    *&range[16] = v28;
    *&range[24] = v62;
    v32 = v63;
  }

  else
  {
    *range = v11;
    *&range[8] = v12;
    *&range[12] = v13;
    *&range[16] = v14;
    *&range[24] = v60;
    v32 = v61;
  }

  *&range[40] = v32;
  CMTimeRangeGetEnd(&start[0].start, range);
  v33 = start[0].start.value;
  v34 = start[0].start.epoch;
  v35 = *&start[0].start.timescale;
  *range = v25;
  *&range[8] = __PAIR64__(v27, v26);
  *&range[16] = v28;
  *&range[24] = v62;
  *&range[40] = v63;
  CMTimeRangeGetEnd(&start[0].start, range);
  v36 = start[0].start.value;
  v37 = start[0].start.epoch;
  v38 = *&start[0].start.timescale;
  start[0].start.value = v33;
  *&start[0].start.timescale = v35;
  start[0].start.epoch = v34;
  end.value = v36;
  *&end.timescale = v38;
  end.epoch = v37;
  CMTimeRangeFromTimeToTime(range, &start[0].start, &end);
  v39 = *range;
  v40 = *&range[8];
  v41 = *&range[16];
  v47 = *&range[24];
  v48 = *&range[40];
  *range = duration;
  CMTimeRangeGetEnd(&start[0].start, range);
  *range = start[0].start.value;
  *&range[8] = *&start[0].start.timescale;
  *&range[16] = start[0].start.epoch;
  end.value = v39;
  *&end.timescale = v40;
  end.epoch = v41;
  CMTimeRangeFromTimeToTime(&start[1], range, &end);
  start[0] = duration;
  memcpy(range, start, 0x60uLL);
  *&range[96] = v39;
  *&range[104] = v40;
  *&range[112] = v41;
  *&range[120] = v47;
  *&range[136] = v48;
  sub_1C97CE044(range);
  return memcpy(a4, range, 0x91uLL);
}

double sub_1C97CBD18(__n128 *a1, __n128 *a2, uint64_t a3, _OWORD *a4)
{
  sub_1C97CB2EC(a2, 1, &v51);
  v5 = sub_1C97CB3C0(v51, SDWORD2(v51), v52, 0);
  v7 = v6;
  v9 = v8;
  v10 = HIDWORD(v6);
  v11 = sub_1C97CB3C0(v53, v54, v55, 0);
  start.value = v5;
  start.timescale = v7;
  start.flags = v10;
  start.epoch = v9;
  duration.start.value = v11;
  duration.start.timescale = v12;
  duration.start.flags = v13;
  duration.start.epoch = v14;
  CMTimeRangeMake(&v60, &start, &duration.start);
  value = v60.start.value;
  timescale = v60.start.timescale;
  flags = v60.start.flags;
  v61 = v60.duration;
  epoch = v60.start.epoch;
  sub_1C97CB2EC(a1, 1, &start);
  v19 = sub_1C97CB3C0(start.value, start.timescale, start.epoch, 0);
  LODWORD(v5) = v20;
  v22 = v21;
  v23 = HIDWORD(v20);
  v24 = sub_1C97CB3C0(v57, v58, v59, 0);
  duration.start.value = v19;
  duration.start.timescale = v5;
  duration.start.flags = v23;
  duration.start.epoch = v22;
  v62.value = v24;
  v62.timescale = v25;
  v62.flags = v26;
  v62.epoch = v27;
  CMTimeRangeMake(&v60, &duration.start, &v62);
  v28 = v60.start.value;
  v29 = v60.start.timescale;
  v30 = v60.start.flags;
  v62 = v60.duration;
  v31 = v60.start.epoch;
  duration.start.value = value;
  duration.start.timescale = timescale;
  duration.start.flags = flags;
  duration.start.epoch = epoch;
  if (CMTimeCompare(&v60.start, &duration.start) < 0)
  {
    duration.start.value = v28;
    duration.start.timescale = v29;
    duration.start.flags = v30;
    duration.start.epoch = v31;
    end.value = value;
    end.timescale = timescale;
    end.flags = flags;
    end.epoch = epoch;
  }

  else
  {
    duration.start.value = v28;
    duration.start.timescale = v29;
    duration.start.flags = v30;
    duration.start.epoch = v31;
    end.value = v28;
    end.timescale = v29;
    end.flags = v30;
    end.epoch = v31;
  }

  CMTimeRangeFromTimeToTime(&v60, &duration.start, &end);
  duration.start.value = v28;
  duration.start.timescale = v29;
  duration.start.flags = v30;
  duration.start.epoch = v31;
  duration.duration = v62;
  CMTimeRangeGetEnd(&end, &duration);
  v32 = end.value;
  v33 = end.epoch;
  v34 = *&end.timescale;
  duration.start.value = value;
  duration.start.timescale = timescale;
  duration.start.flags = flags;
  duration.start.epoch = epoch;
  duration.duration = v61;
  CMTimeRangeGetEnd(&end, &duration);
  duration.start.value = v32;
  *&duration.start.timescale = v34;
  duration.start.epoch = v33;
  if (CMTimeCompare(&duration.start, &end) < 1)
  {
    duration.start.value = v28;
    duration.start.timescale = v29;
    duration.start.flags = v30;
    duration.start.epoch = v31;
    *&duration.duration.value = *&v62.value;
    v35 = v62.epoch;
  }

  else
  {
    duration.start.value = value;
    duration.start.timescale = timescale;
    duration.start.flags = flags;
    duration.start.epoch = epoch;
    *&duration.duration.value = *&v61.value;
    v35 = v61.epoch;
  }

  duration.duration.epoch = v35;
  CMTimeRangeGetEnd(&end, &duration);
  v36 = end.value;
  v37 = end.epoch;
  v38 = *&end.timescale;
  duration.start.value = v28;
  *&duration.start.timescale = __PAIR64__(v30, v29);
  duration.start.epoch = v31;
  duration.duration = v62;
  CMTimeRangeGetEnd(&end, &duration);
  v39 = end.value;
  v40 = end.epoch;
  v41 = *&end.timescale;
  end.value = v36;
  *&end.timescale = v38;
  end.epoch = v37;
  v48.value = v39;
  *&v48.timescale = v41;
  v48.epoch = v40;
  CMTimeRangeFromTimeToTime(&duration, &end, &v48);
  v42 = duration.start.value;
  v43 = *&duration.start.timescale;
  v44 = duration.start.epoch;
  duration = v60;
  CMTimeRangeGetEnd(&end, &duration);
  v48.value = v42;
  *&v48.timescale = v43;
  v48.epoch = v44;
  CMTimeRangeFromTimeToTime(&duration, &end, &v48);
  v45 = *&duration.start.epoch;
  *a4 = *&duration.start.value;
  a4[1] = v45;
  result = *&duration.duration.timescale;
  a4[2] = *&duration.duration.timescale;
  return result;
}

uint64_t sub_1C97CC148@<X0>(__n128 *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C97CDFF8(__src);
  memcpy(__dst, __src, 0x91uLL);
  sub_1C97CB944(a1, a2, v3, __dst);
  memcpy(v22, __dst, 0x91uLL);
  result = sub_1C97CE028(v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = *(&v22[8] + 1);
    v9 = v22[7];
    v10 = *&v22[8];
    v11 = *(&v22[6] + 1);
    v12 = *(&v22[5] + 8);
    v13 = v22[4];
    v14 = *&v22[5];
    v15 = *(&v22[3] + 1);
    v16 = *(&v22[2] + 8);
    v17 = v22[1];
    v18 = *&v22[2];
    v19 = *(&v22[0] + 1);
    *a3 = *&v22[0];
    *(a3 + 8) = v19;
    *(a3 + 16) = v17;
    *(a3 + 32) = v18;
    *(a3 + 40) = v16;
    *(a3 + 56) = v15;
    *(a3 + 64) = v13;
    *(a3 + 80) = v14;
    *(a3 + 88) = v12;
    *(a3 + 104) = v11;
    *(a3 + 112) = v9;
    *(a3 + 128) = v10;
    *(a3 + 136) = v8;
  }

  return result;
}

double sub_1C97CC23C@<D0>(__n128 *a1@<X0>, __n128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(MEMORY[0x1E6960C70] + 8);
  v6 = *(MEMORY[0x1E6960C70] + 12);
  v7 = *(MEMORY[0x1E6960C70] + 16);
  *&v10 = *MEMORY[0x1E6960C70];
  *(&v10 + 1) = __PAIR64__(v6, v5);
  *&v11 = v7;
  *(&v11 + 1) = v10;
  *&v12 = __PAIR64__(v6, v5);
  *(&v12 + 1) = v7;
  sub_1C97CBD18(a1, a2, v3, &v10);
  v8 = v11;
  *a3 = v10;
  a3[1] = v8;
  result = *&v12;
  a3[2] = v12;
  return result;
}

double sub_1C97CC360@<D0>(CMTimeValue a1@<X0>, uint64_t a2@<X1>, CMTimeEpoch a3@<X2>, double *a4@<X3>, _OWORD *a5@<X8>)
{
  v7 = *a4;
  v8 = *(a4 + 2);
  rhs.epoch = a3;
  *lhs = v7;
  *&lhs[8] = a4[1];
  *&lhs[16] = v8;
  rhs.value = a1;
  *&rhs.timescale = a2;
  v9 = CMTimeAdd(&v26, lhs, &rhs);
  sub_1C97CE140(v9, v10, v11, v12, v13, v14, v15, v16, a4[4], v17, v18, v19, v20, v21, v22, v23, *(a4 + 3), *&v26.timescale, *(a4 + 5), v26.value, *&v26.timescale, v26.epoch, *lhs);
  v24 = *&lhs[16];
  *a5 = *lhs;
  a5[1] = v24;
  result = *&v29;
  a5[2] = v29;
  return result;
}

uint64_t sub_1C97CC488(CMTimeValue a1, unint64_t a2, CMTimeEpoch a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v7 = a2;
    v9 = HIDWORD(a2);
    v25 = MEMORY[0x1E69E7CC0];
    sub_1C97B7A1C(0, v4, 0);
    v5 = v25;
    v10 = (a4 + 48);
    do
    {
      v11 = *(v10 - 2);
      v12 = *v10;
      *&lhs.timescale = *(v10 - 1);
      lhs.epoch = v12;
      rhs.value = a1;
      rhs.timescale = v7;
      rhs.flags = v9;
      rhs.epoch = a3;
      lhs.value = v11;
      CMTimeAdd(&v22, &lhs, &rhs);
      value = v22.value;
      v14 = *&v22.timescale;
      epoch = v22.epoch;
      v25 = v5;
      v17 = *(v5 + 16);
      v16 = *(v5 + 24);
      if (v17 >= v16 >> 1)
      {
        v19 = sub_1C97CE0F4(v16);
        sub_1C97B7A1C(v19, v17 + 1, 1);
        v5 = v25;
      }

      *(v5 + 16) = v17 + 1;
      v18 = (v5 + 24 * v17);
      v18[4] = value;
      v10 += 3;
      v18[5] = v14;
      v18[6] = epoch;
      --v4;
    }

    while (v4);
  }

  return v5;
}

uint64_t sub_1C97CC5B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v8 = a2;
    v10 = HIDWORD(a2);
    v51 = MEMORY[0x1E69E7CC0];
    v11 = sub_1C97B7B28(0, v4, 0);
    v5 = v51;
    v19 = (a4 + 72);
    do
    {
      v20 = *(v19 - 2);
      v21 = *v19;
      v48 = *(v19 - 5);
      *&v49 = *(v19 - 3);
      v22 = *(v19 - 1);
      v23 = sub_1C97CE04C(v11, v12, v13, v14, v15, v16, v17, v18, v42, v44, v46, v47, a1, __SPAIR64__(v10, v8), a3, v48);
      v26 = CMTimeAdd(v25, v23, v24);
      v34 = sub_1C97CE120(v26, v27, v28, v29, v30, v31, v32, v33, v43, v20, v22, v21, v45);
      v11 = CMTimeRangeMake(v36, v34, v35);
      v38 = *(v51 + 16);
      v37 = *(v51 + 24);
      if (v38 >= v37 >> 1)
      {
        v40 = sub_1C97CE0F4(v37);
        v11 = sub_1C97B7B28(v40, v38 + 1, 1);
      }

      v19 += 6;
      *(v51 + 16) = v38 + 1;
      v39 = (v51 + 48 * v38);
      v39[3] = v49;
      v39[4] = v50;
      v39[2] = v48;
      --v4;
    }

    while (v4);
  }

  return v5;
}

id sub_1C97CC704(void *a1)
{
  v2 = [a1 sampleTime];
  result = [a1 sampleRate];
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -2147483650.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 2147483650.0)
  {
    CMTimeMake(&v5, v2, v4);
    return v5.value;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C97CC7A4(CMTimeValue a1, uint64_t a2, CMTimeEpoch a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
  sub_1C999C264();
  if (v5)
  {
  }

  else
  {
    sub_1C999C264();
    sub_1C97CDE50(v11);
    v14 = v13;
    sub_1C97CDE50(v10);
    time.value = a1;
    *&time.timescale = a2;
    time.epoch = a3;
    CMTimeMultiplyByRatio(&v16, &time, v14, v15);
  }

  return sub_1C97CE12C();
}

void *sub_1C97CC8B4@<X0>(void *(*a1)(void *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(v9);
  v4 = v9[1];
  v5 = v9[2];
  v6 = v9[3];
  v7 = v9[4];
  v8 = v9[5];
  *a2 = v9[0];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  return result;
}

CMTimeValue sub_1C97CC968(uint64_t a1, uint64_t a2, CMTimeEpoch a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, CMTimeRoundingMethod method)
{
  v11 = a8;
  *&time.timescale = a2;
  time.epoch = a3;
  v14 = HIDWORD(a8);
  v45 = a7;
  v15 = sub_1C97CE04C(a1, a2, a3, a4, a5, a6, a7, a8, a6, v36, v39, v41, a7, a8, a9, a1);
  CMTimeSubtract(v17, v15, v16);
  type metadata accessor for SNTimeUtils();
  result = sub_1C97CC7A4(v37, v40, v42, a4, a5);
  if (!v10)
  {
    time.value = result;
    *&time.timescale = v19;
    time.epoch = v20;
    CMTimeConvertScale(&v43, &time, 1, method);
    v21 = sub_1C9A93C98();
    sub_1C97CDE50(v21);
    v23 = v22;

    time.value = a4;
    *&time.timescale = a5;
    time.epoch = v35;
    v24 = CMTimeMultiply(&v43, &time, v23);
    *&time.timescale = *&v43.timescale;
    time.epoch = v43.epoch;
    v32 = sub_1C97CE04C(v24, v25, v26, v27, v28, v29, v30, v31, v35, v37, v40, v42, v45, __SPAIR64__(v14, v11), a9, v43.value);
    CMTimeAdd(v34, v32, v33);
    return v38;
  }

  return result;
}

double sub_1C97CCABC@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, CMTimeEpoch a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, CMTimeEpoch a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, CMTimeRoundingMethod method)
{
  type metadata accessor for SNTimeUtils();
  v18 = a3;
  v29 = a3;
  v19 = a1;
  v20 = sub_1C97CC968(a4, a5, a6, a7, a8, a10, a1, a2, v29, method);
  if (!v35)
  {
    v24 = v20;
    v25 = v21;
    v26 = v22;
    time1.start.value = v19;
    v27 = HIDWORD(v21);
    *&time1.start.timescale = a2;
    time1.start.epoch = v18;
    time2.value = v20;
    *&time2.timescale = v21;
    time2.epoch = v22;
    if (CMTimeCompare(&time1.start, &time2) < 1)
    {
      time2.value = v19;
      *&time2.timescale = a2;
      time2.epoch = v18;
      end.value = v24;
      end.timescale = v25;
      end.flags = v27;
      end.epoch = v26;
      CMTimeRangeFromTimeToTime(&time1, &time2, &end);
      v28 = *&time1.start.epoch;
      *a9 = *&time1.start.value;
      a9[1] = v28;
      result = *&time1.duration.timescale;
      a9[2] = *&time1.duration.timescale;
    }

    else
    {
      type metadata accessor for SNError();
      sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD00000000000001ELL, 0x80000001C9AD4A80);
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1C97CCCB8(uint64_t a1, unint64_t a2, CMTimeEpoch a3, uint64_t a4, uint64_t a5, CMTimeEpoch a6, uint64_t a7, uint64_t a8, uint64_t a9, CMTimeRoundingMethod a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void (*a15)(CMTimeRange *, uint64_t, void *, uint64_t))
{
  sub_1C97CCABC(a1, a2, a3, a4, a5, a6, a7, a8, &v22, a9, a10);
  if (v15)
  {
  }

  else
  {
    v21 = v22;
    v16 = *MEMORY[0x1E6960CC0];
    v17 = *(MEMORY[0x1E6960CC0] + 16);
    time1.start = v22.duration;
    time2.value = v16;
    *&time2.timescale = *(MEMORY[0x1E6960CC0] + 8);
    time2.epoch = v17;
    if (CMTimeCompare(&time1.start, &time2) > 0)
    {
      a15(&v22, a12, a13, a14);
    }

    time1 = v21;
    CMTimeRangeGetEnd(&time2, &time1);
  }

  return sub_1C97CE12C();
}

uint64_t sub_1C97CCDD0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = sub_1C97CE120(a1, a2, a3, a4, a5, a6, a7, a8, v27, a2, a3, a4, *a1);
  result = CMTimeRangeContainsTime(v10, v11);
  if (!result)
  {
    type metadata accessor for SNError();
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0x2820656D6974, 0xE600000000000000);
    type metadata accessor for CMTime(0);
    sub_1C97CE120(v13, v14, v13, v15, v16, v17, v18, v19, v28, 0, 0xE000000000000000, v33, v8);
    sub_1C9A93728();
    MEMORY[0x1CCA90230](0xD000000000000019, 0x80000001C9AD4AC0);
    v35 = *a1;
    type metadata accessor for CMTimeRange(0);
    sub_1C97CE120(v20, v21, v20, v22, v23, v24, v25, v26, v29, v30, v32, v34, v35);
    sub_1C9A93728();
    MEMORY[0x1CCA90230](41, 0xE100000000000000);
    sub_1C97CE07C(v31, "com.apple.SoundAnalysis");

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C97CCF4C(uint64_t result, int a2)
{
  if (*(result + 8) != a2 || *(result + 32) != a2)
  {
    type metadata accessor for SNError();
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0xD000000000000039, 0x80000001C9AD4AE0);
    v2 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v2);

    sub_1C97CE07C(0, "com.apple.SoundAnalysis");

    return swift_willThrow();
  }

  return result;
}

void sub_1C97CD03C(CMTimeValue a1, uint64_t a2, CMTimeEpoch a3, unint64_t a4)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (!a4)
  {
    goto LABEL_5;
  }

  v7 = sub_1C9A32C98();
  if (sub_1C9A33634(&time, v7 + 32, a4, 0, a4) != a4)
  {
    __break(1u);
LABEL_5:
    v7 = v6;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {

    return;
  }

  v22 = v6;
  sub_1C97B7A1C(0, v8, 0);
  v9 = 32;
  v10 = v6;
  while (1)
  {
    v11 = *(v7 + v9);
    if (v11 >> 31)
    {
      break;
    }

    time.value = a1;
    *&time.timescale = a2;
    time.epoch = a3;
    CMTimeMultiply(&v21, &time, v11);
    value = v21.value;
    v13 = *&v21.timescale;
    epoch = v21.epoch;
    v22 = v10;
    v16 = *(v10 + 16);
    v15 = *(v10 + 24);
    if (v16 >= v15 >> 1)
    {
      v18 = sub_1C97CE0F4(v15);
      sub_1C97B7A1C(v18, v16 + 1, 1);
      v10 = v22;
    }

    *(v10 + 16) = v16 + 1;
    v17 = (v10 + 24 * v16);
    v17[4] = value;
    v17[5] = v13;
    v17[6] = epoch;
    v9 += 8;
    if (!--v8)
    {

      return;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

CMTime *sub_1C97CD1BC(uint64_t a1, uint64_t a2, CMTimeEpoch a3, uint64_t a4)
{
  v9 = *a4;
  v10 = *(a4 + 8);
  v11 = *(a4 + 16);
  type metadata accessor for SNTimeUtils();
  sub_1C97CC7A4(v9, v10, v11, a1, a2);
  if (v4)
  {
    return a3;
  }

  sub_1C97CE05C();
  CMTimeConvertScale(v14, v12, v13, kCMTimeRoundingMethod_RoundTowardPositiveInfinity);
  value = v28.value;
  v16 = *(a4 + 16);
  *&v27.start.value = *a4;
  *&v27.start.epoch = v16;
  *&v27.duration.timescale = *(a4 + 32);
  CMTimeRangeGetEnd(&v28, &v27);
  sub_1C97CC7A4(v28.value, *&v28.timescale, v28.epoch, a1, a2);
  sub_1C97CE05C();
  result = CMTimeConvertScale(v20, v18, v19, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
  v21 = v28.value - value;
  if (v28.value < value)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (__OFSUB__(v28.value, value))
  {
    __break(1u);
    goto LABEL_13;
  }

  v22 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (value < 0xFFFFFFFF80000000)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (value > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27.start.value = a1;
  *&v27.start.timescale = a2;
  v27.start.epoch = a3;
  result = CMTimeMultiply(&v28, &v27.start, value);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v23 = v28.value;
    v24 = *&v28.timescale;
    epoch = v28.epoch;
    sub_1C97CD03C(a1, a2, a3, v22);
    a3 = sub_1C97CC488(v23, v24, epoch, v26);

    return a3;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1C97CD354(uint64_t a1, uint64_t a2, uint64_t a3, CMTimeEpoch a4)
{
  v7 = sub_1C97CD1BC(a2, a3, a4, a1);
  if (!v4)
  {
    v8 = v7;
    sub_1C97A2CEC(&qword_1EC3C70B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9EE60;
    sub_1C97A2CEC(&unk_1EC3C69D0);
    v10 = swift_initStackObject();
    v11 = *a1;
    *(v10 + 16) = xmmword_1C9A9EDD0;
    *(v10 + 32) = v11;
    *(v10 + 48) = *(a1 + 16);
    *(inited + 32) = v10;
    *(inited + 40) = v8;
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_1C9A9EDD0;
    *(v12 + 32) = sub_1C9A92F08();
    *(v12 + 40) = v13;
    *(v12 + 44) = v14;
    *(v12 + 48) = v15;
    *(inited + 48) = v12;
    sub_1C98BC8A8(inited);
    v17 = v16;
    swift_setDeallocating();
    sub_1C985D6AC();
    v18 = sub_1C9824F58(v17);

    v20 = *(v18 + 16);
    if (v20)
    {
      v21 = (v18 + 80);
      v5 = MEMORY[0x1E69E7CC0];
      do
      {
        if ((*v21 & 1) == 0)
        {
          v27 = *(v21 - 2);
          v28 = *(v21 - 3);
          v26 = *(v21 - 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C97E52A4();
            v5 = v24;
          }

          v22 = *(v5 + 16);
          if (v22 >= *(v5 + 24) >> 1)
          {
            sub_1C97E52A4();
            v5 = v25;
          }

          *(v5 + 16) = v22 + 1;
          v23 = (v5 + 48 * v22);
          v23[2] = v28;
          v23[3] = v27;
          v23[4] = v26;
        }

        v21 += 52;
        --v20;
      }

      while (v20);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }
  }

  return v5;
}

int64_t sub_1C97CD564(CMTimeValue *a1, uint64_t a2, uint64_t a3, CMTimeEpoch a4, uint64_t a5, unint64_t timescale, uint64_t a7)
{
  result = -a5;
  if (__OFSUB__(0, a5))
  {
    __break(1u);
  }

  else
  {
    v16 = CMTimeMake(&start, result, timescale);
    value = start.value;
    v18 = *&start.timescale;
    v19 = *a1;
    v20 = a1[2];
    duration.epoch = start.epoch;
    start.value = v19;
    *&start.timescale = a1[1];
    start.epoch = v20;
    v28 = sub_1C97CE04C(v16, v21, v22, v23, v24, v25, v26, v27, v33, v34, v36, v37, value, v18, duration.epoch, v19);
    CMTimeAdd(v30, v28, v29);
    v31 = a1[3];
    duration.epoch = a1[5];
    start = v35;
    duration.value = v31;
    *&duration.timescale = a1[4];
    CMTimeRangeMake(&v40, &start, &duration);
    v32 = sub_1C97CD354(&v40, a2, a3, a4);
    if (!v7)
    {
      a7 = sub_1C97CC5B4(a5, timescale, a7, v32);
    }

    return a7;
  }

  return result;
}

CMTimeValue sub_1C97CD698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = *a4;
  v10 = sub_1C97CE0AC(a1, a2, a3, a4, a5, a6, a7, a8, v35, method, v41, v44, v48, v51, *a4, a4[1], a4[2], a1);
  CMTimeSubtract(v12, v10, v11);
  result = sub_1C97CC968(v45, v49 | (HIDWORD(v49) << 32), *v52, a4[3], a4[4], a4[5], *MEMORY[0x1E6960CC0], *(MEMORY[0x1E6960CC0] + 8), *(MEMORY[0x1E6960CC0] + 16), kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
  if (!v8)
  {
    v21 = sub_1C97CE0AC(result, v14, v15, v16, v17, v18, v19, v20, v36, methoda, v42, v45, v49, *v52, result, v14, v15, v45);
    v24 = CMTimeSubtract(v23, v21, v22);
    v32 = sub_1C97CE0AC(v24, v25, v26, v27, v28, v29, v30, v31, v37, methodb, v43, v46, v50, v53, v46, v50, v53, v54);
    CMTimeAdd(v34, v32, v33);
    return *v47;
  }

  return result;
}

uint64_t sub_1C97CD7B8(CMTimeValue *a1, uint64_t a2)
{
  v4 = a2;
  v5 = sub_1C97CD564(a1, *(a2 + 24), *(a2 + 32), *(a2 + 40), *a2, *(a2 + 8), *(a2 + 16));
  if (v3)
  {
    return v2;
  }

  v6 = v5;
  v7 = *(v5 + 16);
  if (!v7)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v33 = MEMORY[0x1E69E7CC0];
  result = sub_1C97B7B28(0, v7, 0);
  v13 = 0;
  v2 = v33;
  v14 = (v6 + 72);
  v31 = v4;
  v32 = v6;
  v30 = v7;
  while (v13 < *(v6 + 16))
  {
    v15 = *(v14 - 2);
    v16 = *(v14 - 1);
    v17 = *v14;
    result = sub_1C97CD698(*(v14 - 5), *(v14 - 4), *(v14 - 3), v4, v9, v10, v11, v12);
    v18 = result;
    v20 = v19;
    v22 = v21;
    v24 = *(v33 + 16);
    v23 = *(v33 + 24);
    v25 = v24 + 1;
    if (v24 >= v23 >> 1)
    {
      v27 = sub_1C97CE0F4(v23);
      v29 = v28;
      result = sub_1C97B7B28(v27, v28, 1);
      v25 = v29;
    }

    *(v33 + 16) = v25;
    v26 = (v33 + 48 * v24);
    v26[4] = v18;
    ++v13;
    v26[5] = v20;
    v26[6] = v22;
    v26[7] = v15;
    v26[8] = v16;
    v26[9] = v17;
    v14 += 6;
    v4 = v31;
    v6 = v32;
    if (v30 == v13)
    {

      return v2;
    }
  }

  __break(1u);
  return result;
}

char *sub_1C97CD960(unsigned int a1, id a2)
{
  result = [a2 sampleTime];
  v5 = __OFADD__(result, a1);
  v6 = &result[a1];
  if (v5)
  {
    __break(1u);
  }

  else
  {
    [a2 sampleRate];
    v8 = v7;
    v9 = objc_allocWithZone(MEMORY[0x1E69584A0]);

    return [v9 initWithSampleTime:v6 atRate:v8];
  }

  return result;
}

char *sub_1C97CD9E8()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v1 = mach_timebase_info(v3);
  result = sub_1C9A3B42C(v1);
  if (!v0)
  {
    return v3[0];
  }

  return result;
}

char *sub_1C97CDA5C(unint64_t a1)
{
  result = sub_1C97CD9E8();
  if (v1)
  {
    return v4;
  }

  v5 = 1000 * HIDWORD(result);
  if (is_mul_ok(v5, a1))
  {
    if (result)
    {
      return (v5 * a1 / result);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *static SNTimeUtils.timestampToDate(machContinuousTime:)(uint64_t a1)
{
  if (!mach_get_times() && (v3 = a1 == 0, v4 = -a1, v4 != 0 && v3))
  {
    type metadata accessor for SNTimeUtils();
    result = sub_1C97CDC30(v4);
    if (!v1)
    {
      return sub_1C9A916A8();
    }
  }

  else
  {
    sub_1C97CDBB8();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1C97CDBB8()
{
  result = qword_1EC3C70A0;
  if (!qword_1EC3C70A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C70A0);
  }

  return result;
}

char *sub_1C97CDC30(uint64_t a1)
{
  result = sub_1C97CD9E8();
  if (!v1)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if ((result * a1) >> 64 == (result * a1) >> 63)
    {
      if (result >> 32)
      {
        return result;
      }

LABEL_8:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_8;
  }

  return result;
}

id SNTimeUtils.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNTimeUtils.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SNTimeUtils();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SNTimeUtils.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SNTimeUtils();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for SNTimeUtils.DomainError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C97CDDFC()
{
  result = qword_1EC3C70A8;
  if (!qword_1EC3C70A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C70A8);
  }

  return result;
}

void sub_1C97CDE50(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v4 = sub_1C97CE100();
  v6 = [v4 v5];
  v7 = v2;
  if (v6 != 1)
  {
    v8 = sub_1C97CE100();
    if ([v8 v9] == -1)
    {
      v7 = v3;
    }

    else
    {
      v7 = a1;
    }
  }

  v10 = v7;
  v11 = [v10 longLongValue];

  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v11 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
  }
}

id sub_1C97CDF38(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v4 = sub_1C97CE100();
  v6 = [v4 v5];
  v7 = v2;
  if (v6 != 1)
  {
    v8 = sub_1C97CE100();
    if ([v8 v9] == -1)
    {
      v7 = v3;
    }

    else
    {
      v7 = a1;
    }
  }

  v10 = v7;
  v11 = [v10 longLongValue];

  return v11;
}

uint64_t sub_1C97CE028(uint64_t a1)
{
  if (*(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

id sub_1C97CE07C@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{

  return sub_1C9929478(0xD000000000000017, (a2 - 32) | 0x8000000000000000, 1, 0, a1, v2);
}

uint64_t sub_1C97CE0BC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, CMTimeEpoch a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, CMTimeEpoch a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10@<Q0>)
{

  return sub_1C97CCCB8(a1, a2, a3, a4, a5, a6, a7, a8, a9, v10, a10.n128_i64[0], a10.n128_i64[1], v11, v12, v13);
}

CMTimeRange *sub_1C97CE140(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, double a18, uint64_t a19, CMTime *start, CMTimeRange *start_8, uint64_t start_16, uint64_t a23)
{
  a18 = a9;

  return CMTimeRangeMake(&a23, &start, &a17);
}

void sub_1C97CE160(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1C987EB40(a2, a3, *a1);
  if (!v4)
  {
    *a4 = v6;
  }
}

uint64_t sub_1C97CE19C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{

  v6 = sub_1C9A083B4(v5);
  v7 = sub_1C9884E94(a1, v6);

  if (!v2)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1C97CE20C@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  sub_1C97A2CEC(&qword_1EC3C6948);
  inited = swift_initStackObject();
  v11 = *a2;
  v8 = v11;
  *(inited + 16) = xmmword_1C9A9EDD0;
  *(inited + 32) = v8;
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  sub_1C97CE434(&v11, &v10);
  sub_1C97CE3DC(v5, v6);
  result = sub_1C9A92348();
  *a3 = result;
  return result;
}

uint64_t sub_1C97CE2C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = sub_1C9A32230(*(a2 + 16), *(a2 + 24)), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 16 * v5);
    *a3 = v7;
    return sub_1C97CE3DC(v7, *(&v7 + 1));
  }

  else
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v9 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1C97CE350(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1C97A5A8C(a1, v1);
  return (*(v2 + 8))(sub_1C979B1A4, 0, MEMORY[0x1E6969080], v1, v2);
}

uint64_t sub_1C97CE3DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C97CE4A4()
{
  sub_1C97AA95C();
  if (qword_1EC3C57B0 != -1)
  {
    sub_1C97DA638();
    swift_once();
  }

  sub_1C97DA824();
  if (v1)
  {
    if (qword_1EC3C5D88 != -1)
    {
      sub_1C97DA69C();
    }

    v2 = sub_1C97DA6BC();
    if (v4)
    {
      sub_1C97DAB98();
      sub_1C97A2CEC(&unk_1EC3CA040);
      swift_willThrowTypedImpl();
      sub_1C97DA91C();

      return v5();
    }

    else
    {
      sub_1C97DA758(v2, v3);

      v10 = swift_task_alloc();
      v11 = sub_1C97DA90C(v10);
      *v11 = v12;
      sub_1C97DA6F4(v11);

      return sub_1C985E490();
    }
  }

  else
  {
    if (qword_1EC3C5DB0 != -1)
    {
      sub_1C97DA67C();
    }

    *(v0 + 368) = qword_1EC3D31F8;

    v7 = swift_task_alloc();
    v8 = sub_1C97DAAC0(v7);
    *v8 = v9;
    sub_1C97DA950(v8);

    return sub_1C98E7754();
  }
}

uint64_t sub_1C97CE698()
{
  sub_1C97AA95C();
  sub_1C97DA834();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  *v5 = *v2;
  sub_1C97DABF0(v6, v7, v8);
  if (v1)
  {

    sub_1C97DA844();

    return v9();
  }

  else
  {
    *(v4 + 416) = v0;
    v11 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1C97CE7C0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 408) = v0;

  if (!v0)
  {
    sub_1C97DABD8();
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C97CE8CC()
{
  sub_1C97AA95C();
  sub_1C97DAB58();
  sub_1C97A2CEC(&qword_1EC3C7130);
  if (sub_1C97DAA34())
  {
    v1 = sub_1C97DA794();

    return v2(v1);
  }

  else
  {
    sub_1C97D9B5C();
    sub_1C97AA928();
    swift_allocError();
    sub_1C97DAA04();
    swift_willThrow();
    sub_1C97A592C(v0 + 200);
    sub_1C97DA91C();

    return v4();
  }
}

uint64_t sub_1C97CE9A8()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = [sub_1C97DAAB4() remoteObjectProxy];
  sub_1C97DAB40();
  swift_unknownObjectRelease();
  sub_1C97A2CEC(&qword_1EC3C7128);
  sub_1C97DA89C();
  sub_1C97DAA9C();
  sub_1C97DAA28();
  v4 = swift_allocObject();
  sub_1C97DA854(v4);
  sub_1C97DA994();
  swift_unknownObjectRetain();
  v5 = sub_1C97DAB28();
  v6 = sub_1C97DAAA8(v5);
  v6[2] = &unk_1C9A9F6A0;
  v6[3] = v1;
  v6[4] = v2;
  v6[5] = v0;
  sub_1C97DA7DC();

  v7 = swift_task_alloc();
  v8 = sub_1C97DAACC(v7);
  *v8 = v9;
  sub_1C97DA744(v8);
  sub_1C97DABB0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1C97CEACC()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  v4[57] = v8;
  v4[58] = v0;

  if (!v0)
  {
    v4[59] = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C97CEBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1C97DAA84();
  sub_1C97DAA1C();
  sub_1C97DA878();

  sub_1C97DAB10();
  swift_unknownObjectRelease();

  sub_1C97DA604();
  v23 = v10;
  v11 = swift_task_alloc();
  v12 = sub_1C97DA8FC(v11);
  *v12 = v13;
  sub_1C97DA6D8(v12);
  sub_1C97DAC68();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t sub_1C97CECAC()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA76C();
    v10 = sub_1C97DA8BC();
    v11 = sub_1C97DA8EC(v10);
    *v11 = v12;
    v13 = sub_1C97DA800(v11);

    return v14(v13);
  }
}

uint64_t sub_1C97CEDFC()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 504) = v0;

  if (!v0)
  {
    sub_1C97DAC08();
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C97CEF14()
{
  sub_1C97AA95C();
  if (qword_1EC3C57B0 != -1)
  {
    sub_1C97DA638();
    swift_once();
  }

  sub_1C97DA824();
  if (v1)
  {
    if (qword_1EC3C5D88 != -1)
    {
      sub_1C97DA69C();
    }

    v2 = sub_1C97DA6BC();
    if (v4)
    {
      sub_1C97DAB98();
      sub_1C97A2CEC(&unk_1EC3CA040);
      swift_willThrowTypedImpl();
      sub_1C97DA91C();

      return v5();
    }

    else
    {
      sub_1C97DA758(v2, v3);

      v10 = swift_task_alloc();
      v11 = sub_1C97DA90C(v10);
      *v11 = v12;
      sub_1C97DA6F4(v11);

      return sub_1C985E490();
    }
  }

  else
  {
    if (qword_1EC3C5DB0 != -1)
    {
      sub_1C97DA67C();
    }

    *(v0 + 368) = qword_1EC3D31F8;

    v7 = swift_task_alloc();
    v8 = sub_1C97DAAC0(v7);
    *v8 = v9;
    sub_1C97DA950(v8);

    return sub_1C98E7754();
  }
}

uint64_t sub_1C97CF108()
{
  sub_1C97AA95C();
  sub_1C97DA834();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  *v5 = *v2;
  sub_1C97DABF0(v6, v7, v8);
  if (v1)
  {

    sub_1C97DA844();

    return v9();
  }

  else
  {
    *(v4 + 416) = v0;
    v11 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1C97CF230()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 408) = v0;

  if (!v0)
  {
    sub_1C97DABD8();
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C97CF33C()
{
  sub_1C97AA95C();
  sub_1C97DAB58();
  sub_1C97A2CEC(&qword_1EC3C7130);
  if (sub_1C97DAA34())
  {
    v1 = sub_1C97DA794();

    return v2(v1);
  }

  else
  {
    sub_1C97D9B5C();
    sub_1C97AA928();
    swift_allocError();
    sub_1C97DAA04();
    swift_willThrow();
    sub_1C97A592C(v0 + 200);
    sub_1C97DA91C();

    return v4();
  }
}

uint64_t sub_1C97CF418()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = [sub_1C97DAAB4() remoteObjectProxy];
  sub_1C97DAB40();
  swift_unknownObjectRelease();
  sub_1C97A2CEC(&qword_1EC3C7128);
  sub_1C97DA89C();
  sub_1C97DAA9C();
  sub_1C97DAA28();
  v4 = swift_allocObject();
  sub_1C97DA854(v4);
  sub_1C97DA994();
  swift_unknownObjectRetain();
  v5 = sub_1C97DAB28();
  v6 = sub_1C97DAAA8(v5);
  v6[2] = &unk_1C9A9F660;
  v6[3] = v1;
  v6[4] = v2;
  v6[5] = v0;
  sub_1C97DA7DC();

  v7 = swift_task_alloc();
  v8 = sub_1C97DAACC(v7);
  *v8 = v9;
  sub_1C97DA744(v8);
  sub_1C97DABB0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1C97CF53C()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  v4[57] = v8;
  v4[58] = v0;

  if (!v0)
  {
    v4[59] = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C97CF640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1C97DAA84();
  sub_1C97DAA1C();
  sub_1C97DA878();

  sub_1C97DAB10();
  swift_unknownObjectRelease();

  sub_1C97DA604();
  v23 = v10;
  v11 = swift_task_alloc();
  v12 = sub_1C97DA8FC(v11);
  *v12 = v13;
  sub_1C97DA6D8(v12);
  sub_1C97DAC68();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t sub_1C97CF71C()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA76C();
    v10 = sub_1C97DA8BC();
    v11 = sub_1C97DA8EC(v10);
    *v11 = v12;
    v13 = sub_1C97DA800(v11);

    return v14(v13);
  }
}

uint64_t sub_1C97CF86C(uint64_t a1, uint64_t a2)
{
  *(v2 + 344) = a1;
  *(v2 + 352) = a2;
  return sub_1C97DA66C();
}

uint64_t sub_1C97CF880()
{
  sub_1C97AA95C();
  if (qword_1EC3C57B0 != -1)
  {
    sub_1C97DA638();
    swift_once();
  }

  sub_1C97DA824();
  if (v3)
  {
    if (qword_1EC3C5D88 != -1)
    {
      sub_1C97DA69C();
    }

    v4 = sub_1C97DAA10();
    v2[45] = v4;
    v2[46] = v1;
    v2[47] = *(v6 + 32);
    if (*(v6 + 40))
    {
      v2[41] = v0;
      v7 = v0;
      sub_1C97A2CEC(&unk_1EC3CA040);
      swift_willThrowTypedImpl();
      sub_1C97DA91C();

      return v8();
    }

    else
    {
      sub_1C97DA758(v4, v5);

      swift_task_alloc();
      sub_1C97DA928();
      v2[52] = v11;
      *v11 = v12;
      v11[1] = sub_1C97CFBD4;

      return sub_1C985E490();
    }
  }

  else
  {
    if (qword_1EC3C5DB0 != -1)
    {
      sub_1C97DA67C();
    }

    v2[48] = qword_1EC3D31F8;

    v10 = swift_task_alloc();
    v2[49] = v10;
    *v10 = v2;
    sub_1C97DA950(v10);

    return sub_1C98E7754();
  }
}

uint64_t sub_1C97CFAA4()
{
  sub_1C97AA95C();
  sub_1C97DA834();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  *v5 = *v2;
  v4[50] = v6;
  v4[51] = v7;

  if (v1)
  {

    sub_1C97DA844();

    return v8();
  }

  else
  {
    v4[54] = v0;
    v10 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1C97CFBD4()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 424) = v0;

  if (!v0)
  {
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C97CFCE8()
{
  sub_1C97AA95C();
  sub_1C97DAB58();
  sub_1C97A2CEC(&qword_1EC3C7130);
  if (swift_dynamicCast())
  {
    sub_1C97A592C(v0 + 200);
    **(v0 + 344) = *(v0 + 336);
  }

  else
  {
    sub_1C97D9B5C();
    sub_1C97AA928();
    swift_allocError();
    sub_1C97DAA04();
    swift_willThrow();
    sub_1C97A592C(v0 + 200);
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C97CFDC8()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C97CFE38()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 432);
  v2 = *(v0 + 408);
  v3 = [*(v0 + 400) remoteObjectProxy];
  sub_1C97DAB40();
  swift_unknownObjectRelease();
  sub_1C97A2CEC(&qword_1EC3C7128);
  sub_1C97DA89C();
  *(v0 + 440) = *(v0 + 312);
  sub_1C97DAA28();
  v4 = swift_allocObject();
  *(v0 + 448) = v4;
  sub_1C97DA95C(v4);
  sub_1C97DA994();
  swift_unknownObjectRetain();
  v5 = sub_1C97DAB28();
  *(v0 + 456) = v5;
  v5[2] = &unk_1C9A9F890;
  v5[3] = v4;
  v5[4] = v1;
  v5[5] = v2;
  sub_1C97DA7DC();

  v6 = swift_task_alloc();
  *(v0 + 464) = v6;
  *v6 = v0;
  sub_1C97DA744(v6);
  sub_1C97DABB0();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C97CFF74()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  v4[59] = v8;
  v4[60] = v0;

  if (!v0)
  {
    v4[61] = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C97D0078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1C97DAA84();
  sub_1C97DAA1C();
  v10 = *(v9 + 400);

  sub_1C97DAB10();
  swift_unknownObjectRelease();

  sub_1C97DA604();
  v23 = v11;
  swift_task_alloc();
  sub_1C97DA928();
  *(v9 + 496) = v12;
  *v12 = v13;
  v12[1] = sub_1C97D0180;
  sub_1C97DAC68();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t sub_1C97D0180()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 504) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA76C();
    sub_1C97DA8BC();
    sub_1C97DA928();
    *(v3 + 512) = v10;
    *v10 = v11;
    v10[1] = sub_1C97D0374;
    sub_1C97DAB88();

    return v12();
  }
}

uint64_t sub_1C97D02DC()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 400);

  sub_1C97DAD30();
  swift_unknownObjectRelease();

  sub_1C97DA91C();
  sub_1C97DABB0();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C97D0374()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 520) = v0;

  if (!v0)
  {
    sub_1C97D9AA4(v3 + 16);
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C97D0474()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C97D04D0()
{
  sub_1C97AA884();

  **(v0 + 344) = *(v0 + 320);
  sub_1C97DA8DC();

  return v1();
}

uint64_t sub_1C97D0534()
{
  sub_1C97AA884();

  sub_1C97D9AA4(v0 + 16);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C97D05AC()
{
  sub_1C97AA95C();
  if (qword_1EC3C57B0 != -1)
  {
    sub_1C97DA638();
    swift_once();
  }

  sub_1C97DA824();
  if (v1)
  {
    if (qword_1EC3C5D88 != -1)
    {
      sub_1C97DA69C();
    }

    v2 = sub_1C97DA6BC();
    if (v4)
    {
      sub_1C97DAB98();
      sub_1C97A2CEC(&unk_1EC3CA040);
      swift_willThrowTypedImpl();
      sub_1C97DA91C();

      return v5();
    }

    else
    {
      sub_1C97DA758(v2, v3);

      v10 = swift_task_alloc();
      v11 = sub_1C97DA90C(v10);
      *v11 = v12;
      sub_1C97DA6F4(v11);

      return sub_1C985E490();
    }
  }

  else
  {
    if (qword_1EC3C5DB0 != -1)
    {
      sub_1C97DA67C();
    }

    *(v0 + 368) = qword_1EC3D31F8;

    v7 = swift_task_alloc();
    v8 = sub_1C97DAAC0(v7);
    *v8 = v9;
    sub_1C97DA950(v8);

    return sub_1C98E7754();
  }
}

uint64_t sub_1C97D07A0()
{
  sub_1C97AA95C();
  sub_1C97DA834();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  *v5 = *v2;
  sub_1C97DABF0(v6, v7, v8);
  if (v1)
  {

    sub_1C97DA844();

    return v9();
  }

  else
  {
    *(v4 + 416) = v0;
    v11 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1C97D08C8()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 408) = v0;

  if (!v0)
  {
    sub_1C97DABD8();
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C97D09D4()
{
  sub_1C97AA95C();
  sub_1C97DAB58();
  sub_1C97A2CEC(&qword_1EC3C7130);
  if (sub_1C97DAA34())
  {
    v1 = sub_1C97DA794();

    return v2(v1);
  }

  else
  {
    sub_1C97D9B5C();
    sub_1C97AA928();
    swift_allocError();
    sub_1C97DAA04();
    swift_willThrow();
    sub_1C97A592C(v0 + 200);
    sub_1C97DA91C();

    return v4();
  }
}

uint64_t sub_1C97D0AB0()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = [sub_1C97DAAB4() remoteObjectProxy];
  sub_1C97DAB40();
  swift_unknownObjectRelease();
  sub_1C97A2CEC(&qword_1EC3C7128);
  sub_1C97DA89C();
  sub_1C97DAA9C();
  sub_1C97DAA28();
  v4 = swift_allocObject();
  sub_1C97DA854(v4);
  sub_1C97DA994();
  swift_unknownObjectRetain();
  v5 = sub_1C97DAB28();
  v6 = sub_1C97DAAA8(v5);
  v6[2] = &unk_1C9A9F6B0;
  v6[3] = v1;
  v6[4] = v2;
  v6[5] = v0;
  sub_1C97DA7DC();

  v7 = swift_task_alloc();
  v8 = sub_1C97DAACC(v7);
  *v8 = v9;
  sub_1C97DA744(v8);
  sub_1C97DABB0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1C97D0BD4()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  v4[57] = v8;
  v4[58] = v0;

  if (!v0)
  {
    v4[59] = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C97D0CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1C97DAA84();
  sub_1C97DAA1C();
  sub_1C97DA878();

  sub_1C97DAB10();
  swift_unknownObjectRelease();

  sub_1C97DA604();
  v23 = v10;
  v11 = swift_task_alloc();
  v12 = sub_1C97DA8FC(v11);
  *v12 = v13;
  sub_1C97DA6D8(v12);
  sub_1C97DAC68();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t sub_1C97D0DB4()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA76C();
    v10 = sub_1C97DA8BC();
    v11 = sub_1C97DA8EC(v10);
    *v11 = v12;
    v13 = sub_1C97DA800(v11);

    return v14(v13);
  }
}

uint64_t sub_1C97D0F04(uint64_t a1, uint64_t a2)
{
  *(v2 + 360) = a1;
  *(v2 + 368) = a2;
  return sub_1C97DA66C();
}

uint64_t sub_1C97D0F18()
{
  sub_1C97AA95C();
  if (qword_1EC3C57B0 != -1)
  {
    sub_1C97DA638();
    swift_once();
  }

  sub_1C97DA824();
  if (v3)
  {
    if (qword_1EC3C5D88 != -1)
    {
      sub_1C97DA69C();
    }

    v4 = sub_1C97DAA10();
    *(v2 + 376) = v4;
    *(v2 + 384) = v1;
    v7 = *(v6 + 32);
    *(v2 + 392) = v7;
    if (*(v6 + 40))
    {
      *(v2 + 352) = v0;
      v8 = v0;
      sub_1C97A2CEC(&unk_1EC3CA040);
      swift_willThrowTypedImpl();
      sub_1C97DA91C();

      return v9();
    }

    else
    {
      *(v2 + 112) = v0;
      *(v2 + 120) = v4;
      *(v2 + 128) = v5 & 1;
      *(v2 + 136) = v1;
      *(v2 + 144) = v7;

      swift_task_alloc();
      sub_1C97DA928();
      *(v2 + 432) = v12;
      *v12 = v13;
      v12[1] = sub_1C97D1278;

      return sub_1C985E490();
    }
  }

  else
  {
    if (qword_1EC3C5DB0 != -1)
    {
      sub_1C97DA67C();
    }

    *(v2 + 400) = qword_1EC3D31F8;

    v11 = swift_task_alloc();
    *(v2 + 408) = v11;
    *v11 = v2;
    sub_1C97DA950(v11);

    return sub_1C98E7754();
  }
}

uint64_t sub_1C97D1148()
{
  sub_1C97AA95C();
  sub_1C97DA834();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  *v5 = *v2;
  v4[52] = v6;
  v4[53] = v7;

  if (v1)
  {

    sub_1C97DA844();

    return v8();
  }

  else
  {
    v4[56] = v0;
    v10 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1C97D1278()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 440) = v0;

  if (!v0)
  {
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C97D138C()
{
  sub_1C97AA95C();
  sub_1C97D9AF8(v0 + 152, v0 + 192);
  sub_1C97A2CEC(&qword_1EC3C7130);
  if (swift_dynamicCast())
  {
    sub_1C97A592C(v0 + 152);
    v1 = *(v0 + 336);
    v2 = *(v0 + 360);
    *v2 = *(v0 + 320);
    *(v2 + 16) = v1;
    sub_1C97DA8DC();
  }

  else
  {
    *(v0 + 320) = 0;
    *(v0 + 328) = 0;
    *(v0 + 336) = 0;
    sub_1C97AA8AC();
    sub_1C979AFD4(v4);
    sub_1C97D9B5C();
    sub_1C97AA928();
    swift_allocError();
    sub_1C97DAA04();
    swift_willThrow();
    sub_1C97A592C(v0 + 152);
    sub_1C97DA91C();
  }

  return v3();
}

uint64_t sub_1C97D1484()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C97D14F4()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 448);
  v2 = *(v0 + 424);
  v3 = [*(v0 + 416) remoteObjectProxy];
  sub_1C9A93318();
  swift_unknownObjectRelease();
  sub_1C97A2CEC(&qword_1EC3C7128);
  swift_dynamicCast();
  *(v0 + 456) = *(v0 + 344);
  sub_1C97DAA28();
  v4 = swift_allocObject();
  *(v0 + 464) = v4;
  *(v0 + 472) = sub_1C97DA95C(v4);
  swift_retain_n();
  swift_unknownObjectRetain();
  inited = swift_initStackObject();
  *(v0 + 480) = inited;
  inited[2] = &unk_1C9A9F880;
  inited[3] = v4;
  inited[4] = v1;
  inited[5] = v2;
  sub_1C97DA7DC();

  v6 = swift_task_alloc();
  *(v0 + 488) = v6;
  *v6 = v0;
  sub_1C97DA744(v6);
  sub_1C97DABB0();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C97D1660()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  v4[62] = v8;
  v4[63] = v0;

  if (!v0)
  {
    v4[64] = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C97D1764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1C97DAA84();
  sub_1C97DAA1C();
  v10 = *(v9 + 416);

  sub_1C97DAB10();
  swift_unknownObjectRelease();

  sub_1C97DA604();
  v23 = v11;
  swift_task_alloc();
  sub_1C97DA928();
  *(v9 + 520) = v12;
  *v12 = v13;
  v12[1] = sub_1C97D186C;
  sub_1C97DAC68();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t sub_1C97D186C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 528) = v0;

  if (!v0)
  {
    v7 = *(v3 + 80);
    *(v3 + 536) = *(v3 + 64);
    *(v3 + 552) = v7;
    *(v3 + 568) = *(v3 + 96);
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C97D1984()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 416);

  sub_1C97DAD30();
  swift_unknownObjectRelease();

  sub_1C97DA91C();
  sub_1C97DABB0();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C97D1A1C()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
  type metadata accessor for XPCDataDecoder();
  sub_1C97AA878();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_1C97A7DFC();
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = v3;
  v8[4] = v2;
  v8[5] = v1;
  type metadata accessor for XPCDecoder();
  inited = swift_initStackObject();
  v0[73] = inited;
  *(inited + 16) = v7;
  *(inited + 24) = v8;
  sub_1C97DA2E8(v6, v5);
  sub_1C97A8F30(v4);

  swift_task_alloc();
  sub_1C97DA928();
  v0[74] = v10;
  *v10 = v11;
  v10[1] = sub_1C97D1B64;

  return sub_1C98DEC18();
}

uint64_t sub_1C97D1B64()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;
  *(v4 + 600) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C97D1C64()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C97D1CC0()
{
  v1 = sub_1C97DAAD8();
  v2 = *(v0 + 312);
  v9 = *v3;
  sub_1C97AA780(v1, v4);
  sub_1C97DAD10();
  v5 = swift_setDeallocating();
  sub_1C9890A5C(v5);
  sub_1C97AA878();
  swift_deallocClassInstance();

  v6 = *(v0 + 360);
  *v6 = v9;
  *(v6 + 16) = v2;
  sub_1C97DA8DC();

  return v7();
}

uint64_t sub_1C97D1D78()
{
  sub_1C97DA934();
  v0 = sub_1C97DAAD8();
  sub_1C97AA780(v0, v1);
  sub_1C97DAD10();
  v2 = swift_setDeallocating();
  sub_1C9890A5C(v2);
  sub_1C97AA878();
  swift_deallocClassInstance();

  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C97D1E08()
{
  sub_1C97AA884();
  v0[41] = v1;
  v0[42] = v2;
  v3 = type metadata accessor for AccessibilitySoundActions.Session();
  v0[43] = v3;
  sub_1C97DACE4(v3);
  v0[44] = sub_1C97DAD48();
  v4 = sub_1C97A2CEC(&qword_1EC3C7338);
  sub_1C97DACE4(v4);
  v0[45] = sub_1C97DAD48();
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C97D1EB4()
{
  sub_1C97AA95C();
  if (qword_1EC3C57B0 != -1)
  {
    sub_1C97DA638();
    swift_once();
  }

  sub_1C97DA824();
  if (v1)
  {
    if (qword_1EC3C5D88 != -1)
    {
      sub_1C97DA69C();
    }

    v2 = sub_1C97DAA10();
    v3 = sub_1C97DACD0(v2);
    if (v5)
    {
      sub_1C97DAB98();
      sub_1C97A2CEC(&unk_1EC3CA040);
      swift_willThrowTypedImpl();

      sub_1C97DA91C();

      return v6();
    }

    else
    {
      sub_1C97DA758(v3, v4);

      swift_task_alloc();
      sub_1C97DA928();
      v0[53] = v9;
      *v9 = v10;
      sub_1C97DA6F4(v9);

      return sub_1C985E490();
    }
  }

  else
  {
    if (qword_1EC3C5DB0 != -1)
    {
      sub_1C97DA67C();
    }

    v0[49] = qword_1EC3D31F8;

    v8 = swift_task_alloc();
    v0[50] = v8;
    *v8 = v0;
    sub_1C97DA950(v8);

    return sub_1C98E7754();
  }
}

uint64_t sub_1C97D20C4()
{
  sub_1C97AA95C();
  sub_1C97DA834();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  *v5 = *v2;
  v4[51] = v6;
  v4[52] = v7;

  if (v1)
  {

    sub_1C97DA844();

    return v8();
  }

  else
  {
    v4[55] = v0;
    v10 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1C97D2204()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 432) = v0;

  if (!v0)
  {
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C97D2318()
{
  sub_1C97AA95C();
  sub_1C97DACC4();
  sub_1C97DAB58();
  sub_1C97A2CEC(&qword_1EC3C7130);
  sub_1C97DAC44();
  sub_1C97DACC4();
  if (v3)
  {
    sub_1C97DAC88();
    v4 = sub_1C97DA9E8();
    sub_1C97DA180(v4, v1, v5);

    sub_1C97DA8DC();
  }

  else
  {
    sub_1C97DACF0();
    sub_1C97DA1E0(v0, &qword_1EC3C7338);
    sub_1C97D9B5C();
    sub_1C97AA928();
    swift_allocError();
    sub_1C97DAA04();
    swift_willThrow();
    sub_1C97A592C(v2 + 200);

    sub_1C97DA91C();
  }

  return v6();
}

uint64_t sub_1C97D2414()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 440);
  v2 = *(v0 + 416);
  v3 = [*(v0 + 408) remoteObjectProxy];
  sub_1C97DAB40();
  swift_unknownObjectRelease();
  sub_1C97A2CEC(&qword_1EC3C7128);
  sub_1C97DA89C();
  *(v0 + 448) = *(v0 + 312);
  sub_1C97DAA28();
  v4 = swift_allocObject();
  *(v0 + 456) = v4;
  sub_1C97DA95C(v4);
  sub_1C97DA994();
  swift_unknownObjectRetain();
  v5 = sub_1C97DAB28();
  *(v0 + 464) = v5;
  v5[2] = &unk_1C9A9F870;
  v5[3] = v4;
  v5[4] = v1;
  v5[5] = v2;
  sub_1C97DA7DC();

  v6 = swift_task_alloc();
  *(v0 + 472) = v6;
  *v6 = v0;
  sub_1C97DA744(v6);
  sub_1C97DABB0();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C97D2550()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  v4[60] = v8;
  v4[61] = v0;

  if (!v0)
  {
    v4[62] = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C97D2654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1C97DAA84();
  sub_1C97DAA1C();
  sub_1C97DAC20();

  sub_1C97DAB10();
  swift_unknownObjectRelease();

  sub_1C97DA604();
  v23 = v11;
  swift_task_alloc();
  sub_1C97DA928();
  *(v9 + 504) = v12;
  *v12 = v13;
  v12[1] = sub_1C97D273C;
  sub_1C97DA780();
  sub_1C97DAC68();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t sub_1C97D273C()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 512) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA76C();
    sub_1C97DA8BC();
    sub_1C97DA928();
    *(v3 + 520) = v10;
    *v10 = v11;
    v10[1] = sub_1C97D2898;
    sub_1C97DAB88();

    return v12();
  }
}

uint64_t sub_1C97D2898()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 528) = v0;

  if (!v0)
  {
    sub_1C97D9AA4(v3 + 16);
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C97D2998()
{
  sub_1C97AA884();
  v1 = *(v0 + 328);

  v2 = sub_1C97DA9E8();
  sub_1C97DA180(v2, v1, v3);

  sub_1C97DA8DC();

  return v4();
}

uint64_t sub_1C97D2A28()
{
  sub_1C97AA95C();
  if (qword_1EC3C57B0 != -1)
  {
    sub_1C97DA638();
    swift_once();
  }

  sub_1C97DA824();
  if (v1)
  {
    if (qword_1EC3C5D88 != -1)
    {
      sub_1C97DA69C();
    }

    v2 = sub_1C97DA6BC();
    if (v4)
    {
      sub_1C97DAB98();
      sub_1C97A2CEC(&unk_1EC3CA040);
      swift_willThrowTypedImpl();
      sub_1C97DA91C();

      return v5();
    }

    else
    {
      sub_1C97DA758(v2, v3);

      v10 = swift_task_alloc();
      v11 = sub_1C97DA90C(v10);
      *v11 = v12;
      sub_1C97DA6F4(v11);

      return sub_1C985E490();
    }
  }

  else
  {
    if (qword_1EC3C5DB0 != -1)
    {
      sub_1C97DA67C();
    }

    *(v0 + 368) = qword_1EC3D31F8;

    v7 = swift_task_alloc();
    v8 = sub_1C97DAAC0(v7);
    *v8 = v9;
    sub_1C97DA950(v8);

    return sub_1C98E7754();
  }
}

uint64_t sub_1C97D2C1C()
{
  sub_1C97AA95C();
  sub_1C97DA834();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  *v5 = *v2;
  sub_1C97DABF0(v6, v7, v8);
  if (v1)
  {

    sub_1C97DA844();

    return v9();
  }

  else
  {
    *(v4 + 416) = v0;
    v11 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1C97D2D44()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 408) = v0;

  if (!v0)
  {
    sub_1C97DABD8();
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C97D2E50()
{
  sub_1C97AA95C();
  sub_1C97DAB58();
  sub_1C97A2CEC(&qword_1EC3C7130);
  if (sub_1C97DAA34())
  {
    v1 = sub_1C97DA794();

    return v2(v1);
  }

  else
  {
    sub_1C97D9B5C();
    sub_1C97AA928();
    swift_allocError();
    sub_1C97DAA04();
    swift_willThrow();
    sub_1C97A592C(v0 + 200);
    sub_1C97DA91C();

    return v4();
  }
}

uint64_t sub_1C97D2F2C()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C97D2F9C()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = [sub_1C97DAAB4() remoteObjectProxy];
  sub_1C97DAB40();
  swift_unknownObjectRelease();
  sub_1C97A2CEC(&qword_1EC3C7128);
  sub_1C97DA89C();
  sub_1C97DAA9C();
  sub_1C97DAA28();
  v4 = swift_allocObject();
  sub_1C97DA854(v4);
  sub_1C97DA994();
  swift_unknownObjectRetain();
  v5 = sub_1C97DAB28();
  v6 = sub_1C97DAAA8(v5);
  v6[2] = &unk_1C9A9F640;
  v6[3] = v1;
  v6[4] = v2;
  v6[5] = v0;
  sub_1C97DA7DC();

  v7 = swift_task_alloc();
  v8 = sub_1C97DAACC(v7);
  *v8 = v9;
  sub_1C97DA744(v8);
  sub_1C97DABB0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1C97D30C0()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  v4[57] = v8;
  v4[58] = v0;

  if (!v0)
  {
    v4[59] = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C97D31C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1C97DAA84();
  sub_1C97DAA1C();
  sub_1C97DA878();

  sub_1C97DAB10();
  swift_unknownObjectRelease();

  sub_1C97DA604();
  v23 = v10;
  v11 = swift_task_alloc();
  v12 = sub_1C97DA8FC(v11);
  *v12 = v13;
  sub_1C97DA6D8(v12);
  sub_1C97DAC68();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t sub_1C97D32A0()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA76C();
    v10 = sub_1C97DA8BC();
    v11 = sub_1C97DA8EC(v10);
    *v11 = v12;
    v13 = sub_1C97DA800(v11);

    return v14(v13);
  }
}

uint64_t sub_1C97D33F0()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 384);

  sub_1C97DAD30();
  swift_unknownObjectRelease();

  sub_1C97DA91C();
  sub_1C97DABB0();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C97D3488()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 504) = v0;

  if (!v0)
  {
    sub_1C97DAC08();
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C97D358C()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C97D35E8()
{
  sub_1C97AA884();

  v1 = *(v0 + 512);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C97D364C()
{
  sub_1C97AA884();

  sub_1C97D9AA4(v0 + 16);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C97D36C4()
{
  sub_1C97AA95C();
  if (qword_1EC3C57B0 != -1)
  {
    sub_1C97DA638();
    swift_once();
  }

  sub_1C97DA824();
  if (v1)
  {
    if (qword_1EC3C5D88 != -1)
    {
      sub_1C97DA69C();
    }

    v2 = sub_1C97DA6BC();
    if (v4)
    {
      sub_1C97DAB98();
      sub_1C97A2CEC(&unk_1EC3CA040);
      swift_willThrowTypedImpl();
      sub_1C97DA91C();

      return v5();
    }

    else
    {
      sub_1C97DA758(v2, v3);

      v10 = swift_task_alloc();
      v11 = sub_1C97DA90C(v10);
      *v11 = v12;
      sub_1C97DA6F4(v11);

      return sub_1C985E490();
    }
  }

  else
  {
    if (qword_1EC3C5DB0 != -1)
    {
      sub_1C97DA67C();
    }

    *(v0 + 368) = qword_1EC3D31F8;

    v7 = swift_task_alloc();
    v8 = sub_1C97DAAC0(v7);
    *v8 = v9;
    sub_1C97DA950(v8);

    return sub_1C98E7754();
  }
}

uint64_t sub_1C97D38B8()
{
  sub_1C97AA95C();
  sub_1C97DA834();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  *v5 = *v2;
  sub_1C97DABF0(v6, v7, v8);
  if (v1)
  {

    sub_1C97DA844();

    return v9();
  }

  else
  {
    *(v4 + 416) = v0;
    v11 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1C97D39E0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 408) = v0;

  if (!v0)
  {
    sub_1C97DABD8();
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C97D3AEC()
{
  sub_1C97AA95C();
  sub_1C97DAB58();
  sub_1C97A2CEC(&qword_1EC3C7130);
  if (sub_1C97DAA34())
  {
    v1 = sub_1C97DA794();

    return v2(v1);
  }

  else
  {
    sub_1C97D9B5C();
    sub_1C97AA928();
    swift_allocError();
    sub_1C97DAA04();
    swift_willThrow();
    sub_1C97A592C(v0 + 200);
    sub_1C97DA91C();

    return v4();
  }
}

uint64_t sub_1C97D3BC8()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = [sub_1C97DAAB4() remoteObjectProxy];
  sub_1C97DAB40();
  swift_unknownObjectRelease();
  sub_1C97A2CEC(&qword_1EC3C7128);
  sub_1C97DA89C();
  sub_1C97DAA9C();
  sub_1C97DAA28();
  v4 = swift_allocObject();
  sub_1C97DA854(v4);
  sub_1C97DA994();
  swift_unknownObjectRetain();
  v5 = sub_1C97DAB28();
  v6 = sub_1C97DAAA8(v5);
  v6[2] = &unk_1C9A9F670;
  v6[3] = v1;
  v6[4] = v2;
  v6[5] = v0;
  sub_1C97DA7DC();

  v7 = swift_task_alloc();
  v8 = sub_1C97DAACC(v7);
  *v8 = v9;
  sub_1C97DA744(v8);
  sub_1C97DABB0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1C97D3CEC()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  v4[57] = v8;
  v4[58] = v0;

  if (!v0)
  {
    v4[59] = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C97D3DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1C97DAA84();
  sub_1C97DAA1C();
  sub_1C97DA878();

  sub_1C97DAB10();
  swift_unknownObjectRelease();

  sub_1C97DA604();
  v23 = v10;
  v11 = swift_task_alloc();
  v12 = sub_1C97DA8FC(v11);
  *v12 = v13;
  sub_1C97DA6D8(v12);
  sub_1C97DAC68();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t sub_1C97D3ECC()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA76C();
    v10 = sub_1C97DA8BC();
    v11 = sub_1C97DA8EC(v10);
    *v11 = v12;
    v13 = sub_1C97DA800(v11);

    return v14(v13);
  }
}

uint64_t sub_1C97D4030()
{
  sub_1C97AA95C();
  if (qword_1EC3C57B0 != -1)
  {
    sub_1C97DA638();
    swift_once();
  }

  sub_1C97DA824();
  if (v1)
  {
    if (qword_1EC3C5D88 != -1)
    {
      sub_1C97DA69C();
    }

    v2 = sub_1C97DA6BC();
    if (v4)
    {
      sub_1C97DAB98();
      sub_1C97A2CEC(&unk_1EC3CA040);
      swift_willThrowTypedImpl();
      sub_1C97DA91C();

      return v5();
    }

    else
    {
      sub_1C97DA758(v2, v3);

      v10 = swift_task_alloc();
      v11 = sub_1C97DA90C(v10);
      *v11 = v12;
      sub_1C97DA6F4(v11);

      return sub_1C985E490();
    }
  }

  else
  {
    if (qword_1EC3C5DB0 != -1)
    {
      sub_1C97DA67C();
    }

    *(v0 + 368) = qword_1EC3D31F8;

    v7 = swift_task_alloc();
    v8 = sub_1C97DAAC0(v7);
    *v8 = v9;
    sub_1C97DA950(v8);

    return sub_1C98E7754();
  }
}

uint64_t sub_1C97D4224()
{
  sub_1C97AA95C();
  sub_1C97DA834();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  *v5 = *v2;
  sub_1C97DABF0(v6, v7, v8);
  if (v1)
  {

    sub_1C97DA844();

    return v9();
  }

  else
  {
    *(v4 + 416) = v0;
    v11 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1C97D434C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 408) = v0;

  if (!v0)
  {
    sub_1C97DABD8();
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C97D4458()
{
  sub_1C97AA95C();
  sub_1C97DAB58();
  sub_1C97A2CEC(&qword_1EC3C7130);
  if (sub_1C97DAA34())
  {
    v1 = sub_1C97DA794();

    return v2(v1);
  }

  else
  {
    sub_1C97D9B5C();
    sub_1C97AA928();
    swift_allocError();
    sub_1C97DAA04();
    swift_willThrow();
    sub_1C97A592C(v0 + 200);
    sub_1C97DA91C();

    return v4();
  }
}

uint64_t sub_1C97D4534()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = [sub_1C97DAAB4() remoteObjectProxy];
  sub_1C97DAB40();
  swift_unknownObjectRelease();
  sub_1C97A2CEC(&qword_1EC3C7128);
  sub_1C97DA89C();
  sub_1C97DAA9C();
  sub_1C97DAA28();
  v4 = swift_allocObject();
  sub_1C97DA854(v4);
  sub_1C97DA994();
  swift_unknownObjectRetain();
  v5 = sub_1C97DAB28();
  v6 = sub_1C97DAAA8(v5);
  v6[2] = &unk_1C9A9F680;
  v6[3] = v1;
  v6[4] = v2;
  v6[5] = v0;
  sub_1C97DA7DC();

  v7 = swift_task_alloc();
  v8 = sub_1C97DAACC(v7);
  *v8 = v9;
  sub_1C97DA744(v8);
  sub_1C97DABB0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1C97D4658()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  v4[57] = v8;
  v4[58] = v0;

  if (!v0)
  {
    v4[59] = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C97D475C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1C97DAA84();
  sub_1C97DAA1C();
  sub_1C97DA878();

  sub_1C97DAB10();
  swift_unknownObjectRelease();

  sub_1C97DA604();
  v23 = v10;
  v11 = swift_task_alloc();
  v12 = sub_1C97DA8FC(v11);
  *v12 = v13;
  sub_1C97DA6D8(v12);
  sub_1C97DAC68();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t sub_1C97D4838()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA76C();
    v10 = sub_1C97DA8BC();
    v11 = sub_1C97DA8EC(v10);
    *v11 = v12;
    v13 = sub_1C97DA800(v11);

    return v14(v13);
  }
}

uint64_t sub_1C97D499C()
{
  sub_1C97AA95C();
  if (qword_1EC3C57B0 != -1)
  {
    sub_1C97DA638();
    swift_once();
  }

  sub_1C97DA824();
  if (v1)
  {
    if (qword_1EC3C5D88 != -1)
    {
      sub_1C97DA69C();
    }

    v2 = sub_1C97DA6BC();
    if (v4)
    {
      sub_1C97DAB98();
      sub_1C97A2CEC(&unk_1EC3CA040);
      swift_willThrowTypedImpl();
      sub_1C97DA91C();

      return v5();
    }

    else
    {
      sub_1C97DA758(v2, v3);

      v10 = swift_task_alloc();
      v11 = sub_1C97DA90C(v10);
      *v11 = v12;
      sub_1C97DA6F4(v11);

      return sub_1C985E490();
    }
  }

  else
  {
    if (qword_1EC3C5DB0 != -1)
    {
      sub_1C97DA67C();
    }

    *(v0 + 368) = qword_1EC3D31F8;

    v7 = swift_task_alloc();
    v8 = sub_1C97DAAC0(v7);
    *v8 = v9;
    sub_1C97DA950(v8);

    return sub_1C98E7754();
  }
}

uint64_t sub_1C97D4B90()
{
  sub_1C97AA95C();
  sub_1C97DA834();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  *v5 = *v2;
  sub_1C97DABF0(v6, v7, v8);
  if (v1)
  {

    sub_1C97DA844();

    return v9();
  }

  else
  {
    *(v4 + 416) = v0;
    v11 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1C97D4CB8()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 408) = v0;

  if (!v0)
  {
    sub_1C97DABD8();
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C97D4DC4()
{
  sub_1C97AA95C();
  sub_1C97DAB58();
  sub_1C97A2CEC(&qword_1EC3C7130);
  if (sub_1C97DAA34())
  {
    v1 = sub_1C97DA794();

    return v2(v1);
  }

  else
  {
    sub_1C97D9B5C();
    sub_1C97AA928();
    swift_allocError();
    sub_1C97DAA04();
    swift_willThrow();
    sub_1C97A592C(v0 + 200);
    sub_1C97DA91C();

    return v4();
  }
}

uint64_t sub_1C97D4EA0()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = [sub_1C97DAAB4() remoteObjectProxy];
  sub_1C97DAB40();
  swift_unknownObjectRelease();
  sub_1C97A2CEC(&qword_1EC3C7128);
  sub_1C97DA89C();
  sub_1C97DAA9C();
  sub_1C97DAA28();
  v4 = swift_allocObject();
  sub_1C97DA854(v4);
  sub_1C97DA994();
  swift_unknownObjectRetain();
  v5 = sub_1C97DAB28();
  v6 = sub_1C97DAAA8(v5);
  v6[2] = &unk_1C9A9F690;
  v6[3] = v1;
  v6[4] = v2;
  v6[5] = v0;
  sub_1C97DA7DC();

  v7 = swift_task_alloc();
  v8 = sub_1C97DAACC(v7);
  *v8 = v9;
  sub_1C97DA744(v8);
  sub_1C97DABB0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1C97D4FC4()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  v4[57] = v8;
  v4[58] = v0;

  if (!v0)
  {
    v4[59] = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C97D50C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1C97DAA84();
  sub_1C97DAA1C();
  sub_1C97DA878();

  sub_1C97DAB10();
  swift_unknownObjectRelease();

  sub_1C97DA604();
  v23 = v10;
  v11 = swift_task_alloc();
  v12 = sub_1C97DA8FC(v11);
  *v12 = v13;
  sub_1C97DA6D8(v12);
  sub_1C97DAC68();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t sub_1C97D51A4()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA76C();
    v10 = sub_1C97DA8BC();
    v11 = sub_1C97DA8EC(v10);
    *v11 = v12;
    v13 = sub_1C97DA800(v11);

    return v14(v13);
  }
}

uint64_t sub_1C97D52F4()
{
  sub_1C97AA884();
  v0[41] = v1;
  v0[42] = v2;
  v3 = type metadata accessor for AccessibilitySoundRecognition.Session(0);
  v0[43] = v3;
  sub_1C97DACE4(v3);
  v0[44] = sub_1C97DAD48();
  v4 = sub_1C97A2CEC(&qword_1EC3C7330);
  sub_1C97DACE4(v4);
  v0[45] = sub_1C97DAD48();
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C97D53A0()
{
  sub_1C97AA95C();
  if (qword_1EC3C57B0 != -1)
  {
    sub_1C97DA638();
    swift_once();
  }

  sub_1C97DA824();
  if (v1)
  {
    if (qword_1EC3C5D88 != -1)
    {
      sub_1C97DA69C();
    }

    v2 = sub_1C97DAA10();
    v3 = sub_1C97DACD0(v2);
    if (v5)
    {
      sub_1C97DAB98();
      sub_1C97A2CEC(&unk_1EC3CA040);
      swift_willThrowTypedImpl();

      sub_1C97DA91C();

      return v6();
    }

    else
    {
      sub_1C97DA758(v3, v4);

      swift_task_alloc();
      sub_1C97DA928();
      v0[53] = v9;
      *v9 = v10;
      sub_1C97DA6F4(v9);

      return sub_1C985E490();
    }
  }

  else
  {
    if (qword_1EC3C5DB0 != -1)
    {
      sub_1C97DA67C();
    }

    v0[49] = qword_1EC3D31F8;

    v8 = swift_task_alloc();
    v0[50] = v8;
    *v8 = v0;
    sub_1C97DA950(v8);

    return sub_1C98E7754();
  }
}

uint64_t sub_1C97D55B0()
{
  sub_1C97AA95C();
  sub_1C97DA834();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  *v5 = *v2;
  v4[51] = v6;
  v4[52] = v7;

  if (v1)
  {

    sub_1C97DA844();

    return v8();
  }

  else
  {
    v4[55] = v0;
    v10 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1C97D56F0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 432) = v0;

  if (!v0)
  {
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C97D5804()
{
  sub_1C97AA95C();
  sub_1C97DACC4();
  sub_1C97DAB58();
  sub_1C97A2CEC(&qword_1EC3C7130);
  sub_1C97DAC44();
  sub_1C97DACC4();
  if (v3)
  {
    sub_1C97DAC88();
    v4 = sub_1C97DA9CC();
    sub_1C97DA180(v4, v1, v5);

    sub_1C97DA8DC();
  }

  else
  {
    sub_1C97DACF0();
    sub_1C97DA1E0(v0, &qword_1EC3C7330);
    sub_1C97D9B5C();
    sub_1C97AA928();
    swift_allocError();
    sub_1C97DAA04();
    swift_willThrow();
    sub_1C97A592C(v2 + 200);

    sub_1C97DA91C();
  }

  return v6();
}

uint64_t sub_1C97D5900()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C97D5980()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 440);
  v2 = *(v0 + 416);
  v3 = [*(v0 + 408) remoteObjectProxy];
  sub_1C97DAB40();
  swift_unknownObjectRelease();
  sub_1C97A2CEC(&qword_1EC3C7128);
  sub_1C97DA89C();
  *(v0 + 448) = *(v0 + 312);
  sub_1C97DAA28();
  v4 = swift_allocObject();
  *(v0 + 456) = v4;
  sub_1C97DA95C(v4);
  sub_1C97DA994();
  swift_unknownObjectRetain();
  v5 = sub_1C97DAB28();
  *(v0 + 464) = v5;
  v5[2] = &unk_1C9A9F858;
  v5[3] = v4;
  v5[4] = v1;
  v5[5] = v2;
  sub_1C97DA7DC();

  v6 = swift_task_alloc();
  *(v0 + 472) = v6;
  *v6 = v0;
  sub_1C97DA744(v6);
  sub_1C97DABB0();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C97D5ABC()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  v4[60] = v8;
  v4[61] = v0;

  if (!v0)
  {
    v4[62] = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C97D5BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1C97DAA84();
  sub_1C97DAA1C();
  sub_1C97DAC20();

  sub_1C97DAB10();
  swift_unknownObjectRelease();

  sub_1C97DA604();
  v23 = v11;
  swift_task_alloc();
  sub_1C97DA928();
  *(v9 + 504) = v12;
  *v12 = v13;
  v12[1] = sub_1C97D5CA8;
  sub_1C97DA780();
  sub_1C97DAC68();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t sub_1C97D5CA8()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 512) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA76C();
    sub_1C97DA8BC();
    sub_1C97DA928();
    *(v3 + 520) = v10;
    *v10 = v11;
    v10[1] = sub_1C97D5EAC;
    sub_1C97DAB88();

    return v12();
  }
}

uint64_t sub_1C97D5E04()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 408);

  sub_1C97DAD30();
  swift_unknownObjectRelease();

  sub_1C97DA91C();
  sub_1C97DABB0();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C97D5EAC()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 528) = v0;

  if (!v0)
  {
    sub_1C97D9AA4(v3 + 16);
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C97D5FAC()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C97D6018()
{
  sub_1C97AA884();
  v1 = *(v0 + 328);

  v2 = sub_1C97DA9CC();
  sub_1C97DA180(v2, v1, v3);

  sub_1C97DA8DC();

  return v4();
}

uint64_t sub_1C97D6094()
{
  sub_1C97AA884();

  sub_1C97D9AA4(v0 + 16);

  sub_1C97DA91C();

  return v1();
}

int *sub_1C97D6108(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v252 = a1;
  v253 = a2;
  v247 = *v2;
  v250 = sub_1C97A2CEC(&qword_1EC3C7140);
  sub_1C97AE9C8();
  v248 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v200 - v7;
  v251 = sub_1C97A2CEC(&qword_1EC3C7148);
  sub_1C97AE9C8();
  v249 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v200 - v11;
  v13 = sub_1C97A2CEC(&unk_1EC3C9910);
  sub_1C97AE9C8();
  v231 = v14;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C97AC02C();
  sub_1C97ABFB4(v16);
  v17 = sub_1C97A2CEC(&qword_1EC3C7150);
  sub_1C97ABF78(v17, &v249);
  v220 = v18;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C97AC02C();
  sub_1C97ABFB4(v20);
  v223 = sub_1C97A2CEC(&qword_1EC3C7158);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C97AC02C();
  sub_1C97ABFB4(v22);
  v23 = sub_1C97A2CEC(&qword_1EC3C7160);
  sub_1C97ABF78(v23, &v255 + 8);
  v225 = v24;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C97AC02C();
  sub_1C97ABFB4(v26);
  v27 = sub_1C97A2CEC(&qword_1EC3C7168);
  sub_1C97ABF78(v27, &v243);
  v214 = v28;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C97AC02C();
  sub_1C97ABFB4(v30);
  v31 = sub_1C97A2CEC(&qword_1EC3C7170);
  sub_1C97ABF78(v31, v238);
  v207 = v32;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97AC02C();
  sub_1C97ABFB4(v34);
  v35 = sub_1C97A2CEC(&qword_1EC3C7178);
  sub_1C97ABF78(v35, v260);
  v211 = v36;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C97AC02C();
  sub_1C97ABFB4(v38);
  v212 = sub_1C97A2CEC(&qword_1EC3C7180);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C97AC02C();
  sub_1C97ABFB4(v40);
  v41 = sub_1C97A2CEC(&qword_1EC3C7188);
  sub_1C97ABF78(v41, v258);
  v233 = v42;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C97AC02C();
  sub_1C97ABFB4(v44);
  v45 = sub_1C9A91C28();
  v46 = sub_1C97ABF78(v45, &v262);
  v241 = v47;
  MEMORY[0x1EEE9AC00](v46);
  sub_1C97ABFB4(&v200 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = sub_1C97A2CEC(&qword_1EC3C7190);
  sub_1C97ABF78(v49, v259);
  v235 = v50;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C97AC02C();
  sub_1C97ABFB4(v52);
  v238[0] = sub_1C97A2CEC(&qword_1EC3C7198);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C97AC02C();
  sub_1C97ABFB4(v54);
  v55 = sub_1C97A2CEC(&qword_1EC3C71A0);
  sub_1C97ABF78(v55, &v246);
  v217 = v56;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C97AC02C();
  sub_1C97ABFB4(v58);
  v59 = sub_1C97A2CEC(&qword_1EC3C71A8);
  sub_1C97ABF78(v59, &v255);
  v224 = v60;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C97AC02C();
  sub_1C97ABFB4(v62);
  v63 = sub_1C97A2CEC(&qword_1EC3C71B0);
  sub_1C97ABF78(v63, &v256[16]);
  v228 = v64;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v65);
  sub_1C97AC02C();
  sub_1C97ABFB4(v66);
  v67 = sub_1C9A91748();
  v68 = sub_1C97ABF78(v67, &v263);
  v242 = v69;
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v68);
  sub_1C97ABFB4(&v200 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = MEMORY[0x1EEE9AC00](v72);
  v254 = &v200 - v74;
  MEMORY[0x1EEE9AC00](v73);
  sub_1C97ABFB4(&v200 - v75);
  sub_1C97A2CEC(&qword_1EC3C71B8);
  v76 = sub_1C97DAAF8();
  v77 = objc_opt_self();
  *(v76 + 16) = sub_1C97DA978(v77);
  sub_1C97A2CEC(&qword_1EC3C71C0);
  sub_1C97AA878();
  swift_allocObject();
  v78 = sub_1C97DA814();
  v4[3] = sub_1C9A37FC8(v78);
  sub_1C97A2CEC(&qword_1EC3C71C8);
  sub_1C97DAAF8();
  v79 = sub_1C97DAB70();
  *(v76 + 16) = sub_1C97DA978(v79);
  sub_1C97A2CEC(&qword_1EC3C71D0);
  sub_1C97AA878();
  swift_allocObject();
  v80 = sub_1C97DA814();
  v4[4] = sub_1C9A37FC8(v80);
  sub_1C97A2CEC(&qword_1EC3C71D8);
  sub_1C97DAAF8();
  v81 = sub_1C97DAB70();
  *(v76 + 16) = sub_1C97DA978(v81);
  sub_1C97A2CEC(&qword_1EC3C71E0);
  sub_1C97AA878();
  swift_allocObject();
  v82 = sub_1C97DA814();
  v4[5] = sub_1C9A37FC8(v82);
  sub_1C97A2CEC(&qword_1EC3C71E8);
  sub_1C97DAAF8();
  v83 = sub_1C97DAB70();
  *(v76 + 16) = sub_1C97DA978(v83);
  sub_1C97A2CEC(&qword_1EC3C71F0);
  sub_1C97AA878();
  swift_allocObject();
  v84 = sub_1C97DA814();
  v4[6] = sub_1C9A37FC8(v84);
  sub_1C97A2CEC(&qword_1EC3C71F8);
  sub_1C97DAAF8();
  v85 = sub_1C97DAB70();
  *(v76 + 16) = sub_1C97DA978(v85);
  sub_1C97A2CEC(&qword_1EC3C7200);
  sub_1C97AA878();
  swift_allocObject();
  v86 = sub_1C97DA814();
  v4[7] = sub_1C9A37FC8(v86);
  sub_1C97A2CEC(&qword_1EC3C7208);
  sub_1C97DAAF8();
  v87 = sub_1C97DAB70();
  *(v76 + 16) = sub_1C97DA978(v87);
  sub_1C97A2CEC(&qword_1EC3C7210);
  sub_1C97AA878();
  swift_allocObject();
  v88 = sub_1C97DA814();
  v4[8] = sub_1C9A37FC8(v88);
  sub_1C97A2CEC(&qword_1EC3C7218);
  sub_1C97DAAF8();
  v89 = sub_1C97DAB70();
  *(v76 + 16) = sub_1C97DA978(v89);
  sub_1C97A2CEC(&qword_1EC3C7220);
  sub_1C97AA878();
  swift_allocObject();
  v90 = sub_1C97DA814();
  v4[9] = sub_1C9A37FC8(v90);
  sub_1C97A2CEC(&qword_1EC3C7228);
  sub_1C97DAAF8();
  v91 = sub_1C97DAB70();
  *(v76 + 16) = sub_1C97DA978(v91);
  sub_1C97A2CEC(&qword_1EC3C7230);
  sub_1C97AA878();
  swift_allocObject();
  v92 = sub_1C97DA814();
  v4[10] = sub_1C9A37FC8(v92);
  sub_1C97A2CEC(&qword_1EC3C7238);
  sub_1C97DAAF8();
  v93 = sub_1C97DAB70();
  *(v76 + 16) = sub_1C97DA978(v93);
  sub_1C97A2CEC(&qword_1EC3C7240);
  sub_1C97AA878();
  swift_allocObject();
  v94 = sub_1C97DA814();
  v4[11] = sub_1C9A37FC8(v94);
  sub_1C97A2CEC(&qword_1EC3C7248);
  sub_1C97DAAF8();
  v95 = sub_1C97DAB70();
  *(v76 + 16) = sub_1C97DA978(v95);
  sub_1C97A2CEC(&qword_1EC3C7250);
  sub_1C97AA878();
  swift_allocObject();
  v96 = sub_1C97DA814();
  v4[12] = sub_1C9A37FC8(v96);
  sub_1C97A2CEC(&qword_1EC3C7258);
  sub_1C97DAAF8();
  v97 = sub_1C97DAB70();
  *(v76 + 16) = sub_1C97DA978(v97);
  sub_1C97A2CEC(&qword_1EC3C7260);
  sub_1C97AA878();
  swift_allocObject();
  v98 = sub_1C97DA814();
  v4[13] = sub_1C9A37FC8(v98);
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_35;
  }

  v100 = result;
  exclaveCapability = MobileGestalt_get_exclaveCapability();

  if (exclaveCapability)
  {
    v102 = MGGetProductType();
    if (qword_1EC3C5D98 != -1)
    {
      swift_once();
    }

    v103 = sub_1C98F4044(v102, qword_1EC3D31E8);
  }

  else
  {
    v103 = 0;
  }

  v205 = v13;
  if (qword_1EC3C5BA8 != -1)
  {
    swift_once();
  }

  v104 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  v105 = sub_1C99B590C();
  if (v3)
  {

    if (!v103)
    {
LABEL_20:
      sub_1C97D9D1C();
      sub_1C97AA928();
      swift_allocError();
      sub_1C97DAA04();
      swift_willThrow();
      v257 = v103;
      v259[0] = 1;
      sub_1C97A2CEC(&unk_1EC3CA040);
      *&v255 = MEMORY[0x1E69E7CC0];
      sub_1C97A2CEC(&unk_1EC3CB510);
      sub_1C97AE67C(&qword_1EC3C7270, &unk_1EC3CB510);
      sub_1C9A92658();
      v112 = v250;
      sub_1C9A91CE8();
      (*(v248 + 8))(v8, v112);
      sub_1C97AE67C(&qword_1EC3C7278, &qword_1EC3C7148);
      v113 = v251;
      v114 = sub_1C9A91F28();
      (*(v249 + 8))(v12, v113);
LABEL_21:
      sub_1C97D908C(&v257, (v4 + 14));
      v4[20] = v114;
      type metadata accessor for SNAOPUtils.Analytics();
      swift_allocObject();
      v115 = sub_1C98FCCE0(v252, v253);
      sub_1C97DA1E0(&v257, &qword_1EC3C7100);
      v4[2] = v115;
      return v4;
    }
  }

  else
  {
    v107 = v105;
    v108 = v106;

    v109 = v107 != 0;
    if (v108)
    {
      v109 = v103;
    }

    if (!v109)
    {
      goto LABEL_20;
    }
  }

  if (qword_1EC3C57B0 != -1)
  {
    sub_1C97DA638();
    swift_once();
  }

  sub_1C97DA824();
  if (!v110)
  {
    goto LABEL_20;
  }

  v111 = sub_1C99782EC();
  v204 = v71;
  v116 = v111;
  v117 = type metadata accessor for SoundAnalysisService.Service();
  LOBYTE(v255) = 0;
  v257 = v116;
  v258[0] = v117;
  v258[1] = &off_1F4932628;
  v259[0] = 0;
  type metadata accessor for AsyncDispatchQueue();
  swift_allocObject();
  v118 = sub_1C9928384();
  sub_1C97A2CEC(&qword_1EC3C7280);
  swift_allocObject();
  v119 = sub_1C9A91E28();
  sub_1C97AA878();
  v120 = swift_allocObject();
  *(v120 + 16) = v118;
  *(v120 + 24) = v119;
  sub_1C97AA878();
  v121 = swift_allocObject();
  *(v121 + 16) = v118;
  *(v121 + 24) = v119;
  type metadata accessor for ICACConnection();
  swift_allocObject();
  swift_retain_n();
  swift_retain_n();

  v122 = sub_1C97BE670(sub_1C97D9D70, v120, sub_1C97D9DB4, v121);
  v250 = v120;
  v251 = v122;
  v249 = v121;
  sub_1C9A91738();
  sub_1C9A91738();
  v123 = sub_1C99716F8();
  v125 = v124;
  v248 = v118;

  v126 = v125 / v123;
  v247 = v119;
  *&v255 = v119;
  v127 = v241;
  v128 = *(v241 + 104);
  v129 = v239;
  v202 = *MEMORY[0x1E695BD20];
  v203 = v241 + 104;
  v201 = v128;
  v128(v239);
  sub_1C97DAC7C();
  v131 = v232;
  v132 = v234;
  (*(v130 + 104))(v232);
  sub_1C97AE67C(&qword_1EC3C7288, &qword_1EC3C7280);
  sub_1C9A92018();
  (*(v125 + 8))(v131, v132);
  v234 = *(v127 + 8);
  v133 = v127 + 8;
  v234(v129, v244);
  sub_1C97AA878();
  v134 = swift_allocObject();
  v135 = v251;
  *(v134 + 16) = sub_1C97D9DBC;
  *(v134 + 24) = v135;
  sub_1C97AE67C(&qword_1EC3C7290, &qword_1EC3C7190);

  sub_1C97DAC7C();
  v136 = v236;
  v137 = v240;
  sub_1C9A91F58();

  sub_1C97DAA58();
  v138(v137, v136);
  v139 = (v125 + 8 + *(sub_1C97A2CEC(&qword_1EC3C7298) + 44));
  *v139 = sub_1C97D9DF8;
  v139[1] = v135;
  *&v255 = 0;
  *(&v255 + 1) = 0xE000000000000000;

  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD000000000000044, 0x80000001C9AD4D40);
  v140 = sub_1C97D9E14(&qword_1EC3C5480, 255, MEMORY[0x1E69695A8]);
  v141 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v141);

  result = MEMORY[0x1CCA90230](8250, 0xE200000000000000);
  v142 = v126 * 5.0;
  if (COERCE__INT64(fabs(v126 * 5.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v142 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v241 = v133;
  if (v142 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v143 = v255;
  v144 = v142;
  sub_1C97A7DFC();
  v145 = swift_allocObject();
  *(v145 + 16) = 0;
  *(v145 + 24) = v143;
  *(v145 + 40) = v144;
  sub_1C97DAA28();
  v146 = swift_allocObject();
  v146[2] = 0;
  v146[3] = sub_1C97D9E90;
  v146[4] = v145;
  sub_1C97DAA28();
  v147 = swift_allocObject();
  v147[2] = sub_1C97D9ECC;
  v147[3] = v146;
  v147[4] = v144;
  result = sub_1C97A2CEC(&qword_1EC3C72A0);
  v148 = v243;
  v149 = (v243 + result[13]);
  *v149 = sub_1C9911F58;
  v149[1] = 0;
  v150 = (v148 + result[14]);
  *v150 = sub_1C97D9F04;
  v150[1] = v147;
  if ((*&v126 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v126 > -9.22337204e18)
  {
    v240 = v140;
    if (v126 < 9.22337204e18)
    {
      sub_1C97DAA28();
      v151 = swift_allocObject();
      *(v151 + 16) = xmmword_1C9A9EF60;
      *(v151 + 32) = v126;
      v152 = v238[0];
      v153 = v243;
      v154 = (v243 + *(v238[0] + 52));
      *v154 = sub_1C97D99DC;
      v154[1] = 0;
      v155 = (v153 + *(v152 + 56));
      *v155 = sub_1C97D9F10;
      v155[1] = v151;
      v156 = v206;
      static AudioDataSourceUtils.systemAudioEventPublisher()(v206);
      sub_1C97AE67C(&qword_1EC3C72A8, &qword_1EC3C7170);
      v157 = v210;
      v158 = v208;
      sub_1C9A92048();
      sub_1C97DAA58();
      v159(v156, v158);
      v236 = MEMORY[0x1E695BE28];
      sub_1C97AE67C(&qword_1EC3C72B0, &qword_1EC3C7178);
      v160 = v213;
      sub_1C9A92028();
      sub_1C9A91D88();
      sub_1C97AA878();
      v161 = swift_allocObject();
      *(v161 + 16) = sub_1C9A0F284;
      *(v161 + 24) = 0;
      sub_1C97A2CEC(&qword_1EC3C72B8);
      v235 = MEMORY[0x1E695BDE0];
      sub_1C97AE67C(&qword_1EC3C72C0, &qword_1EC3C7168);
      v233 = MEMORY[0x1E695BDA0];
      sub_1C97AE67C(&qword_1EC3C72C8, &qword_1EC3C72B8);
      v162 = v215;
      sub_1C9A92078();

      sub_1C97DAA58();
      v163(v160, v162);
      sub_1C97DAA58();
      v164(v157, v237);
      sub_1C97AE67C(&qword_1EC3C72D0, &qword_1EC3C7180);
      v165 = v219;
      sub_1C9A92028();
      sub_1C9A91D88();
      sub_1C97AA878();
      v166 = swift_allocObject();
      *(v166 + 16) = sub_1C97D9E60;
      *(v166 + 24) = 0;
      v237 = sub_1C97A2CEC(&qword_1EC3C72D8);
      sub_1C97AE67C(&qword_1EC3C72E0, &qword_1EC3C7150);
      sub_1C97AE67C(&qword_1EC3C72E8, &qword_1EC3C72D8);
      sub_1C97DAC7C();
      v167 = v221;
      sub_1C9A92078();

      sub_1C97DAA58();
      v168(v165, v167);
      sub_1C97AE67C(&qword_1EC3C72F0, &qword_1EC3C7198);
      sub_1C97AE67C(&qword_1EC3C72F8, &qword_1EC3C7158);
      v169 = v222;
      v170 = v243;
      sub_1C9A91FE8();
      sub_1C97DA1E0(&qword_1EC3C72D8, &qword_1EC3C7158);
      sub_1C97AE67C(&qword_1EC3C7300, &qword_1EC3C7160);
      v171 = v227;
      v172 = sub_1C9A91F28();
      sub_1C97DAA58();
      v173(v169, v171);
      sub_1C97DA1E0(v238[1], &qword_1EC3C7180);
      sub_1C97DA1E0(v170, &qword_1EC3C7198);
      v261 = v172;
      v174 = v242;
      v175 = v209;
      v176 = v246;
      (*(v242 + 16))(v209, v245, v246);
      sub_1C97D908C(&v257, &v255);
      v177 = v174;
      v178 = (*(v174 + 80) + 16) & ~*(v174 + 80);
      v179 = (v204 + v178 + 7) & 0xFFFFFFFFFFFFFFF8;
      v180 = swift_allocObject();
      (*(v177 + 32))(v180 + v178, v175, v176);
      v181 = (v180 + v179);
      v182 = *v256;
      *v181 = v255;
      v181[1] = v182;
      *(v181 + 25) = *&v256[9];
      sub_1C97A2CEC(&qword_1EC3C7308);
      sub_1C97DA9B0();
      sub_1C97AE67C(v183, v184);
      v185 = v216;
      sub_1C9A92048();

      v186 = v239;
      v201(v239, v202, v244);
      v187 = v230;
      *v230 = sub_1C97D88C8;
      v187[1] = 0;
      v188 = v231;
      v189 = v205;
      (*(v231 + 104))(v187, *MEMORY[0x1E695BD48], v205);
      sub_1C97AE67C(&qword_1EC3C7318, &qword_1EC3C71A0);
      v190 = v218;
      sub_1C9A92018();
      (*(v188 + 8))(v187, v189);
      v234(v186, v244);
      sub_1C97DAA58();
      v191(v185, v190);
      *&v255 = 0;
      *(&v255 + 1) = 0xE000000000000000;
      sub_1C9A935B8();

      *&v255 = 0xD00000000000001ALL;
      *(&v255 + 1) = 0x80000001C9AD4D90;
      v192 = v254;
      v193 = v246;
      v194 = sub_1C9A93A98();
      MEMORY[0x1CCA90230](v194);

      MEMORY[0x1CCA90230](8250, 0xE200000000000000);
      sub_1C97DAC7C();
      v195 = v238[2];
      sub_1C97DCEB8();

      sub_1C97DAA58();
      v196(v195, v226);
      sub_1C97AE67C(&qword_1EC3C7320, &qword_1EC3C71B0);
      v197 = v229;
      v114 = sub_1C9A91F28();

      sub_1C97DAA58();
      v198(v187, v197);
      v199 = *(v242 + 8);
      v199(v192, v193);
      v199(v245, v193);
      goto LABEL_21;
    }

    goto LABEL_34;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1C97D8120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a5;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;

  sub_1C9928254(&unk_1C9A9F840, v9);
}

uint64_t sub_1C97D81B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a2;
  v4[7] = a4;
  v4[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C97D81DC, 0, 0);
}

uint64_t sub_1C97D81DC()
{
  sub_1C97AA884();
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = 0;
  sub_1C9A91E08();
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C97D8244(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v7 = sub_1C9A91B58();
  sub_1C97BFF6C(v7, qword_1EC3D3108);
  v8 = a2;
  v9 = sub_1C9A91B38();
  v10 = sub_1C9A92FC8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = a2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1C9788000, v9, v10, "Received ICAC Lapse Callback with error: %@", v11, 0xCu);
    sub_1C97DA1E0(v12, &unk_1EC3C86A0);
    MEMORY[0x1CCA93280](v12, -1, -1);
    MEMORY[0x1CCA93280](v11, -1, -1);
  }

  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a1;
  v15[4] = a2;
  v16 = a2;

  sub_1C9928254(&unk_1C9A9F828, v15);
}

uint64_t sub_1C97D8408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C97D842C, 0, 0);
}

uint64_t sub_1C97D842C()
{
  sub_1C97DA934();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  swift_willThrow();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = 1;
  v3 = v1;
  sub_1C9A91E08();

  sub_1C97DA91C();

  return v4();
}

void *sub_1C97D84C8(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  if (*(*(**(a4 + 64) + 136))() == a1)
  {
    if (a3)
    {
      v10 = a2;
      sub_1C97A2CEC(&unk_1EC3CA040);
      swift_willThrowTypedImpl();
    }
  }

  else
  {
    if (qword_1EC3C5520 != -1)
    {
      swift_once();
    }

    v6 = sub_1C9A91B58();
    sub_1C97BFF6C(v6, qword_1EC3D3108);
    v7 = sub_1C9A91B38();
    v8 = sub_1C9A92FA8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C9788000, v7, v8, "Received event for stale ICAC Session ID - dropping", v9, 2u);
      MEMORY[0x1CCA93280](v9, -1, -1);
    }

    return 0;
  }

  return a2;
}

uint64_t sub_1C97D864C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t a3@<X8>)
{
  result = a2(*a1, *(a1 + 8), *(a1 + 16));
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6 & 1;
  }

  return result;
}

uint64_t sub_1C97D8698@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ICACIOSession();
  swift_allocObject();

  result = sub_1C97BFE40(v3);
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C97D86FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C9A916F8();
  v7 = v6;
  if (qword_1EC3C57A8 != -1)
  {
    swift_once();
  }

  v8 = sub_1C9A91AD8();
  v9 = sub_1C97BFF6C(v8, qword_1EC3D3120);
  v11 = v5;
  v12 = v7;

  sub_1C992299C(v9, "AudioBufferProcessed", 20, 2, &v11);
  if (v3)
  {
    return swift_bridgeObjectRelease_n();
  }

  sub_1C97D8828(a3);
  v11 = "AudioBufferProcessed";
  v12 = 20;
  v13 = 2;
  sub_1C9922720(v9, &v11);
  swift_bridgeObjectRelease_n();
}

uint64_t sub_1C97D8828(uint64_t a1)
{
  sub_1C97D908C(a1, v11);
  if (v12)
  {
    sub_1C97A2CEC(&unk_1EC3CA040);
    return swift_willThrowTypedImpl();
  }

  else
  {
    sub_1C979B054(v11, v13);
    v2 = sub_1C97A5A8C(v13, v13[3]);
    sub_1C9A47930(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11[0], SDWORD1(v11[0]));
    return sub_1C97A592C(v13);
  }
}

uint64_t sub_1C97D88C8@<X0>(uint64_t *a1@<X8>)
{
  sub_1C97D9FE8();
  result = swift_allocError();
  *a1 = result;
  return result;
}

uint64_t sub_1C97D8908()
{
  sub_1C97A2CEC(&qword_1EC3C7108);
  sub_1C97DA9B0();
  sub_1C97AE67C(v0, v1);
  sub_1C9A92008();
  sub_1C97A2CEC(&qword_1EC3C7118);
  sub_1C97AA878();
  swift_allocObject();
  v2 = sub_1C97DA814();
  sub_1C98E3778(v2);
  sub_1C97AE67C(&qword_1EC3C7120, &qword_1EC3C7118);
  v3 = sub_1C9A91F28();

  type metadata accessor for SharedSecureMicrophone.Instance();
  result = sub_1C97DAAF8();
  *(result + 16) = v3;
  return result;
}

int *sub_1C97D8A20()
{
  if (qword_1EC3C5E48 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC3D34C8;
  v1 = unk_1EC3D34D0;
  type metadata accessor for AnalysisServerEnvironmentSharedImpl();
  v2 = swift_allocObject();

  result = sub_1C97D6108(v0, v1);
  qword_1EC3D3150 = v2;
  byte_1EC3D3158 = 0;
  return result;
}

uint64_t sub_1C97D8AD4()
{

  sub_1C97DA1E0(v0 + 112, &qword_1EC3C7100);

  return v0;
}

uint64_t sub_1C97D8B6C()
{
  sub_1C97D8AD4();

  return swift_deallocClassInstance();
}

__n128 sub_1C97D8BC4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C97D8BF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C97D8BF0();
  *a1 = result;
  return result;
}

uint64_t sub_1C97D8C20@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = v1[4];
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
}

unint64_t sub_1C97D8D74()
{
  result = qword_1EC3C70B8;
  if (!qword_1EC3C70B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C70B8);
  }

  return result;
}

unint64_t sub_1C97D8DC8()
{
  result = qword_1EC3C70C0;
  if (!qword_1EC3C70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C70C0);
  }

  return result;
}

unint64_t sub_1C97D8E1C()
{
  result = qword_1EC3C70C8;
  if (!qword_1EC3C70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C70C8);
  }

  return result;
}

uint64_t sub_1C97D8E70(uint64_t a1, uint64_t a2)
{
  result = sub_1C97D9E14(&qword_1EC3C70D0, a2, type metadata accessor for AnalysisServerEnvironmentSharedImpl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C97D8EC8(uint64_t a1, uint64_t a2)
{
  result = sub_1C97D9E14(&qword_1EC3C70D8, a2, type metadata accessor for AnalysisServerEnvironmentSharedImpl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C97D8F2C(uint64_t a1, uint64_t a2)
{
  result = sub_1C97D9E14(&qword_1EC3C70E0, a2, type metadata accessor for AnalysisServerEnvironmentSharedImpl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C97D8F84(uint64_t a1, uint64_t a2)
{
  result = sub_1C97D9E14(&qword_1EC3C70E8, a2, type metadata accessor for AnalysisServerEnvironmentSharedImpl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C97D8FDC(uint64_t a1, uint64_t a2)
{
  result = sub_1C97D9E14(&qword_1EC3C70F0, a2, type metadata accessor for AnalysisServerEnvironmentSharedImpl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C97D9034(uint64_t a1, uint64_t a2)
{
  result = sub_1C97D9E14(&qword_1EC3C70F8, a2, type metadata accessor for AnalysisServerEnvironmentSharedImpl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C97D908C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C7100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1C97D90FC(uint64_t a1, uint64_t a2, void *a3, void *(*a4)(uint64_t *__return_ptr, void *, void, uint64_t), uint64_t a5, uint64_t a6)
{
  v14[0] = a1;
  v14[1] = a2;
  v8 = *a3;
  v9 = a3[1];
  result = a4(&v13, v14, *a3, v9);
  v11 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    if (v11 < a6)
    {
      v12 = v8;
    }

    else
    {
      v11 = 0;
      v12 = v8 + 1;
    }

    *a3 = v12;
    a3[1] = v11;
    return v13;
  }

  return result;
}

void *sub_1C97D917C(uint64_t a1, void *a2, void *(*a3)(uint64_t *__return_ptr, uint64_t *, void, uint64_t), uint64_t a4, uint64_t a5)
{
  v13 = a1;
  v7 = *a2;
  v8 = a2[1];
  result = a3(&v12, &v13, *a2, v8);
  v10 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    if (v10 < a5)
    {
      v11 = v7;
    }

    else
    {
      v10 = 0;
      v11 = v7 + 1;
    }

    *a2 = v11;
    a2[1] = v10;
    return v12;
  }

  return result;
}

void *sub_1C97D9200@<X0>(_OWORD *a1@<X0>, void *a2@<X1>, void *(*a3)(uint64_t *__return_ptr, _OWORD *, void, uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = a1[1];
  v19[0] = *a1;
  v19[1] = v8;
  v19[2] = a1[2];
  v9 = *a2;
  v10 = a2[1];
  result = a3(&v15, v19, *a2, v10);
  v12 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    if (v12 < a4)
    {
      v13 = v9;
    }

    else
    {
      v12 = 0;
      v13 = v9 + 1;
    }

    *a2 = v13;
    a2[1] = v12;
    v14 = v18;
    *a5 = v15;
    *(a5 + 8) = v16;
    *(a5 + 24) = v17;
    *(a5 + 40) = v14;
  }

  return result;
}

uint64_t sub_1C97D92B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, void *, uint64_t))
{
  v9[0] = a1;
  v9[1] = a2;
  if (a4 == a5)
  {
    a6(&v8, v9, a3);
    return v8;
  }

  else
  {
    v6 = a1;
  }

  return v6;
}

uint64_t sub_1C97D9320(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *))
{
  v6 = result;
  if (a3 == a4)
  {
    a5(&v5, &v6);
    return v5;
  }

  return result;
}

void *sub_1C97D9368@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *(*a4)(void **__return_ptr, _BYTE *)@<X4>, uint64_t a5@<X8>)
{
  v6 = a1[1];
  *v16 = *a1;
  *&v16[16] = v6;
  *&v16[32] = a1[2];
  if (a2 == a3)
  {
    result = a4(&v12, v16);
    v8 = v12;
    v9 = v13;
    v10 = v14;
    v11 = v15;
  }

  else
  {
    v11 = *&v16[40];
    v8 = *v16;
    result = sub_1C97CE3DC(*&v16[32], *&v16[40]);
    v9 = *&v16[8];
    v10 = *&v16[24];
  }

  *a5 = v8;
  *(a5 + 8) = v9;
  *(a5 + 24) = v10;
  *(a5 + 40) = v11;
  return result;
}

uint64_t sub_1C97D9418(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a3)
  {
    if (qword_1EC3C5520 != -1)
    {
      swift_once();
    }

    v11 = sub_1C9A91B58();
    sub_1C97BFF6C(v11, qword_1EC3D3108);

    v12 = sub_1C9A91B38();
    v13 = sub_1C9A92FC8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136446978;
      *(v14 + 4) = sub_1C9849140(a4, a5, &v25);
      *(v14 + 12) = 2050;
      *(v14 + 14) = a2;
      *(v14 + 22) = 2050;
      *(v14 + 24) = a6;
      *(v14 + 32) = 2080;
      v16 = sub_1C9A924F8();
      v18 = sub_1C9849140(v16, v17, &v25);

      *(v14 + 34) = v18;
      _os_log_impl(&dword_1C9788000, v12, v13, "%{public}sheartbeat count %{public}ld (fires every %{public}ld values); value: %s", v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1CCA93280](v15, -1, -1);
      v19 = v14;
LABEL_10:
      MEMORY[0x1CCA93280](v19, -1, -1);
    }
  }

  else
  {
    if (qword_1EC3C5520 != -1)
    {
      swift_once();
    }

    v20 = sub_1C9A91B58();
    sub_1C97BFF6C(v20, qword_1EC3D3108);

    v12 = sub_1C9A91B38();
    v21 = sub_1C9A92FC8();

    if (os_log_type_enabled(v12, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25 = v23;
      *v22 = 136446722;
      *(v22 + 4) = sub_1C9849140(a4, a5, &v25);
      *(v22 + 12) = 2050;
      *(v22 + 14) = a2;
      *(v22 + 22) = 2050;
      *(v22 + 24) = a6;
      _os_log_impl(&dword_1C9788000, v12, v21, "%{public}sheartbeat count %{public}ld (fires every %{public}ld values)", v22, 0x20u);
      sub_1C97A592C(v23);
      MEMORY[0x1CCA93280](v23, -1, -1);
      v19 = v22;
      goto LABEL_10;
    }
  }

  return a1;
}

uint64_t sub_1C97D96E8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  if (a3)
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v13 = sub_1C9A91B58();
    sub_1C97BFF6C(v13, qword_1EC3D3108);

    sub_1C97DA238(a1, v30);
    v14 = sub_1C9A91B38();
    v15 = sub_1C9A92FC8();

    if (!os_log_type_enabled(v14, v15))
    {

      sub_1C97DA294(a1);
      goto LABEL_13;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29 = v17;
    *v16 = 136446978;
    *(v16 + 4) = sub_1C9849140(a4, a5, &v29);
    *(v16 + 12) = 2050;
    *(v16 + 14) = a2;
    *(v16 + 22) = 2050;
    *(v16 + 24) = a6;
    *(v16 + 32) = 2080;
    v18 = a1[1];
    v30[0] = *a1;
    v30[1] = v18;
    v30[2] = a1[2];
    v19 = sub_1C9A924F8();
    v21 = sub_1C9849140(v19, v20, &v29);

    *(v16 + 34) = v21;
    _os_log_impl(&dword_1C9788000, v14, v15, "%{public}sheartbeat count %{public}ld (fires every %{public}ld values); value: %s", v16, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1CCA93280](v17, -1, -1);
    v22 = v16;
  }

  else
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v23 = sub_1C9A91B58();
    sub_1C97BFF6C(v23, qword_1EC3D3108);

    v14 = sub_1C9A91B38();
    v24 = sub_1C9A92FC8();

    if (!os_log_type_enabled(v14, v24))
    {
      goto LABEL_11;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v30[0] = v26;
    *v25 = 136446722;
    *(v25 + 4) = sub_1C9849140(a4, a5, v30);
    *(v25 + 12) = 2050;
    *(v25 + 14) = a2;
    *(v25 + 22) = 2050;
    *(v25 + 24) = a6;
    _os_log_impl(&dword_1C9788000, v14, v24, "%{public}sheartbeat count %{public}ld (fires every %{public}ld values)", v25, 0x20u);
    sub_1C97A592C(v26);
    MEMORY[0x1CCA93280](v26, -1, -1);
    v22 = v25;
  }

  MEMORY[0x1CCA93280](v22, -1, -1);
LABEL_11:

LABEL_13:
  v27 = a1[1];
  *a7 = *a1;
  a7[1] = v27;
  a7[2] = a1[2];
  return sub_1C97DA238(a1, v30);
}

uint64_t sub_1C97D99DC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C9912214();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1C97D9A18()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C97DA71C();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  sub_1C97DA64C(v1);
  sub_1C97DABB0();

  return sub_1C98290C0();
}

uint64_t sub_1C97D9AF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1C97D9B5C()
{
  result = qword_1EC3C7138;
  if (!qword_1EC3C7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7138);
  }

  return result;
}

uint64_t sub_1C97D9BB0()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C97DA71C();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  sub_1C97DA64C(v1);
  sub_1C97DABB0();

  return sub_1C98290C0();
}

uint64_t sub_1C97D9C3C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  sub_1C97DA91C();

  return v3();
}

unint64_t sub_1C97D9D1C()
{
  result = qword_1EC3C7268;
  if (!qword_1EC3C7268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7268);
  }

  return result;
}

uint64_t sub_1C97D9D78()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C97D9E14(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1C97D9E64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = sub_1C97D9418(*a1, a2, a3, a4, a5, a6);
  *a7 = result;
  return result;
}

uint64_t sub_1C97D9EA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t *__return_ptr, uint64_t *)@<X4>, uint64_t *a6@<X8>)
{
  result = sub_1C97D9320(*a1, a2, a3, a4, a5);
  *a6 = result;
  return result;
}

void *sub_1C97D9ED8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *(*a3)(uint64_t *__return_ptr, uint64_t *, void, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = sub_1C97D917C(*a1, a2, a3, a4, a5);
  *a6 = result;
  return result;
}

uint64_t sub_1C97D9F40(uint64_t a1)
{
  v3 = *(sub_1C9A91748() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_1C97D86FC(a1, v1 + v4, v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
}

unint64_t sub_1C97D9FE8()
{
  result = qword_1EC3C7328;
  if (!qword_1EC3C7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7328);
  }

  return result;
}

uint64_t sub_1C97DA03C()
{
  sub_1C97AA95C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  sub_1C97DA950(v5);

  return sub_1C97D8408(v2, v3, v4);
}

uint64_t sub_1C97DA0DC()
{
  sub_1C97AA95C();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  sub_1C97DA950(v6);

  return sub_1C97D81B8(v2, v3, v5, v4);
}

uint64_t sub_1C97DA180(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C97DA940();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C97DA1E0(uint64_t a1, uint64_t *a2)
{
  sub_1C97A2CEC(a2);
  sub_1C97DA940();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C97DA2E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C97CE3DC(a1, a2);
  }

  return a1;
}

uint64_t sub_1C97DA2FC(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));
  sub_1C97DAA28();

  return swift_deallocObject();
}

_BYTE *sub_1C97DA368(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C97DA410(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C97DA450(uint64_t result, int a2, int a3)
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

unint64_t sub_1C97DA4A8()
{
  result = qword_1EC3C7340;
  if (!qword_1EC3C7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7340);
  }

  return result;
}

unint64_t sub_1C97DA500()
{
  result = qword_1EC3C7348;
  if (!qword_1EC3C7348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7348);
  }

  return result;
}

unint64_t sub_1C97DA558()
{
  result = qword_1EC3C7350;
  if (!qword_1EC3C7350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7350);
  }

  return result;
}

uint64_t sub_1C97DA67C()
{

  return swift_once();
}

uint64_t sub_1C97DA69C()
{

  return swift_once();
}

uint64_t sub_1C97DA6BC()
{
  result = v0[1];
  v3 = v0[3];
  v1[43] = result;
  v1[44] = v3;
  v1[45] = v0[4];
  return result;
}

uint64_t sub_1C97DA758@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  *(v5 + 160) = v3;
  *(v5 + 168) = result;
  *(v5 + 176) = a2 & 1;
  *(v5 + 184) = v4;
  *(v5 + 192) = v2;
  return result;
}

__n128 sub_1C97DA76C()
{
  result = *(v0 + 112);
  v2 = *(v0 + 144);
  *(v0 + 32) = *(v0 + 128);
  *(v0 + 48) = v2;
  *(v0 + 16) = result;
  return result;
}

uint64_t sub_1C97DA7DC()
{
}

uint64_t sub_1C97DA854(void *a1)
{
  *(v3 + 432) = a1;
  a1[2] = v1;
  a1[3] = v4;
  a1[4] = v2;

  return type metadata accessor for XPCProxyDecoder();
}

uint64_t sub_1C97DA878()
{
}

uint64_t sub_1C97DA89C()
{

  return swift_dynamicCast();
}

uint64_t sub_1C97DA8BC()
{

  return swift_task_alloc();
}

uint64_t sub_1C97DA95C(void *a1)
{
  a1[2] = v1;
  a1[3] = v3;
  a1[4] = v2;

  return type metadata accessor for XPCProxyDecoder();
}

id sub_1C97DA978(void *a1)
{

  return [a1 (v1 + 3781)];
}

uint64_t sub_1C97DA994()
{

  return swift_retain_n();
}

uint64_t sub_1C97DAA34()
{

  return swift_dynamicCast();
}

uint64_t sub_1C97DAA64()
{

  return swift_once();
}

uint64_t sub_1C97DAAF8()
{

  return swift_allocObject();
}

uint64_t sub_1C97DAB10()
{
}

uint64_t sub_1C97DAB28()
{

  return swift_initStackObject();
}

uint64_t sub_1C97DAB40()
{

  return sub_1C9A93318();
}

uint64_t sub_1C97DAB58()
{

  return sub_1C97D9AF8(v0 + 200, v0 + 240);
}

uint64_t sub_1C97DAB70()
{

  return objc_opt_self();
}

id sub_1C97DAB98()
{
  *(v1 + 320) = v0;

  return v0;
}

uint64_t sub_1C97DABD8()
{
}

uint64_t sub_1C97DABF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 384) = a1;
  *(v3 + 392) = a3;
}

uint64_t sub_1C97DAC08()
{
  *(v1 + 512) = v0;

  return sub_1C97D9AA4(v1 + 16);
}

uint64_t sub_1C97DAC20()
{
}

uint64_t sub_1C97DAC44()
{

  return swift_dynamicCast();
}

uint64_t sub_1C97DAC88()
{
  sub_1C97A592C(v2 + 200);

  return sub_1C97ACC50(v1, 0, 1, v0);
}

uint64_t sub_1C97DACD0(uint64_t result)
{
  v3[46] = result;
  v3[47] = v2;
  v3[48] = *(v1 + 32);
  return result;
}

uint64_t sub_1C97DACF0()
{

  return sub_1C97ACC50(v1, 1, 1, v0);
}

uint64_t sub_1C97DAD10()
{

  return sub_1C97AA074(v0);
}

uint64_t sub_1C97DAD30()
{
}

uint64_t sub_1C97DAD48()
{

  return swift_task_alloc();
}

uint64_t sub_1C97DAD60()
{
  swift_beginAccess();
  nullsub_1(v0 + 16);
  swift_endAccess();
  return swift_deallocClassInstance();
}

uint64_t sub_1C97DADD4(uint64_t a1)
{

  v2 = sub_1C97E88EC();
  sub_1C97DB170(v2, v3, v4, v5);
  sub_1C97E8AA0();
  return a1;
}

uint64_t sub_1C97DAE24(uint64_t a1)
{
  v3 = swift_allocObject();
  v4 = v1[1];
  v3[1] = *v1;
  v3[2] = v4;
  v5 = v1[3];
  v3[3] = v1[2];
  v3[4] = v5;
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v14 = v12;
  v13[1] = v6;
  v13[2] = v11;
  v13[0] = v10[0];
  v8[2] = sub_1C97E83C8;
  v8[3] = v3;
  v8[4] = v10;
  sub_1C97E82EC(v1, v9, &qword_1EC3C78E8);
  sub_1C97E3028(v13, sub_1C97E83E4, v8);
  sub_1C97E883C();

  return sub_1C97E87F4();
}

uint64_t sub_1C97DAF44(float *a1, _OWORD *a2)
{
  v2 = a2[1];
  v6[0] = *a2;
  v6[1] = v2;
  v3 = a2[3];
  v6[2] = a2[2];
  v6[3] = v3;
  v5[2] = v6;
  return sub_1C97DBE04(a1, sub_1C97E8400, v5);
}

uint64_t sub_1C97DAF94(void *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = __dst;
  sub_1C97E82EC(v12, v10, &unk_1EC3C9940);
  v7 = sub_1C97E2F54(v12, sub_1C97E84C4, v9, &unk_1EC3C7410, &unk_1C9A9FC30, &unk_1EC3C9940);
  sub_1C97DA1E0(v12, &unk_1EC3C9940);
  return v7;
}

uint64_t sub_1C97DB094(void *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, __src, 0x41uLL);
  memcpy(v12, __src, 0x41uLL);
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = __dst;
  sub_1C97E2DB0(v12, v10);
  v7 = sub_1C97E3190(v12, sub_1C97E7B3C, v9, sub_1C97E37D4);
  sub_1C97E7B58(v12);
  return v7;
}

uint64_t sub_1C97DB170(void *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = __dst;
  sub_1C97E82EC(v12, v10, &qword_1EC3C7360);
  v7 = sub_1C97E2E0C(v12, sub_1C97E7880, v9);
  sub_1C97DA1E0(v12, &qword_1EC3C7360);
  return v7;
}

uint64_t sub_1C97DB258()
{
  sub_1C97E877C();
  sub_1C97E8A30();
  memcpy(v1, v2, 0x50uLL);
  memcpy(__dst, v0, sizeof(__dst));
  sub_1C97E8AD4();
  sub_1C97E8AC8();
  sub_1C97E82EC(v3, v4, v5);
  sub_1C97E88CC();
  sub_1C97E2ED8(v6, v7, v8);
  sub_1C97E883C();
  sub_1C97DA1E0(__dst, &qword_1EC3C7690);
  return sub_1C97E87F4();
}

uint64_t sub_1C97DB310()
{
  sub_1C97E877C();
  sub_1C97E8A30();
  memcpy(v1, v2, 0x58uLL);
  memcpy(__dst, v0, sizeof(__dst));
  sub_1C97E8AD4();
  sub_1C97E8AC8();
  sub_1C97E82EC(v3, v4, v5);
  sub_1C97E88CC();
  sub_1C97E2F54(v6, v7, v8, v9, v10, &qword_1EC3C76A0);
  sub_1C97E883C();
  sub_1C97DA1E0(__dst, &qword_1EC3C76A0);
  return sub_1C97E87F4();
}

uint64_t sub_1C97DB3E0()
{
  sub_1C97E877C();
  sub_1C97E8A30();
  memcpy(v1, v2, 0x58uLL);
  memcpy(__dst, v0, sizeof(__dst));
  sub_1C97E8AD4();
  sub_1C97E8AC8();
  sub_1C97E82EC(v3, v4, v5);
  sub_1C97E88CC();
  sub_1C97E2F54(v6, v7, v8, v9, v10, &qword_1EC3CE610);
  sub_1C97E883C();
  sub_1C97DA1E0(__dst, &qword_1EC3CE610);
  return sub_1C97E87F4();
}

uint64_t sub_1C97DB4B0()
{
  sub_1C97E877C();
  memcpy(__dst, v0, sizeof(__dst));
  memcpy(v8, v0, 0x41uLL);
  sub_1C97E8AD4();
  sub_1C97A6264(v8, v6);
  sub_1C97E88CC();
  sub_1C97E3190(v1, v2, v3, v4);
  sub_1C97E883C();
  sub_1C97E8084(v8);
  return sub_1C97E87F4();
}

uint64_t sub_1C97DB5F4(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3)
{
  v59 = a3;
  v60 = a2;
  v57 = sub_1C97A2CEC(&unk_1EC3C7370);
  MEMORY[0x1EEE9AC00](v57);
  v5 = &v47 - v4;
  v6 = sub_1C97A2CEC(&qword_1EC3C6758);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v47 - v7;
  v9 = sub_1C97A2CEC(&unk_1EC3C7380);
  v58 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  v12 = sub_1C9A91748();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = v65;
  result = sub_1C97DC4D4(a1);
  if (!v17)
  {
    v19 = result;
    v55 = v5;
    v51 = v8;
    v52 = v11;
    v56 = v15;
    v53 = v9;
    v54 = v13;
    v50 = v12;
    v20 = v16;
    memcpy(__dst, v16, 0x41uLL);
    __dst[9] = 1;
    __dst[10] = v19;
    sub_1C97E82EC(v16, v63, &qword_1EC3C7360);
    v21 = v60(__dst);
    v65 = 0;
    v22 = v21;
    memcpy(v63, __dst, 0x58uLL);
    sub_1C97DA1E0(v63, &unk_1EC3C9940);
    sub_1C9A91738();
    v60 = v22;
    v61 = sub_1C98BF080();
    sub_1C97A2CEC(&unk_1EC3C7390);
    v23 = sub_1C97A2CEC(&qword_1EC3C7C80);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390);
    v24 = v55;
    sub_1C9A91F68();

    v26 = v16[25];
    v25 = v16[26];
    v59 = v25 + v26;
    if (__CFADD__(v25, v26))
    {
      __break(1u);
    }

    else
    {
      v49 = v16[29];
      v27 = v16[24];
      v28 = v20[22];
      v29 = v20[21];
      v30 = v20[18];
      v31 = v20[17];
      v48 = v20[23] & 1;
      v32 = sub_1C97A2CEC(&qword_1EC3C6760);
      *(v24 + v32[15]) = v59;
      *(v24 + v32[16]) = v27;
      *(v24 + v32[17]) = v23;
      v33 = swift_allocObject();
      *(v33 + 16) = v31;
      *(v33 + 20) = v30;
      *(v33 + 24) = *(v20 + 19);
      *(v33 + 32) = v29;
      *(v33 + 36) = v28;
      *(v33 + 40) = v48;
      *(v33 + 44) = v27;
      *(v33 + 48) = v26;
      *(v33 + 52) = v25;
      *(v33 + 56) = *(v20 + 27);
      *(v33 + 64) = v49;
      v34 = v57;
      v35 = (v24 + *(v57 + 52));
      *v35 = sub_1C97AE3B8;
      v35[1] = v33;
      v36 = (v24 + *(v34 + 56));
      *v36 = sub_1C97E74C4;
      v36[1] = 0;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_1C97ADF1C;
      *(v37 + 24) = 0;
      sub_1C97A2CEC(&unk_1EC3C73A0);
      sub_1C97AE67C(qword_1EC3C4FB8, &unk_1EC3C7370);
      sub_1C97AE67C(&unk_1EC3C4AE0, &unk_1EC3C73A0);
      v38 = v51;
      sub_1C9A92078();

      sub_1C97DA1E0(v24, &unk_1EC3C7370);
      v61 = 0;
      v62 = 0xE000000000000000;
      sub_1C9A935B8();

      v61 = 0xD000000000000021;
      v62 = 0x80000001C9AD41B0;
      sub_1C97AE3DC();
      v39 = v56;
      v40 = v50;
      v41 = sub_1C9A93A98();
      MEMORY[0x1CCA90230](v41);

      MEMORY[0x1CCA90230](8250, 0xE200000000000000);
      v42 = v52;
      sub_1C97DC5C4();

      sub_1C97DA1E0(v38, &qword_1EC3C6758);
      sub_1C97AE67C(&qword_1EC3C4C80, &unk_1EC3C7380);
      v43 = v53;
      v44 = sub_1C9A92008();
      sub_1C97A2CEC(&qword_1EC3C6768);
      swift_allocObject();
      v45 = sub_1C98E3778(v44);
      (*(v58 + 8))(v42, v43);
      v61 = v45;
      sub_1C97AE67C(&qword_1EC3C4EE0, &qword_1EC3C6768);
      v46 = sub_1C9A91F28();

      (*(v54 + 8))(v39, v40);
      type metadata accessor for SharedLogMelSpectrogram.Instance();
      result = swift_allocObject();
      *(result + 16) = v46;
    }
  }

  return result;
}

uint64_t sub_1C97DBE04(float *a1, uint64_t (*a2)(void *), uint64_t a3)
{
  v60 = a3;
  v61 = a2;
  v59 = sub_1C97A2CEC(&unk_1EC3C7370);
  MEMORY[0x1EEE9AC00](v59);
  v5 = &v47[-v4];
  v6 = sub_1C97A2CEC(&qword_1EC3C6758);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v47[-v7];
  v9 = sub_1C97A2CEC(&unk_1EC3C7380);
  v58 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47[-v10];
  v12 = sub_1C9A91748();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v65;
  result = sub_1C97DC54C(a1);
  if (!v16)
  {
    v65 = a1;
    v55 = v8;
    v56 = v11;
    v53 = v12;
    v54 = v9;
    v57 = v13;
    v64[0] = 1;
    v64[1] = result;
    v18 = v59;
    v19 = v61(v64);
    v60 = 0;
    v52 = v15;
    sub_1C9A91738();
    v61 = v19;
    v62 = sub_1C98BF080();
    sub_1C97A2CEC(&unk_1EC3C7390);
    v20 = sub_1C97A2CEC(&qword_1EC3C7C80);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390);
    v21 = v5;
    sub_1C9A91F68();

    v22 = v65;
    v23 = *(v65 + 9);
    v24 = *(v65 + 8);
    v51 = (v23 + v24);
    if (__CFADD__(v23, v24))
    {
      __break(1u);
    }

    else
    {
      v25 = v23;
      v26 = *(v65 + 12);
      v27 = *(v65 + 7);
      v28 = *(v65 + 24);
      v29 = *(v65 + 5);
      v49 = *(v65 + 4);
      v50 = v26;
      v30 = *(v65 + 1);
      v31 = *v65;
      v48 = v28 & 1;
      v32 = sub_1C97A2CEC(&qword_1EC3C6760);
      *(v21 + v32[15]) = v51;
      *(v21 + v32[16]) = v27;
      *(v21 + v32[17]) = v20;
      v33 = swift_allocObject();
      *(v33 + 16) = v31;
      *(v33 + 20) = v30;
      *(v33 + 24) = *(v22 + 1);
      v34 = v48;
      *(v33 + 32) = v49;
      *(v33 + 36) = v29;
      *(v33 + 40) = v34;
      *(v33 + 44) = v27;
      *(v33 + 48) = v24;
      *(v33 + 52) = v25;
      *(v33 + 56) = *(v22 + 5);
      *(v33 + 64) = v50;
      v35 = (v21 + *(v18 + 52));
      *v35 = sub_1C97E84A4;
      v35[1] = v33;
      v36 = (v21 + *(v18 + 56));
      *v36 = sub_1C97E74C4;
      v36[1] = 0;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_1C97ADF1C;
      *(v37 + 24) = 0;
      sub_1C97A2CEC(&unk_1EC3C73A0);
      sub_1C97AE67C(qword_1EC3C4FB8, &unk_1EC3C7370);
      sub_1C97AE67C(&unk_1EC3C4AE0, &unk_1EC3C73A0);
      v38 = v55;
      sub_1C9A92078();

      sub_1C97DA1E0(v21, &unk_1EC3C7370);
      v62 = 0;
      v63 = 0xE000000000000000;
      sub_1C9A935B8();

      v62 = 0xD000000000000021;
      v63 = 0x80000001C9AD41B0;
      sub_1C97AE3DC();
      v40 = v52;
      v39 = v53;
      v41 = sub_1C9A93A98();
      MEMORY[0x1CCA90230](v41);

      MEMORY[0x1CCA90230](8250, 0xE200000000000000);
      v42 = v56;
      sub_1C97DC5C4();

      sub_1C97DA1E0(v38, &qword_1EC3C6758);
      sub_1C97AE67C(&qword_1EC3C4C80, &unk_1EC3C7380);
      v43 = v54;
      v44 = sub_1C9A92008();
      sub_1C97A2CEC(&qword_1EC3C6768);
      swift_allocObject();
      v45 = sub_1C98E3778(v44);
      (*(v58 + 8))(v42, v43);
      v62 = v45;
      sub_1C97AE67C(&qword_1EC3C4EE0, &qword_1EC3C6768);
      v46 = sub_1C9A91F28();

      (*(v57 + 8))(v40, v39);
      type metadata accessor for SharedLogMelSpectrogram.Instance();
      result = swift_allocObject();
      *(result + 16) = v46;
    }
  }

  return result;
}

uint64_t sub_1C97DC4D4(uint64_t a1)
{
  v1 = *(a1 + 68);
  v2 = truncf(v1);
  if (v1 > -9.2234e18 && v1 < 9.2234e18 && v1 == v2)
  {
    return v1;
  }

  sub_1C97AE490();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_1C97DC54C(float *a1)
{
  v1 = *a1;
  v2 = truncf(*a1);
  if (*a1 > -9.2234e18 && v1 < 9.2234e18 && v1 == v2)
  {
    return v1;
  }

  sub_1C97AE490();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_1C97DC5C4()
{
  sub_1C97E8964();
  sub_1C97E8678();
  sub_1C97AA878();
  v0 = swift_allocObject();
  sub_1C97E886C(v0);
  sub_1C97AA878();
  v1 = swift_allocObject();
  sub_1C97E8860(v1);
  sub_1C97AA878();
  v2 = swift_allocObject();
  sub_1C97E8730(v2);
  sub_1C97E89B8();
  sub_1C97E87A0(qword_1EC3C5258);
  sub_1C97E8854();
  sub_1C97E85A8();

  sub_1C97E894C();
}

uint64_t sub_1C97DC6CC()
{
  sub_1C97E8964();
  sub_1C97E8678();
  sub_1C97AA878();
  v0 = swift_allocObject();
  sub_1C97E886C(v0);
  sub_1C97AA878();
  v1 = swift_allocObject();
  sub_1C97E8860(v1);
  sub_1C97AA878();
  v2 = swift_allocObject();
  sub_1C97E8730(v2);
  sub_1C97E89B8();
  sub_1C97E87A0(&qword_1EC3C7468);
  sub_1C97E8854();
  sub_1C97E85A8();

  sub_1C97E894C();
}

uint64_t sub_1C97DC7D4()
{
  sub_1C97E8964();
  sub_1C97E8678();
  sub_1C97AA878();
  v0 = swift_allocObject();
  sub_1C97E886C(v0);
  sub_1C97AA878();
  v1 = swift_allocObject();
  sub_1C97E8860(v1);
  sub_1C97AA878();
  v2 = swift_allocObject();
  sub_1C97E8730(v2);
  sub_1C97E89B8();
  sub_1C97E8518();
  sub_1C97E89A0(v3);
  sub_1C97E8854();
  sub_1C97E85A8();

  sub_1C97E894C();
}

uint64_t sub_1C97DC8D0()
{
  sub_1C97E8964();
  sub_1C97E8678();
  sub_1C97AA878();
  v0 = swift_allocObject();
  sub_1C97E886C(v0);
  sub_1C97AA878();
  v1 = swift_allocObject();
  sub_1C97E8860(v1);
  sub_1C97AA878();
  v2 = swift_allocObject();
  sub_1C97E8730(v2);
  sub_1C97E89B8();
  sub_1C97E8704(&qword_1EC3C7748);
  sub_1C97E8854();
  sub_1C97E85A8();

  sub_1C97E894C();
}

uint64_t sub_1C97DC9C8()
{
  sub_1C97E8964();
  sub_1C97E8678();
  sub_1C97AA878();
  v0 = swift_allocObject();
  sub_1C97E886C(v0);
  sub_1C97AA878();
  v1 = swift_allocObject();
  sub_1C97E8860(v1);
  sub_1C97AA878();
  v2 = swift_allocObject();
  sub_1C97E8730(v2);
  sub_1C97E89B8();
  sub_1C97E8704(&qword_1EC3C77C8);
  sub_1C97E8854();
  sub_1C97E85A8();

  sub_1C97E894C();
}

uint64_t sub_1C97DCAC0()
{
  sub_1C97E8964();
  sub_1C97E8678();
  sub_1C97AA878();
  v0 = swift_allocObject();
  sub_1C97E886C(v0);
  sub_1C97AA878();
  v1 = swift_allocObject();
  sub_1C97E8860(v1);
  sub_1C97AA878();
  v2 = swift_allocObject();
  sub_1C97E8730(v2);
  sub_1C97E89B8();
  sub_1C97E8518();
  sub_1C97E89A0(v3);
  sub_1C97E8854();
  sub_1C97E85A8();

  sub_1C97E894C();
}

uint64_t sub_1C97DCBBC()
{
  sub_1C97E8964();
  sub_1C97E8678();
  sub_1C97AA878();
  v0 = swift_allocObject();
  sub_1C97E886C(v0);
  sub_1C97AA878();
  v1 = swift_allocObject();
  sub_1C97E8860(v1);
  sub_1C97AA878();
  v2 = swift_allocObject();
  sub_1C97E8730(v2);
  sub_1C97E89B8();
  sub_1C97E8704(&qword_1EC3C7818);
  sub_1C97E8854();
  sub_1C97E85A8();

  sub_1C97E894C();
}

uint64_t sub_1C97DCCB4()
{
  sub_1C97E8964();
  sub_1C97E8678();
  sub_1C97AA878();
  v0 = swift_allocObject();
  sub_1C97E886C(v0);
  sub_1C97AA878();
  v1 = swift_allocObject();
  sub_1C97E8860(v1);
  sub_1C97AA878();
  v2 = swift_allocObject();
  sub_1C97E8730(v2);
  sub_1C97E89B8();
  sub_1C97E87A0(&qword_1EC3C7A28);
  sub_1C97E8854();
  sub_1C97E85A8();

  sub_1C97E894C();
}

uint64_t sub_1C97DCDBC()
{
  sub_1C97E8964();
  sub_1C97E8678();
  sub_1C97AA878();
  v0 = swift_allocObject();
  sub_1C97E886C(v0);
  sub_1C97AA878();
  v1 = swift_allocObject();
  sub_1C97E8860(v1);
  sub_1C97AA878();
  v2 = swift_allocObject();
  sub_1C97E8730(v2);
  sub_1C97E89B8();
  sub_1C97E8518();
  sub_1C97E89A0(v3);
  sub_1C97E8854();
  sub_1C97E85A8();

  sub_1C97E894C();
}

uint64_t sub_1C97DCEB8()
{
  sub_1C97E8964();
  sub_1C97E8678();
  sub_1C97AA878();
  v0 = swift_allocObject();
  sub_1C97E886C(v0);
  sub_1C97AA878();
  v1 = swift_allocObject();
  sub_1C97E8860(v1);
  sub_1C97AA878();
  v2 = swift_allocObject();
  sub_1C97E8730(v2);
  sub_1C97E89B8();
  sub_1C97E87A0(&qword_1EC3C7940);
  sub_1C97E8854();
  sub_1C97E85A8();

  sub_1C97E894C();
}

uint64_t sub_1C97DCFC0()
{
  sub_1C97E8964();
  sub_1C97E8678();
  sub_1C97AA878();
  v0 = swift_allocObject();
  sub_1C97E886C(v0);
  sub_1C97AA878();
  v1 = swift_allocObject();
  sub_1C97E8860(v1);
  sub_1C97AA878();
  v2 = swift_allocObject();
  sub_1C97E8730(v2);
  sub_1C97E89B8();
  sub_1C97E87A0(&qword_1EC3C79B0);
  sub_1C97E8854();
  sub_1C97E85A8();

  sub_1C97E894C();
}

uint64_t sub_1C97DD0C8()
{
  sub_1C97E8964();
  sub_1C97E8678();
  sub_1C97AA878();
  v0 = swift_allocObject();
  sub_1C97E886C(v0);
  sub_1C97AA878();
  v1 = swift_allocObject();
  sub_1C97E8860(v1);
  sub_1C97AA878();
  v2 = swift_allocObject();
  sub_1C97E8730(v2);
  sub_1C97E89B8();
  sub_1C97E87A0(&qword_1EC3C7490);
  sub_1C97E8854();
  sub_1C97E85A8();

  sub_1C97E894C();
}

uint64_t sub_1C97DD1D0()
{
  sub_1C97E8964();
  sub_1C97E8678();
  sub_1C97AA878();
  v0 = swift_allocObject();
  sub_1C97E886C(v0);
  sub_1C97AA878();
  v1 = swift_allocObject();
  sub_1C97E8860(v1);
  sub_1C97AA878();
  v2 = swift_allocObject();
  sub_1C97E8730(v2);
  sub_1C97E89B8();
  sub_1C97E87A0(&qword_1EC3C7888);
  sub_1C97E8854();
  sub_1C97E85A8();

  sub_1C97E894C();
}

uint64_t sub_1C97DD31C(uint64_t a1)
{

  v2 = sub_1C97E88EC();
  sub_1C97DB094(v2, v3, v4, v5);
  sub_1C97E8AA0();
  return a1;
}

uint64_t sub_1C97DD36C(uint64_t a1)
{

  v2 = sub_1C97E88EC();
  sub_1C97DAF94(v2, v3, v4, v5);
  sub_1C97E8AA0();
  return a1;
}

uint64_t sub_1C97DD3BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v6 = v2[1];
  v5[1] = *v2;
  v5[2] = v6;
  v7 = v2[3];
  v5[3] = v2[2];
  v5[4] = v7;
  v11[0] = a1;
  v11[1] = a2;
  v9[2] = sub_1C97E82B4;
  v9[3] = v5;
  v9[4] = v11;
  sub_1C97E82EC(v2, v10, &qword_1EC3C78E8);
  sub_1C97E333C(a1, a2, sub_1C97E82D0, v9, &unk_1EC3C78F0, &unk_1C9A9FE00);
  sub_1C97E883C();

  return sub_1C97E87F4();
}

void sub_1C97DD500(__int128 *a1, uint64_t a2)
{
  v3 = a1[1];
  v10 = *a1;
  v11 = v3;
  v12 = a1[2];
  LODWORD(v13) = *(a1 + 12);
  sub_1C97E80D8();
  sub_1C97E812C();
  sub_1C97E8180();
  sub_1C97AC598(&v10, &v14[4]);
  v10 = *&v14[4];
  v11 = *&v14[20];
  v12 = *&v14[36];
  LODWORD(v13) = v15;
  WitnessTable = swift_getWitnessTable();
  sub_1C97AD200(&v10, a2, WitnessTable, v5, v6, v7, v8, v9, v10, *(&v10 + 1), v11, *(&v11 + 1), v12, *(&v12 + 1), v13, *v14, *&v14[8], *&v14[16], *&v14[24], *&v14[32]);
}

uint64_t sub_1C97DD5FC()
{
  if (qword_1EC3C5E00 != -1)
  {
    sub_1C97E88A0();
  }

  sub_1C97E8B6C(v27);
  v0 = sub_1C97E8B6C(v10);
  sub_1C97E8914(v0, v1, v2, v3, v4, v5, v6, v7, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v10[0], v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26[0]);
  sub_1C97E2DB0(v27, v9);
  sub_1C97DADD4(v26);
  sub_1C97E883C();
  sub_1C97DA1E0(v26, &qword_1EC3C7360);
  return sub_1C97E87F4();
}

uint64_t sub_1C97DD6CC()
{
  if (qword_1EC3C5E00 != -1)
  {
    sub_1C97E88A0();
  }

  sub_1C97E8B6C(v27);
  v0 = sub_1C97E8B6C(v10);
  sub_1C97E8914(v0, v1, v2, v3, v4, v5, v6, v7, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v10[0], v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26[0]);
  sub_1C97E2DB0(v27, v9);
  sub_1C97DADD4(v26);
  sub_1C97E883C();
  sub_1C97DA1E0(v26, &qword_1EC3C7360);
  return sub_1C97E87F4();
}

uint64_t sub_1C97DD79C(uint64_t result, float a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = sub_1C9A92838();
      v4 = 0;
      v5 = (result + 44);
      *(result + 16) = v2;
      v6 = vdupq_n_s64(v2 - 1);
      do
      {
        v7 = vdupq_n_s64(v4);
        v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_1C9A9FB80)));
        if (vuzp1_s16(v8, *v6.i8).u8[0])
        {
          *(v5 - 3) = a2;
        }

        if (vuzp1_s16(v8, *&v6).i8[2])
        {
          *(v5 - 2) = a2;
        }

        if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_1C9A9FB70)))).i32[1])
        {
          *(v5 - 1) = a2;
          *v5 = a2;
        }

        v4 += 4;
        v5 += 4;
      }

      while (((v2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v4);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1C97DD888(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a5 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a5;
    if (a5)
    {
      v9 = result;
      sub_1C97A2CEC(&unk_1EC3C76D8);
      result = sub_1C9A92838();
      *(result + 16) = v5;
      v10 = 32;
      do
      {
        v11 = result + v10;
        *v11 = v9;
        *(v11 + 8) = a2;
        *(v11 + 16) = a3;
        *(v11 + 24) = a4 & 1;
        v10 += 28;
        --v5;
      }

      while (v5);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1C97DD928(uint64_t result, __n128 a2, __n128 a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      sub_1C97A2CEC(&qword_1EC3C7768);
      result = sub_1C9A92838();
      *(result + 16) = v3;
      v4 = 32;
      do
      {
        v5 = (result + v4);
        *v5 = a2;
        v5[1] = a3;
        v4 += 32;
        --v3;
      }

      while (v3);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1C97DD9AC(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_1C9A92838();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_1C9A9FB80)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1C97DDA50(uint64_t a1, uint64_t a2)
{
  sub_1C97DDB40(a1, a2);
  v3 = *(v2 + 16);

  if (v3)
  {

    sub_1C97E78C8();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
  }

  return sub_1C97E87F4();
}

uint64_t sub_1C97DDAC8(int *a1, uint64_t a2, uint64_t a3)
{
  sub_1C97DDD48(a1, a2, a3);
  v4 = *(v3 + 16);

  if (v4)
  {

    sub_1C97E78C8();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
  }

  return sub_1C97E87F4();
}

void sub_1C97DDB40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = (a1 + 32);
    v5 = MEMORY[0x1E69E7CC0];
    v6 = MEMORY[0x1E69E7CC0];
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = *v4;
      sub_1C97A2CEC(&qword_1EC3C6938);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C9A9EDD0;
      *(inited + 32) = v8;
      v10 = *(v6 + 16);
      if (!swift_isUniquelyReferenced_nonNull_native() || (v11 = *(v6 + 24) >> 1, v11 <= v10))
      {
        sub_1C97E5014();
        v6 = v12;
        v11 = *(v12 + 24) >> 1;
      }

      v13 = *(v6 + 16);
      if (v11 <= v13)
      {
        break;
      }

      *(v6 + 4 * v13 + 32) = *(inited + 32);

      v14 = *(v6 + 16) + 1;
      *(v6 + 16) = v14;
      if (v14 >= a2)
      {
        sub_1C97A2CEC(&unk_1EC3C73F0);
        v15 = swift_initStackObject();
        *(v15 + 16) = xmmword_1C9A9EDD0;
        *(v15 + 32) = v6;
        v16 = v7[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v18 = v7[3] >> 1, v18 <= v16))
        {
          v7 = sub_1C97E4EE4(isUniquelyReferenced_nonNull_native, v16 + 1, 1, v7);
          v18 = v7[3] >> 1;
        }

        if (v18 <= v7[2])
        {
          goto LABEL_17;
        }

        sub_1C97A2CEC(&qword_1EC3C9AA0);
        swift_arrayInitWithCopy();

        ++v7[2];
        v6 = v5;
      }

      ++v4;
      if (!--v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

void sub_1C97DDD48(int *a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2)
  {
    v4 = a1;
    v5 = 4 * a2;
    v6 = MEMORY[0x1E69E7CC0];
    v7 = MEMORY[0x1E69E7CC0];
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = *v4;
      sub_1C97A2CEC(&qword_1EC3C6938);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C9A9EDD0;
      *(inited + 32) = v9;
      v11 = *(v7 + 16);
      if (!swift_isUniquelyReferenced_nonNull_native() || (v12 = *(v7 + 24) >> 1, v12 <= v11))
      {
        sub_1C97E5014();
        v7 = v13;
        v12 = *(v13 + 24) >> 1;
      }

      v14 = *(v7 + 16);
      if (v12 <= v14)
      {
        break;
      }

      *(v7 + 4 * v14 + 32) = *(inited + 32);

      v15 = *(v7 + 16) + 1;
      *(v7 + 16) = v15;
      if (v15 >= a3)
      {
        sub_1C97A2CEC(&unk_1EC3C73F0);
        v16 = swift_initStackObject();
        *(v16 + 16) = xmmword_1C9A9EDD0;
        *(v16 + 32) = v7;
        v17 = v8[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v19 = v8[3] >> 1, v19 <= v17))
        {
          v8 = sub_1C97E4EE4(isUniquelyReferenced_nonNull_native, v17 + 1, 1, v8);
          v19 = v8[3] >> 1;
        }

        if (v19 <= v8[2])
        {
          goto LABEL_18;
        }

        sub_1C97A2CEC(&qword_1EC3C9AA0);
        swift_arrayInitWithCopy();

        ++v8[2];
        v7 = v6;
      }

      ++v4;
      v5 -= 4;
      if (!v5)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }
}

id sub_1C97DDF9C(const void *a1)
{
  v3 = objc_autoreleasePoolPush();
  v4 = *(v1 + 16);
  v5 = sub_1C97A2CEC(&qword_1EC3C7480);
  v6 = objc_allocWithZone(v5);
  memcpy(v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0x60), a1, 0x41uLL);
  v7 = v4;
  sub_1C97E2DB0(a1, v12);
  v11.receiver = v6;
  v11.super_class = v5;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  v9 = [v7 objectForKey_];

  objc_autoreleasePoolPop(v3);
  return v9;
}

id sub_1C97DE094(const void *a1)
{
  v3 = objc_autoreleasePoolPush();
  v4 = *(v1 + 16);
  v5 = sub_1C97A2CEC(&qword_1EC3C7368);
  v6 = objc_allocWithZone(v5);
  memcpy(v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0x60), a1, 0x78uLL);
  v7 = v4;
  sub_1C97E82EC(a1, v12, &qword_1EC3C7360);
  v11.receiver = v6;
  v11.super_class = v5;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  v9 = [v7 objectForKey_];

  objc_autoreleasePoolPop(v3);
  return v9;
}

id sub_1C97DE19C(__int16 a1)
{
  v3 = objc_autoreleasePoolPush();
  v4 = *(v1 + 16);
  v5 = sub_1C97A2CEC(&qword_1EC3C7538);
  v6 = objc_allocWithZone(v5);
  *&v6[*((*MEMORY[0x1E69E7D40] & *v6) + 0x60)] = a1;
  v11.receiver = v6;
  v11.super_class = v5;
  v7 = v4;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  v9 = [v7 objectForKey_];

  objc_autoreleasePoolPop(v3);
  return v9;
}

id sub_1C97DE274(const void *a1)
{
  v3 = objc_autoreleasePoolPush();
  v4 = *(v1 + 16);
  v5 = sub_1C97A2CEC(&qword_1EC3C7698);
  v6 = objc_allocWithZone(v5);
  memcpy(v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0x60), a1, 0x50uLL);
  v7 = v4;
  sub_1C97E82EC(a1, v12, &qword_1EC3C7690);
  v11.receiver = v6;
  v11.super_class = v5;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  v9 = [v7 objectForKey_];

  objc_autoreleasePoolPop(v3);
  return v9;
}

id sub_1C97DE37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1C97E87E8();
  v7 = objc_autoreleasePoolPush();
  v8 = *(v4 + 16);
  v9 = sub_1C97E89F0();
  v10 = sub_1C97A2CEC(v9);
  v11 = objc_allocWithZone(v10);
  sub_1C97E8AE0();
  memcpy((v13 + *(v12 + 96)), v5, 0x58uLL);
  v14 = v8;
  sub_1C97E82EC(v5, v19, a4);
  v18.receiver = v11;
  v18.super_class = v10;
  v15 = objc_msgSendSuper2(&v18, sel_init);
  v16 = [v14 objectForKey_];

  objc_autoreleasePoolPop(v7);
  return v16;
}

id sub_1C97DE480(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  v4 = *(v1 + 16);
  v5 = sub_1C97A2CEC(&qword_1EC3C7900);
  v6 = objc_allocWithZone(v5);
  v7 = &v6[*((*MEMORY[0x1E69E7D40] & *v6) + 0x60)];
  v8 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 1) = v8;
  *(v7 + 2) = *(a1 + 32);
  *(v7 + 12) = *(a1 + 48);
  v13.receiver = v6;
  v13.super_class = v5;
  v9 = v4;
  v10 = objc_msgSendSuper2(&v13, sel_init);
  v11 = [v9 objectForKey_];

  objc_autoreleasePoolPop(v3);
  return v11;
}

id sub_1C97DE570(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  v4 = *(v1 + 16);
  v5 = sub_1C97A2CEC(&qword_1EC3C7A40);
  v6 = objc_allocWithZone(v5);
  *&v6[*((*MEMORY[0x1E69E7D40] & *v6) + 0x60)] = a1;
  v11.receiver = v6;
  v11.super_class = v5;
  v7 = v4;

  v8 = objc_msgSendSuper2(&v11, sel_init);
  v9 = [v7 objectForKey_];

  objc_autoreleasePoolPop(v3);
  return v9;
}

id sub_1C97DE650(uint64_t *a1)
{
  v3 = objc_autoreleasePoolPush();
  v4 = *(v1 + 16);
  v5 = sub_1C97A2CEC(a1);
  v10.receiver = objc_allocWithZone(v5);
  v10.super_class = v5;
  v6 = v4;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  v8 = [v6 objectForKey_];

  objc_autoreleasePoolPop(v3);
  return v8;
}

id sub_1C97DE6FC(const void *a1)
{
  v3 = objc_autoreleasePoolPush();
  v4 = *(v1 + 16);
  v5 = sub_1C97A2CEC(&unk_1EC3C7550);
  v6 = objc_allocWithZone(v5);
  memcpy(v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0x60), a1, 0x41uLL);
  v7 = v4;
  sub_1C97A6264(a1, v12);
  v11.receiver = v6;
  v11.super_class = v5;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  v9 = [v7 objectForKey_];

  objc_autoreleasePoolPop(v3);
  return v9;
}

id sub_1C97DE7F4(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  v4 = *(v1 + 16);
  v5 = sub_1C97A2CEC(&qword_1EC3C7908);
  v6 = objc_allocWithZone(v5);
  *&v6[*((*MEMORY[0x1E69E7D40] & *v6) + 0x60)] = a1;
  v11.receiver = v6;
  v11.super_class = v5;
  v7 = v4;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  v9 = [v7 objectForKey_];

  objc_autoreleasePoolPop(v3);
  return v9;
}

id sub_1C97DE8CC(char a1)
{
  v3 = objc_autoreleasePoolPush();
  v4 = *(v1 + 16);
  v5 = sub_1C97A2CEC(&qword_1EC3C7868);
  v6 = objc_allocWithZone(v5);
  v6[*((*MEMORY[0x1E69E7D40] & *v6) + 0x60)] = a1;
  v11.receiver = v6;
  v11.super_class = v5;
  v7 = v4;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  v9 = [v7 objectForKey_];

  objc_autoreleasePoolPop(v3);
  return v9;
}

id sub_1C97DE9A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1C97E897C();
  v9 = v8;
  v10 = objc_autoreleasePoolPush();
  v11 = *(v4 + 16);
  v12 = sub_1C97A2CEC(v5);
  v13 = objc_allocWithZone(v12);
  sub_1C97E8AE0();
  v16 = &v15[*(v14 + 96)];
  *v16 = v9;
  *(v16 + 1) = v6;
  v28.receiver = v15;
  v28.super_class = v12;
  v17 = v11;
  v25 = sub_1C97E8A84(v17, v18, v19, v20, v21, v22, v23, v24, v28);
  v26 = [a4 objectForKey_];

  objc_autoreleasePoolPop(v10);
  return v26;
}

uint64_t sub_1C97DEA80(uint64_t a1, const void *a2)
{
  v5 = objc_autoreleasePoolPush();
  v6 = *(v2 + 16);
  v7 = sub_1C97A2CEC(&qword_1EC3C7480);
  v8 = objc_allocWithZone(v7);
  memcpy(v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0x60), a2, 0x41uLL);
  if (a1)
  {
    swift_retain_n();
    v9 = v6;
    sub_1C97E2DB0(a2, v16);
    v14.receiver = v8;
    v14.super_class = v7;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    [v9 setObject:a1 forKey:v10];
  }

  else
  {
    sub_1C97E2DB0(a2, v16);
    v15.receiver = v8;
    v15.super_class = v7;
    v11 = v6;
    v12 = objc_msgSendSuper2(&v15, sel_init);
    [v11 removeObjectForKey_];
  }

  objc_autoreleasePoolPop(v5);

  return sub_1C97E7B58(a2);
}

uint64_t sub_1C97DEBF4(uint64_t a1, const void *a2)
{
  v5 = objc_autoreleasePoolPush();
  v6 = *(v2 + 16);
  v7 = sub_1C97A2CEC(&qword_1EC3C7368);
  v8 = objc_allocWithZone(v7);
  memcpy(v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0x60), a2, 0x78uLL);
  if (a1)
  {
    swift_retain_n();
    v9 = v6;
    sub_1C97E82EC(a2, v16, &qword_1EC3C7360);
    v14.receiver = v8;
    v14.super_class = v7;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    [v9 setObject:a1 forKey:v10];
  }

  else
  {
    sub_1C97E82EC(a2, v16, &qword_1EC3C7360);
    v15.receiver = v8;
    v15.super_class = v7;
    v11 = v6;
    v12 = objc_msgSendSuper2(&v15, sel_init);
    [v11 removeObjectForKey_];
  }

  objc_autoreleasePoolPop(v5);

  return sub_1C97DA1E0(a2, &qword_1EC3C7360);
}

uint64_t sub_1C97DED98(uint64_t a1, __int16 a2)
{
  v5 = objc_autoreleasePoolPush();
  v6 = *(v2 + 16);
  v7 = sub_1C97A2CEC(&qword_1EC3C7538);
  v8 = objc_allocWithZone(v7);
  *(v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0x60)) = a2;
  if (a1)
  {
    v13.receiver = v8;
    v13.super_class = v7;
    swift_retain_n();
    v9 = v6;
    v10 = objc_msgSendSuper2(&v13, sel_init);
    [v9 setObject:a1 forKey:{v10, v13.receiver, v13.super_class}];
  }

  else
  {
    v14.receiver = v8;
    v14.super_class = v7;
    v11 = v6;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    [v11 removeObjectForKey_];
  }

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_1C97DEED4(uint64_t a1, const void *a2)
{
  v5 = objc_autoreleasePoolPush();
  v6 = *(v2 + 16);
  v7 = sub_1C97A2CEC(&qword_1EC3C7698);
  v8 = objc_allocWithZone(v7);
  memcpy(v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0x60), a2, 0x50uLL);
  if (a1)
  {
    swift_retain_n();
    v9 = v6;
    sub_1C97E82EC(a2, v16, &qword_1EC3C7690);
    v14.receiver = v8;
    v14.super_class = v7;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    [v9 setObject:a1 forKey:v10];
  }

  else
  {
    sub_1C97E82EC(a2, v16, &qword_1EC3C7690);
    v15.receiver = v8;
    v15.super_class = v7;
    v11 = v6;
    v12 = objc_msgSendSuper2(&v15, sel_init);
    [v11 removeObjectForKey_];
  }

  objc_autoreleasePoolPop(v5);

  return sub_1C97DA1E0(a2, &qword_1EC3C7690);
}

uint64_t sub_1C97DF078(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = objc_autoreleasePoolPush();
  v10 = *(v5 + 16);
  v11 = sub_1C97A7890();
  v12 = sub_1C97A2CEC(v11);
  v13 = objc_allocWithZone(v12);
  sub_1C97E8AE0();
  v16 = memcpy((v15 + *(v14 + 96)), a2, 0x58uLL);
  if (a1)
  {
    swift_retain_n();
    v21 = v10;
    sub_1C97E8B4C(v21, v22, v23, v24, v25);
    v32.receiver = v13;
    v32.super_class = v12;
    v26 = objc_msgSendSuper2(&v32, sel_init);
    sub_1C97E8AC8();
    [v27 v28];
  }

  else
  {
    sub_1C97E8B4C(v16, v17, v18, v19, v20);
    v33.receiver = v13;
    v33.super_class = v12;
    v29 = v10;
    v30 = objc_msgSendSuper2(&v33, sel_init);
    [v29 removeObjectForKey_];
  }

  objc_autoreleasePoolPop(v9);

  return sub_1C97DA1E0(a2, a5);
}

uint64_t sub_1C97DF1E8(uint64_t a1, uint64_t a2)
{
  v5 = objc_autoreleasePoolPush();
  v6 = *(v2 + 16);
  v7 = sub_1C97A2CEC(&qword_1EC3C7900);
  v8 = objc_allocWithZone(v7);
  v9 = v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0x60);
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 1) = v10;
  *(v9 + 2) = *(a2 + 32);
  *(v9 + 12) = *(a2 + 48);
  if (a1)
  {
    v15.receiver = v8;
    v15.super_class = v7;
    swift_retain_n();
    v11 = v6;
    v12 = objc_msgSendSuper2(&v15, sel_init);
    [v11 setObject:a1 forKey:{v12, v15.receiver, v15.super_class}];
  }

  else
  {
    v16.receiver = v8;
    v16.super_class = v7;
    v13 = v6;
    v12 = objc_msgSendSuper2(&v16, sel_init);
    [v13 removeObjectForKey_];
  }

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_1C97DF33C(uint64_t a1, uint64_t a2)
{
  v5 = objc_autoreleasePoolPush();
  v6 = *(v2 + 16);
  v7 = sub_1C97A2CEC(&qword_1EC3C7A40);
  v8 = objc_allocWithZone(v7);
  *(v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0x60)) = a2;
  if (a1)
  {
    v13.receiver = v8;
    v13.super_class = v7;
    swift_retain_n();
    v9 = v6;

    v10 = objc_msgSendSuper2(&v13, sel_init);
    [v9 setObject:a1 forKey:{v10, v13.receiver, v13.super_class}];
  }

  else
  {
    v14.receiver = v8;
    v14.super_class = v7;

    v11 = v6;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    [v11 removeObjectForKey_];
  }

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_1C97DF490(uint64_t a1, uint64_t *a2)
{
  v5 = objc_autoreleasePoolPush();
  v6 = *(v2 + 16);
  v7 = sub_1C97A2CEC(a2);
  v8 = objc_allocWithZone(v7);
  if (a1)
  {
    v20.receiver = v8;
    v20.super_class = v7;
    sub_1C97E8B00();
    swift_retain_n();
    v9 = v6;
    v17 = sub_1C97E8A84(v9, v10, v11, v12, v13, v14, v15, v16, v20);
    [(objc_class *)v7 setObject:a1 forKey:v17];

    sub_1C97E8B00();
  }

  else
  {
    v21.receiver = v8;
    v21.super_class = v7;
    v18 = v6;
    v17 = objc_msgSendSuper2(&v21, sel_init);
    [v18 removeObjectForKey_];
  }

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_1C97DF58C(uint64_t a1, const void *a2)
{
  v5 = objc_autoreleasePoolPush();
  v6 = *(v2 + 16);
  v7 = sub_1C97A2CEC(&unk_1EC3C7550);
  v8 = objc_allocWithZone(v7);
  memcpy(v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0x60), a2, 0x41uLL);
  if (a1)
  {
    swift_retain_n();
    v9 = v6;
    sub_1C97A6264(a2, v16);
    v14.receiver = v8;
    v14.super_class = v7;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    [v9 setObject:a1 forKey:v10];
  }

  else
  {
    sub_1C97A6264(a2, v16);
    v15.receiver = v8;
    v15.super_class = v7;
    v11 = v6;
    v12 = objc_msgSendSuper2(&v15, sel_init);
    [v11 removeObjectForKey_];
  }

  objc_autoreleasePoolPop(v5);

  return sub_1C97E8084(a2);
}

uint64_t sub_1C97DF700(uint64_t a1, uint64_t a2)
{
  v5 = objc_autoreleasePoolPush();
  v6 = *(v2 + 16);
  v7 = sub_1C97A2CEC(&qword_1EC3C7908);
  v8 = objc_allocWithZone(v7);
  *(v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0x60)) = a2;
  if (a1)
  {
    v13.receiver = v8;
    v13.super_class = v7;
    swift_retain_n();
    v9 = v6;
    v10 = objc_msgSendSuper2(&v13, sel_init);
    [v9 setObject:a1 forKey:{v10, v13.receiver, v13.super_class}];
  }

  else
  {
    v14.receiver = v8;
    v14.super_class = v7;
    v11 = v6;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    [v11 removeObjectForKey_];
  }

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_1C97DF83C(uint64_t a1, char a2)
{
  v5 = objc_autoreleasePoolPush();
  v6 = *(v2 + 16);
  v7 = sub_1C97A2CEC(&qword_1EC3C7868);
  v8 = objc_allocWithZone(v7);
  *(v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0x60)) = a2;
  if (a1)
  {
    v13.receiver = v8;
    v13.super_class = v7;
    swift_retain_n();
    v9 = v6;
    v10 = objc_msgSendSuper2(&v13, sel_init);
    [v9 setObject:a1 forKey:{v10, v13.receiver, v13.super_class}];
  }

  else
  {
    v14.receiver = v8;
    v14.super_class = v7;
    v11 = v6;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    [v11 removeObjectForKey_];
  }

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_1C97DFADC(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3[1];
  v7[0] = *a3;
  v7[1] = v3;
  v4 = a3[3];
  v7[2] = a3[2];
  v7[3] = v4;
  v6[2] = v7;
  return sub_1C97E07D8(a1, a2, sub_1C97E834C, v6);
}

uint64_t sub_1C97DFB2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for SharedBuiltInMicrophone.Instance();
  a2[4] = &off_1F494D640;
  result = sub_1C97DD31C(a1);
  if (v2)
  {
    return sub_1C97C26F0(a2);
  }

  *a2 = result;
  return result;
}

uint64_t sub_1C97DFB9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = &type metadata for StaticAudioSourceInstance;
  *(a2 + 32) = &off_1F4933F58;
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
}

uint64_t sub_1C97DFBDC(void *a1, uint64_t a2, uint64_t a3)
{
  v79 = a3;
  v80 = a2;
  v77 = sub_1C97A2CEC(&qword_1EC3C7418);
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v66 - v4;
  v75 = sub_1C97A2CEC(&qword_1EC3C7420);
  MEMORY[0x1EEE9AC00](v75);
  v6 = &v66 - v5;
  v7 = sub_1C97A2CEC(&qword_1EC3C7428);
  v76 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v66 - v8;
  v10 = sub_1C9A91748();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1, 0x58uLL);
  v14 = v87;
  (v80)(v83, __dst);
  if (!v14)
  {
    v80 = v11;
    v87 = v10;
    v69 = v7;
    v70 = 0;
    v67 = v6;
    v68 = v9;
    v15 = a1[9];
    v16 = a1[10];
    sub_1C9A91738();
    v17 = v84;
    v18 = v85;
    sub_1C97A5A8C(v83, v84);
    if ((*(v18 + 24))(v17, v18) == v16)
    {
      v19 = v84;
      v20 = v85;
      sub_1C97A5A8C(v83, v84);
      if ((*(v20 + 16))(v19, v20) == v15)
      {
        v21 = v84;
        v22 = v85;
        sub_1C97A5A8C(v83, v84);
        v23 = (*(v22 + 8))(v21, v22);
        (*(v80 + 8))(v13, v87);
LABEL_5:
        type metadata accessor for SharedReformattedAudioSource.Instance();
        v11 = swift_allocObject();
        *(v11 + 16) = v23;
        sub_1C97A592C(v83);
        return v11;
      }
    }

    v74 = v13;
    v24 = v84;
    v25 = v85;
    sub_1C97A5A8C(v83, v84);
    v81 = (*(v25 + 8))(v24, v25);
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1C98063A0;
    *(v26 + 24) = 0;
    v73 = v15;
    sub_1C97A2CEC(&unk_1EC3C7390);
    sub_1C97A2CEC(&unk_1EC3C7430);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390);
    v27 = v78;
    sub_1C9A91F68();

    v28 = swift_allocObject();
    *(v28 + 16) = 0x4000;
    v29 = v77;
    v30 = v27 + *(v77 + 84);
    *v30 = 0;
    *(v30 + 8) = 0;
    *(v30 + 16) = 2;
    v31 = (v27 + *(v29 + 88));
    *v31 = sub_1C97E79BC;
    v31[1] = v28;
    v32 = v84;
    v33 = v85;
    sub_1C97A5A8C(v83, v84);
    v79 = (*(v33 + 24))(v32, v33);
    v34 = v84;
    v35 = v85;
    sub_1C97A5A8C(v83, v84);
    v72 = (*(v35 + 16))(v34, v35);
    v77 = v16;
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0x206665645BLL, 0xE500000000000000);
    MEMORY[0x1CCA90230](0x7461527475706E69, 0xE900000000000065);
    MEMORY[0x1CCA90230](0xA5D303030363120, 0xED0000206665645BLL);
    v71 = 0x80000001C9AD4E00;
    MEMORY[0x1CCA90230](0xD000000000000011, 0x80000001C9AD4E00);
    MEMORY[0x1CCA90230](0x6665645B0A5D3120, 0xE900000000000020);
    MEMORY[0x1CCA90230](0x615274757074756FLL, 0xEA00000000006574);
    MEMORY[0x1CCA90230](0xA5D303030363120, 0xED0000206665645BLL);
    MEMORY[0x1CCA90230](0xD000000000000012, 0x80000001C9AD4E20);
    MEMORY[0x1CCA90230](0xD00000000000005DLL, 0x80000001C9AD4E40);
    MEMORY[0x1CCA90230](0x7461527475706E69, 0xE900000000000065);
    MEMORY[0x1CCA90230](5972061, 0xE300000000000000);
    MEMORY[0x1CCA90230](0xD000000000000011, 0x80000001C9AD4E00);
    MEMORY[0x1CCA90230](0xD00000000000001CLL, 0x80000001C9AD4EA0);
    MEMORY[0x1CCA90230](0x7461527475706E69, 0xE900000000000065);
    MEMORY[0x1CCA90230](5972061, 0xE300000000000000);
    MEMORY[0x1CCA90230](0xD000000000000012, 0x80000001C9AD4E20);
    MEMORY[0x1CCA90230](0xD000000000000012, 0x80000001C9AD4EC0);
    MEMORY[0x1CCA90230](0x615274757074756FLL, 0xEA00000000006574);
    MEMORY[0x1CCA90230](5972061, 0xE300000000000000);
    MEMORY[0x1CCA90230](0xD000000000000012, 0x80000001C9AD4E20);
    MEMORY[0x1CCA90230](10589, 0xE200000000000000);
    sub_1C97A2CEC(&qword_1EC3C6C58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9FB90;
    *(inited + 32) = 0x7461527475706E69;
    *(inited + 40) = 0xE900000000000065;
    v81 = v79;
    *(inited + 48) = sub_1C9A93A98();
    *(inited + 56) = v37;
    v39 = v71;
    v38 = v72;
    *(inited + 64) = 0xD000000000000011;
    *(inited + 72) = v39;
    v81 = v38;
    *(inited + 80) = sub_1C9A93A98();
    *(inited + 88) = v40;
    *(inited + 96) = 0x615274757074756FLL;
    *(inited + 104) = 0xEA00000000006574;
    v81 = v77;
    *(inited + 112) = sub_1C9A93A98();
    *(inited + 120) = v41;
    *(inited + 128) = 0xD000000000000012;
    *(inited + 136) = 0x80000001C9AD4E20;
    v81 = v73;
    *(inited + 144) = sub_1C9A93A98();
    *(inited + 152) = v42;
    sub_1C9A92348();
    v43 = objc_opt_self();
    v44 = sub_1C9A92478();

    v11 = sub_1C9A922F8();

    v45 = sub_1C9A92768();
    v46 = sub_1C9A7A268(v43, v44, v11, v45);

    if (v46)
    {
      v11 = 1;
      sub_1C9A695C8(v46);
      sub_1C9A69B8C(v46);
      v47 = sub_1C9A6B6A4(v46);
      v48 = v87;
      v49 = v80;
      v50 = v74;
      if (v47 == 1 && sub_1C9A6BA18(v46) == 1 && sub_1C9A69A24(v46))
      {
        v51 = swift_allocObject();
        *(v51 + 16) = v46;
        v52 = swift_allocObject();
        *(v52 + 16) = v46;
        v53 = v67;
        sub_1C97E7AA4(v78, v67);
        v54 = v75;
        v55 = (v53 + *(v75 + 52));
        *v55 = sub_1C97E7A88;
        v55[1] = v52;
        v56 = (v53 + *(v54 + 56));
        *v56 = sub_1C97E7A6C;
        v56[1] = v51;
        v81 = 0;
        v82 = 0xE000000000000000;
        v57 = v46;
        sub_1C9A935B8();

        v81 = 0xD000000000000026;
        v82 = 0x80000001C9AD4F10;
        sub_1C97AE3DC();
        v58 = sub_1C9A93A98();
        MEMORY[0x1CCA90230](v58);

        MEMORY[0x1CCA90230](8250, 0xE200000000000000);
        v59 = v68;
        sub_1C97DC6CC();

        sub_1C97DA1E0(v53, &qword_1EC3C7420);
        sub_1C97AE67C(&unk_1EC3C7450, &qword_1EC3C7428);
        v60 = v69;
        v61 = sub_1C9A92008();
        sub_1C97A2CEC(&unk_1EC3CB450);
        swift_allocObject();
        v62 = sub_1C98E3778(v61);
        (*(v76 + 8))(v59, v60);
        v81 = v62;
        sub_1C97AE67C(&qword_1EC3C7460, &unk_1EC3CB450);
        v23 = sub_1C9A91F28();

        (*(v49 + 8))(v50, v48);
        goto LABEL_5;
      }

      sub_1C97E7A18();
      swift_allocError();
      *v63 = 1;
      swift_willThrow();
    }

    else
    {
      sub_1C97E79C4();
      swift_allocError();
      *v64 = 0xD000000000000020;
      v64[1] = 0x80000001C9AD4EE0;
      swift_willThrow();
      v48 = v87;
      v49 = v80;
      v50 = v74;
    }

    sub_1C97DA1E0(v78, &qword_1EC3C7418);
    (*(v49 + 8))(v50, v48);
    sub_1C97A592C(v83);
  }

  return v11;
}

uint64_t sub_1C97E07D8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v83 = a3;
  v82 = a2;
  v81 = a1;
  v80 = sub_1C97A2CEC(&qword_1EC3C7418);
  MEMORY[0x1EEE9AC00](v80);
  v6 = &v70 - v5;
  v7 = sub_1C97A2CEC(&qword_1EC3C7420);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v70 - v8;
  v10 = sub_1C97A2CEC(&qword_1EC3C7428);
  v79 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v70 - v11;
  v13 = sub_1C9A91748();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v89;
  v83(&v86, v15);
  if (!v18)
  {
    v75 = 0;
    v78 = v14;
    v83 = v13;
    v72 = v7;
    v89 = v6;
    v73 = v9;
    v74 = v12;
    sub_1C9A91738();
    v19 = v87;
    v20 = v88;
    sub_1C97A5A8C(&v86, v87);
    v21 = (*(v20 + 24))(v19, v20);
    if (v21 == v82)
    {
      v22 = v87;
      v23 = v88;
      sub_1C97A5A8C(&v86, v87);
      v24 = (*(v23 + 16))(v22, v23);
      if (v24 == v81)
      {
        v25 = v87;
        v26 = v88;
        sub_1C97A5A8C(&v86, v87);
        v27 = (*(v26 + 8))(v25, v26);
        (*(v78 + 8))(v17, v83);
LABEL_5:
        type metadata accessor for SharedReformattedAudioSource.Instance();
        a4 = swift_allocObject();
        *(a4 + 16) = v27;
        sub_1C97A592C(&v86);
        return a4;
      }
    }

    v71 = v10;
    v77 = v17;
    v28 = v87;
    v29 = v88;
    sub_1C97A5A8C(&v86, v87);
    v84 = (*(v29 + 8))(v28, v29);
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1C98063A0;
    *(v30 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7390);
    sub_1C97A2CEC(&unk_1EC3C7430);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390);
    v31 = v89;
    sub_1C9A91F68();

    v32 = swift_allocObject();
    *(v32 + 16) = 0x4000;
    v33 = v80;
    v34 = v31 + *(v80 + 84);
    *v34 = 0;
    *(v34 + 8) = 0;
    *(v34 + 16) = 2;
    v35 = (v31 + *(v33 + 88));
    *v35 = sub_1C97E846C;
    v35[1] = v32;
    v36 = v87;
    v37 = v88;
    sub_1C97A5A8C(&v86, v87);
    v80 = (*(v37 + 24))(v36, v37);
    v38 = v87;
    v39 = v88;
    sub_1C97A5A8C(&v86, v87);
    v76 = (*(v39 + 16))(v38, v39);
    v84 = 0;
    v85 = 0xE000000000000000;
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0x206665645BLL, 0xE500000000000000);
    MEMORY[0x1CCA90230](0x7461527475706E69, 0xE900000000000065);
    MEMORY[0x1CCA90230](0xA5D303030363120, 0xED0000206665645BLL);
    MEMORY[0x1CCA90230](0xD000000000000011, 0x80000001C9AD4E00);
    MEMORY[0x1CCA90230](0x6665645B0A5D3120, 0xE900000000000020);
    MEMORY[0x1CCA90230](0x615274757074756FLL, 0xEA00000000006574);
    MEMORY[0x1CCA90230](0xA5D303030363120, 0xED0000206665645BLL);
    MEMORY[0x1CCA90230](0xD000000000000012, 0x80000001C9AD4E20);
    MEMORY[0x1CCA90230](0xD00000000000005DLL, 0x80000001C9AD4E40);
    MEMORY[0x1CCA90230](0x7461527475706E69, 0xE900000000000065);
    MEMORY[0x1CCA90230](5972061, 0xE300000000000000);
    MEMORY[0x1CCA90230](0xD000000000000011, 0x80000001C9AD4E00);
    MEMORY[0x1CCA90230](0xD00000000000001CLL, 0x80000001C9AD4EA0);
    MEMORY[0x1CCA90230](0x7461527475706E69, 0xE900000000000065);
    MEMORY[0x1CCA90230](5972061, 0xE300000000000000);
    MEMORY[0x1CCA90230](0xD000000000000012, 0x80000001C9AD4E20);
    MEMORY[0x1CCA90230](0xD000000000000012, 0x80000001C9AD4EC0);
    MEMORY[0x1CCA90230](0x615274757074756FLL, 0xEA00000000006574);
    MEMORY[0x1CCA90230](5972061, 0xE300000000000000);
    MEMORY[0x1CCA90230](0xD000000000000012, 0x80000001C9AD4E20);
    MEMORY[0x1CCA90230](10589, 0xE200000000000000);
    sub_1C97A2CEC(&qword_1EC3C6C58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9FB90;
    *(inited + 32) = 0x7461527475706E69;
    *(inited + 40) = 0xE900000000000065;
    v84 = v80;
    *(inited + 48) = sub_1C9A93A98();
    *(inited + 56) = v41;
    *(inited + 64) = 0xD000000000000011;
    *(inited + 72) = 0x80000001C9AD4E00;
    v84 = v76;
    *(inited + 80) = sub_1C9A93A98();
    *(inited + 88) = v42;
    *(inited + 96) = 0x615274757074756FLL;
    *(inited + 104) = 0xEA00000000006574;
    v84 = v82;
    *(inited + 112) = sub_1C9A93A98();
    *(inited + 120) = v43;
    *(inited + 128) = 0xD000000000000012;
    *(inited + 136) = 0x80000001C9AD4E20;
    v84 = v81;
    *(inited + 144) = sub_1C9A93A98();
    *(inited + 152) = v44;
    sub_1C9A92348();
    v45 = objc_opt_self();
    v46 = sub_1C9A92478();

    v47 = sub_1C9A922F8();

    v48 = sub_1C9A92768();
    v49 = sub_1C9A7A268(v45, v46, v47, v48);

    if (v49)
    {
      sub_1C9A695C8(v49);
      sub_1C9A69B8C(v49);
      v50 = sub_1C9A6B6A4(v49);
      v51 = v83;
      v52 = v77;
      if (v50 == 1 && sub_1C9A6BA18(v49) == 1 && sub_1C9A69A24(v49))
      {
        v53 = swift_allocObject();
        *(v53 + 16) = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v49;
        v55 = v73;
        sub_1C97E7AA4(v89, v73);
        v56 = v72;
        v57 = (v55 + *(v72 + 52));
        *v57 = sub_1C97E8470;
        v57[1] = v54;
        v58 = (v55 + *(v56 + 56));
        *v58 = sub_1C97E84DC;
        v58[1] = v53;
        v84 = 0;
        v85 = 0xE000000000000000;
        v59 = v49;
        sub_1C9A935B8();

        v84 = 0xD000000000000026;
        v85 = 0x80000001C9AD4F10;
        sub_1C97AE3DC();
        v60 = sub_1C9A93A98();
        MEMORY[0x1CCA90230](v60);

        MEMORY[0x1CCA90230](8250, 0xE200000000000000);
        v61 = v74;
        sub_1C97DC6CC();

        sub_1C97DA1E0(v55, &qword_1EC3C7420);
        sub_1C97AE67C(&unk_1EC3C7450, &qword_1EC3C7428);
        v62 = v71;
        v63 = sub_1C9A92008();
        sub_1C97A2CEC(&unk_1EC3CB450);
        swift_allocObject();
        v64 = sub_1C98E3778(v63);
        (*(v79 + 8))(v61, v62);
        v84 = v64;
        sub_1C97AE67C(&qword_1EC3C7460, &unk_1EC3CB450);
        v27 = sub_1C9A91F28();

        (*(v78 + 8))(v52, v51);
        goto LABEL_5;
      }

      sub_1C97E7A18();
      v65 = swift_allocError();
      *v66 = 1;
      a4 = v65;
      swift_willThrow();
    }

    else
    {
      sub_1C97E79C4();
      v67 = swift_allocError();
      *v68 = 0xD000000000000020;
      v68[1] = 0x80000001C9AD4EE0;
      a4 = v67;
      swift_willThrow();
      v51 = v83;
      v52 = v77;
    }

    sub_1C97DA1E0(v89, &qword_1EC3C7418);
    (*(v78 + 8))(v52, v51);
    sub_1C97A592C(&v86);
  }

  return a4;
}

uint64_t sub_1C97E1440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[55] = 0;
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 45) = *(a1 + 45);
  *(a2 + 53) = 0;
  return sub_1C97E82EC(a1, v4, &qword_1EC3C7680);
}

uint64_t sub_1C97E1494@<X0>(void *__src@<X0>, _BYTE *a2@<X8>)
{
  v5[71] = 0;
  memcpy(a2, __src, 0x41uLL);
  a2[65] = 0;
  return sub_1C97E82EC(__src, v5, &unk_1EC3C7730);
}

uint64_t sub_1C97E1510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 0;
  return sub_1C97DA238(a1, &v4);
}

void *sub_1C97E1558(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  return a1;
}

uint64_t sub_1C97E15D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C97BD360(a1, a2);
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_1C97E15FC(void *a1)
{
  v1 = a1;
  sub_1C97A2CEC(&qword_1EC3C7658);
  return sub_1C9A91EA8();
}

uint64_t sub_1C97E165C(void *a1)
{
  v1 = a1;
  sub_1C97A2CEC(&qword_1EC3C7708);
  return sub_1C9A91EA8();
}

uint64_t sub_1C97E16BC()
{
  sub_1C97E8AEC();
  v2 = v1;
  sub_1C97A2CEC(v0);
  return sub_1C9A91EA8();
}

uint64_t sub_1C97E1714(void *a1)
{
  v1 = a1;
  sub_1C97A2CEC(&qword_1EC3C79C8);
  return sub_1C9A91EA8();
}

uint64_t sub_1C97E177C(void *a1)
{
  v1 = a1;
  sub_1C97A2CEC(&qword_1EC3C74A8);
  return sub_1C9A91EA8();
}

uint64_t sub_1C97E17D8()
{
  sub_1C97E8AEC();
  v2 = v1;
  sub_1C97A2CEC(v0);
  return sub_1C9A91EA8();
}

uint64_t sub_1C97E1830(void *a1)
{
  v1 = a1;
  sub_1C97A2CEC(&qword_1EC3C7780);
  return sub_1C9A91EA8();
}

void sub_1C97E188C()
{
  sub_1C97BE460();
  sub_1C97E86C0(v1);
  sub_1C97A2CEC(&qword_1EC3C7600);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AEA4C();
  sub_1C97E89B8();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C97E858C();
  v0(v4);
  sub_1C97A2CEC(&qword_1EC3C7610);
  sub_1C97E854C();
  sub_1C97E89A0(v5);
  sub_1C97E85D0();
  sub_1C97E8A18();
  sub_1C97E8518();
  sub_1C97AE67C(v6, &qword_1EC3C7600);
  sub_1C97E8530();
  sub_1C97AE67C(v7, v8);
  sub_1C97E8628();
  v9 = sub_1C97E87D8();
  v10(v9);
  v11 = sub_1C97E87C8();
  v12(v11);
  sub_1C97BE478();
}

void sub_1C97E1A64()
{
  sub_1C97BE460();
  sub_1C97E86C0(v1);
  sub_1C97A2CEC(&qword_1EC3C7648);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AEA4C();
  sub_1C97E89B8();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C97E858C();
  v0(v4);
  sub_1C97A2CEC(&qword_1EC3C7658);
  sub_1C97E854C();
  sub_1C97E89A0(v5);
  sub_1C97E85D0();
  sub_1C97E8A18();
  sub_1C97E8518();
  sub_1C97AE67C(v6, &qword_1EC3C7648);
  sub_1C97E8530();
  sub_1C97AE67C(v7, v8);
  sub_1C97E8628();
  v9 = sub_1C97E87D8();
  v10(v9);
  v11 = sub_1C97E87C8();
  v12(v11);
  sub_1C97BE478();
}

void sub_1C97E1C3C()
{
  sub_1C97BE460();
  sub_1C97E86C0(v1);
  sub_1C97A2CEC(&qword_1EC3C76F8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AEA4C();
  sub_1C97E89B8();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C97E858C();
  v0(v4);
  sub_1C97A2CEC(&qword_1EC3C7708);
  sub_1C97E854C();
  sub_1C97E89A0(v5);
  sub_1C97E85D0();
  sub_1C97E8A18();
  sub_1C97E8518();
  sub_1C97AE67C(v6, &qword_1EC3C76F8);
  sub_1C97E8530();
  sub_1C97AE67C(v7, v8);
  sub_1C97E8628();
  v9 = sub_1C97E87D8();
  v10(v9);
  v11 = sub_1C97E87C8();
  v12(v11);
  sub_1C97BE478();
}

void sub_1C97E1E14()
{
  sub_1C97BE460();
  sub_1C97E88DC(v1);
  v2 = sub_1C97A2CEC(&qword_1EC3C77D0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEA4C();
  v4 = sub_1C97A7890();
  sub_1C97A2CEC(v4);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97E86E4();
  v0();
  sub_1C97A2CEC(&qword_1EC3C77E0);
  sub_1C97E854C();
  sub_1C97E8B84(v6);
  sub_1C97E85D0();
  sub_1C97E8A18();
  sub_1C97E8518();
  sub_1C97AE67C(v7, &qword_1EC3C77D0);
  sub_1C97E8530();
  sub_1C97AE67C(v8, v9);
  sub_1C97E8750();
  v10 = sub_1C97E8878();
  v11(v10, v2);
  v12 = sub_1C97E8884();
  v13(v12);
  sub_1C97BE478();
}

void sub_1C97E1FFC()
{
  sub_1C97BE460();
  sub_1C97E88DC(v1);
  v2 = sub_1C97A2CEC(&qword_1EC3C74D0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEA4C();
  v4 = sub_1C97A7890();
  sub_1C97A2CEC(v4);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97E86E4();
  v0();
  sub_1C97A2CEC(&qword_1EC3C74E0);
  sub_1C97E854C();
  sub_1C97E8B84(v6);
  sub_1C97E85D0();
  sub_1C97E8A18();
  sub_1C97E8518();
  sub_1C97AE67C(v7, &qword_1EC3C74D0);
  sub_1C97E8530();
  sub_1C97AE67C(v8, v9);
  sub_1C97E8750();
  v10 = sub_1C97E8878();
  v11(v10, v2);
  v12 = sub_1C97E8884();
  v13(v12);
  sub_1C97BE478();
}

void sub_1C97E21E4()
{
  sub_1C97BE460();
  sub_1C97E88DC(v1);
  v2 = sub_1C97A2CEC(&qword_1EC3C7948);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEA4C();
  v4 = sub_1C97A7890();
  sub_1C97A2CEC(v4);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97E86E4();
  v0();
  sub_1C97A2CEC(&qword_1EC3C7958);
  sub_1C97E854C();
  sub_1C97E8B84(v6);
  sub_1C97E85D0();
  sub_1C97E8A18();
  sub_1C97E8518();
  sub_1C97AE67C(v7, &qword_1EC3C7948);
  sub_1C97E8530();
  sub_1C97AE67C(v8, v9);
  sub_1C97E8750();
  v10 = sub_1C97E8878();
  v11(v10, v2);
  v12 = sub_1C97E8884();
  v13(v12);
  sub_1C97BE478();
}

void sub_1C97E23CC()
{
  sub_1C97BE460();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C97A2CEC(&qword_1EC3C79B8);
  sub_1C97AE9C8();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AEA4C();
  v13 = v4;
  v2(&v12, &v13);
  sub_1C97A2CEC(&qword_1EC3C79C0);
  sub_1C97A2CEC(&qword_1EC3C79C8);
  sub_1C97AE67C(&qword_1EC3C79D0, &qword_1EC3C79C0);
  sub_1C9A91F68();
  sub_1C97A2CEC(&qword_1EC3C79D8);
  sub_1C97E8518();
  sub_1C97AE67C(v9, &qword_1EC3C79B8);
  sub_1C97E8530();
  sub_1C97AE67C(v10, v11);
  sub_1C9A91FC8();
  (*(v7 + 8))(v0, v5);

  sub_1C97BE478();
}

void sub_1C97E25D0()
{
  sub_1C97BE460();
  sub_1C97E88DC(v1);
  v2 = sub_1C97A2CEC(&qword_1EC3C7498);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEA4C();
  v4 = sub_1C97A7890();
  sub_1C97A2CEC(v4);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97E86E4();
  v0();
  sub_1C97A2CEC(&qword_1EC3C74A8);
  sub_1C97E854C();
  sub_1C97E8B84(v6);
  sub_1C97E85D0();
  sub_1C97E8A18();
  sub_1C97E8518();
  sub_1C97AE67C(v7, &qword_1EC3C7498);
  sub_1C97E8530();
  sub_1C97AE67C(v8, v9);
  sub_1C97E8750();
  v10 = sub_1C97E8878();
  v11(v10, v2);
  v12 = sub_1C97E8884();
  v13(v12);
  sub_1C97BE478();
}

void sub_1C97E27B8()
{
  sub_1C97BE460();
  sub_1C97E86C0(v1);
  sub_1C97A2CEC(&qword_1EC3C78A0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AEA4C();
  sub_1C97E89B8();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C97E858C();
  v0(v4);
  sub_1C97A2CEC(&qword_1EC3C78B0);
  sub_1C97E854C();
  sub_1C97E89A0(v5);
  sub_1C97E85D0();
  sub_1C97E8A18();
  sub_1C97E8518();
  sub_1C97AE67C(v6, &qword_1EC3C78A0);
  sub_1C97E8530();
  sub_1C97AE67C(v7, v8);
  sub_1C97E8628();
  v9 = sub_1C97E87D8();
  v10(v9);
  v11 = sub_1C97E87C8();
  v12(v11);
  sub_1C97BE478();
}

void sub_1C97E2990()
{
  sub_1C97BE460();
  sub_1C97E86C0(v1);
  sub_1C97A2CEC(&qword_1EC3C7770);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AEA4C();
  sub_1C97E89B8();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C97E858C();
  v0(v4);
  sub_1C97A2CEC(&qword_1EC3C7780);
  sub_1C97E854C();
  sub_1C97E89A0(v5);
  sub_1C97E85D0();
  sub_1C97E8A18();
  sub_1C97E8518();
  sub_1C97AE67C(v6, &qword_1EC3C7770);
  sub_1C97E8530();
  sub_1C97AE67C(v7, v8);
  sub_1C97E8628();
  v9 = sub_1C97E87D8();
  v10(v9);
  v11 = sub_1C97E87C8();
  v12(v11);
  sub_1C97BE478();
}

void sub_1C97E2B68(void *a1)
{
  if (a1)
  {
    v1 = 0x64656C696166;
  }

  else
  {
    v1 = 0x64656873696E6966;
  }

  if (a1)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  v17 = a1;
  v3 = a1;
  sub_1C97A2CEC(&qword_1EC3C73B0);
  v4 = sub_1C9A924F8();
  v6 = v5;
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v7 = sub_1C9A91B58();
  sub_1C97BFF6C(v7, qword_1EC3D3108);

  v8 = sub_1C9A91B38();
  v9 = sub_1C9A92FC8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446722;
    v12 = sub_1C97E89F0();
    *(v10 + 4) = sub_1C9849140(v12, v13, v14);
    *(v10 + 12) = 2082;
    v15 = sub_1C9849140(v1, v2, &v17);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2080;
    v16 = sub_1C9849140(v4, v6, &v17);

    *(v10 + 24) = v16;
    _os_log_impl(&dword_1C9788000, v8, v9, "%{public}sreceive completion %{public}s; %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA93280](v11, -1, -1);
    MEMORY[0x1CCA93280](v10, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1C97E2E0C(const void *a1, void (*a2)(uint64_t *__return_ptr, id *), uint64_t a3)
{
  v7 = *(*(v3 + 24) + 16);
  os_unfair_lock_lock(v7);
  v8 = sub_1C97E38C8(a2, a3, v3, a1);
  os_unfair_lock_unlock(v7);
  return v8;
}

uint64_t sub_1C97E2E88()
{
  sub_1C97E897C();
  sub_1C97E8B0C();
  v1 = sub_1C97E8A50();
  sub_1C97E39CC(v1, v2, v3, v4);
  sub_1C97E883C();
  os_unfair_lock_unlock(v0);
  return sub_1C97E87F4();
}

uint64_t sub_1C97E2ED8(const void *a1, void (*a2)(uint64_t *__return_ptr, id *), uint64_t a3)
{
  v7 = *(*(v3 + 24) + 16);
  os_unfair_lock_lock(v7);
  v8 = sub_1C97E3AB4(a2, a3, v3, a1);
  os_unfair_lock_unlock(v7);
  return v8;
}

uint64_t sub_1C97E2F54(const void *a1, void (*a2)(uint64_t *__return_ptr, id *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v13 = *(*(v6 + 24) + 16);
  os_unfair_lock_lock(v13);
  v14 = sub_1C97E3BB8(a2, a3, v6, a1, a4, a5, a6);
  os_unfair_lock_unlock(v13);
  return v14;
}

uint64_t sub_1C97E3028(uint64_t a1, void (*a2)(uint64_t *__return_ptr, id *), uint64_t a3)
{
  v7 = *(*(v3 + 24) + 16);
  os_unfair_lock_lock(v7);
  v8 = sub_1C97E3CF4(a2, a3, v3, a1);
  os_unfair_lock_unlock(v7);
  return v8;
}

uint64_t sub_1C97E3120(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1C97E87E8();
  sub_1C97E8A68();
  v6 = sub_1C97A7890();
  sub_1C97E3ECC(v6, v7, v3, a3);
  sub_1C97E883C();
  os_unfair_lock_unlock(v4);
  return sub_1C97E87F4();
}

uint64_t sub_1C97E3190(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1C97E87E8();
  sub_1C97E8A68();
  v6 = sub_1C97E89F0();
  a4(v6);
  sub_1C97E883C();
  os_unfair_lock_unlock(v4);
  return sub_1C97E87F4();
}

uint64_t sub_1C97E3254(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1C97E87E8();
  sub_1C97E8A68();
  v6 = sub_1C97E89F0();
  a4(v6);
  sub_1C97E883C();
  os_unfair_lock_unlock(v4);
  return sub_1C97E87F4();
}

uint64_t sub_1C97E32C4()
{
  sub_1C97E897C();
  sub_1C97E8B0C();
  v1 = sub_1C97E8A50();
  sub_1C97E42B0(v1, v2, v3, v4);
  sub_1C97E883C();
  os_unfair_lock_unlock(v0);
  return sub_1C97E87F4();
}

uint64_t sub_1C97E333C(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = *(*(v6 + 24) + 16);
  os_unfair_lock_lock(v11);
  v12 = sub_1C97A7890();
  sub_1C97E40B4(v12, v13, v6, a1, a2, a5, a6);
  sub_1C97E883C();
  os_unfair_lock_unlock(v11);
  return sub_1C97E87F4();
}

double sub_1C97E33D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t *__return_ptr, void *)@<X4>, uint64_t a6@<X8>)
{
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;

  a5(&v12, v11);

  *a6 = v12;
  v9 = v14;
  *(a6 + 8) = v13;
  *(a6 + 24) = v9;
  result = *&v15;
  *(a6 + 40) = v15;
  *(a6 + 56) = a4;
  return result;
}

uint64_t sub_1C97E3464(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  result = sub_1C9A6941C(v11);
  v13 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(v13))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = result;
  v15 = sub_1C9A68674((a4 >> 1) - a3, v11);
  result = v14 * v15;
  if ((v15 * v14) >> 64 != result >> 63)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v16 = sub_1C97DD79C(result, 0.0);
  sub_1C97E36AC(a2 + 4 * a3, (a4 >> 1) - a3, &v16, a1, a2, a3, a4, a5);
  if (!v5)
  {
    a4 = sub_1C97DDA50(v16, v14);
  }

  return a4;
}

unsigned int *sub_1C97E3590(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1C9A6941C(v4);
  v6 = *(a1 + 16);
  if (HIDWORD(v6))
  {
    __break(1u);
  }

  else
  {
    v2 = v5;
    v7 = sub_1C9A68674(*(a1 + 16), v4);
    v8 = v2 * v7;
    if ((v7 * v2) >> 64 == v8 >> 63)
    {
      v9 = sub_1C97DD79C(v8, 0.0);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_10:
  sub_1C97E72E0();
  v9 = v12;
LABEL_4:
  if (sub_1C9A68A10(v9 + 32, a1 + 32, v6, v4))
  {
    v4 = sub_1C97DDA50(v9, v2);
  }

  else
  {
    sub_1C97E791C();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }

  return v4;
}

void sub_1C97E36AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v13 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v13;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  sub_1C97E72E0();
  v13 = v17;
  *a3 = v17;
  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_3:
  v15 = (a7 >> 1) - a6;
  if (__OFSUB__(a7 >> 1, a6))
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!HIDWORD(v15))
  {
    if (sub_1C9A68A10(v13 + 32, a1, v15, *(a8 + 16)))
    {
LABEL_11:
      *a3 = v13;
      return;
    }

    v16 = 1;
LABEL_10:
    sub_1C97E791C();
    swift_allocError();
    *v18 = v16;
    swift_willThrow();
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
}