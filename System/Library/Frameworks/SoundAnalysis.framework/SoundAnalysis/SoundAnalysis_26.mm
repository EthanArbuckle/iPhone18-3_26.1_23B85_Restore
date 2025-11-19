void sub_1C99C9074(void *a1, unint64_t a2, uint64_t (*a3)(id *), uint64_t a4)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (HIDWORD(a2))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C99C9484(a2, a1);
  if (v4)
  {
    return;
  }

  [a1 setFramePosition_];
  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

  if (HIDWORD(v13))
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_1C97F07FC();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = a1;
  sub_1C99C87F4(v13, a3, a4, sub_1C99CA47C, v8, _s13SoundAnalysis31SNEstimateSpeechDistanceRequestC20supportsSecureCodingSbvgZ_0);
  v11 = v10;

  sub_1C99C8AB8(v11);
}

void sub_1C99C9194(void *a1, unsigned int a2)
{
  v3 = [a1 processingFormat];
  [v3 sampleRate];
  v5 = v4;

  sub_1C99CA608();
  if (!(v7 ^ v8 | v6))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -2147483650.0)
  {
    goto LABEL_7;
  }

  sub_1C99CA5F8();
  if (v7)
  {
    CMTimeMake(&v9, a2, v5);
    return;
  }

LABEL_8:
  __break(1u);
}

CMTimeValue sub_1C99C9244(uint64_t a1, uint64_t a2)
{
  result = sub_1C99C7528(a1, a2);
  if (result)
  {
    if (a1 == 0x8000000000000000 && result == -1)
    {
      goto LABEL_12;
    }

    if (a1 >= 0xFFFFFFFF80000000)
    {
      if (a1 <= 0x7FFFFFFF)
      {
        CMTimeMake(&v5, a1 / result, a1);
        return v5.value;
      }

      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void sub_1C99C92C4(void *a1, unint64_t a2, CMTimeRoundingMethod a3)
{
  v6 = [a1 fileFormat];
  [v6 sampleRate];
  v8 = v7;

  sub_1C99CA608();
  if (!(v10 ^ v11 | v9))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v8 <= -9.22337204e18)
  {
    goto LABEL_12;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = [a1 processingFormat];
  [v12 sampleRate];
  v14 = v13;

  sub_1C99CA608();
  if (!(v10 ^ v11 | v9))
  {
    goto LABEL_14;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = sub_1C99C9244(v8, v14);
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!HIDWORD(a2))
  {
    v18 = v15;
    v19 = v16;
    v20 = v17;
    sub_1C99C9194(a1, a2);
    v22 = v21;
    v24 = v23;
    v26 = v25;
    type metadata accessor for SNTimeUtils();
    sub_1C97CC968(v22, v24, v26, v18, v19, v20, *MEMORY[0x1E6960CC0], *(MEMORY[0x1E6960CC0] + 8), *(MEMORY[0x1E6960CC0] + 16), a3);
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_1C99C9484(unsigned int a1, void *a2)
{
  sub_1C99C9194(a2, a1);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1C99C92C4(a2, a1, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
  if (!v2)
  {
    *&v61.timescale = v12;
    v61.epoch = v13;
    v19 = sub_1C99CA64C(v11, v12, v13, v14, v15, v16, v17, v18, v6, v8, v10, v11);
    CMTimeRangeFromTimeToTime(v21, v19, v20);
    v66 = *(&time_16 + 1);
    v22 = v64;
    v23 = v65;
    v24 = [a2 fileFormat];
    [v24 sampleRate];
    v26 = v25;

    sub_1C99CA608();
    if (!(v28 ^ v29 | v27))
    {
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v26 <= -2147483650.0)
    {
      goto LABEL_14;
    }

    sub_1C99CA5F8();
    if (!v28)
    {
      goto LABEL_15;
    }

    CMTimeConvertScale(&v61, &time, v26, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
    value = v61.value;
    v31 = *&v61.timescale;
    epoch = v61.epoch;
    v33 = [a2 processingFormat];
    [v33 sampleRate];
    v35 = v34;

    sub_1C99CA608();
    if (!(v28 ^ v29 | v27))
    {
      goto LABEL_16;
    }

    if (v35 <= -2147483650.0)
    {
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    sub_1C99CA5F8();
    if (!v28)
    {
      goto LABEL_18;
    }

    *&time = v66;
    *(&time + 1) = v22;
    *&time_16 = v23;
    v36 = CMTimeConvertScale(&v61, &time, v35, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
    v37 = *&v61.timescale;
    v59 = v61.epoch;
    *&v61.timescale = v31;
    v61.epoch = epoch;
    v45 = sub_1C99CA64C(v36, v38, v39, v40, v41, v42, v43, v44, v61.value, v37, v59, value);
    v48 = CMTimeRangeMake(v47, v45, v46);
    sub_1C99CA614(v48, v49, v50, v51, v52, v53, v54, v55, v57, v58, v60, v61.value, *&v61.timescale, v61.epoch, time, time_16, v56);
  }
}

void sub_1C99C9694(void *a1, __n128 *a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, uint64_t (*a6)(void *, id, id *), uint64_t a7, uint64_t (*a8)(void *, id, id *), uint64_t a9, uint64_t (*a10)(void *, id *), uint64_t a11)
{
  type metadata accessor for SNTimeUtils();
  v17 = [a1 processingFormat];
  [v17 sampleRate];
  v19 = v18;

  sub_1C99CA608();
  if (!(v21 ^ v22 | v20))
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v19 <= -2147483650.0)
  {
    goto LABEL_17;
  }

  sub_1C99CA5F8();
  if (!v21)
  {
    goto LABEL_18;
  }

  sub_1C97CCF4C(a2, v19);
  if (!v11)
  {
    sub_1C99C80BC(a1, a2[2].n128_i32[0]);
    sub_1C97CC148(a2, v39, v34);
    if ((v35 & 0x8000000000000000) != 0)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (HIDWORD(v35))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v23 = v36;
    v24 = a6;
    v25 = v37;
    v26 = v38;
    sub_1C99C87F4(v35, a4, a5, v24, a7, a10);
    sub_1C99C8AB8(v27);
    if ((v25 & 0x8000000000000000) != 0)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (HIDWORD(v25))
    {
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v23 != a3)
    {
      sub_1C99C9074(a1, v23, a4, a5);
    }

    sub_1C99C8448(v25, a4, a5, a10, a11, v32, a1);
    sub_1C99C8AB8(v28);
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    if (HIDWORD(v26))
    {
LABEL_24:
      __break(1u);
      return;
    }

    sub_1C99C87F4(v26, a4, a5, a8, a9, a10);
    sub_1C99C8AB8(v29);
  }
}

uint64_t sub_1C99C98E8(void *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(void *, id, id *), uint64_t a7, uint64_t (*a8)(void *, id, id *), uint64_t a9, uint64_t (*a10)(void *, id *), uint64_t a11)
{
  v18 = [a1 processingFormat];
  v19 = sub_1C99C8D88(v18, a4, a5);
  v21 = v20;

  sub_1C99C9694(a1, a2, a3, v19, v21, a6, a7, a8, a9, a10, a11);
}

void sub_1C99C99CC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, uint64_t (*a6)(void *, id *), uint64_t a7)
{
  type metadata accessor for SNTimeUtils();
  v12 = [a1 processingFormat];
  [v12 sampleRate];
  v14 = v13;

  sub_1C99CA608();
  if (!(v16 ^ v17 | v15))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v14 <= -2147483650.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1C99CA5F8();
  if (!v16)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  sub_1C97CCF4C(a2, v14);
  if (!v7)
  {
    sub_1C99C80BC(a1, *(a2 + 32));
    v18 = sub_1C97CD7B8(a2, v28);
    v19 = 0;
    v20 = *(v18 + 16);
    v21 = 32;
    while (v20 != v19)
    {
      if (v19 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v22 = *(v18 + v21 + 16);
      v32[0] = *(v18 + v21);
      v32[1] = v22;
      v32[2] = *(v18 + v21 + 32);
      sub_1C99C9694(a1, v32, a3, a4, a5, sub_1C99C9CC4, 0, sub_1C99C9CC4, 0, a6, a7);
      ++v19;
      a3 = sub_1C9A92F08();
      v21 += 48;
    }

    if (!v20)
    {
      goto LABEL_19;
    }

    if (v20 <= *(v18 + 16))
    {
      v23 = (v18 + 48 * v20);
      v24 = *v23;
      v29 = *(v23 - 1);
      v30 = v24;
      v31 = v23[1];

      sub_1C9A92F08();
      return;
    }

    goto LABEL_20;
  }
}

uint64_t sub_1C99C9BDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(void *, id *), uint64_t a7)
{
  v15 = [a1 processingFormat];
  v16 = sub_1C99C8D88(v15, a4, a5);
  v18 = v17;

  sub_1C99C99CC(a1, a2, a3, v16, v18, a6, a7);
  if (!v21)
  {
    v7 = v19;
  }

  return v7;
}

uint64_t sub_1C99C9CC4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    type metadata accessor for SNError();
    *a3 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 2, 0, 0xD000000000000019, 0x80000001C9ADD940);
  }

  return 0;
}

id sub_1C99C9D44@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for SNAudioFileUtils();
  result = sub_1C99C7DE8(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_1C99C9D9C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for SNAudioFileUtils();
  result = sub_1C99C7C90(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_1C99C9DEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SNAudioFileUtils();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1C99C9E44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SNAudioFileUtils();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C99C9E78(void (*a1)(uint64_t *__return_ptr))
{
  *(v1 + 16) = 0;
  v4 = objc_autoreleasePoolPush();
  sub_1C99C9EF0(v1, a1);
  objc_autoreleasePoolPop(v4);
  if (v2)
  {
  }

  return v1;
}

void sub_1C99C9EF0(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v5);
  if (!v2)
  {
    v4 = *(a1 + 16);
    *(a1 + 16) = v5;
  }
}

uint64_t sub_1C99C9F44()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

BOOL sub_1C99C9F50()
{
  v1 = *(v0 + 16);
  v2 = v1 != 0;
  *(v0 + 16) = 0;

  return v2;
}

unint64_t sub_1C99C9F88()
{
  result = qword_1EC3CFDF0;
  if (!qword_1EC3CFDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFDF0);
  }

  return result;
}

id sub_1C99CA018(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1C9A91488();
  v14[0] = 0;
  v5 = [v2 initForReading:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_1C9A91558();
    sub_1C97DA940();
    v9 = *(v8 + 8);
    v10 = v6;
    v9(a1, v7);
  }

  else
  {
    v11 = v14[0];
    sub_1C9A913C8();

    swift_willThrow();
    sub_1C9A91558();
    sub_1C97DA940();
    (*(v12 + 8))(a1);
  }

  return v5;
}

id sub_1C99CA154(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1C9A91488();
  v18[0] = 0;
  v9 = [v4 initForReading:v8 commonFormat:a2 interleaved:a3 & 1 error:v18];

  v10 = v18[0];
  if (v9)
  {
    v11 = sub_1C9A91558();
    sub_1C97DA940();
    v13 = *(v12 + 8);
    v14 = v10;
    v13(a1, v11);
  }

  else
  {
    v15 = v18[0];
    sub_1C9A913C8();

    swift_willThrow();
    sub_1C9A91558();
    sub_1C97DA940();
    (*(v16 + 8))(a1);
  }

  return v9;
}

id sub_1C99CA2A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v19[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1C9A91488();
  v10 = sub_1C9A922F8();

  v19[0] = 0;
  v11 = [v5 initForWriting:v9 settings:v10 commonFormat:a3 interleaved:a4 & 1 error:v19];

  v12 = v19[0];
  if (v11)
  {
    v13 = sub_1C9A91558();
    v14 = *(*(v13 - 8) + 8);
    v15 = v12;
    v14(a1, v13);
  }

  else
  {
    v16 = v19[0];
    sub_1C9A913C8();

    swift_willThrow();
    v17 = sub_1C9A91558();
    (*(*(v17 - 8) + 8))(a1, v17);
  }

  return v11;
}

unint64_t sub_1C99CA438()
{
  result = qword_1EC3CFDF8;
  if (!qword_1EC3CFDF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3CFDF8);
  }

  return result;
}

void *sub_1C99CA498()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

_BYTE *sub_1C99CA4F8(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C99CA5A4()
{
  result = qword_1EC3CFE00;
  if (!qword_1EC3CFE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFE00);
  }

  return result;
}

__n128 sub_1C99CA614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __n128 a17)
{
  *v17 = a15;
  v17[1] = a16;
  result = a17;
  v17[2] = a17;
  return result;
}

id sub_1C99CA670()
{

  return [v0 (v1 + 350)];
}

uint64_t sub_1C99CA688(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v20 = a1[7];
  v21 = a1[6];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = a2[5];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  v18 = a2[7];
  v19 = a2[6];
  if (!v12 && (sub_1C9A93B18() & 1) == 0)
  {
    return 0;
  }

  v13 = v4 == v8 && v5 == v9;
  if (!v13 && (sub_1C9A93B18() & 1) == 0)
  {
    return 0;
  }

  v14 = v6 == v10 && v7 == v11;
  if (!v14 && (sub_1C9A93B18() & 1) == 0)
  {
    return 0;
  }

  v15 = v21 == v19 && v20 == v18;
  if (!v15 && (sub_1C9A93B18() & 1) == 0)
  {
    return 0;
  }

  if (a1[8] == a2[8] && a1[9] == a2[9])
  {
    return 1;
  }

  return sub_1C9A93B18();
}

uint64_t sub_1C99CA7DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E49726576726573 && a2 == 0xEA00000000006F66;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461507972657571 && a2 == 0xE900000000000068)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C99CA8B4(char a1)
{
  if (a1)
  {
    return 0x7461507972657571;
  }

  else
  {
    return 0x6E49726576726573;
  }
}

uint64_t sub_1C99CA8F4(void *a1)
{
  v3 = v1;
  v5 = sub_1C97A2CEC(&unk_1EC3CFE40);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-v9];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99CBE54();
  sub_1C9A93DD8();
  v11 = *v3;
  v12 = v3[2];
  v23 = v3[1];
  v24 = v12;
  v13 = v3[2];
  v25 = v3[3];
  v18 = v11;
  v19 = v23;
  v14 = *v3;
  v20 = v13;
  v21 = v3[3];
  v22 = v14;
  v17[79] = 0;
  sub_1C9840AC4(&v22, v17);
  sub_1C9877B9C();
  sub_1C9A93A18();
  sub_1C99CC424();
  if (!v2)
  {
    v16[15] = 1;
    sub_1C9A939C8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C99CAAAC()
{
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();

  return sub_1C9A92528();
}

uint64_t sub_1C99CAB40()
{
  sub_1C9A93CC8();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

void *sub_1C99CABE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1C97A2CEC(&qword_1EC3CFE28);
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99CBE54();
  sub_1C9A93DB8();
  if (v2)
  {
    return sub_1C97A592C(a1);
  }

  v23 = 0;
  sub_1C9877A74();
  sub_1C9A938F8();
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = 1;
  v5 = sub_1C9A938A8();
  v7 = v6;
  v8 = sub_1C97FB2A8();
  v9(v8);
  v12[0] = v18;
  v12[1] = v19;
  v12[2] = v20;
  v12[3] = v21;
  *&v12[4] = v5;
  *(&v12[4] + 1) = v7;
  sub_1C99CBEA8(v12, v13);
  sub_1C97A592C(a1);
  sub_1C99CC460();
  v13[8] = v5;
  v13[9] = v7;
  sub_1C99CBEE0(v13);
  return memcpy(a2, v12, 0x50uLL);
}

uint64_t sub_1C99CAE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99CA7DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99CAE3C(uint64_t a1)
{
  v2 = sub_1C99CBE54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99CAE78(uint64_t a1)
{
  v2 = sub_1C99CBE54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C99CAEB4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C99CABE4(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x50uLL);
  }

  return result;
}

uint64_t sub_1C99CAF20()
{
  sub_1C9A93CC8();
  sub_1C99CAAAC();
  return sub_1C9A93D18();
}

id sub_1C99CAF60(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *&a1[OBJC_IVAR___SNFileServerInfo_impl + 16];
  v17[0] = *&a1[OBJC_IVAR___SNFileServerInfo_impl];
  v17[1] = v6;
  v7 = *&a1[OBJC_IVAR___SNFileServerInfo_impl + 48];
  v18 = *&a1[OBJC_IVAR___SNFileServerInfo_impl + 32];
  v19 = v7;
  v20 = v17[0];
  v21 = v6;
  v22 = v18;
  v23 = v7;
  v8 = type metadata accessor for SNListFilesRequest();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR___SNListFilesRequest_impl];
  v11 = v21;
  *v10 = v17[0];
  *(v10 + 1) = v11;
  v12 = v23;
  *(v10 + 2) = v22;
  *(v10 + 3) = v12;
  *(v10 + 8) = a2;
  *(v10 + 9) = a3;
  sub_1C9840AC4(v17, v16);
  v15.receiver = v9;
  v15.super_class = v8;
  v13 = objc_msgSendSuper2(&v15, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

id (*sub_1C99CB08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v31 = a2;
  v10 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  v13 = [objc_allocWithZone(MEMORY[0x1E69C6B70]) init];
  [v13 setDispatchQueue_];
  v14 = [objc_allocWithZone(MEMORY[0x1E6999488]) init];
  v15 = sub_1C9A92478();
  [v14 setServiceType_];

  v16 = (v5 + OBJC_IVAR___SNListFilesRequest_impl);
  v17 = *(v5 + OBJC_IVAR___SNListFilesRequest_impl + 16);
  v18 = v16[3];

  sub_1C99CBF10(v17, v18, v14);
  v20 = v16[8];
  v19 = v16[9];
  v21 = sub_1C9A92988();
  sub_1C97ACC50(v12, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v14;
  v22[5] = v20;
  v22[6] = v19;
  v22[7] = a4;
  v23 = v31;
  v22[8] = a5;
  v22[9] = v23;
  v22[10] = a3;
  v22[11] = v13;

  v24 = v14;

  v25 = v13;
  sub_1C99A9128();
  v27 = v26;
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = v25;
  v28[4] = v24;
  return sub_1C99CC15C;
}

uint64_t sub_1C99CB2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 376) = v11;
  *(v8 + 360) = v10;
  *(v8 + 344) = a7;
  *(v8 + 352) = a8;
  *(v8 + 328) = a5;
  *(v8 + 336) = a6;
  *(v8 + 320) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C99CB2EC, 0, 0);
}

uint64_t sub_1C99CB2EC()
{
  sub_1C97AA95C();
  v1 = v0[40];
  v0[2] = v0;
  v0[3] = sub_1C99CB400;
  v2 = swift_continuation_init();
  v3 = sub_1C97A2CEC(&qword_1EC3CA050);
  v0[48] = v3;
  v0[25] = v3;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1C9A1E374;
  v0[21] = &unk_1F4948DD8;
  v0[22] = v2;
  [v1 activateWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C99CB400()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 392) = v4;
  if (v4)
  {
    v5 = sub_1C99CB9A4;
  }

  else
  {
    v5 = sub_1C99CB500;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C99CB500()
{
  sub_1C97AA884();
  type metadata accessor for SNFileSharingUtils();
  v1 = swift_task_alloc();
  v0[50] = v1;
  *v1 = v0;
  v1[1] = sub_1C99CB5A0;
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[40];

  return sub_1C983E4A8(v3, v2, v4);
}

uint64_t sub_1C99CB5A0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 408) = v4;
  *(v2 + 416) = v0;

  if (v0)
  {
    v5 = sub_1C99CBA30;
  }

  else
  {
    v5 = sub_1C99CB6A4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C99CB6A4()
{
  v1 = v0;
  v2 = v0 + 5;
  receiver = v1[24].receiver;
  super_class = v1[23].super_class;
  v4 = v1[22].super_class;
  v5 = v1[21].super_class;
  v6 = sub_1C99CC194(v1[25].super_class);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = type metadata accessor for SNFileListingResult();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR___SNFileListingResult_fileItems] = v7;
  v1[19].receiver = v9;
  v1[19].super_class = v8;
  v10 = objc_msgSendSuper2(v1 + 19, sel_init);
  v1[26].super_class = v10;
  v1[18].super_class = v8;
  v1[17].receiver = v10;
  v11 = v10;
  v5(v1 + 17);
  sub_1C97A592C(&v1[17]);
  v4(0);
  v1[5].receiver = v1;
  v1[5].super_class = sub_1C99CB844;
  v12 = swift_continuation_init();
  v1[16].super_class = receiver;
  v1[13].receiver = MEMORY[0x1E69E9820];
  v1[13].super_class = 1107296256;
  v1[14].receiver = sub_1C9A1E374;
  v1[14].super_class = &unk_1F4948E00;
  v1[15].receiver = v12;
  [(objc_class *)super_class activateWithCompletion:&v1[13]];

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1C99CB844()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 432) = v4;
  if (v4)
  {
    v5 = sub_1C99CBAB4;
  }

  else
  {
    v5 = sub_1C99CB944;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C99CB944()
{
  sub_1C97AA884();
  v1 = *(v0 + 408);

  sub_1C97DA91C();

  return v2();
}

uint64_t sub_1C99CB9A4()
{
  sub_1C97AA95C();
  swift_willThrow();
  v1 = *(v0 + 392);
  v2 = *(v0 + 360);
  v3 = v1;
  v2(v1);

  sub_1C97DA91C();

  return v4();
}

uint64_t sub_1C99CBA30()
{
  sub_1C97AA95C();
  v1 = *(v0 + 416);
  v2 = *(v0 + 360);
  v3 = v1;
  v2(v1);

  sub_1C97DA91C();

  return v4();
}

uint64_t sub_1C99CBAB4()
{
  sub_1C97AA95C();
  v1 = v0[53];
  v2 = v0[51];
  swift_willThrow();

  v3 = v0[54];
  v4 = v0[45];
  v5 = v3;
  v4(v3);

  sub_1C97DA91C();

  return v6();
}

id sub_1C99CBB4C(uint64_t a1, void *a2, void *a3)
{
  sub_1C9A92A28();
  [a2 invalidate];

  return [a3 invalidate];
}

id SNListFilesRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNListFilesRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SNListFilesRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C99CBD58(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1C99CBD98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C99CBE00()
{
  result = qword_1EC3CFE20;
  if (!qword_1EC3CFE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFE20);
  }

  return result;
}

unint64_t sub_1C99CBE54()
{
  result = qword_1EC3CFE30;
  if (!qword_1EC3CFE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFE30);
  }

  return result;
}

void sub_1C99CBF10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C9A92478();

  [a3 setDestinationID_];
}

uint64_t sub_1C99CBF74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C99CC074;

  return sub_1C99CB2AC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C99CC074()
{
  sub_1C97AA884();
  sub_1C97AA890();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C99CC194(void *a1)
{
  v1 = [a1 fileItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C99CC1F4();
  v3 = sub_1C9A92798();

  return v3;
}

unint64_t sub_1C99CC1F4()
{
  result = qword_1EC3CFE50;
  if (!qword_1EC3CFE50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3CFE50);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ListFilesRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C99CC318()
{
  result = qword_1EC3CFE58;
  if (!qword_1EC3CFE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFE58);
  }

  return result;
}

unint64_t sub_1C99CC370()
{
  result = qword_1EC3CFE60;
  if (!qword_1EC3CFE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFE60);
  }

  return result;
}

unint64_t sub_1C99CC3C8()
{
  result = qword_1EC3CFE68[0];
  if (!qword_1EC3CFE68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CFE68);
  }

  return result;
}

uint64_t sub_1C99CC424()
{
  v3 = *(v1 - 208);
  *(v1 - 304) = *(v1 - 224);
  *(v1 - 288) = v3;
  v4 = *(v0 + 48);
  *(v1 - 272) = *(v1 - 192);
  *(v1 - 256) = v4;

  return sub_1C9877BF0(v1 - 304);
}

__n128 sub_1C99CC460()
{
  v2 = *(v1 - 144);
  *(v0 + 96) = *(v1 - 160);
  *(v0 + 112) = v2;
  result = *(v1 - 128);
  v4 = *(v1 - 112);
  *(v0 + 128) = result;
  *(v0 + 144) = v4;
  return result;
}

void *sub_1C99CC544(void *__src, uint64_t a2, void *__dst, uint64_t a4)
{
  if (__src)
  {
    v4 = a2 - __src;
  }

  else
  {
    v4 = 0;
  }

  if (!__dst)
  {
    if (!v4)
    {
      return __src;
    }

    goto LABEL_11;
  }

  if (v4 != a4 - __dst)
  {
LABEL_11:
    sub_1C9886D84();
    swift_allocError();
    *v5 = 0;
    return swift_willThrow();
  }

  if (__src)
  {

    return memmove(__dst, __src, a2 - __src);
  }

  return __src;
}

void sub_1C99CC5E4(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 16);
  if (v5)
  {
    v9[0] = 0;
    v6 = v5;
    if ([v6 writeFromBuffer:a2 error:v9])
    {
      v7 = v9[0];
    }

    else
    {
      v8 = v9[0];
      sub_1C9A913C8();

      swift_willThrow();
    }
  }

  else
  {
    sub_1C97A2CEC(&unk_1EC3D2870);
    sub_1C9825A44();
    swift_allocError();
    swift_willThrow();
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_1C99CC7B4()
{
  result = sub_1C9A93258();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C99CC848(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x1CCA90390](a1, a2, AssociatedTypeWitness);
  return a3(v7);
}

uint64_t sub_1C99CC8D0()
{
  sub_1C9A93CC8();
  sub_1C979AFAC();
  return sub_1C9A93D18();
}

uint64_t sub_1C99CC90C()
{
  v1 = *(*v0 + 88);
  v2 = sub_1C9A93258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1C99CC990()
{
  sub_1C99CC90C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99CCA40()
{
  sub_1C99CCA0C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99CCA8C(uint64_t a1)
{
  v3 = swift_slowAlloc();
  *(v1 + 16) = v3;
  *(v1 + 24) = v3 + a1;
  return v1;
}

uint64_t sub_1C99CCAC8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    MEMORY[0x1CCA93280](v1, -1, -1);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_1C99CCBB0()
{
  sub_1C99CCB7C();

  return swift_deallocClassInstance();
}

_BYTE *sub_1C99CCBFC(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C99CCD20(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    goto LABEL_6;
  }

  if (!result)
  {
    if (!a3)
    {
      v3 = 2;
      goto LABEL_7;
    }

LABEL_6:
    v3 = 1;
LABEL_7:
    sub_1C9886D84();
    swift_allocError();
    *v4 = v3;
    return swift_willThrow();
  }

  if (a2 - result < a3)
  {
    goto LABEL_6;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MemUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C99CCE84()
{
  result = qword_1EC3D0070;
  if (!qword_1EC3D0070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0070);
  }

  return result;
}

void sub_1C99CCED8(void *a1)
{
  sub_1C99CD0B0(a1);
  if (v1)
  {
    swift_getErrorValue();
    v5 = sub_1C9A93C38();
    v7 = v6;
    sub_1C9939654();
    swift_allocError();
    *v8 = 0xD000000000000016;
    v8[1] = 0x80000001C9ADD9F0;
    v8[2] = v5;
    v8[3] = v7;
    swift_willThrow();
  }

  else
  {
    sub_1C99CD12C(a1);
    [a1 sampleRate];
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    sub_1C999C710();
  }
}

_DWORD *sub_1C99CD0B0(void *a1)
{
  result = [a1 streamDescription];
  if (result[2] != 1819304813)
  {
    type metadata accessor for SNError();
    sub_1C98573F8();
    sub_1C99CD1B4(v3, v2 + 1, v4);
    return swift_willThrow();
  }

  return result;
}

id sub_1C99CD12C(void *a1)
{
  if (![a1 channelCount] || (result = objc_msgSend(a1, sel_sampleRate), v3 <= 0.0))
  {
    type metadata accessor for SNError();
    sub_1C98573F8();
    sub_1C99CD1B4(v5, v4 + 35, v6);
    return swift_willThrow();
  }

  return result;
}

id sub_1C99CD1B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{

  return sub_1C9929478(0xD000000000000017, a1, 3, 0, a2, a3 | 0x8000000000000000);
}

void sub_1C99CD1D8(void *a1)
{
  v54 = *MEMORY[0x1E69E9840];
  type metadata accessor for SNUtils();
  v2 = sub_1C9A17B4C();
  v3 = sub_1C9A18184();
  v4 = [a1 inputDescriptionsByName];
  sub_1C97BD318(0, &qword_1EC3C54D0);
  v5 = sub_1C9A92328();

  v6 = *(v5 + 16);

  if (v6 != 1)
  {
    goto LABEL_13;
  }

  v7 = [a1 inputDescriptionsByName];
  v8 = sub_1C9A92328();

  v9 = sub_1C98BBCAC(v8);

  if (!v9)
  {
    goto LABEL_13;
  }

  if ([v9 type] != 5 || (v10 = objc_msgSend(v9, sel_multiArrayConstraint)) == 0)
  {

LABEL_13:

    type metadata accessor for SNError();
    sub_1C98573F8();
    sub_1C993AD60(v23, v22 + 15, v24);
    swift_willThrow();
    return;
  }

  v11 = v10;
  v52 = 0;
  if ((sub_1C99CE9A0(v2, &v52, v10) & 1) == 0)
  {
    v25 = v52;

    v26 = sub_1C9A913C8();

    swift_willThrow();
    type metadata accessor for SNError();
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_1C9A935B8();

    sub_1C99CEBC4();
    v27 = sub_1C97BD318(0, &qword_1EC3C54B0);
    v28 = MEMORY[0x1CCA90460](v2, v27);
    v30 = v29;

    MEMORY[0x1CCA90230](v28, v30);

    MEMORY[0x1CCA90230](0xD000000000000017, 0x80000001C9ADDB00);
    v31 = v53;
    v32 = sub_1C9998E18();
    sub_1C9929478(v32, v33, v34, v35, v36, v31);

    swift_willThrow();

    return;
  }

  v12 = v52;

  v13 = [a1 outputDescriptionsByName];
  v14 = sub_1C9A92328();

  v15 = *(v14 + 16);

  if (v15 != 1)
  {
    goto LABEL_16;
  }

  v16 = [a1 outputDescriptionsByName];
  v17 = sub_1C9A92328();

  v18 = sub_1C98BBCAC(v17);

  if (!v18)
  {
    goto LABEL_16;
  }

  if ([v18 type] != 5 || (v19 = objc_msgSend(v18, sel_multiArrayConstraint)) == 0)
  {

LABEL_16:

    type metadata accessor for SNError();
    sub_1C98573F8();
    sub_1C993AD60(v38, v37 + 21, v39);
    swift_willThrow();

    return;
  }

  v20 = v19;
  v52 = 0;
  if (sub_1C99CE9A0(v3, &v52, v19))
  {
    v21 = v52;
  }

  else
  {
    v40 = v52;
    v41 = sub_1C9A913C8();

    swift_willThrow();
    type metadata accessor for SNError();
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_1C9A935B8();

    sub_1C99CEBC4();
    v42 = sub_1C97BD318(0, &qword_1EC3C54B0);
    v43 = MEMORY[0x1CCA90460](v3, v42);
    v45 = v44;

    MEMORY[0x1CCA90230](v43, v45);

    MEMORY[0x1CCA90230](0xD000000000000018, 0x80000001C9ADDB50);
    v46 = v53;
    v47 = sub_1C9998E18();
    sub_1C9929478(v47, v48, v49, v50, v51, v46);

    swift_willThrow();
  }
}

id sub_1C99CD748(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();

  sub_1C99CD1D8(a1);
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v51 = ObjectType;
    v52 = v1;
    v54[0] = 0x40467A0000;
    v54[1] = 0x45EA600042FA0000;
    v54[2] = 0x3C23D70A00000002;
    v55 = 0;
    v56 = xmmword_1C9AA7B00;
    v57 = 0;
    sub_1C97A2CEC(&unk_1EC3C6E20);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C9AC5740;
    *(v6 + 32) = sub_1C9A92B88();
    *(v6 + 40) = sub_1C9A92B88();
    *(v6 + 48) = sub_1C9A92B88();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C9AC5750;
    *(v7 + 32) = sub_1C9A92B88();
    *(v7 + 40) = sub_1C9A92B88();
    *(v7 + 48) = sub_1C9A92B88();
    *(v7 + 56) = sub_1C9A92B88();
    sub_1C97BD318(0, &qword_1EC3D0080);
    v58 = a1;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C9AC5740;
    v9 = objc_opt_self();
    *(v8 + 32) = [v9 valueWithRange_];
    *(v8 + 40) = sub_1C99CEBE8();
    *(v8 + 48) = [v9 valueWithRange_];
    v10 = sub_1C99CDDCC();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C9AC5750;
    *(v11 + 32) = sub_1C99CEBE8();
    *(v11 + 40) = sub_1C99CEBE8();
    *(v11 + 48) = [v9 valueWithRange_];
    *(v11 + 56) = [v9 valueWithRange_];
    v12 = sub_1C99CDDCC();
    sub_1C999AFB0();
    v47 = sub_1C985B960(v13);
    v49 = v15;

    sub_1C999AF90();
    v17 = sub_1C985B960(v16);
    v42 = v18;
    v43 = v17;

    sub_1C97BD318(0, &qword_1EC3D0088);
    v46 = v10;
    v19 = sub_1C99CDE54(v6, 65568, v46);
    v45 = v12;
    v20 = sub_1C99CDE54(v7, 65568, v45);
    sub_1C97BD318(0, &qword_1EC3C54D0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1C9A9DF30;
    *(v21 + 32) = v19;
    v44 = v19;
    v22 = sub_1C9A1826C(v47, v49, 5, 0, v21);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C9A9DF30;
    *(v23 + 32) = v20;
    v50 = v20;
    v24 = sub_1C9A1826C(v43, v42, 5, 0, v23);
    sub_1C97A2CEC(&qword_1EC3D0090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9EDD0;
    v26 = [v22 name];
    v27 = sub_1C9A924A8();
    v29 = v28;

    *(inited + 32) = v27;
    *(inited + 40) = v29;
    *(inited + 48) = v22;
    v48 = v22;
    v30 = sub_1C9A92348();
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_1C9A9EDD0;
    v32 = [v24 name];
    v33 = sub_1C9A924A8();
    v35 = v34;

    *(v31 + 32) = v33;
    *(v31 + 40) = v35;
    *(v31 + 48) = v24;
    v36 = v24;
    v37 = sub_1C9A92348();
    v38 = objc_allocWithZone(MEMORY[0x1E695FEC0]);
    v39 = sub_1C999BB18(v30, v37, 0, 0xE000000000000000, 0, 0xE000000000000000, 0);
    v40 = objc_allocWithZone(type metadata accessor for _SNLogMelSpectrogramCustomModel());
    v41 = sub_1C99E3C88(v39, v54);

    *&v52[OBJC_IVAR____SNVGGishFrontEndProcessingCustomModel_underlyingModel] = v41;
    v53.receiver = v52;
    v53.super_class = v51;
    v3 = objc_msgSendSuper2(&v53, sel_init);
  }

  return v3;
}

id sub_1C99CDDCC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C97BD318(0, &qword_1EC3C5690);
  v1 = sub_1C9A92768();

  v2 = [v0 initWithSizeRangeForDimension_];

  return v2;
}

id sub_1C99CDE54(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C97BD318(0, &qword_1EC3C54B0);
  v5 = sub_1C9A92768();

  v6 = [swift_getObjCClassFromMetadata() constraintWithShape:v5 dataType:a2 shapeConstraint:a3];

  return v6;
}

id sub_1C99CDFA8(void *a1)
{
  sub_1C97A2CEC(&unk_1EC3C6E20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C9AC5740;
  *(v3 + 32) = sub_1C9A92B88();
  *(v3 + 40) = sub_1C9A92B88();
  *(v3 + 48) = sub_1C9A92B88();
  type metadata accessor for SNUtils();
  v4 = sub_1C9A17B4C();
  v5 = sub_1C9A18184();
  v6 = [a1 featureNames];
  v7 = sub_1C9A92B28();

  v8 = sub_1C985B960(v7);
  if (v1)
  {
  }

  else
  {
    v10 = v9;
    v56 = v5;
    v11 = v8;

    v7 = sub_1C9A92478();
    v12 = [a1 featureValueForName_];

    if (v12 && (v7 = [v12 multiArrayValue], v12, v7))
    {
      v13 = [v7 shape];
      sub_1C97BD318(0, &qword_1EC3C54B0);
      v14 = sub_1C9A92798();

      LOBYTE(v13) = sub_1C980937C(v14, v4);

      if (v13)
      {
        v15 = swift_allocObject();
        v15[2] = v7;
        v16 = v7;
        v52 = [v16 dataPointer];
        v51 = [v16 dataType];
        v17 = sub_1C9A92768();
        v18 = sub_1C998D6A4(v17);

        objc_allocWithZone(MEMORY[0x1E695FED0]);

        v22 = sub_1C9990C04(v52, v3, v51, v18, sub_1C99CEBC0, v15);
        v53 = v16;
        v23 = sub_1C998D85C(v22);
        sub_1C97A2CEC(&qword_1EC3C69E8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C9A9EDD0;
        *(inited + 32) = v11;
        *(inited + 40) = v10;
        v25 = v23;
        v26 = objc_opt_self();
        v27 = [v26 featureValueWithMultiArray_];
        v28 = sub_1C97BD318(0, &qword_1EC3C54F8);
        *(inited + 72) = v28;
        *(inited + 48) = v27;
        sub_1C9A92348();
        objc_allocWithZone(MEMORY[0x1E695FE48]);
        v50 = v28;
        v29 = sub_1C98B6EC8();
        sub_1C99E27F4(v29);
        v31 = v30;

        v32 = [v31 featureNames];
        v33 = sub_1C9A92B28();

        v34 = sub_1C985B960(v33);
        v36 = v35;
        v54 = v29;
        v55 = v25;
        v37 = v34;

        v7 = sub_1C9A92478();
        v38 = [v31 featureValueForName_];

        if (v38 && (v7 = [v38 multiArrayValue], v38, v7))
        {
          v49 = v36;
          v39 = swift_allocObject();
          v39[2] = v7;
          v40 = v7;
          v48 = [v40 dataPointer];
          v47 = [v40 dataType];
          v41 = sub_1C9A92768();
          v42 = sub_1C998D6A4(v41);

          objc_allocWithZone(MEMORY[0x1E695FED0]);

          v44 = sub_1C9990C04(v48, v56, v47, v42, sub_1C99CEA70, v39);
          v45 = swift_initStackObject();
          *(v45 + 16) = xmmword_1C9A9EDD0;
          *(v45 + 32) = v37;
          *(v45 + 40) = v49;
          v46 = [v26 featureValueWithMultiArray_];
          *(v45 + 72) = v50;
          *(v45 + 48) = v46;
          sub_1C9A92348();
          objc_allocWithZone(MEMORY[0x1E695FE48]);
          v7 = sub_1C98B6EC8();

          swift_unknownObjectRelease();
        }

        else
        {

          sub_1C99CEA1C();
          swift_allocError();
          *v43 = 1;
          swift_willThrow();

          swift_unknownObjectRelease();
        }
      }

      else
      {

        sub_1C99CEA1C();
        swift_allocError();
        *v20 = 2;
        swift_willThrow();
      }
    }

    else
    {

      sub_1C99CEA1C();
      swift_allocError();
      *v19 = 0;
      swift_willThrow();
    }
  }

  return v7;
}

id sub_1C99CE9A0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C97BD318(0, &qword_1EC3C54B0);
  v5 = sub_1C9A92768();
  v6 = [a3 isAllowedShape:v5 error:a2];

  return v6;
}

unint64_t sub_1C99CEA1C()
{
  result = qword_1EC3D0098;
  if (!qword_1EC3D0098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0098);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for _SNVGGishFrontEndProcessingCustomModel.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C99CEB6C()
{
  result = qword_1EC3D00A0;
  if (!qword_1EC3D00A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D00A0);
  }

  return result;
}

id sub_1C99CEBE8()
{

  return [v1 (v0 + 4045)];
}

uint64_t sub_1C99CEC08(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C9A93B18() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1C9A93B18() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (sub_1C9A93B18() & 1) == 0)
  {
    return 0;
  }

  if (a1[6] == a2[6] && a1[7] == a2[7])
  {
    return 1;
  }

  return sub_1C9A93B18();
}

uint64_t sub_1C99CECD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6369766544736469 && a2 == 0xEB00000000444965;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1701667182 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9A93B18();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C99CEE30(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x6369766544736469;
      break;
    case 2:
      result = 0x6C65646F6DLL;
      break;
    case 3:
      result = 1701667182;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C99CEEB4(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3D00C8);
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99CF82C();
  sub_1C9A93DD8();
  v10[15] = 0;
  sub_1C99CFA64();
  if (!v1)
  {
    v10[14] = 1;
    sub_1C99CFA64();
    v10[13] = 2;
    sub_1C99CFA64();
    v10[12] = 3;
    sub_1C99CFA64();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C99CF02C()
{
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();

  return sub_1C9A92528();
}

uint64_t sub_1C99CF084()
{
  sub_1C9A93CC8();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

uint64_t sub_1C99CF0EC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1C97A2CEC(&qword_1EC3D00B8);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99CF82C();
  sub_1C9A93DB8();
  if (v2)
  {
    return sub_1C97A592C(a1);
  }

  LOBYTE(v34[0]) = 0;
  sub_1C998D454();
  v11 = sub_1C9A938A8();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  sub_1C998D454();
  v13 = sub_1C9A938A8();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  sub_1C998D454();
  v25 = sub_1C9A938A8();
  v27 = v15;
  v35 = 3;
  v16 = sub_1C9A938A8();
  v18 = v17;
  (*(v7 + 8))(v10, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_1C9840AC4(&v30, v34);
  sub_1C97A592C(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  result = sub_1C9877BF0(v34);
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  v24 = v33;
  a2[2] = v32;
  a2[3] = v24;
  return result;
}

uint64_t sub_1C99CF3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99CECD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99CF3CC(uint64_t a1)
{
  v2 = sub_1C99CF82C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99CF408(uint64_t a1)
{
  v2 = sub_1C99CF82C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C99CF444@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C99CF0EC(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1C99CF4A8()
{
  sub_1C9A93CC8();
  sub_1C99CF02C();
  return sub_1C9A93D18();
}

id sub_1C99CF5F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_1C9A92478();

  return v3;
}

id SNFileServerInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNFileServerInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SNFileServerInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C99CF7D8()
{
  result = qword_1EC3D00B0;
  if (!qword_1EC3D00B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D00B0);
  }

  return result;
}

unint64_t sub_1C99CF82C()
{
  result = qword_1EC3D00C0;
  if (!qword_1EC3D00C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D00C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FileServerInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C99CF960()
{
  result = qword_1EC3D00D0;
  if (!qword_1EC3D00D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D00D0);
  }

  return result;
}

unint64_t sub_1C99CF9B8()
{
  result = qword_1EC3D00D8;
  if (!qword_1EC3D00D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D00D8);
  }

  return result;
}

unint64_t sub_1C99CFA10()
{
  result = qword_1EC3D00E0;
  if (!qword_1EC3D00E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D00E0);
  }

  return result;
}

uint64_t sub_1C99CFA64()
{

  return sub_1C9A939C8();
}

uint64_t sub_1C99CFAA4()
{
  v3[2] = sub_1C99CFFA4;
  v4 = v0;

  v1 = sub_1C97E3000(sub_1C983DFC0, v3);

  return v1;
}

uint64_t sub_1C99CFB50()
{
  v1 = sub_1C97A2CEC(&qword_1EC3D00F0);
  sub_1C97AE9C8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = *(v0 + 16);
  v8 = swift_allocObject();
  v8[2] = sub_1C97AE650;
  v8[3] = v0;
  v8[4] = v7;

  sub_1C97A2CEC(&qword_1EC3C7108);
  sub_1C97AE67C(&qword_1EC3C7110, &qword_1EC3C7108);
  sub_1C9A91EF8();
  sub_1C97AE67C(&qword_1EC3D00F8, &qword_1EC3D00F0);
  v9 = sub_1C9A91F28();
  (*(v3 + 8))(v6, v1);
  return v9;
}

uint64_t sub_1C99CFD1C(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3D0100);
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99D0004();
  sub_1C9A93DD8();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1C99CFE24(uint64_t a1)
{
  v2 = sub_1C99D0004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99CFE60(uint64_t a1)
{
  v2 = sub_1C99D0004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C99CFEFC()
{
  result = qword_1EC3D00E8;
  if (!qword_1EC3D00E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D00E8);
  }

  return result;
}

uint64_t sub_1C99CFF74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C99CFF50();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C99CFFCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98BFCDC();
  *a1 = result;
  return result;
}

unint64_t sub_1C99D0004()
{
  result = qword_1EC3D0108;
  if (!qword_1EC3D0108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0108);
  }

  return result;
}

unint64_t sub_1C99D006C()
{
  result = qword_1EC3D0110;
  if (!qword_1EC3D0110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0110);
  }

  return result;
}

unint64_t sub_1C99D00C4()
{
  result = qword_1EC3D0118;
  if (!qword_1EC3D0118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0118);
  }

  return result;
}

uint64_t sub_1C99D0118()
{

  return sub_1C9797790();
}

uint64_t sub_1C99D013C@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v17 = a5;
  v18 = a3;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00]();
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*(v12 + 8))(v13, v12);
  a1(v14);
  if (!v5)
  {
    (*(v9 + 32))(v17, v11, v18);
  }

  return (*(a4 + 16))(a2, a4);
}

uint64_t sub_1C99D02E0()
{
  MEMORY[0x1CCA93280](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t sub_1C99D0430()
{
  sub_1C9A92008();
  v0 = sub_1C9A91C78();
  swift_getWitnessTable();
  v1 = sub_1C991CE6C(v0);

  return v1;
}

uint64_t sub_1C99D04C0@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_1C99D04EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657669746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6576697463616E69 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C99D05B0(char a1)
{
  if (a1)
  {
    return 0x6576697463616E69;
  }

  else
  {
    return 0x657669746361;
  }
}

uint64_t sub_1C99D05E4(void *a1, int a2)
{
  v24 = a2;
  sub_1C97A2CEC(&qword_1EC3D0150);
  sub_1C97AE9C8();
  v22 = v4;
  v23 = v3;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v21 = sub_1C97A2CEC(&qword_1EC3D0158);
  sub_1C97AE9C8();
  v9 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = sub_1C97A2CEC(&qword_1EC3D0160);
  sub_1C97AE9C8();
  v15 = v14;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v21 - v17;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99D0F58();
  sub_1C9A93DD8();
  v19 = (v15 + 8);
  if (v24)
  {
    v26 = 1;
    sub_1C99D0FAC();
    sub_1C9A93988();
    (*(v22 + 8))(v7, v23);
  }

  else
  {
    v25 = 0;
    sub_1C99D1000();
    sub_1C9A93988();
    (*(v9 + 8))(v12, v21);
  }

  return (*v19)(v18, v13);
}

uint64_t sub_1C99D0870(uint64_t a1)
{
  v41 = sub_1C97A2CEC(&qword_1EC3D0120);
  sub_1C97AE9C8();
  v39 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35 - v4;
  v6 = sub_1C97A2CEC(&qword_1EC3D0128);
  sub_1C97AE9C8();
  v38 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = sub_1C97A2CEC(&qword_1EC3D0130);
  sub_1C97AE9C8();
  v40 = v12;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  sub_1C97A5A8C(a1, *(a1 + 24));
  sub_1C99D0F58();
  v16 = v42;
  sub_1C9A93DB8();
  if (v16)
  {
    goto LABEL_8;
  }

  v36 = v6;
  v37 = v10;
  v42 = a1;
  v17 = v41;
  v18 = sub_1C9A93958();
  result = sub_1C98EE524(v18, 0);
  if (v21 == v22 >> 1)
  {
LABEL_7:
    v27 = sub_1C9A93648();
    swift_allocError();
    v29 = v28;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    *v29 = &type metadata for CombineUtils.Activation;
    sub_1C9A93868();
    sub_1C9A93638();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v40 + 8))(v15, v11);
    a1 = v42;
LABEL_8:
    sub_1C97A592C(a1);
    return a1;
  }

  v35 = 0;
  if (v21 < (v22 >> 1))
  {
    a1 = *(v20 + v21);
    sub_1C98EE520(v21 + 1);
    v24 = v23;
    v26 = v25;
    swift_unknownObjectRelease();
    if (v24 == v26 >> 1)
    {
      if (a1)
      {
        LODWORD(v38) = a1;
        v44 = 1;
        sub_1C99D0FAC();
        sub_1C988A520();
        swift_unknownObjectRelease();
        (*(v39 + 8))(v5, v17);
        v31 = sub_1C988A4F0();
        v32(v31);
        a1 = v38;
      }

      else
      {
        v43 = 0;
        sub_1C99D1000();
        v30 = v37;
        sub_1C988A520();
        swift_unknownObjectRelease();
        (*(v38 + 8))(v30, v36);
        v33 = sub_1C988A4F0();
        v34(v33);
      }

      sub_1C97A592C(v42);
      return a1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C99D0CF4(uint64_t a1)
{
  v2 = sub_1C99D1000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99D0D30(uint64_t a1)
{
  v2 = sub_1C99D1000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99D0D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99D04EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99D0DB4(uint64_t a1)
{
  v2 = sub_1C99D0F58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99D0DF0(uint64_t a1)
{
  v2 = sub_1C99D0F58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99D0E2C(uint64_t a1)
{
  v2 = sub_1C99D0FAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99D0E68(uint64_t a1)
{
  v2 = sub_1C99D0FAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99D0EBC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C99D0F08@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C99D0870(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_1C99D0F58()
{
  result = qword_1EC3D0138;
  if (!qword_1EC3D0138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0138);
  }

  return result;
}

unint64_t sub_1C99D0FAC()
{
  result = qword_1EC3D0140;
  if (!qword_1EC3D0140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0140);
  }

  return result;
}

unint64_t sub_1C99D1000()
{
  result = qword_1EC3D0148;
  if (!qword_1EC3D0148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0148);
  }

  return result;
}

_BYTE *sub_1C99D1054(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C99D1154()
{
  result = qword_1EC3D0168;
  if (!qword_1EC3D0168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0168);
  }

  return result;
}

unint64_t sub_1C99D11AC()
{
  result = qword_1EC3D0170;
  if (!qword_1EC3D0170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0170);
  }

  return result;
}

unint64_t sub_1C99D1204()
{
  result = qword_1EC3D0178;
  if (!qword_1EC3D0178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0178);
  }

  return result;
}

unint64_t sub_1C99D125C()
{
  result = qword_1EC3D0180;
  if (!qword_1EC3D0180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0180);
  }

  return result;
}

unint64_t sub_1C99D12B4()
{
  result = qword_1EC3D0188;
  if (!qword_1EC3D0188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0188);
  }

  return result;
}

unint64_t sub_1C99D130C()
{
  result = qword_1EC3D0190;
  if (!qword_1EC3D0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0190);
  }

  return result;
}

unint64_t sub_1C99D1364()
{
  result = qword_1EC3D0198;
  if (!qword_1EC3D0198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0198);
  }

  return result;
}

uint64_t sub_1C99D13BC(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    type metadata accessor for SNError();
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 4, 0, 0xD00000000000001BLL, 0x80000001C9AD8720);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C99D1444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 3)
  {
    return *(a1 + 8 * v1 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C99D146C(void *a1)
{
  v1 = a1;
  sub_1C97A2CEC(&unk_1EC3CA040);
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C99D14CC(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *__return_ptr), uint64_t a4, void (*a5)(uint64_t *))
{
  a3(&v20);
  if (v5)
  {
    if (qword_1EC3C5520 != -1)
    {
      swift_once();
    }

    v9 = sub_1C9A91B58();
    sub_1C97BFF6C(v9, qword_1EC3D3108);

    v10 = v5;
    v11 = sub_1C9A91B38();
    v12 = sub_1C9A92FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_1C9849140(a1, a2, &v20);
      *(v13 + 12) = 2080;
      v15 = v5;
      sub_1C97A2CEC(&unk_1EC3CA040);
      v16 = sub_1C9A924F8();
      v18 = sub_1C9849140(v16, v17, &v20);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_1C9788000, v11, v12, "%serror logging: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA93280](v14, -1, -1);
      MEMORY[0x1CCA93280](v13, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    a5(&v20);
    return v20;
  }
}

uint64_t sub_1C99D16E4(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *__return_ptr), uint64_t a4, void (*a5)(uint64_t *))
{
  a3(&v20);
  if (v5)
  {
    if (qword_1EC3C5520 != -1)
    {
      swift_once();
    }

    v9 = sub_1C9A91B58();
    sub_1C97BFF6C(v9, qword_1EC3D3108);

    v10 = v5;
    v11 = sub_1C9A91B38();
    v12 = sub_1C9A92FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_1C9849140(a1, a2, &v20);
      *(v13 + 12) = 2080;
      v15 = v5;
      sub_1C97A2CEC(&unk_1EC3CA040);
      v16 = sub_1C9A924F8();
      v18 = sub_1C9849140(v16, v17, &v20);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_1C9788000, v11, v12, "%serror logging: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA93280](v14, -1, -1);
      MEMORY[0x1CCA93280](v13, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    a5(&v20);
    return v20;
  }
}

id sub_1C99D18F4(void *a1)
{
  if (!a1)
  {
    v4 = *MEMORY[0x1E695D930];
    v5 = 0xED0000726F727265;
    v6 = 0x206E776F6E6B6E75;
LABEL_6:
    v9 = objc_allocWithZone(MEMORY[0x1E695DF30]);
    return sub_1C99D1C64(v4, v6, v5, 0);
  }

  v1 = a1;
  sub_1C97A2CEC(&unk_1EC3CA040);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v7 = *MEMORY[0x1E695D930];
    swift_getErrorValue();
    v4 = v7;
    v6 = sub_1C9A93C38();
    v5 = v8;
    goto LABEL_6;
  }

  v2 = sub_1C9A92478();
  objc_allocWithZone(MEMORY[0x1E695DF30]);

  v3 = sub_1C99D1C64(v2, v11, v12, 0);

  return v3;
}

uint64_t sub_1C99D1ABC()
{
  sub_1C993B85C();

  return v1;
}

uint64_t sub_1C99D1B38(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *__return_ptr), uint64_t a4, void (*a5)(uint64_t *))
{
  v6 = sub_1C99D14CC(a1, a2, a3, a4, a5);
  if (v5)
  {
    v7 = sub_1C99D146C(v5);

    sub_1C985E2B4();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v8 = v7;
  }

  return v6;
}

uint64_t sub_1C99D1BD0(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *__return_ptr), uint64_t a4, void (*a5)(uint64_t *))
{
  v6 = sub_1C99D16E4(a1, a2, a3, a4, a5);
  if (!v5)
  {
    return v6;
  }

  v7 = sub_1C99D146C(v5);

  sub_1C985E2B4();
  swift_willThrowTypedImpl();
  swift_allocError();
  *v8 = v7;
  return v7;
}

id sub_1C99D1C64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_1C9A92478();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_1C9A922F8();

LABEL_6:
  v9 = [v4 initWithName:a1 reason:v7 userInfo:v8];

  return v9;
}

uint64_t sub_1C99D1D54(uint64_t a1)
{
  result = sub_1C99F4814(a1, v7);
  if (!v1)
  {
    sub_1C97BD360(v7, v6);
    if (swift_dynamicCast())
    {
      sub_1C97A592C(v7);
      return v5;
    }

    else
    {
      sub_1C97E78C8();
      v3 = sub_1C97A7A80();
      sub_1C99D40B0(v3, v4);
      return sub_1C97A592C(v7);
    }
  }

  return result;
}

uint64_t sub_1C99D1DF0(uint64_t a1)
{
  result = sub_1C99F4814(a1, v6);
  if (!v1)
  {
    sub_1C97BD360(v6, &v5);
    sub_1C9841D44();
    if (swift_dynamicCast())
    {
      sub_1C97A592C(v6);
      return v7;
    }

    else
    {
      sub_1C97E78C8();
      v3 = sub_1C97A7A80();
      sub_1C99D40B0(v3, v4);
      return sub_1C97A592C(v6);
    }
  }

  return result;
}

uint64_t sub_1C99D1E90(uint64_t a1, uint64_t a2)
{
  result = sub_1C99F4888(a1, a2, v7);
  if (!v2)
  {
    sub_1C97BD360(v7, v6);
    if (swift_dynamicCast())
    {
      sub_1C97A592C(v7);
      return v5;
    }

    else
    {
      sub_1C97E78C8();
      swift_allocError();
      *v4 = 7;
      swift_willThrow();
      return sub_1C97A592C(v7);
    }
  }

  return result;
}

uint64_t sub_1C99D1F44(uint64_t a1, uint64_t a2)
{
  result = sub_1C99F4888(a1, a2, v6);
  if (!v2)
  {
    sub_1C97BD360(v6, v5);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1C97E78C8();
      swift_allocError();
      *v4 = 7;
      swift_willThrow();
    }

    return sub_1C97A592C(v6);
  }

  return result;
}

uint64_t sub_1C99D1FF8(uint64_t a1, uint64_t a2)
{
  result = sub_1C99F4888(a1, a2, v6);
  if (!v2)
  {
    sub_1C97BD360(v6, &v5);
    sub_1C97A2CEC(&qword_1EC3D01B8);
    if (swift_dynamicCast())
    {
      sub_1C97A592C(v6);
      return v7;
    }

    else
    {
      sub_1C97E78C8();
      swift_allocError();
      *v4 = 7;
      swift_willThrow();
      return sub_1C97A592C(v6);
    }
  }

  return result;
}

uint64_t sub_1C99D2278()
{
  v1 = *(v0 + OBJC_IVAR___SNDetectSoundActionsRequest_impl + 40);
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];

    sub_1C9A93698();
    v4 = type metadata accessor for SNSoundActionCommand();
    v5 = (v1 + 56);
    do
    {
      v7 = *(v5 - 3);
      v6 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v5 += 4;
      v10 = objc_allocWithZone(v4);
      v11 = &v10[OBJC_IVAR___SNSoundActionCommand_impl];
      *v11 = v7;
      *(v11 + 1) = v6;
      *(v11 + 2) = v8;
      *(v11 + 3) = v9;
      v12.receiver = v10;
      v12.super_class = v4;

      objc_msgSendSuper2(&v12, sel_init);
      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      --v2;
    }

    while (v2);

    return v13;
  }

  return result;
}

void sub_1C99D2418(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (a1 >> 62)
  {
    v4 = sub_1C9A934C8();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v18 = MEMORY[0x1E69E7CC0];
  sub_1C97B830C();
  if (v4 < 0)
  {
    __break(1u);
    return;
  }

  v5 = 0;
  v6 = v18;
  v16 = v1;
  v17 = v3 & 0xC000000000000001;
  v7 = v3;
  do
  {
    if (v17)
    {
      v8 = MEMORY[0x1CCA912B0](v5, v3);
    }

    else
    {
      v8 = *(v3 + 8 * v5 + 32);
    }

    v9 = v8;
    v10 = *&v8[OBJC_IVAR___SNSoundActionCommand_impl];
    v11 = *&v8[OBJC_IVAR___SNSoundActionCommand_impl + 8];
    v12 = *&v8[OBJC_IVAR___SNSoundActionCommand_impl + 16];
    v13 = *&v8[OBJC_IVAR___SNSoundActionCommand_impl + 24];

    v14 = *(v18 + 16);
    if (v14 >= *(v18 + 24) >> 1)
    {
      sub_1C97B830C();
    }

    ++v5;
    *(v18 + 16) = v14 + 1;
    v15 = (v18 + 32 * v14);
    v15[4] = v10;
    v15[5] = v11;
    v15[6] = v12;
    v15[7] = v13;
    v3 = v7;
  }

  while (v4 != v5);

  v2 = v16;
LABEL_14:
  *(v2 + OBJC_IVAR___SNDetectSoundActionsRequest_impl + 40) = v6;
}

_UNKNOWN **sub_1C99D25C4()
{
  type metadata accessor for SNSoundActionsDetector();
  v2 = swift_allocObject();
  sub_1C99D2E34(v0);
  if (v1)
  {
    return &off_1F4949830;
  }

  else
  {
    return v2;
  }
}

void sub_1C99D2624(void *a1, uint64_t a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  v8 = sub_1C99D1E90(a2, 0xD000000000000013);
  if (v3)
  {

    goto LABEL_4;
  }

  v9 = v8;
  sub_1C99D1F44(a2, 0x6D61536F69647541);
  v11 = v10;
  v12 = sub_1C99D1E90(a2, 0xD000000000000015);
  v13 = sub_1C99D1FF8(a2, 0x73646E616D6D6F43);

  v14 = *(v13 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v41 = v12;
    v42 = v9;
    v45 = ObjectType;
    v52 = MEMORY[0x1E69E7CC0];
    v43 = v14;
    sub_1C9A93698();
    v16 = 0;
    while (2)
    {
      if (v16 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v17 = objc_allocWithZone(type metadata accessor for SNSoundActionCommand());
      swift_bridgeObjectRetain_n();
      v18 = sub_1C99999C0();
      v19 = sub_1C99D3EA8([a1 modelDescription]);
      if (v19)
      {
        v20 = sub_1C99D2B24(v19);

        if (v20)
        {
          v48 = v16 + 1;
          v49 = v18;
          v21 = &v18[OBJC_IVAR___SNSoundActionCommand_impl];
          v22 = (v20 + 40);
          v23 = *(v20 + 16) + 1;
          do
          {
            if (!--v23)
            {

              v18 = v49;
              goto LABEL_20;
            }

            if (*(v22 - 1) == *v21 && *v22 == *(v21 + 1))
            {
              break;
            }

            v22 += 2;
          }

          while ((sub_1C9A93B18() & 1) == 0);

          sub_1C9A93678();
          sub_1C9A936A8();
          sub_1C9A936B8();
          sub_1C9A93688();
          v16 = v48;
          if (v48 != v43)
          {
            continue;
          }

          v25 = v52;
          ObjectType = v45;
          v12 = v41;
          v9 = v42;
          v15 = MEMORY[0x1E69E7CC0];
          goto LABEL_22;
        }
      }

      break;
    }

LABEL_20:
    type metadata accessor for SNError();
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0, 0xE000000000000000);
    swift_willThrow();

LABEL_4:
    swift_deallocPartialClassInstance();
    return;
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_22:
  type metadata accessor for SNMLModelAdapter();
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  v27 = sub_1C97BDEE0(v25);
  if (!v27)
  {
    v39 = a1;

LABEL_33:
    v40 = &v4[OBJC_IVAR___SNDetectSoundActionsRequest_impl];
    *v40 = v26;
    v40[1] = &off_1F4937370;
    v40[2] = v11;
    v40[3] = v9;
    v40[4] = v12;
    v40[5] = v15;
    v51.receiver = v4;
    v51.super_class = ObjectType;
    objc_msgSendSuper2(&v51, sel_init, v41, v42);

    return;
  }

  v42 = v9;
  v44 = v26;
  v50 = v27;
  v41 = v12;
  v46 = ObjectType;
  v47 = a1;
  v52 = v15;
  v28 = a1;
  sub_1C97B830C();
  if ((v50 & 0x8000000000000000) == 0)
  {
    v29 = 0;
    v15 = v52;
    v30 = v25;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x1CCA912B0](v29);
      }

      else
      {
        v31 = *(v30 + 8 * v29 + 32);
      }

      v32 = v31;
      v33 = *&v31[OBJC_IVAR___SNSoundActionCommand_impl];
      v34 = *&v31[OBJC_IVAR___SNSoundActionCommand_impl + 8];
      v35 = *&v31[OBJC_IVAR___SNSoundActionCommand_impl + 16];
      v36 = *&v31[OBJC_IVAR___SNSoundActionCommand_impl + 24];

      v52 = v15;
      v37 = *(v15 + 16);
      if (v37 >= *(v15 + 24) >> 1)
      {
        sub_1C97B830C();
        v15 = v52;
      }

      ++v29;
      *(v15 + 16) = v37 + 1;
      v38 = (v15 + 32 * v37);
      v38[4] = v33;
      v38[5] = v34;
      v38[6] = v35;
      v38[7] = v36;
      v30 = v25;
    }

    while (v50 != v29);

    ObjectType = v46;
    a1 = v47;
    v12 = v41;
    v9 = v42;
    v26 = v44;
    goto LABEL_33;
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_1C99D2B24(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1C97B7B08(0, v2, 0);
  v3 = v12;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1C97BD360(v4, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C97B7B08(v5 > 1, v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

id SNDetectSoundActionsRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNDetectSoundActionsRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C99D2E34(char *a1)
{
  v3 = v2;
  v4 = v1;
  *(v1 + 16) = 0;
  v6 = sub_1C99D2278();
  v7 = *&a1[OBJC_IVAR___SNDetectSoundActionsRequest_impl + 16];
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v7 <= -2147483650.0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7 >= 2147483650.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v6;
  v37 = *&a1[OBJC_IVAR___SNDetectSoundActionsRequest_impl + 32];
  v35 = sub_1C9A93168();
  v36 = v9;
  v11 = v10;
  v12 = sub_1C97BDEE0(v8);
  if (v12)
  {
    v13 = v12;
    v39[0] = MEMORY[0x1E69E7CC0];
    sub_1C97B7DD0();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v31 = v11;
      v32 = v2;
      v33 = a1;
      v34 = v1;
      v14 = 0;
      v15 = v39[0];
      v38 = v8 & 0xC000000000000001;
      v16 = v8;
      v17 = v13;
      do
      {
        if (v38)
        {
          v18 = MEMORY[0x1CCA912B0](v14, v8);
        }

        else
        {
          v18 = *(v8 + 8 * v14 + 32);
        }

        v19 = v18;
        v20 = *&v18[OBJC_IVAR___SNSoundActionCommand_impl];
        v21 = *&v18[OBJC_IVAR___SNSoundActionCommand_impl + 8];
        v22 = *&v18[OBJC_IVAR___SNSoundActionCommand_impl + 24];
        v23 = *&v18[OBJC_IVAR___SNSoundActionCommand_impl + 16];

        v39[0] = v15;
        v24 = *(v15 + 16);
        if (v24 >= *(v15 + 24) >> 1)
        {
          sub_1C97B7DD0();
          v15 = v39[0];
        }

        ++v14;
        *(v15 + 16) = v24 + 1;
        v25 = (v15 + 32 * v24);
        v25[4] = v20;
        v25[5] = v21;
        v25[6] = v22;
        v25[7] = v23;
        v8 = v16;
      }

      while (v17 != v14);

      a1 = v33;
      v4 = v34;
      v11 = v31;
      v3 = v32;
      goto LABEL_15;
    }

LABEL_21:
    __break(1u);
    return;
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v39[0] = v35;
  v39[1] = v36;
  v39[2] = v11;
  v26 = sub_1C9952C6C(v15, v37, v39);
  if (v3)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v26;
    v29 = v27;

    sub_1C97AA878();
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = v29;
    *(v4 + 32) = sub_1C99D3F10;
    *(v4 + 40) = v30;
    *(v4 + 24) = a1;
  }
}

id sub_1C99D30F8(uint64_t a1, uint64_t a2, unint64_t a3, double a4)
{
  v74 = *MEMORY[0x1E69E9840];
  type metadata accessor for SNUtils();
  ObjectType = swift_getObjectType();
  v11 = (*(a2 + 16))(ObjectType, a2);
  v12 = sub_1C9A16FF8(v11);

  sub_1C9A18C50(v12, 1u);
  v14 = v13;

  v15 = objc_opt_self();
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (a4 <= -1.0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (a4 >= 4294967300.0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (HIDWORD(a3))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v16 = v15;
  sub_1C9A76554(a4, a3, 1, &v70);
  sub_1C9A76640(a4, a3, v14, 1, &v70);
  v17 = v70;
  v67 = v72;
  v68 = v71;
  v66 = v73;
  v70 = 0;
  v18 = sub_1C9A761F8(v16, &v70);
  if (!v18)
  {
    v39 = v70;
    sub_1C9A913C8();

    swift_willThrow();
    return v18;
  }

  v19 = v70;
  v20 = sub_1C9A92478();
  v21 = sub_1C99D4074();
  v24 = sub_1C9A72FAC(v21, v22, v20, v23);

  if (!v24)
  {
    v40 = v70;
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_31;
  }

  v25 = v70;
  v26 = sub_1C9A92478();
  v27 = sub_1C99D4074();
  v30 = sub_1C9A74DF0(v27, v28, v26, v29);

  if (!v30)
  {
    v41 = v70;
    sub_1C99D40D0();

    swift_willThrow();
    goto LABEL_31;
  }

  v65 = v30;
  v31 = v70;
  v32 = sub_1C99D4088();
  v33 = sub_1C99D4074();
  v36 = sub_1C9A75428(v33, v34, v32, v35);

  if (!v36)
  {
    v42 = v70;
    sub_1C99D40D0();

    swift_willThrow();
    v43 = v65;
    goto LABEL_17;
  }

  v37 = v70;
  sub_1C9A3B76C(v36, a1, a2);
  if (!v4)
  {
    v64 = v36;
    v44 = sub_1C9A92478();
    v70 = 0;
    v36 = sub_1C9A7347C(v16, v18, v44, 1, &v70);

    if (v36)
    {
      v69 = 0;
      v45 = v70;
      v46 = sub_1C99D4030();
      if (sub_1C9A762F8(v46, v47, v24, v65, 0, 0, v48, v49))
      {
        v69 = 0;
        v50 = 0;
        v70 = v17;
        v71 = v68;
        v72 = v67;
        v73 = v66;
        v51 = sub_1C9A762F8(v16, v18, v65, v64, 0, 0, &v70, &v69);
        v52 = v69;
        if (v51)
        {
          v69 = 0;
          v53 = v52;
          v54 = sub_1C99D4030();
          if (sub_1C9A762F8(v54, v55, v64, v36, 0, 0, v56, v57))
          {
            if (a4 > -9.22337204e18)
            {
              if (a4 < 9.22337204e18)
              {
                v58 = v69;
                sub_1C9A695C8(v18);
                sub_1C9A69B8C(v18);

                v38 = v64;
                goto LABEL_12;
              }

LABEL_39:
              __break(1u);
            }

LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v62 = v69;
          sub_1C9A913C8();

          swift_willThrow();
        }

        else
        {
          v61 = v69;
          sub_1C99D40D0();

          swift_willThrow();
        }
      }

      else
      {
        v60 = v69;
        sub_1C99D40D0();

        swift_willThrow();
      }

LABEL_31:
      return v18;
    }

    v59 = v70;
    sub_1C9A913C8();

    swift_willThrow();
    v43 = v64;
LABEL_17:

    goto LABEL_31;
  }

  v38 = v65;
LABEL_12:

  return v18;
}

void *sub_1C99D3674(void *a1, int64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v54[6] = *MEMORY[0x1E69E9840];
  v8 = objc_opt_self();
  v50.value = 0;
  v9 = sub_1C9A7608C(v8, a1, &v50);
  v10 = v50.value;
  if (!v9)
  {
    v22 = v50.value;
    sub_1C9A913C8();

    swift_willThrow();
    return v3;
  }

  v11 = v9;
  v48 = v3;
  v46 = a3;
  value = a2;
  v12 = *(v3[3] + OBJC_IVAR___SNDetectSoundActionsRequest_impl + 8);
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 16);
  swift_unknownObjectRetain();
  v15 = v10;
  v3 = v14(ObjectType, v12);
  swift_unknownObjectRelease();
  sub_1C993923C(v3);
  if (!v16)
  {
    sub_1C97A8E8C();
    sub_1C97A7A80();
    *v24 = 0;
    swift_willThrow();
    goto LABEL_10;
  }

  v17 = sub_1C9A92478();

  v3 = [v11 featureValueForName_];

  if (!v3 || (v18 = [v3 dictionaryValue], v3, sub_1C9841D44(), v19 = sub_1C9A92328(), v18, sub_1C99347DC(v19), v21 = v20, , !v21))
  {
    sub_1C97A8E8C();
    sub_1C97A7A80();
    *v23 = 0;
    swift_willThrow();

LABEL_10:
    swift_unknownObjectRelease();
    return v3;
  }

  sub_1C9A3B888(a1, 0, v51);
  if (!v4)
  {
    if ((*&v51[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (*v51 > -9.22337204e18)
    {
      if (*v51 < 9.22337204e18)
      {
        v25 = *v51;
        v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
        sub_1C97CDE50(v26);
        v28 = v27;

        CMTimeMake(&v50, v25, v28);
        v29 = v50.value;
        epoch = v50.epoch;
        v30 = *&v50.timescale;
        v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
        sub_1C97CDE50(v31);
        LODWORD(v26) = v32;

        CMTimeMake(&v50, value, v26);
        v33 = v50.value;
        v34 = v50.epoch;
        v35 = *&v50.timescale;
        v36 = v48[4];
        sub_1C9878F3C();
        v38 = v37;

        v54[0] = v29;
        v54[1] = v30;
        v54[2] = epoch;
        v54[3] = v33;
        v54[4] = v35;
        v54[5] = v34;
        v40 = v36(v38, v54);

        if (v40)
        {
          SNSoundActionsResult.timeRange.getter(v52);
          v41 = v52[0];
          v42 = v52[1];
          v43 = v52[2];
          v44 = v40;
          v46(v41, v42, v43);
          v45 = sub_1C9A92F08();
          (v46)(v45);
          sub_1C9A92F18();
          SNSoundActionsResult.timeRange.setter(v53);

          sub_1C97A2CEC(&unk_1EC3C6E20);
          v3 = swift_allocObject();
          *(v3 + 1) = xmmword_1C9A9DF30;
          v3[4] = v44;
        }

        else
        {
          v3 = MEMORY[0x1E69E7CC0];
        }

        goto LABEL_10;
      }

LABEL_21:
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  swift_unknownObjectRelease();

  return v3;
}

id sub_1C99D3B54()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1;
  }

  sub_1C99D3E38();
  sub_1C97A7A80();
  return swift_willThrow();
}

void sub_1C99D3BA8()
{
  v2 = *v0;
  sub_1C97AA878();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;

  v4 = sub_1C97C1C8C();

  if (!v1)
  {
    v5 = v0[2];
    v0[2] = v4;
  }
}

uint64_t sub_1C99D3C5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(a1 + 24) + OBJC_IVAR___SNDetectSoundActionsRequest_impl);
  v5 = *(v4 + 1);
  v6 = *(v4 + 3);
  v7 = v4[2];
  v8 = swift_unknownObjectRetain();
  v9 = sub_1C99D30F8(v8, v5, v6, v7);
  result = swift_unknownObjectRelease();
  if (!v2)
  {
    *a2 = v9;
  }

  return result;
}

id sub_1C99D3CDC()
{
  result = sub_1C99D3B54();
  if (!v0)
  {
    v2 = result;
    v3 = sub_1C99D4088();
    v4 = sub_1C9A6AEE4(v2, v3);

    return v4;
  }

  return result;
}

uint64_t sub_1C99D3D70()
{
  sub_1C99D3D40();

  return swift_deallocClassInstance();
}

unint64_t sub_1C99D3E38()
{
  result = qword_1EC3D01B0;
  if (!qword_1EC3D01B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D01B0);
  }

  return result;
}

uint64_t sub_1C99D3EA8(void *a1)
{
  v2 = [a1 classLabels];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C9A92798();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for SNSoundActionsDetector.DomainError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C99D3FDC()
{
  result = qword_1EC3D01C0[0];
  if (!qword_1EC3D01C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3D01C0);
  }

  return result;
}

uint64_t sub_1C99D4088()
{

  return sub_1C9A92478();
}

uint64_t sub_1C99D40B0(uint64_t a1, _BYTE *a2)
{
  *a2 = 7;

  return swift_willThrow();
}

uint64_t sub_1C99D40D0()
{

  return sub_1C9A913C8();
}

uint64_t AnyAsyncIterator.next()()
{
  sub_1C97AA95C();
  v6 = (*v0 + **v0);
  v1 = swift_task_alloc();
  v2 = sub_1C97AA858(v1);
  *v2 = v3;
  v4 = sub_1C99D5AB4(v2);

  return v6(v4);
}

void *sub_1C99D41F4()
{
  sub_1C99D5AC4();
  v5 = swift_allocBox();
  (*(*(v1 - 8) + 32))(v6, v3, v1);
  sub_1C97A7DFC();
  result = swift_allocObject();
  result[2] = v2;
  result[3] = v1;
  result[4] = v0;
  result[5] = v5;
  *v4 = &unk_1C9AC65C8;
  v4[1] = result;
  return result;
}

uint64_t sub_1C99D4290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v5[8] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C99D4304, 0, 0);
}

uint64_t sub_1C99D4304()
{
  sub_1C97AA884();
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1C99D43B0;
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[6];

  return MEMORY[0x1EEE6D8C8](v3, v4, v2);
}

uint64_t sub_1C99D43B0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97AA84C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C99D44D4, 0, 0);
  }

  else
  {
    swift_endAccess();
    sub_1C97DA91C();

    return v7();
  }
}

uint64_t sub_1C99D44D4()
{
  sub_1C97AA884();
  swift_endAccess();
  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C99D4530()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97DA5D0;

  return AnyAsyncIterator.next()();
}

uint64_t sub_1C99D45C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_1C99D469C;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1C99D469C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97AA84C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  sub_1C97DA91C();

  return v7();
}

uint64_t sub_1C99D47B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, uint64_t, uint64_t))
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v5, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return a5(v10, AssociatedTypeWitness, a1, a2);
}

uint64_t sub_1C99D48C4()
{
  sub_1C99D5AC4();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 2) = v2;
  *(v8 + 3) = v1;
  *(v8 + 4) = v0;
  result = (*(v6 + 32))(&v8[v7], v3, v1);
  *v4 = sub_1C99D5A6C;
  v4[1] = v8;
  return result;
}

double sub_1C99D499C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v17 = a2;
  v18 = a4;
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v6 + 16))(v8, a1, a3);
  sub_1C9A92A68();
  (*(v10 + 16))(v13, v15, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_1C99D41F4();
  (*(v10 + 8))(v15, AssociatedTypeWitness);
  result = *&v19;
  *v18 = v19;
  return result;
}

uint64_t sub_1C99D4BF8()
{
  AnyAsyncSequence.makeAsyncIterator()();
}

uint64_t sub_1C99D4C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v6 = v3[1];
  v8 = sub_1C97A83D4();
  sub_1C97A7DFC();
  v9 = swift_allocObject();
  v9[2] = *(a2 + 16);
  v9[3] = a3;
  v9[4] = v7;
  v9[5] = v6;
  v10 = sub_1C9A93258();

  swift_getWitnessTable();
  sub_1C9803BB8(sub_1C99D58FC, v8, &unk_1C9AC65B8, v9, v10);
}

uint64_t sub_1C99D4D30(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C97DA5D0;

  return v6(a1);
}

uint64_t sub_1C99D4E44(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C99D4E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C99D4EB8, 0, 0);
}

uint64_t sub_1C99D4EB8()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  type metadata accessor for XPCProxyDecoder.SingleValueContainer();
  sub_1C97A7DFC();
  v8 = swift_allocObject();
  v0[7] = v8;
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v7;
  sub_1C97A8F30(v4);
  sub_1C99D5220(v8, v1, v2);
  v0[8] = v9;
  v10 = swift_task_alloc();
  v0[9] = v10;
  sub_1C9A93258();
  v0[2] = v2;
  swift_getWitnessTable();
  *v10 = v0;
  v10[1] = sub_1C99D5004;

  return sub_1C98040B4();
}

uint64_t sub_1C99D5004()
{
  sub_1C97DA934();
  v3 = v2;
  v5 = v4;
  sub_1C97AA890();
  v7 = v6;
  sub_1C97AA84C();
  *v8 = v7;
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;
  v7[10] = v0;

  if (v0)
  {
    v11 = sub_1C99D51B0;
  }

  else
  {

    v7[11] = v3;
    v7[12] = v5;
    v11 = sub_1C99D512C;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1C99D512C()
{
  sub_1C97AA95C();
  v1 = *(v0 + 24);
  v4 = *(v0 + 88);

  *v1 = vextq_s8(v4, v4, 8uLL);
  sub_1C97DA91C();

  return v2();
}

uint64_t sub_1C99D51B0()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

void *sub_1C99D5220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return &unk_1C9AC65A8;
}

uint64_t sub_1C99D5294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  v3[7] = v5;
  sub_1C9A93258();
  type metadata accessor for XPCFunction();
  v3[6] = a3;
  WitnessTable = swift_getWitnessTable();
  v3[4] = &off_1F494B9C0;
  v3[5] = WitnessTable;
  swift_getWitnessTable();
  *v5 = v3;
  v5[1] = sub_1C99D53C8;

  return sub_1C987CBD8();
}

uint64_t sub_1C99D53C8()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    v7 = sub_1C99D54C8;
  }

  else
  {
    v7 = sub_1C98BE8DC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C99D54EC()
{
  sub_1C97DA934();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;

  v8 = swift_task_alloc();
  v9 = sub_1C97AA858(v8);
  *v9 = v10;
  v9[1] = sub_1C97DA5D0;

  return sub_1C99D4E94(v7, v5, v3, v1);
}

uint64_t sub_1C99D55AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97DA5D0;

  return sub_1C99D54EC();
}

uint64_t sub_1C99D5664(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C99D56B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C99D5708()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C99D575C()
{
  sub_1C97AA95C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C99D5800;

  return sub_1C99D5294(v4, v2, v3);
}

uint64_t sub_1C99D5800()
{
  sub_1C97AA95C();
  v2 = v1;
  v4 = v3;
  sub_1C97AA890();
  v5 = *v0;
  sub_1C97AA83C();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v4, v2);
}

uint64_t sub_1C99D5914()
{
  sub_1C97DA934();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_1C97AA858(v2);
  *v3 = v4;
  v5 = sub_1C99D5AB4(v3);

  return sub_1C99D4D30(v5, v1);
}

uint64_t sub_1C99D59C0()
{
  sub_1C97DA934();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_1C97AA858(v5);
  *v6 = v7;
  v8 = sub_1C99D5AB4(v6);

  return sub_1C99D4290(v8, v3, v1, v2, v4);
}

uint64_t sub_1C99D5ADC()
{
  result = type metadata accessor for AudioStreamAnalyzerEnvironmentImpl();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C99D5B54(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1C97ABF20(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C99D5CB8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((((((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
              v17[2] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1C97ACC50(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((((((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1C99D5EE8()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C99D633C();
    if (v1 <= 0x3F)
    {
      sub_1C99D6418();
      if (v2 <= 0x3F)
      {
        sub_1C99D64F4();
        if (v3 <= 0x3F)
        {
          sub_1C99D65D0();
          if (v4 <= 0x3F)
          {
            sub_1C99D66AC();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C99D5FD8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1C97ABF20(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C99D613C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((((((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
              v17[2] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1C97ACC50(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((((((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1C99D633C()
{
  if (!qword_1EC3C4C88)
  {
    sub_1C97AA4F0(&qword_1EC3C8580);
    sub_1C97AE67C(&qword_1EC3C4EE8, &qword_1EC3C8580);
    sub_1C97AE67C(qword_1EC3C4D30, &qword_1EC3D0350);
    v0 = type metadata accessor for SyncCache();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC3C4C88);
    }
  }
}

void sub_1C99D6418()
{
  if (!qword_1EC3C4C90)
  {
    sub_1C97AA4F0(&qword_1EC3C8588);
    sub_1C97AE67C(&qword_1EC3C4EF0, &qword_1EC3C8588);
    sub_1C97AE67C(&unk_1EC3C4EB8, &qword_1EC3D0358);
    v0 = type metadata accessor for SyncCache();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC3C4C90);
    }
  }
}

void sub_1C99D64F4()
{
  if (!qword_1EC3C4CA8[0])
  {
    sub_1C97AA4F0(&qword_1EC3C8590);
    sub_1C97AE67C(qword_1EC3C4F08, &qword_1EC3C8590);
    sub_1C97AE67C(&unk_1EC3C5470, &qword_1EC3D0360);
    v0 = type metadata accessor for SyncCache();
    if (!v1)
    {
      atomic_store(v0, qword_1EC3C4CA8);
    }
  }
}

void sub_1C99D65D0()
{
  if (!qword_1EC3C4CA0)
  {
    sub_1C97AA4F0(&qword_1EC3C8598);
    sub_1C97AE67C(&qword_1EC3C4F00, &qword_1EC3C8598);
    sub_1C97AE67C(&qword_1EC3C5468, &qword_1EC3D0368);
    v0 = type metadata accessor for SyncCache();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC3C4CA0);
    }
  }
}

void sub_1C99D66AC()
{
  if (!qword_1EC3C4C98)
  {
    sub_1C97AA4F0(&qword_1EC3C85A0);
    sub_1C97AE67C(&qword_1EC3C4EF8, &qword_1EC3C85A0);
    sub_1C97AE67C(qword_1EC3C51D0, qword_1EC3D0370);
    v0 = type metadata accessor for SyncCache();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC3C4C98);
    }
  }
}

uint64_t sub_1C99D67C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C99D6788();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
    a1[2] = v5;
  }

  return result;
}

void sub_1C99D6870(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  sub_1C9A095DC(*a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7;
    *(a2 + 24) = v8 & 1;
    *(a2 + 32) = v4;
  }
}

unint64_t sub_1C99D68B4@<X0>(unint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *result;
  v3 = *(result + 8);
  v5 = *(result + 16);
  v6 = *(result + 32);
  if (*(result + 24) != 1)
  {

    goto LABEL_5;
  }

  if ((v3 * v5) >> 64 == (v3 * v5) >> 63)
  {
    j__swift_bridgeObjectRetain();
    result = sub_1C9A0A588(v3 * v5, v4, v3, v5);
    v4 = result;
LABEL_5:
    *a2 = v4;
    a2[1] = v3;
    a2[2] = v5;
    a2[3] = v6;
    return result;
  }

  __break(1u);
  return result;
}

id sub_1C99D6968@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = *a1;
  result = [v6 frameLength];
  if (__OFADD__(v5, result))
  {
    __break(1u);
  }

  else
  {
    *a2 = v5 + result;
    *a3 = v6;
    a3[1] = v5;
  }

  return result;
}

void *sub_1C99D69C4@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = result[2];
  v4 = *a2 + v3;
  if (__OFADD__(*a2, v3))
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    v5 = *result;
    v6 = v7[1];
    *a2 = v4;
    *a3 = v5;
    a3[1] = v6;
    a3[2] = v3;
    a3[3] = v4;
  }

  return result;
}

uint64_t sub_1C99D69F8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C99D6A34(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C99D6A70(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C99D6AAC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C99D6AE8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C99D6BC0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SafeLock();
  swift_getAssociatedTypeWitness();
  v3 = sub_1C9A93258();

  sub_1C99D013C(sub_1C99D7C64, v2, v3, &off_1F4949530, a1);
}

uint64_t sub_1C99D6CD0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SafeLock();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  sub_1C99D013C(sub_1C99D787C, v2, AssociatedTypeWitness, &off_1F4949530, a1);
}

uint64_t sub_1C99D6DEC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C99D6E8C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C99D6F04()
{
  sub_1C99D6E8C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C99D6F48()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_1C99D6FE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  sub_1C98783B4(a2, *(a1 + 16), v13);
  v7 = v13[0];
  v6 = v13[1];
  v8 = v13[2];
  v9 = v13[3];
  v10 = v13[4];
  v11 = v14;
  swift_endAccess();
  if (!v7)
  {
    goto LABEL_4;
  }

  if (v7 != 1)
  {
    notifier[0] = v8;
    sub_1C987AD48(v7, v6, v8, v9, v10);
    IODeregisterForSystemPower(notifier);
    IONotificationPortDestroy(v9);
    IOServiceClose(v11);

LABEL_4:
    sub_1C982467C(v13);
  }

  swift_beginAccess();
  sub_1C97EE2CC(a2, notifier);
  swift_endAccess();
  sub_1C982467C(notifier);
  *a3 = 1;
  result = 0.0;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0;
  return result;
}

uint64_t sub_1C99D714C@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v26 = a2;
  v29 = a5;
  v6 = *(*a3 + 88);
  v7 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v23 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v25 = &v20 - v9;
  swift_getAssociatedTypeWitness();
  v10 = sub_1C9A93258();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v21 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  swift_beginAccess();
  v16 = *(v6 + 24);
  v24 = a4;
  v16(a4, v7, v6);
  swift_endAccess();
  v17 = v28;
  v27(v15);
  if (v17)
  {
    return (*(v11 + 8))(v15, v10);
  }

  (*(v11 + 8))(v15, v10);
  (*(v22 + 16))(v25, v24, v23);
  v19 = v21;
  (*(v11 + 16))(v21, v29, v10);
  swift_beginAccess();
  (*(v6 + 32))(v19, v25, v7, v6);
  return swift_endAccess();
}

uint64_t sub_1C99D7450@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a4;
  v26 = a2;
  v27 = a1;
  v30 = a5;
  v5 = *(*a3 + 88);
  v6 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v23 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24 = &v21 - v8;
  v21 = swift_getAssociatedTypeWitness();
  v9 = sub_1C9A93258();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  swift_beginAccess();
  v16 = *(v5 + 24);
  v25 = v6;
  v16(v29, v6, v5);
  swift_endAccess();
  v17 = v28;
  v27(v15);
  if (v17)
  {
    return (*(v10 + 8))(v15, v9);
  }

  (*(v10 + 8))(v15, v9);
  v19 = v24;
  (*(v22 + 16))(v24, v29, v23);
  v20 = v21;
  (*(*(v21 - 8) + 16))(v13, v30, v21);
  sub_1C97ACC50(v13, 0, 1, v20);
  swift_beginAccess();
  (*(v5 + 32))(v13, v19, v25, v5);
  return swift_endAccess();
}

uint64_t sub_1C99D7780()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  return v0;
}

uint64_t sub_1C99D780C()
{
  sub_1C99D7780();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99D789C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v18 = a6;
  v19 = a3;
  v20 = a4;
  v21 = a7;
  v11 = *a2;
  v12 = *(a8 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16(v13);
  v22 = a5;
  v23 = v18;
  v24 = a8;
  v25 = *(v11 + 80);
  v26 = a9;
  v27 = *(v11 + 88);
  v28 = v19;
  v29 = v20;
  v30 = a1;
  sub_1C99D6CD0(v21);
  return (*(v12 + 8))(v15, a8);
}

uint64_t sub_1C99D7A10@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v19[0] = a4;
  v19[1] = a3;
  v20 = a2;
  v9 = sub_1C9A93258();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v19 - v12;
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9);
  if (sub_1C97ABF20(v13, 1, a5) == 1)
  {
    (*(v10 + 8))(v13, v9);
    return v20(v19[0]);
  }

  else
  {
    v18 = *(v14 + 32);
    v18(v16, v13, a5);
    return (v18)(a6, v16, a5);
  }
}

id sub_1C99D7C84()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_1C9A92478();

  v3 = [v1 initWithIdentifier:v2 detectedValue:0];

  return v3;
}

uint64_t SNDetectionResult.detectorIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR___SNDetectionResult_impl;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;
  return sub_1C99D9BC8();
}

double SNDetectionResult.timeRange.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___SNDetectionResult_impl;
  v3 = *(v1 + OBJC_IVAR___SNDetectionResult_impl + 40);
  *a1 = *(v1 + OBJC_IVAR___SNDetectionResult_impl);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 16) = *(v2 + 16);
  result = *(v2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

double SNDetectionResult.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v1 + OBJC_IVAR___SNDetectionResult_impl;
  *v3 = *a1;
  *(v3 + 8) = *(a1 + 8);
  *(v3 + 16) = *(a1 + 16);
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v3 + 40) = v2;
  return result;
}

double sub_1C99D7E70@<D0>(_OWORD *a1@<X8>)
{
  SNDetectionResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void (*SNDetectionResult.timeRange.modify(void *a1))(void **a1)
{
  v3 = sub_1C97A2C48(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  SNDetectionResult.timeRange.getter((v3 + 1));
  return sub_1C99D7F18;
}

void sub_1C99D7F18(void **a1)
{
  v1 = *a1;
  SNDetectionResult.timeRange.setter(*a1 + 8);

  free(v1);
}

double (*SNDetectionResult.confidence.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNDetectionResult_impl;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2 + 48);
  return sub_1C98277B8;
}

uint64_t (*SNDetectionResult.detected.modify(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR___SNDetectionResult_impl;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 72);
  return sub_1C99D8074;
}

uint64_t SNDetectionResult.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNDetectionResult_impl + 56);

  return v1;
}

uint64_t SNDetectionResult.identifier.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR___SNDetectionResult_impl;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  return sub_1C99D9BC8();
}

uint64_t (*SNDetectionResult.identifier.modify(void *a1))(void *a1)
{
  v3 = OBJC_IVAR___SNDetectionResult_impl;
  a1[2] = v1;
  a1[3] = v3;
  v4 = v1 + v3;
  v5 = *(v4 + 64);
  *a1 = *(v4 + 56);
  a1[1] = v5;

  return sub_1C982797C;
}

id sub_1C99D8180(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_1C9A92478();
  sub_1C97C926C();

  return a1;
}

uint64_t SNDetectionResult.detectorIdentifier.getter()
{
  if (*(v0 + OBJC_IVAR___SNDetectionResult_impl + 88))
  {
    v1 = *(v0 + OBJC_IVAR___SNDetectionResult_impl + 80);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_1C99D8234(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1C9A924A8();
  v7 = a1;
  v6 = sub_1C984ADE8();
  a4(v6);
}

uint64_t sub_1C99D82A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t (*SNDetectionResult.detectorIdentifier.modify(uint64_t *a1))(void *a1)
{
  a1[2] = v1;
  *a1 = SNDetectionResult.detectorIdentifier.getter();
  a1[1] = v3;
  return sub_1C99D8338;
}

uint64_t sub_1C99D8338(void *a1)
{
  v1 = a1[1];
  v2 = a1[2] + OBJC_IVAR___SNDetectionResult_impl;
  *(v2 + 80) = *a1;
  *(v2 + 88) = v1;
}

id sub_1C99D8358()
{
  v1 = sub_1C9A92478();
  v2 = [v0 initWithIdentifier_];

  return v2;
}

id sub_1C99D83C8()
{
  v1 = sub_1C9A92478();

  v2 = [v0 initWithIdentifier:v1 detectedValue:0];

  return v2;
}

id sub_1C99D8498(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C97FB30C();
  ObjectType = swift_getObjectType();
  v8 = MEMORY[0x1E6960C98];
  v9 = *(MEMORY[0x1E6960C98] + 40);
  v10 = &v3[OBJC_IVAR___SNDetectionResult_impl];
  *v10 = *MEMORY[0x1E6960C98];
  *(v10 + 1) = *(v8 + 8);
  *(v10 + 1) = *(v8 + 16);
  *(v10 + 4) = *(v8 + 32);
  *(v10 + 5) = v9;
  *(v10 + 6) = 0;
  *(v10 + 7) = v4;
  *(v10 + 8) = a2;
  v10[72] = a3;
  *(v10 + 5) = xmmword_1C9AC69E0;
  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id SNDetectionResult.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  memcpy(__dst, (v1 + OBJC_IVAR___SNDetectionResult_impl), sizeof(__dst));
  v4 = objc_allocWithZone(ObjectType);
  memcpy(&v4[OBJC_IVAR___SNDetectionResult_impl], __dst, 0x60uLL);
  sub_1C97F9900(__dst, v7);
  v6.receiver = v4;
  v6.super_class = ObjectType;
  result = objc_msgSendSuper2(&v6, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNDetectionResult.hash.getter()
{
  sub_1C99D9BF4(v4);
  sub_1C99D9BF4(v3);
  sub_1C9A93CC8();
  sub_1C97F9900(v4, v2);
  sub_1C97F2A98();
  v0 = sub_1C9A93D18();
  sub_1C97F99E0(v4);
  return v0;
}

uint64_t SNDetectionResult.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v15);
  if (v16)
  {
    sub_1C97A2D34(&v15, v14);
    sub_1C97BD360(v14, v13);
    if (swift_dynamicCast())
    {
      v2 = v12;
      v3 = OBJC_IVAR___SNDetectionResult_impl;
      sub_1C99D9BF4(v8);
      sub_1C99D9BF4(v7);
      memcpy(__dst, &v2[v3], sizeof(__dst));
      memcpy(__src, &v2[v3], sizeof(__src));
      v4 = sub_1C97F24F8(v7, __src);
      memcpy(v10, __src, sizeof(v10));
      sub_1C97F9900(v8, v11);
      sub_1C97F9900(__dst, v11);
      sub_1C97F99E0(v10);
      memcpy(v11, v7, sizeof(v11));
      sub_1C97F99E0(v11);
    }

    else
    {
      v4 = 0;
    }

    sub_1C97A592C(v14);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t SNDetectionResult.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  sub_1C97C926C();
  return SNDetectionResult.init(coder:)();
}

uint64_t SNDetectionResult.init(coder:)()
{
  sub_1C97C926C();
  swift_getObjectType();
  sub_1C97BD318(0, &qword_1EC3C5690);
  v1 = sub_1C9A93198();
  if (v1)
  {
    v2 = v1;
    sub_1C984AEC4();
    v3 = sub_1C9A92478();
    [v0 decodeDoubleForKey_];

    sub_1C99D9BE0();
    v4 = sub_1C9A92478();
    [v0 decodeBoolForKey_];

    sub_1C97BD318(0, &qword_1EC3C8F28);
    v5 = sub_1C9A93198();
    if (v5)
    {
      v6 = v5;
      v8 = 0;
      sub_1C9A92498();
    }
  }

  else
  {
  }

  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall SNDetectionResult.encode(with:)(NSCoder with)
{
  SNDetectionResult.timeRange.getter(v20);
  v3 = [objc_opt_self() valueWithCMTimeRange_];
  v4 = sub_1C9A92478();
  v5 = sub_1C99D9BD0();
  [v5 v6];

  v7 = v1 + OBJC_IVAR___SNDetectionResult_impl;
  v8 = *(v1 + OBJC_IVAR___SNDetectionResult_impl + 48);
  sub_1C984AEC4();
  v9 = sub_1C9A92478();
  [(objc_class *)with.super.isa encodeDouble:v9 forKey:v8];

  v10 = *(v7 + 72);
  sub_1C99D9BE0();
  v11 = sub_1C9A92478();
  [(objc_class *)with.super.isa encodeBool:v10 forKey:v11];

  sub_1C984ADE8();
  v12 = sub_1C9A92478();

  v13 = sub_1C9A92478();
  v14 = sub_1C99D9BD0();
  [v14 v15];

  SNDetectionResult.detectorIdentifier.getter();
  v16 = sub_1C9A92478();

  v17 = sub_1C9A92478();
  v18 = sub_1C99D9BD0();
  [v18 v19];
}

uint64_t SNDetectionResult.description.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v15[0] = 0;
  *(&v15[0] + 1) = 0xE000000000000000;
  sub_1C9A935B8();
  v17 = v15[0];
  v16.receiver = v0;
  v16.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v16, sel_description);
  sub_1C9A924A8();

  v4 = sub_1C984ADE8();
  MEMORY[0x1CCA90230](v4);

  MEMORY[0x1CCA90230](32, 0xE100000000000000);
  v5 = &v1[OBJC_IVAR___SNDetectionResult_impl];

  v6 = sub_1C984ADE8();
  MEMORY[0x1CCA90230](v6);

  MEMORY[0x1CCA90230](32, 0xE100000000000000);
  if (v5[72])
  {
    v7 = 0;
  }

  else
  {
    v7 = 7630702;
  }

  if (v5[72])
  {
    v8 = 0xE000000000000000;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  MEMORY[0x1CCA90230](v7, v8);

  MEMORY[0x1CCA90230](0xD00000000000001ALL, 0x80000001C9ADDD70);
  sub_1C9A92AF8();
  MEMORY[0x1CCA90230](544497952, 0xE400000000000000);
  SNDetectionResult.timeRange.getter(v15);
  v9 = objc_opt_self();
  v14[0] = v15[0];
  v14[1] = v15[1];
  v14[2] = v15[2];
  v10 = [v9 valueWithCMTimeRange_];
  v11 = [v10 description];
  sub_1C9A924A8();

  v12 = sub_1C984ADE8();
  MEMORY[0x1CCA90230](v12);

  return v17;
}

id sub_1C99D902C(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  sub_1C97FB30C();
  ObjectType = swift_getObjectType();
  sub_1C97BD318(0, &unk_1EC3C9010);
  v7 = sub_1C9A92FF8();
  v19 = v7;
  if (v7)
  {
    memcpy(__dst, (v7 + OBJC_IVAR___SNDetectionResult_impl), sizeof(__dst));
    sub_1C97F9900(__dst, &v23);

    memcpy(&v4[OBJC_IVAR___SNDetectionResult_impl], __dst, 0x60uLL);
  }

  else
  {
    sub_1C99D9A70();
    v22 = swift_allocError();
    swift_willThrow();
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v8 = sub_1C9A91B58();
    sub_1C97BFF6C(v8, qword_1EC3D3108);
    v9 = sub_1C9A91B38();
    v10 = sub_1C9A92FB8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      __dst[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1C9849140(0xD000000000000042, 0x80000001C9ADDE00, __dst);
      _os_log_impl(&dword_1C9788000, v9, v10, "Would-be Fatal Error! %s", v11, 0xCu);
      sub_1C97A592C(v12);
      sub_1C9840CEC();
      sub_1C9840CEC();
    }

    v13 = MEMORY[0x1E6960C98];
    v14 = *MEMORY[0x1E6960C98];
    v15 = *(MEMORY[0x1E6960C98] + 16);
    v16 = *(MEMORY[0x1E6960C98] + 24);
    v17 = *(MEMORY[0x1E6960C98] + 40);

    v18 = &v4[OBJC_IVAR___SNDetectionResult_impl];
    *v18 = v14;
    *(v18 + 1) = *(v13 + 8);
    *(v18 + 2) = v15;
    *(v18 + 3) = v16;
    *(v18 + 4) = *(v13 + 32);
    *(v18 + 5) = v17;
    *(v18 + 6) = 0;
    *(v18 + 7) = 0;
    *(v18 + 8) = 0xE000000000000000;
    v18[72] = 0;
    *(v18 + 10) = 0;
    *(v18 + 11) = 0;
  }

  v25.receiver = v4;
  v25.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v25, sel_init);
  sub_1C97A5978(v3, a2);
  return v20;
}

uint64_t SNDetectionResult.binarySampleRepresentation()()
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v12];
  v2 = v12[0];
  if (v1)
  {
    v3 = sub_1C9A91618();
  }

  else
  {
    v4 = v2;
    v5 = sub_1C9A913C8();

    swift_willThrow();
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v6 = sub_1C9A91B58();
    sub_1C97BFF6C(v6, qword_1EC3D3108);
    v7 = sub_1C9A91B38();
    v8 = sub_1C9A92FB8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1C9849140(0xD00000000000003ELL, 0x80000001C9ADDD90, v12);
      _os_log_impl(&dword_1C9788000, v7, v8, "Would-be Fatal Error! %s", v9, 0xCu);
      sub_1C97A592C(v10);
      sub_1C9840CEC();
      sub_1C9840CEC();
    }

    return 0;
  }

  return v3;
}

id SNDetectionResult.__allocating_init(binarySampleRepresentation:metadata:timestamp:)(uint64_t a1, unint64_t a2)
{

  v5 = objc_allocWithZone(v2);
  v6 = objc_allocWithZone(sub_1C97FB30C());
  v7 = sub_1C99D902C(a1, a2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id SNDetectionResult.init(binarySampleRepresentation:metadata:timestamp:)(uint64_t a1, unint64_t a2)
{
  ObjectType = swift_getObjectType();

  v5 = objc_allocWithZone(ObjectType);
  sub_1C99D902C(a1, a2);
  sub_1C97C926C();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

void sub_1C99D9680(uint64_t *a1@<X8>)
{
  SNDetectionResult.timeRange.getter(&range);
  v3 = CMTimeRangeCopyAsDictionary(&range, *MEMORY[0x1E695E480]);
  if (!v3)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
  }

  sub_1C97A2CEC(&qword_1EC3C69E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9AA95C0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v5 = v1 + OBJC_IVAR___SNDetectionResult_impl;
  v6 = *(v1 + OBJC_IVAR___SNDetectionResult_impl + 64);
  v7 = MEMORY[0x1E69E6158];
  *(inited + 48) = *(v1 + OBJC_IVAR___SNDetectionResult_impl + 56);
  *(inited + 56) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 0x6E656469666E6F63;
  *(inited + 88) = 0xEA00000000006563;
  v8 = *(v5 + 48);
  v9 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v10 = [v9 initWithDouble_];
  v11 = sub_1C97BD318(0, &qword_1EC3C54B0);
  *(inited + 96) = v10;
  *(inited + 120) = v11;
  *(inited + 128) = 0x676E6152656D6974;
  *(inited + 136) = 0xE900000000000065;
  v12 = sub_1C97BD318(0, &qword_1EC3C4A18);
  *(inited + 144) = v3;
  *(inited + 168) = v12;
  *(inited + 176) = 0x6465746365746564;
  *(inited + 184) = 0xE800000000000000;
  v13 = *(v5 + 72);
  v14 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v15 = v3;
  *(inited + 192) = [v14 initWithBool_];
  *(inited + 216) = v11;
  *(inited + 224) = 0xD000000000000012;
  *(inited + 232) = 0x80000001C9AD54E0;
  v16 = SNDetectionResult.detectorIdentifier.getter();
  *(inited + 264) = v7;
  *(inited + 240) = v16;
  *(inited + 248) = v17;
  v18 = sub_1C9A92348();
  a1[3] = sub_1C97A2CEC(&qword_1EC3C6330);

  *a1 = v18;
}

id SNDetectionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C99D99DC@<D0>(_OWORD *a1@<X8>)
{
  SNDetectionResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

unint64_t sub_1C99D9A70()
{
  result = qword_1EC3D0410;
  if (!qword_1EC3D0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0410);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNDetectionResult.DomainError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C99D9B74()
{
  result = qword_1EC3D0418[0];
  if (!qword_1EC3D0418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3D0418);
  }

  return result;
}

void *sub_1C99D9BF4(void *a1)
{

  return memcpy(a1, (v2 + v1), 0x60uLL);
}

uint64_t sub_1C99D9C30()
{
  result = type metadata accessor for Future.State();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C99D9CD4()
{

  v1 = *(*v0 + 96);
  v2 = type metadata accessor for Future.State();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1C99D9D68()
{
  sub_1C99D9CD4();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99D9DF0()
{
  sub_1C9A91748();
  sub_1C9A93258();
  swift_getFunctionTypeMetadata1();
  sub_1C982EDD8();
  result = sub_1C9A92358();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C99D9EBC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1C99D9FE0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

_BYTE *sub_1C99DA1A4(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C99DA274()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C99DA308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 32);
  v13 = *(v8 + 16);
  v14 = v13;
  v15 = v10;
  v16 = v9;
  v17 = v11;
  type metadata accessor for SplitStreamResult.Inner();
  (*(v5 + 16))(v7, a1, a3);
  *&v14 = sub_1C99DA454(v7);
  swift_getWitnessTable();
  sub_1C9A91F08();
}

uint64_t sub_1C99DA568(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v16 - v5;
  v7 = type metadata accessor for StreamResult();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v16 - v8);
  (*(v10 + 16))(&v16 - v8, a1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = *v9;
      v12 = v17;
      v13 = v17;
      sub_1C9A91D08();

      v14 = sub_1C9A91D78();
    }

    else
    {
      v17 = 0;
      sub_1C9A91D08();
      return sub_1C9A91D78();
    }
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    v14 = sub_1C9A91D28();
    (*(v4 + 8))(v6, v3);
  }

  return v14;
}

uint64_t sub_1C99DA7F0(uint64_t a1)
{
  v29 = *v1;
  v28 = *(v29 + 96);
  v3 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v27 = &v25 - v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  swift_getAssociatedConformanceWitness();
  v12 = sub_1C9A91D48();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  (*(v15 + 16))(&v25 - v13, a1);
  if (sub_1C97ABF20(v14, 1, AssociatedTypeWitness) == 1)
  {
    v30 = 0;
    return sub_1C9A91D08();
  }

  else
  {
    v26 = *(v6 + 32);
    v26(v11, v14, AssociatedTypeWitness);
    v17 = *(v3 + 16);
    v18 = v1 + *(*v1 + 120);
    v19 = v27;
    v20 = v3;
    v21 = v28;
    v17(v27, v18, v28);
    (*(v6 + 16))(v9, v11, AssociatedTypeWitness);
    v22 = sub_1C9A93AE8();
    if (v22)
    {
      v23 = v22;
      (*(v6 + 8))(v9, AssociatedTypeWitness);
    }

    else
    {
      v23 = swift_allocError();
      v26(v24, v9, AssociatedTypeWitness);
    }

    v30 = v23;
    sub_1C9A91D08();

    (*(v20 + 8))(v19, v21);
    return (*(v6 + 8))(v11, AssociatedTypeWitness);
  }
}

uint64_t sub_1C99DAC6C()
{
  sub_1C99DABFC();

  return swift_deallocClassInstance();
}

unint64_t sub_1C99DACD8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1C99DB050();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C99DAD50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1C99DAE74(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_1C99DB050()
{
  result = qword_1EC3D06A0[0];
  if (!qword_1EC3D06A0[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EC3D06A0);
  }

  return result;
}

uint64_t sub_1C99DB154()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C99DB1C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_1C97ABF20(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_1C97ABF20(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1C99DB300(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1C97ACC50(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C99DB530(void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v30 = v8;
  v31 = v4;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = (v10 << 10) | (16 * __clz(__rbit64(v7)));
      v12 = (*(a2 + 48) + v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = (*(a2 + 56) + v11);
      v16 = v15[1];
      v32 = *v15;

      swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_1C9A32230(v14, v13);
      if (__OFADD__(a1[2], (v18 & 1) == 0))
      {
        break;
      }

      v19 = v17;
      v20 = v18;
      sub_1C97A2CEC(&qword_1EC3C7BB0);
      if (sub_1C9A93748())
      {
        v21 = sub_1C9A32230(v14, v13);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_22;
        }

        v19 = v21;
      }

      v7 &= v7 - 1;
      if (v20)
      {

        v23 = (a1[7] + 16 * v19);
        *v23 = v32;
        v23[1] = v16;
      }

      else
      {
        a1[(v19 >> 6) + 8] |= 1 << v19;
        v24 = (a1[6] + 16 * v19);
        *v24 = v14;
        v24[1] = v13;
        v25 = (a1[7] + 16 * v19);
        *v25 = v32;
        v25[1] = v16;
        v26 = a1[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_21;
        }

        a1[2] = v28;
      }

      v9 = v10;
      v8 = v30;
      v4 = v31;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        return a1;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1C9A93BF8();
  __break(1u);
  return result;
}

uint64_t sub_1C99DB764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1C9A924E8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = &off_1E8348000;
  v7 = [objc_allocWithZone(MEMORY[0x1E696AED8]) init];
  v8 = sub_1C9A91488();
  [v7 setExecutableURL_];

  sub_1C99DBC1C(a2, v7);
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v10 = sub_1C9A92348();
    v9 = sub_1C99DBB5C(0, v10);
  }

  sub_1C99DBC7C(v9, v7);
  v11 = [objc_allocWithZone(MEMORY[0x1E696AE00]) init];
  [v7 setStandardOutput_];
  v24[0] = 0;
  if (![v7 launchAndReturnError_])
  {
    v23 = v24[0];
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_9;
  }

  v12 = v24[0];
  [v7 waitUntilExit];
  v13 = [v11 fileHandleForReading];
  v14 = [v13 readDataToEndOfFile];

  v15 = sub_1C9A91618();
  v17 = v16;

  v18 = [v11 fileHandleForReading];
  [v18 closeFile];

  sub_1C9A924D8();
  result = sub_1C9A924B8();
  if (v20)
  {
    v6 = result;
    if (![v7 terminationStatus])
    {
      sub_1C97A5978(v15, v17);

      return v6;
    }

    v21 = [v7 terminationStatus];
    sub_1C99DBCF4();
    swift_allocError();
    *v22 = v21;
    swift_willThrow();
    sub_1C97A5978(v15, v17);
LABEL_9:

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C99DBAA8(uint64_t a1)
{
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](0);
  MEMORY[0x1CCA91980](a1);
  return sub_1C9A93D18();
}

uint64_t sub_1C99DBB0C()
{
  v1 = *v0;
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](0);
  MEMORY[0x1CCA91980](v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C99DBB5C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v4 = [objc_opt_self() processInfo];
    v5 = [v4 environment];

    v3 = sub_1C9A92328();
  }

  v6 = sub_1C99DB530(v3, a2);

  return v6;
}

void sub_1C99DBC1C(uint64_t a1, void *a2)
{
  v3 = sub_1C9A92768();
  [a2 setArguments_];
}

void sub_1C99DBC7C(uint64_t a1, void *a2)
{
  v3 = sub_1C9A922F8();

  [a2 setEnvironment_];
}

unint64_t sub_1C99DBCF4()
{
  result = qword_1EC3D0728;
  if (!qword_1EC3D0728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0728);
  }

  return result;
}

unint64_t sub_1C99DBD5C()
{
  result = qword_1EC3D0730[0];
  if (!qword_1EC3D0730[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3D0730);
  }

  return result;
}

uint64_t sub_1C99DBDB0(void *a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v4 = [a1 setActive:1 withOptions:a2 error:v9];
  v5 = v9[0];
  if (v4)
  {
    *(v2 + 16) = a1;
    v6 = v5;
  }

  else
  {
    v7 = v9[0];
    sub_1C9A913C8();

    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t sub_1C99DBEB0()
{
  v1 = v0;
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 16);
  v15[0] = 0;
  if ([v2 setActive:0 error:v15])
  {
    v3 = v15[0];
  }

  else
  {
    v4 = v15[0];
    v5 = sub_1C9A913C8();

    swift_willThrow();
    if (qword_1EC3C5520 != -1)
    {
      swift_once();
    }

    v6 = sub_1C9A91B58();
    sub_1C97BFF6C(v6, qword_1EC3D3108);
    v7 = v5;
    v8 = sub_1C9A91B38();
    v9 = sub_1C9A92FA8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v5;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1C9788000, v8, v9, "Failed to deactivate audio session: %@", v10, 0xCu);
      sub_1C97BFFA4(v11);
      MEMORY[0x1CCA93280](v11, -1, -1);
      MEMORY[0x1CCA93280](v10, -1, -1);
    }

    else
    {
    }
  }

  return v1;
}

uint64_t sub_1C99DC090()
{
  sub_1C99DBEB0();

  return swift_deallocClassInstance();
}

id sub_1C99DC0E8()
{
  v1 = [v0 decoupledIO];
  v2 = &selRef_inputSampleRate;
  if (!v1)
  {
    v2 = &selRef_sampleRate;
  }

  return [v0 *v2];
}

uint64_t sub_1C99DC184(void *a1)
{
  type metadata accessor for XPCDataEncoder();
  sub_1C97AA878();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v1 + 24);
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  type metadata accessor for XPCProxyEncoder();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  v7[5] = v6;
  type metadata accessor for XPCEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = v3;
  *(inited + 24) = v7;
  v9 = *(v1 + 16);
  sub_1C97AA878();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C99DCB5C;
  *(v10 + 24) = v3;
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = *(v9 + 24);
    sub_1C97A8E8C();
    v13 = swift_allocError();
    sub_1C99DCB8C(v13, v14);
    *(v9 + 16) = v11;
    *(v9 + 24) = v12;

LABEL_5:
  }

  sub_1C97AA878();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1C99DC9E4;
  *(v15 + 24) = v10;
  *(v9 + 16) = sub_1C98CB318;
  *(v9 + 24) = v15;
  v16 = *(v1 + 24);
  sub_1C97AA878();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1C99DCB74;
  *(v17 + 24) = v7;
  v18 = *(v16 + 16);
  if (v18)
  {
    v19 = *(v16 + 24);
    sub_1C97A8E8C();
    v20 = swift_allocError();
    sub_1C99DCB8C(v20, v21);
    *(v16 + 16) = v18;
    *(v16 + 24) = v19;

    goto LABEL_5;
  }

  sub_1C97AA878();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1C99DCA00;
  *(v23 + 24) = v17;
  *(v16 + 16) = sub_1C97A8E70;
  *(v16 + 24) = v23;
  v24 = a1[3];
  v25 = a1[4];
  sub_1C97A5A8C(a1, v24);
  v26 = *(v25 + 8);

  v26(inited, v24, v25);
  if (!v27)
  {
    swift_setDeallocating();
    sub_1C9890968();
    sub_1C97AA878();
    return swift_deallocClassInstance();
  }
}

uint64_t sub_1C99DC400@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  type metadata accessor for XPCDataEncoder();
  sub_1C97AA878();
  v11 = swift_allocObject();
  type metadata accessor for XPCProxyEncoder();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  type metadata accessor for XPCEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = v11;
  *(inited + 24) = v12;
  v14 = *(a4 + 8);

  v14(inited, a3, a4);
  if (v5)
  {
  }

  v15 = sub_1C97AA7D8();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = sub_1C98CB550();
  v25 = v23;

  swift_setDeallocating();
  sub_1C9890968();
  sub_1C97AA878();
  result = swift_deallocClassInstance();
  *a5 = v22;
  a5[1] = v25;
  a5[2] = v15;
  a5[3] = v17;
  a5[4] = v19;
  a5[5] = v21;
  return result;
}

uint64_t sub_1C99DC5E4(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t), void (*a3)(uint64_t))
{

  v7 = a1(v6);

  v9 = a2(v8);

  a3(v10);
  sub_1C97AA878();
  result = swift_allocObject();
  *(result + 16) = v7;
  *(result + 24) = v9;
  return result;
}

uint64_t sub_1C99DC674(void *a1)
{
  v2 = v1;
  type metadata accessor for XPCDataEncoder();
  sub_1C97AA878();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  v5 = *(v2 + 24);
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  type metadata accessor for XPCProxyEncoder();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = v7;
  type metadata accessor for XPCEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = v4;
  *(inited + 24) = v8;
  v10 = *(v2 + 16);
  sub_1C97AA878();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1C99DCA1C;
  *(v11 + 24) = v4;
  swift_beginAccess();

  sub_1C99DCA4C(sub_1C97E61E8);
  v12 = *(*(v10 + 16) + 16);
  sub_1C99DCAC0(v12, sub_1C97E61E8);
  v13 = *(v10 + 16);
  *(v13 + 16) = v12 + 1;
  v14 = v13 + 16 * v12;
  *(v14 + 32) = sub_1C99DCB24;
  *(v14 + 40) = v11;
  *(v10 + 16) = v13;
  swift_endAccess();

  v15 = *(v2 + 24);
  sub_1C97AA878();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1C99DCB08;
  *(v16 + 24) = v8;
  swift_beginAccess();

  sub_1C99DCA4C(sub_1C97E4EC0);
  v17 = *(*(v15 + 16) + 16);
  sub_1C99DCAC0(v17, sub_1C97E4EC0);
  v18 = *(v15 + 16);
  *(v18 + 16) = v17 + 1;
  v19 = v18 + 16 * v17;
  *(v19 + 32) = sub_1C99DCB3C;
  *(v19 + 40) = v16;
  *(v15 + 16) = v18;
  swift_endAccess();

  v20 = a1[3];
  v21 = a1[4];
  sub_1C97A5A8C(a1, v20);
  (*(v21 + 8))(inited, v20, v21);
  swift_setDeallocating();
  sub_1C9890968();
  sub_1C97AA878();
  return swift_deallocClassInstance();
}

uint64_t sub_1C99DC8F8()
{
  sub_1C9890968();
  sub_1C97AA878();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99DC928()
{
  result = sub_1C97AA7D8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1C99DCA4C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1C99DCAC0(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1C99DCB8C(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

void sub_1C99DCBAC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(v3 + 24);
  if (v5)
  {
    v9 = v5;
    v10 = [a1 frameLength];
    [*(v4 + 16) sampleRate];
    sub_1C99DCF94();
    if (!(v13 ^ v14 | v12))
    {
      __break(1u);
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    if (v11 <= -2147483650.0)
    {
      goto LABEL_8;
    }

    if (v11 >= 2147483650.0)
    {
LABEL_9:
      __break(1u);
      swift_unexpectedError();
      __break(1u);
      return;
    }

    CMTimeMake(&v26.start, v10, v11);
    v15 = *(v4 + 32);
    v16 = *(v4 + 48);
    duration.epoch = v26.start.epoch;
    start.value = v15;
    *&start.timescale = *(v4 + 40);
    start.epoch = v16;
    duration.value = v26.start.value;
    *&duration.timescale = *&v26.start.timescale;
    CMTimeRangeMake(&v26, &start, &duration);
    type metadata accessor for SNAudioFileUtils();
    v17 = *(v4 + 32);
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;

    v19 = sub_1C99C9BDC(v9, &v26, v17, v10, 0, sub_1C99DCF68, v18);
    v21 = v20;
    v23 = v22;

    *(v4 + 32) = v19;
    *(v4 + 40) = v21;
    *(v4 + 48) = v23;
  }
}

void sub_1C99DCD68(uint64_t a1, void *a2)
{
  v2[2] = a2;
  v2[3] = 0;
  v5 = a2;
  [v5 sampleRate];
  sub_1C99DCF94();
  if (!(v8 ^ v9 | v7))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 <= -2147483650.0)
  {
    goto LABEL_8;
  }

  if (v6 >= 2147483650.0)
  {
LABEL_9:
    __break(1u);
    return;
  }

  CMTimeMake(&v17, 0, v6);
  epoch = v17.epoch;
  v11 = *&v17.timescale;
  v2[4] = v17.value;
  v2[5] = v11;
  v2[6] = epoch;
  type metadata accessor for SNAudioFileUtils();
  v12 = sub_1C99C7DE8(a1, v5);
  if (v3)
  {

    sub_1C9A91558();
    sub_1C985DB38();
    (*(v13 + 8))(a1);
  }

  else
  {
    v14 = v12;
    sub_1C9A91558();
    sub_1C985DB38();
    (*(v15 + 8))(a1);

    v16 = v2[3];
    v2[3] = v14;
  }
}

uint64_t sub_1C99DCEC4()
{
  v1 = objc_autoreleasePoolPush();
  v2 = *(v0 + 24);
  *(v0 + 24) = 0;

  objc_autoreleasePoolPop(v1);
  return v0;
}

uint64_t sub_1C99DCF10()
{
  sub_1C99DCEC4();

  return swift_deallocClassInstance();
}

void *sub_1C99DCFA8()
{
  sub_1C9813910();
  v2 = v1;
  result = sub_1C9A6C178(v3);
  if (result)
  {
    v5 = result;
    v6 = sub_1C9A65F04(result, 0);

    sub_1C9A69F34(v0);
    *v2 = v0;
    v2[1] = v6;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C99DD048()
{
  sub_1C9813910();
  v1 = sub_1C9A92478();
  v2 = sub_1C9A6AEE4(v0, v1);

  return v2;
}

id sub_1C99DD0BC()
{
  sub_1C9813910();
  v1 = sub_1C9A92478();
  v2 = sub_1C9A6AEE4(v0, v1);

  return v2;
}

__n128 sub_1C99DD140()
{
  type metadata accessor for SNAudioLevelMeasurer();
  sub_1C9A1498C();
  if (!v0)
  {
    sub_1C97A2CEC(&qword_1EC3D07B8);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1C9A9EDD0;
    *(v2 + 32) = v3;
    result = v5;
    *(v2 + 48) = v4;
    *(v2 + 64) = v5;
    *(v2 + 80) = v6;
  }

  return result;
}

uint64_t sub_1C99DD1EC()
{
  sub_1C9813910();
  sub_1C97A2CEC(&unk_1EC3C6E20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C9A9DF30;
  *(v1 + 32) = v0;
  v2 = v0;
  return v1;
}

_BYTE *storeEnumTagSinglePayload for DSPGraphError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C99DD334()
{
  result = qword_1EC3D07C0[0];
  if (!qword_1EC3D07C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3D07C0);
  }

  return result;
}

uint64_t sub_1C99DD388()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C99DD434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1C99DD48C(a1, a2, a3);
  return v6;
}

uint64_t *sub_1C99DD48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  *(v3 + 2) = 0u;
  v3[6] = 0;
  *(v3 + 1) = 0u;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  swift_beginAccess();
  sub_1C9830DE8(v12, (v3 + 2));
  swift_endAccess();
  sub_1C9831528();
  (*(*(*(v7 + 96) - 8) + 32))(v3 + *(v8 + 128), a1);
  sub_1C9831528();
  v10 = (v3 + *(v9 + 136));
  *v10 = a2;
  v10[1] = a3;
  return v3;
}

uint64_t sub_1C99DD584(uint64_t a1)
{
  v2 = *v1;
  sub_1C97D9AF8(a1, v4);
  swift_beginAccess();
  sub_1C9830DE8(v4, (v1 + 2));
  swift_endAccess();
  sub_1C9831528();
  v4[3] = v2;
  v4[4] = swift_getWitnessTable();
  v4[0] = v1;

  sub_1C9A91D18();
  return sub_1C97A592C(v4);
}

uint64_t sub_1C99DD6F4(uint64_t a1)
{
  v3 = *v1;
  swift_getAssociatedConformanceWitness();
  v4 = sub_1C9A91D48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  (*(v1 + *(v3 + 136)))(a1);
  sub_1C9A91D08();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1C99DD884()
{
  result = sub_1C99DE064();
  if (*(v0 + 40))
  {
    sub_1C97D9AF8(v0 + 16, v2);
    sub_1C97A5A8C(v2, v2[3]);
    sub_1C9A91DB8();
    return sub_1C97A592C(v2);
  }

  return result;
}

uint64_t sub_1C99DD8F8()
{
  result = sub_1C99DE064();
  if (*(v0 + 40))
  {
    sub_1C97D9AF8(v0 + 16, v2);
    sub_1C97A5A8C(v2, v2[3]);
    sub_1C9A91D38();
    return sub_1C97A592C(v2);
  }

  return result;
}

char *sub_1C99DD95C()
{
  v1 = *v0;
  sub_1C9831018((v0 + 16));
  sub_1C9831528();
  (*(*(*(v1 + 96) - 8) + 8))(&v0[*(v2 + 128)]);
  sub_1C9831528();

  return v0;
}

uint64_t sub_1C99DD9F4()
{
  sub_1C99DD95C();

  return swift_deallocClassInstance();
}

unint64_t sub_1C99DDB34()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1C983DB24();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C99DDBBC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1C97ABF20(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C99DDCF8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1C97ACC50(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C99DDEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 32);
  v19 = *(v11 + 16);
  v20 = v19;
  v21 = v13;
  v22 = v12;
  v23 = v14;
  type metadata accessor for MapCompletion.Instance();
  (*(v8 + 16))(v10, a1, a3);
  v15 = (v4 + *(a2 + 52));
  v16 = *v15;
  v17 = v15[1];

  *&v20 = sub_1C99DD434(v10, v16, v17);
  swift_getWitnessTable();
  sub_1C9A91F08();
}

uint64_t sub_1C99DE064()
{

  return swift_beginAccess();
}