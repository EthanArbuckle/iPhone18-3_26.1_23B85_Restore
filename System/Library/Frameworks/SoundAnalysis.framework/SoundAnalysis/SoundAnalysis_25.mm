uint64_t sub_1C99B3C2C(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v3;
  *(v2 + 48) = a2[2];
  v4 = swift_task_alloc();
  *(v2 + 64) = v4;
  *v4 = v2;
  v4[1] = sub_1C981DF28;

  return sub_1C9A21C14();
}

uint64_t sub_1C99B3CE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97DA5D0;

  return sub_1C98188D4();
}

uint64_t sub_1C99B3D8C(_OWORD *a1)
{
  v2 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 48) = a1[2];
  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v1;
  v3[1] = sub_1C981DF28;

  return sub_1C9818AA8();
}

uint64_t sub_1C99B3E40(_OWORD *a1)
{
  v2 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 48) = a1[2];
  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v1;
  v3[1] = sub_1C981DF28;

  return sub_1C9818C60();
}

uint64_t sub_1C99B3EF4()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C99B3F84()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C99B4014()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C99B40A4()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C99B4134()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C99B41C4()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C99B4254()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C99B42E4()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C994E590();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  sub_1C99B4814(v1);
  sub_1C97DABB0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C99B4374()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C99B4404()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C994E590();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  sub_1C99B4814(v1);
  sub_1C97DABB0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C99B4494()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C99B4524()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C994E590();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  sub_1C99B4814(v1);
  sub_1C97DABB0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1C99B45B4()
{
  result = qword_1EC3CF510;
  if (!qword_1EC3CF510)
  {
    sub_1C97AA4F0(&qword_1EC3CF508);
    sub_1C99B4640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF510);
  }

  return result;
}

unint64_t sub_1C99B4640()
{
  result = qword_1EC3CF518;
  if (!qword_1EC3CF518)
  {
    sub_1C97AA4F0(&qword_1EC3CF520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF518);
  }

  return result;
}

uint64_t sub_1C99B46BC()
{
  sub_1C97DA934();
  v2 = v1;
  v3 = (*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80);
  v4 = *(v0 + ((*(*(*(v0 + 16) - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  v6 = sub_1C981E178(v5);
  *v6 = v7;
  v6[1] = sub_1C97DA5D0;

  return sub_1C99B27A0(v2, v0 + v3, v4);
}

uint64_t sub_1C99B47C8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t static SNUserDefaults.overrideXSupportEnabled(userDefaultsSnapshot:)(uint64_t a1)
{
  v2 = a1;
  if (!a1)
  {
    if (qword_1EC3C5BA8 != -1)
    {
      sub_1C9871844();
    }

    v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
    sub_1C9A92328();
  }

  sub_1C99B66D0();
  sub_1C99B6650(16);
  sub_1C99B590C();
  if (v1)
  {

    return 2;
  }

  else
  {
    sub_1C99B6698();
    sub_1C99B66B4();
    if (v2)
    {
      return 2;
    }

    else
    {
      return v4;
    }
  }
}

double sub_1C99B496C()
{
  if (qword_1EC3C5BA8 != -1)
  {
    sub_1C9871844();
  }

  v2 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  sub_1C99B6660(37);
  sub_1C99B5A00();
  if (v0)
  {

    return 5.0;
  }

  else
  {
    sub_1C99B6704();
    result = *&v2;
    if (v1)
    {
      return 5.0;
    }
  }

  return result;
}

double sub_1C99B4A4C()
{
  if (qword_1EC3C5BA8 != -1)
  {
    sub_1C9871844();
  }

  v2 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  sub_1C99B6660(31);
  sub_1C99B5A00();
  if (v0)
  {

    return 0.0;
  }

  else
  {
    sub_1C99B6704();
    result = *&v2;
    if (v1)
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t static SNUserDefaults.bypassMovieRemixMusicDetection(userDefaultsSnapshot:)(uint64_t a1)
{
  v2 = a1;
  if (!a1)
  {
    if (qword_1EC3C5BA8 != -1)
    {
      sub_1C9871844();
    }

    v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
    sub_1C9A92328();
  }

  sub_1C99B66D0();
  sub_1C99B6650(30);
  sub_1C99B590C();
  if (v1)
  {

    return 0;
  }

  else
  {
    sub_1C99B6698();
    sub_1C99B66B4();
    return v4 & ~v2;
  }
}

uint64_t sub_1C99B4C14()
{
  if (qword_1EC3C5BA8 != -1)
  {
    sub_1C9871844();
  }

  v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  sub_1C99B6660(18);
  sub_1C99B590C();
  if (v0)
  {

    return 0;
  }

  else
  {
    v4 = v2;

    sub_1C99B66B4();
    return v5 & ~v4;
  }
}

uint64_t sub_1C99B4CF8()
{
  if (qword_1EC3C5BA8 != -1)
  {
    sub_1C9871844();
  }

  v0 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  sub_1C99B5C7C();
  sub_1C99B5AFC();
  v2 = v1;

  if (v2)
  {
  }

  return sub_1C97BE374();
}

uint64_t static SNUserDefaults.ambientMusicDetectionShortThresholdHigh(userDefaultsSnapshot:)(uint64_t a1)
{
  v2 = a1;
  if (!a1)
  {
    if (qword_1EC3C5BA8 != -1)
    {
      sub_1C9871844();
    }

    v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
    sub_1C9A92328();
  }

  sub_1C99B66D0();
  sub_1C99B6650(39);
  sub_1C99B5A00();
  if (v1)
  {

    return 0;
  }

  else
  {
    sub_1C99B6744();
  }

  return v2;
}

uint64_t static SNUserDefaults.ambientMusicDetectionLongThresholdHigh(userDefaultsSnapshot:)(uint64_t a1)
{
  v2 = a1;
  if (!a1)
  {
    if (qword_1EC3C5BA8 != -1)
    {
      sub_1C9871844();
    }

    v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
    sub_1C9A92328();
  }

  sub_1C99B66D0();
  sub_1C99B6650(38);
  sub_1C99B5A00();
  if (v1)
  {

    return 0;
  }

  else
  {
    sub_1C99B6744();
  }

  return v2;
}

uint64_t static SNUserDefaults.ambientMusicDetectionThresholdLow(userDefaultsSnapshot:)(uint64_t a1)
{
  v2 = a1;
  if (!a1)
  {
    if (qword_1EC3C5BA8 != -1)
    {
      sub_1C9871844();
    }

    v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
    sub_1C9A92328();
  }

  sub_1C99B66D0();
  sub_1C99B6650(33);
  sub_1C99B5A00();
  if (v1)
  {

    return 0;
  }

  else
  {
    sub_1C99B6744();
  }

  return v2;
}

uint64_t static SNUserDefaults.isHomeSoundRecognitionOptimizationEnabled(userDefaultsSnapshot:)(uint64_t a1)
{
  v2 = a1;
  if (!a1)
  {
    if (qword_1EC3C5BA8 != -1)
    {
      sub_1C9871844();
    }

    v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
    sub_1C9A92328();
  }

  sub_1C99B66D0();
  sub_1C99B6650(38);
  sub_1C99B590C();
  if (v1)
  {

    return 0;
  }

  else
  {
    sub_1C99B6698();
    sub_1C99B66B4();
    return v4 & ~v2;
  }
}

id sub_1C99B51EC()
{
  v0 = sub_1C9A924A8();
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x1E695E000]);
  result = sub_1C99B65EC(v0, v2);
  if (result)
  {
    qword_1EC3C5BB0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static SNUserDefaults.singleton.getter()
{
  if (qword_1EC3C5BA8 != -1)
  {
    sub_1C9871844();
  }

  v1 = qword_1EC3C5BB0;

  return v1;
}

id sub_1C99B529C(uint64_t a1)
{
  sub_1C97BD360(a1, v15);
  if (sub_1C99B6678())
  {
    return v14;
  }

  sub_1C97BD360(a1, v15);
  sub_1C97BD318(0, &qword_1EC3C54B0);
  if (sub_1C99B6678())
  {
    v4 = [v14 stringValue];
    v3 = sub_1C9A924A8();
  }

  else
  {
    type metadata accessor for SNError();
    sub_1C99B6720();
    sub_1C99B66C0();
    MEMORY[0x1CCA90230](v5 + 10, v6 | 0x8000000000000000);
    sub_1C9A93728();
    v7 = v15[1];
    v8 = sub_1C97FB260();
    v3 = v1;
    sub_1C9929478(v8, v9, v10, v11, v12, v7);

    swift_willThrow();
  }

  return v3;
}

id sub_1C99B53F4(uint64_t a1)
{
  sub_1C97BD360(a1, v15);
  if (sub_1C99B6678())
  {
    v3 = sub_1C98445B8(v13, v14);
  }

  else
  {
    sub_1C97BD360(a1, v15);
    sub_1C97BD318(0, &qword_1EC3C54B0);
    if (sub_1C99B6678())
    {
      return v13;
    }

    else
    {
      type metadata accessor for SNError();
      sub_1C99B6720();
      sub_1C99B66C0();
      MEMORY[0x1CCA90230](v4 + 10, v5 | 0x8000000000000000);
      sub_1C9A93728();
      v6 = v15[1];
      v7 = sub_1C97FB260();
      v3 = v1;
      sub_1C9929478(v7, v8, v9, v10, v11, v6);

      swift_willThrow();
    }
  }

  return v3;
}

void sub_1C99B5530(uint64_t a1)
{
  sub_1C97BD360(a1, &v40);
  sub_1C97A2CEC(&unk_1EC3C8690);
  if (swift_dynamicCast())
  {
    v2 = v38;
    v3 = *(v38 + 16);
    if (v3)
    {
      v39 = MEMORY[0x1E69E7CC0];
      sub_1C97B7C28();
      v4 = 0;
      v5 = v39;
      v6 = v38 + 32;
      while (v4 < *(v2 + 16))
      {
        sub_1C97BD360(v6, &v40);
        v7 = sub_1C99B53F4(&v40);
        if (v1)
        {
          sub_1C97A592C(&v40);

          return;
        }

        v8 = v7;
        v37 = v5;
        v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        v10 = [v8 longLongValue];
        if (v10 != [v9 longLongValue] || (objc_msgSend(v8, sel_doubleValue), v12 = v11, objc_msgSend(v9, sel_doubleValue), v12 != v13))
        {

LABEL_17:

          type metadata accessor for SNError();
          sub_1C9A935B8();

          v28 = [v8 description];
          v29 = sub_1C9A924A8();
          v31 = v30;

          MEMORY[0x1CCA90230](v29, v31);

          v32 = sub_1C97FB260();
          sub_1C9929478(v32, v33, v34, v35, v36, 0x80000001C9ADC0F0);

          swift_willThrow();

          sub_1C97A592C(&v40);

          return;
        }

        v14 = [v8 isEqual_];

        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v2;
        v16 = v3;
        v17 = [v8 integerValue];

        sub_1C97A592C(&v40);
        v5 = v37;
        v18 = *(v37 + 16);
        if (v18 >= *(v37 + 24) >> 1)
        {
          sub_1C97B7C28();
          v5 = v37;
        }

        ++v4;
        *(v5 + 16) = v18 + 1;
        *(v5 + 8 * v18 + 32) = v17;
        v6 += 32;
        v3 = v16;
        v19 = v16 == v4;
        v2 = v15;
        if (v19)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:
    }
  }

  else
  {
    type metadata accessor for SNError();
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1C9A935B8();
    sub_1C99B66C0();
    MEMORY[0x1CCA90230](v20 | 8, v21 | 0x8000000000000000);
    sub_1C9A93728();
    v22 = v41;
    v23 = sub_1C97FB260();
    sub_1C9929478(v23, v24, v25, v26, v27, v22);

    swift_willThrow();
  }
}

id sub_1C99B590C()
{
  sub_1C99B676C();
  if (v5 && (v0 = v4, v6 = sub_1C9A32230(v2, v3), (v7 & 1) != 0))
  {
    sub_1C99B66E8(v6, v7, v8, v9, v10, v11, v12, v13, *&v26[0]);
  }

  else
  {
    memset(v29, 0, sizeof(v29));
  }

  sub_1C97A2C7C(v29, &v27);
  if (v28)
  {
    v14 = sub_1C97A2D34(&v27, v26);
    v22 = sub_1C99B6760(v14, v15, v16, v17, v18, v19, v20, v21, *&v26[0]);
    v23 = sub_1C99B53F4(v22);
    if (!v1)
    {
      v24 = v23;
      sub_1C999C710();
      v0 = [v24 integerValue];
    }

    sub_1C97A592C(v26);
    sub_1C97A59D0(v29);
  }

  else
  {
    sub_1C97A59D0(v29);
    return 0;
  }

  return v0;
}

uint64_t sub_1C99B5A00()
{
  sub_1C99B676C();
  if (v3 && (v4 = sub_1C9A32230(v1, v2), (v5 & 1) != 0))
  {
    sub_1C99B66E8(v4, v5, v6, v7, v8, v9, v10, v11, *&v26[0]);
  }

  else
  {
    memset(v29, 0, sizeof(v29));
  }

  sub_1C97A2C7C(v29, &v27);
  if (v28)
  {
    v12 = sub_1C97A2D34(&v27, v26);
    v20 = sub_1C99B6760(v12, v13, v14, v15, v16, v17, v18, v19, *&v26[0]);
    v21 = sub_1C99B53F4(v20);
    if (v0)
    {
      sub_1C97A592C(v26);
      return sub_1C97A59D0(v29);
    }

    else
    {
      v22 = v21;
      sub_1C999C604();
      [v22 doubleValue];
      v24 = v23;

      sub_1C97A592C(v26);
      sub_1C97A59D0(v29);
      return v24;
    }
  }

  else
  {
    sub_1C97A59D0(v29);
    return 0;
  }
}

id sub_1C99B5AFC()
{
  sub_1C99B676C();
  if (v5 && (v0 = v4, v6 = sub_1C9A32230(v2, v3), (v7 & 1) != 0))
  {
    sub_1C99B66E8(v6, v7, v8, v9, v10, v11, v12, v13, *&v25[0]);
  }

  else
  {
    memset(v28, 0, sizeof(v28));
  }

  sub_1C97A2C7C(v28, &v26);
  if (v27)
  {
    v14 = sub_1C97A2D34(&v26, v25);
    v22 = sub_1C99B6760(v14, v15, v16, v17, v18, v19, v20, v21, *&v25[0]);
    v23 = sub_1C99B529C(v22);
    if (!v1)
    {
      v0 = v23;
    }

    sub_1C97A592C(v25);
    sub_1C97A59D0(v28);
  }

  else
  {
    sub_1C97A59D0(v28);
    return 0;
  }

  return v0;
}

uint64_t sub_1C99B5BC8()
{
  sub_1C99B676C();
  if (v4 && (v5 = v3, v6 = sub_1C9A32230(v1, v2), (v7 & 1) != 0))
  {
    sub_1C97BD360(*(v5 + 56) + 32 * v6, v24);
  }

  else
  {
    memset(v24, 0, sizeof(v24));
  }

  sub_1C97A2C7C(v24, &v22);
  if (v23)
  {
    v8 = sub_1C97A2D34(&v22, v21);
    v16 = sub_1C99B6760(v8, v9, v10, v11, v12, v13, v14, v15, *&v21[0]);
    sub_1C99B5530(v16);
    v18 = v17;
    sub_1C97A592C(v21);
    sub_1C97A59D0(v24);
    if (v0)
    {
      return v19;
    }

    else
    {
      return v18;
    }
  }

  else
  {
    sub_1C97A59D0(v24);
    return 0;
  }
}

uint64_t sub_1C99B5C7C()
{
  sub_1C97A2CEC(&qword_1EC3C6CA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C9AA95C0;
  v1 = NSHomeDirectory();
  v2 = sub_1C9A924A8();
  v4 = v3;

  *(v0 + 32) = v2;
  *(v0 + 40) = v4;
  *(v0 + 48) = 0x7972617262694CLL;
  *(v0 + 56) = 0xE700000000000000;
  *(v0 + 64) = 0x736568636143;
  *(v0 + 72) = 0xE600000000000000;
  *(v0 + 80) = 0xD000000000000018;
  *(v0 + 88) = 0x80000001C9AD6F00;
  strcpy((v0 + 96), "AudioCaptures");
  *(v0 + 110) = -4864;
  v5 = objc_opt_self();
  v6 = sub_1C9A92768();

  v7 = [v5 pathWithComponents_];

  v8 = sub_1C9A924A8();
  return v8;
}

uint64_t sub_1C99B5DCC()
{
  if (qword_1EC3C5BA8 != -1)
  {
    sub_1C9871844();
  }

  v0 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  sub_1C99B5C7C();
  sub_1C99B5AFC();
  v2 = v1;

  if (v2)
  {
  }

  return sub_1C97BE374();
}

uint64_t sub_1C99B5ED8()
{
  if (qword_1EC3C5BA8 != -1)
  {
    sub_1C9871844();
  }

  v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  sub_1C99B6660(35);
  sub_1C99B590C();
  if (v0)
  {

    return 0;
  }

  else
  {
    v4 = v2;

    sub_1C99B66B4();
    return v5 & ~v4;
  }
}

uint64_t sub_1C99B5FBC()
{
  sub_1C99B5AFC();
  if (!v1)
  {
    return 0;
  }

  sub_1C97BD318(0, &qword_1EC3CF530);
  sub_1C97BE374();
  v0 = sub_1C9A92F28();

  return v0;
}

id sub_1C99B606C()
{
  if (qword_1EC3C5BA8 != -1)
  {
    sub_1C9871844();
  }

  v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  sub_1C99B6660(43);
  sub_1C99B590C();
  if (v0)
  {

    return 0;
  }

  else
  {
    sub_1C99B6704();
  }

  return v1;
}

uint64_t sub_1C99B61AC(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1EC3C5BA8 != -1)
    {
      sub_1C9871844();
    }

    v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
    sub_1C9A92328();
  }

  sub_1C97BE374();
  v2 = sub_1C99B590C();
  v4 = v3;

  return (v2 != 0) & ~v4;
}

uint64_t static SNUserDefaults.homeSoundRecognitionUltronReportsEnabled(userDefaultsSnapshot:)(uint64_t a1)
{
  v2 = a1;
  if (!a1)
  {
    if (qword_1EC3C5BA8 != -1)
    {
      sub_1C9871844();
    }

    v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
    sub_1C9A92328();
  }

  sub_1C99B66D0();
  sub_1C99B6650(39);
  sub_1C99B590C();
  if (v1)
  {

    return 0;
  }

  else
  {
    sub_1C99B6698();
    sub_1C99B66B4();
    return v4 & ~v2;
  }
}

uint64_t static SNUserDefaults.isLPPostProcessingBypassed(userDefaultsSnapshot:)(uint64_t a1)
{
  v2 = a1;
  if (!a1)
  {
    if (qword_1EC3C5BA8 != -1)
    {
      sub_1C9871844();
    }

    v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
    sub_1C9A92328();
  }

  sub_1C99B66D0();
  sub_1C99B6650(22);
  sub_1C99B590C();
  if (v1)
  {

    return 0;
  }

  else
  {
    sub_1C99B6698();
    sub_1C99B66B4();
    return v4 & ~v2;
  }
}

_BYTE *storeEnumTagSinglePayload for SNUserDefaults(_BYTE *result, int a2, int a3)
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

id sub_1C99B65EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1C9A92478();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_1C99B6678()
{

  return swift_dynamicCast();
}

uint64_t sub_1C99B6698()
{
}

uint64_t sub_1C99B66D0()
{
}

uint64_t sub_1C99B66E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v11 = *(v9 + 56) + 32 * a1;

  return sub_1C97BD360(v11, va);
}

uint64_t sub_1C99B6704()
{
}

uint64_t sub_1C99B6720()
{

  return sub_1C9A935B8();
}

uint64_t sub_1C99B6744()
{
}

char *sub_1C99B6778(uint64_t a1)
{
  v2 = sub_1C9A91418();
  v4 = sub_1C99B681C(v2, v3);

  if (v4 != 3)
  {
    return sub_1C99B6910(a1, v4);
  }

  sub_1C97A8E8C();
  swift_allocError();
  *v5 = 0;
  return swift_willThrow();
}

uint64_t sub_1C99B681C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  while (1)
  {
    v5 = byte_1F4929DC8[v4 + 32];
    if (byte_1F4929DC8[v4 + 32])
    {
      v6 = v5 == 1 ? 0x636C65646F6D6C6DLL : 0x656C646E7562;
      v7 = v5 == 1 ? 0xE800000000000000 : 0xE600000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
      v6 = 0x6C65646F6D6C6DLL;
    }

    if (v6 == a1 && v7 == a2)
    {
      break;
    }

    v9 = sub_1C9A93B18();

    if (v9)
    {
      return v5;
    }

    if (++v4 == 3)
    {
      return 3;
    }
  }

  return v5;
}

char *sub_1C99B6910(uint64_t a1, char a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1C9A91558();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v31 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v31 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v31 - v16;
  if (a2)
  {
    if (a2 == 1)
    {
      v15 = sub_1C99B6CF0();
      (*(v6 + 16))(v12, a1, v5);
      v18 = sub_1C99B6D34(v12);
      if (!v2)
      {
        return v18;
      }
    }

    else
    {
      v25 = sub_1C9880658();
      if (!v2)
      {
        v26 = v25;
        type metadata accessor for E5RTExecutionStream();
        swift_allocObject();
        v15 = sub_1C9880798(v26);
        type metadata accessor for E5RTExecutionStreamOperation();
        sub_1C9A913F8();
        sub_1C9A91508();
        (*(v6 + 8))(v9, v5);
        sub_1C98817E8();
        v29 = v28;

        sub_1C9882AF4(v29);
        sub_1C9880DE8();
      }
    }
  }

  else
  {
    v19 = objc_opt_self();
    v20 = sub_1C9A91488();
    v31[0] = 0;
    v21 = [v19 compileModelAtURL:v20 error:v31];

    v22 = v31[0];
    if (v21)
    {
      sub_1C9A914F8();
      v23 = v22;

      sub_1C99B6CF0();
      (*(v6 + 16))(v15, v17, v5);
      v24 = sub_1C99B6D34(v15);
      if (!v2)
      {
        v15 = v24;
      }

      (*(v6 + 8))(v17, v5);
    }

    else
    {
      v27 = v31[0];
      sub_1C9A913C8();

      swift_willThrow();
    }
  }

  return v15;
}

unint64_t sub_1C99B6CF0()
{
  result = qword_1EC3C54C0;
  if (!qword_1EC3C54C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C54C0);
  }

  return result;
}

id sub_1C99B6D34(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1C9A91488();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_1C9A91558();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_1C9A913C8();

    swift_willThrow();
    v9 = sub_1C9A91558();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

BOOL sub_1C99B6E8C(uint64_t a1, uint64_t a2)
{
  result = 0;
  v5 = *(a1 + 8) == *(a2 + 8) && *a1 == *a2;
  v6 = vminv_u16(vmovn_s32(vceqq_s32(*(a1 + 28), *(a2 + 28)))) & (*(a1 + 4) == *(a2 + 4));
  if (*(a1 + 16) != *(a2 + 16))
  {
    LOBYTE(v6) = 0;
  }

  if (*(a1 + 44) != *(a2 + 44))
  {
    LOBYTE(v6) = 0;
  }

  v7 = v6 & (v5 && *(a1 + 12) == *(a2 + 12));
  if (*(a1 + 20) != *(a2 + 20))
  {
    v7 = 0;
  }

  if (v7 == 1 && ((*(a1 + 24) ^ *(a2 + 24)) & 1) == 0)
  {
    return *(a1 + 48) == *(a2 + 48);
  }

  return result;
}

uint64_t sub_1C99B6F48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6152656C706D6173 && a2 == 0xEA00000000006574;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x61426C654D6D756ELL && a2 == 0xEB0000000073646ELL;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x75716572466E696DLL && a2 == 0xEC00000079636E65;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x757165724678616DLL && a2 == 0xEC00000079636E65;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x657079546C656DLL && a2 == 0xE700000000000000;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6C69737045676F6CLL && a2 == 0xEA00000000006E6FLL;
            if (v10 || (sub_1C9A93B18() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C6F707265746E69 && a2 == 0xEF7A486E49657461;
              if (v11 || (sub_1C9A93B18() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x74676E654C706F68 && a2 == 0xE900000000000068;
                if (v12 || (sub_1C9A93B18() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x654C776F646E6977 && a2 == 0xEC0000006874676ELL;
                  if (v13 || (sub_1C9A93B18() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x664F776F646E6977 && a2 == 0xEC00000074657366;
                    if (v14 || (sub_1C9A93B18() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x74676E654C746666 && a2 == 0xE900000000000068;
                      if (v15 || (sub_1C9A93B18() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x657366664F746666 && a2 == 0xE900000000000074;
                        if (v16 || (sub_1C9A93B18() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000015 && 0x80000001C9ADCA80 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1C9A93B18();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C99B7354(char a1)
{
  result = 0x6152656C706D6173;
  switch(a1)
  {
    case 1:
      return 0x61426C654D6D756ELL;
    case 2:
      v3 = 1181641069;
      return v3 | 0x7571657200000000;
    case 3:
      v3 = 1182294381;
      return v3 | 0x7571657200000000;
    case 4:
      return 0x657079546C656DLL;
    case 5:
      return 0x6C69737045676F6CLL;
    case 6:
      return 0x6C6F707265746E69;
    case 7:
      v4 = 1282436968;
      goto LABEL_14;
    case 8:
      return 0x654C776F646E6977;
    case 9:
      return 0x664F776F646E6977;
    case 10:
      v4 = 1282696806;
LABEL_14:
      result = v4 | 0x74676E6500000000;
      break;
    case 11:
      result = 0x657366664F746666;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C99B74D4(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3CF570);
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - v7;
  v9 = *(v1 + 4);
  v19 = *(v1 + 16);
  v20 = v9;
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v18[6] = *(v1 + 28);
  v18[7] = v10;
  LODWORD(v7) = *(v1 + 40);
  v18[4] = *(v1 + 36);
  v18[5] = v11;
  v18[3] = v7;
  v12 = *(v1 + 48);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99B7FB4();
  sub_1C9A93DD8();
  LOBYTE(v23) = 0;
  v13 = v21;
  sub_1C9A939F8();
  if (!v13)
  {
    v14 = v19;
    LODWORD(v21) = v12;
    sub_1C99B840C(1);
    sub_1C99B83F0();
    sub_1C9A93A58();
    LOBYTE(v23) = 2;
    sub_1C99B8400();
    sub_1C9A939F8();
    LOBYTE(v23) = 3;
    sub_1C99B8400();
    sub_1C9A939F8();
    v23 = v14;
    v22 = 4;
    sub_1C97A2CEC(&qword_1EC3CF550);
    sub_1C97FB178();
    sub_1C99B8064(v16);
    sub_1C99B8400();
    sub_1C9A93A18();
    LOBYTE(v23) = 5;
    sub_1C99B8400();
    sub_1C9A939F8();
    sub_1C99B840C(6);
    sub_1C99B83F0();
    sub_1C9A939D8();
    sub_1C99B840C(7);
    sub_1C99B83F0();
    sub_1C9A93A58();
    sub_1C99B840C(8);
    sub_1C99B83F0();
    sub_1C9A93A58();
    sub_1C99B840C(9);
    sub_1C99B83F0();
    sub_1C9A93A58();
    sub_1C99B840C(10);
    sub_1C99B8400();
    sub_1C9A93A58();
    sub_1C99B840C(11);
    sub_1C9A93A28();
    v23 = v21;
    v22 = 12;
    sub_1C97A2CEC(&qword_1EC3CF560);
    sub_1C97FB178();
    sub_1C99B8008(v17);
    sub_1C9A93A18();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C99B7894()
{
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CE8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  return sub_1C9A93CF8();
}

uint64_t sub_1C99B7998()
{
  sub_1C9A93CC8();
  sub_1C99B7894();
  return sub_1C9A93D18();
}

uint64_t sub_1C99B79D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CF540);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99B7FB4();
  sub_1C9A93DB8();
  if (!v2)
  {
    LOBYTE(v36) = 0;
    sub_1C9A938D8();
    v12 = v11;
    sub_1C99B83D8(1);
    v13 = sub_1C9A93938();
    sub_1C99B83D8(2);
    sub_1C9A938D8();
    v15 = v14;
    sub_1C99B83D8(3);
    sub_1C9A938D8();
    v17 = v16;
    sub_1C97A2CEC(&qword_1EC3CF550);
    v35 = 4;
    sub_1C97FB160();
    sub_1C99B8064(v18);
    sub_1C99B8418();
    v19 = v36;
    sub_1C99B83D8(5);
    sub_1C9A938D8();
    v21 = v20;
    sub_1C99B83D8(6);
    v34 = sub_1C9A938B8();
    sub_1C99B83D8(7);
    v33 = sub_1C9A93938();
    sub_1C99B83D8(8);
    v32 = sub_1C9A93938();
    sub_1C99B83D8(9);
    v31 = sub_1C9A93938();
    sub_1C99B83D8(10);
    v30 = sub_1C9A93938();
    sub_1C99B83D8(11);
    v29 = sub_1C9A93908();
    sub_1C97A2CEC(&qword_1EC3CF560);
    v35 = 12;
    sub_1C97FB160();
    sub_1C99B8008(v23);
    sub_1C99B8418();
    (*(v7 + 8))(v10, v5);
    v24 = v34 & 1;
    v25 = v36;
    *a2 = v12;
    *(a2 + 4) = v13;
    *(a2 + 8) = v15;
    *(a2 + 12) = v17;
    *(a2 + 16) = v19;
    *(a2 + 20) = v21;
    *(a2 + 24) = v24;
    v26 = v32;
    *(a2 + 28) = v33;
    *(a2 + 32) = v26;
    v27 = v30;
    *(a2 + 36) = v31;
    *(a2 + 40) = v27;
    *(a2 + 44) = v29;
    *(a2 + 48) = v25;
  }

  return sub_1C97A592C(a1);
}

uint64_t sub_1C99B7D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99B6F48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99B7D3C(uint64_t a1)
{
  v2 = sub_1C99B7FB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99B7D78(uint64_t a1)
{
  v2 = sub_1C99B7FB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99B7DBC()
{
  sub_1C9A93CC8();
  sub_1C99B7894();
  return sub_1C9A93D18();
}

uint64_t sub_1C99B7E2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  v3 = sub_1C9A6936C(v6);
  if (v3)
  {
    *(v1 + 16) = v3;
  }

  else
  {
    sub_1C97E791C();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v1;
}

uint64_t sub_1C99B7EF0()
{
  sub_1C9A693E4(*(v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_1C99B7F60()
{
  result = qword_1EC3CF538;
  if (!qword_1EC3CF538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF538);
  }

  return result;
}

unint64_t sub_1C99B7FB4()
{
  result = qword_1EC3CF548;
  if (!qword_1EC3CF548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF548);
  }

  return result;
}

uint64_t sub_1C99B8008(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3CF560);
    result = sub_1C97FB3F0();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C99B8064(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3CF550);
    result = sub_1C97FB3F0();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LogMelParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LogMelSpectrogramUtilsError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C99B827C()
{
  result = qword_1EC3CF588;
  if (!qword_1EC3CF588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF588);
  }

  return result;
}

unint64_t sub_1C99B82D4()
{
  result = qword_1EC3CF590;
  if (!qword_1EC3CF590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF590);
  }

  return result;
}

unint64_t sub_1C99B832C()
{
  result = qword_1EC3CF598;
  if (!qword_1EC3CF598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF598);
  }

  return result;
}

unint64_t sub_1C99B8384()
{
  result = qword_1EC3CF5A0;
  if (!qword_1EC3CF5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF5A0);
  }

  return result;
}

uint64_t sub_1C99B8418()
{

  return sub_1C9A938F8();
}

void sub_1C99B8448()
{
  sub_1C97AEB94();
  v35 = v0;
  v48 = v1;
  v43 = v2;
  v4 = v3;
  v42 = sub_1C9A91408();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C9A91558();
  sub_1C97AE9C8();
  v11 = v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v40 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v39 = &v34 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - v17;
  v19 = sub_1C97BDEE0(v4);
  v20 = 0;
  v46 = v4 & 0xC000000000000001;
  v47 = v19;
  v44 = v4 & 0xFFFFFFFFFFFFFF8;
  v45 = v4;
  v38 = *MEMORY[0x1E6968F70];
  v36 = (v6 + 8);
  v37 = (v6 + 104);
  v34 = v11;
  v21 = (v11 + 8);
  while (1)
  {
    if (v47 == v20)
    {

LABEL_13:
      sub_1C97AEB5C();
      return;
    }

    if (v46)
    {
      v22 = MEMORY[0x1CCA912B0](v20, v45);
    }

    else
    {
      if (v20 >= *(v44 + 16))
      {
        goto LABEL_15;
      }

      v22 = *(v45 + 8 * v20 + 32);
    }

    if (__OFADD__(v20, 1))
    {
      break;
    }

    v51 = v22;
    v23 = [v22 resourceURL];
    if (!v23)
    {
      goto LABEL_16;
    }

    v24 = v23;
    v25 = v39;
    sub_1C9A914F8();

    v26 = v42;
    v49 = v43;
    v50 = v48;
    v27 = v41;
    (*v37)(v41, v38, v42);
    sub_1C98449A8();
    sub_1C9A91538();
    (*v36)(v27, v26);
    v28 = *v21;
    (*v21)(v25, v9);
    v29 = [objc_opt_self() defaultManager];
    v30 = v40;
    sub_1C9A913F8();
    sub_1C9A91518();
    v28(v30, v9);
    v31 = sub_1C9A92478();

    v32 = [v29 fileExistsAtPath_];

    if (v32)
    {
      v33 = v35;
      sub_1C9927650(v35);
      (*(v34 + 32))(v33, v18, v9);
      sub_1C97ACC50(v33, 0, 1, v9);

      goto LABEL_13;
    }

    v28(v18, v9);

    ++v20;
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1C99B8818()
{
  sub_1C97AEB94();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v15 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1C9A93258();
  sub_1C97AE9C8();
  v12 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C98021C4();
  (*(v3 + 16))(v7, v5, v3);
  if (!v0)
  {
    if (sub_1C97ABF20(v1, 1, AssociatedTypeWitness) == 1)
    {
      (*(v12 + 8))(v1, v10);
      sub_1C98C9D48();
      swift_allocError();
      *v14 = v7;
      swift_willThrow();
    }

    else
    {
      (*(*(AssociatedTypeWitness - 8) + 32))(v15, v1, AssociatedTypeWitness);
    }
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C99B89AC()
{
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v2 = byte_1F4929E90[v0 + 32];
    v3 = sub_1C99BF4B4(v2);
    if (v4)
    {
      v5 = v3;
      v6 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C97E5800();
        v1 = v9;
      }

      v7 = *(v1 + 16);
      if (v7 >= *(v1 + 24) >> 1)
      {
        sub_1C97E5800();
        v1 = v10;
      }

      *(v1 + 16) = v7 + 1;
      v8 = v1 + 24 * v7;
      *(v8 + 32) = v2;
      *(v8 + 40) = v5;
      *(v8 + 48) = v6;
    }

    ++v0;
  }

  while (v0 != 44);

  return sub_1C992C2A8(v1);
}

void sub_1C99B8AAC(char a1)
{
  sub_1C99BF4B4(a1);
  v2 = v1;
  sub_1C97A2CEC(&unk_1EC3C6E20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9DF30;
  type metadata accessor for SoundAnalysisBundleMarker();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(inited + 32) = [objc_opt_self() bundleForClass_];
  sub_1C99BF8D0();
  if (sub_1C99B8C4C())
  {
    MEMORY[0x1CCA90400]();
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C9A92808();
    }

    sub_1C9A92868();
  }

  v5 = sub_1C9A91558();
  sub_1C99C2D68(v5);
  if (v2)
  {

    sub_1C99B8448();
    v7 = v6;

    swift_bridgeObjectRelease_n();
  }

  else
  {
  }
}

id sub_1C99B8C4C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1C9A92478();

  v2 = [v0 initWithPath_];

  return v2;
}

uint64_t sub_1C99B8CC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x80000001C9ADD210 == a2;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x80000001C9ADD230 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001C9ADD250 == a2;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001C9ADD270 == a2;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001ALL && 0x80000001C9ADD290 == a2;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001C9ADD2B0 == a2;
            if (v10 || (sub_1C9A93B18() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x80000001C9ADD2D0 == a2;
              if (v11 || (sub_1C9A93B18() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000013 && 0x80000001C9ADD2F0 == a2;
                if (v12 || (sub_1C9A93B18() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000013 && 0x80000001C9ADD310 == a2;
                  if (v13 || (sub_1C9A93B18() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000011 && 0x80000001C9ADD330 == a2;
                    if (v14 || (sub_1C9A93B18() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000014 && 0x80000001C9ADD350 == a2;
                      if (v15 || (sub_1C9A93B18() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000013 && 0x80000001C9ADD370 == a2;
                        if (v16 || (sub_1C9A93B18() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000014 && 0x80000001C9ADD390 == a2;
                          if (v17 || (sub_1C9A93B18() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000015 && 0x80000001C9ADD3B0 == a2;
                            if (v18 || (sub_1C9A93B18() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000015 && 0x80000001C9ADD3D0 == a2;
                              if (v19 || (sub_1C9A93B18() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000019 && 0x80000001C9ADD3F0 == a2;
                                if (v20 || (sub_1C9A93B18() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD00000000000001BLL && 0x80000001C9ADD410 == a2;
                                  if (v21 || (sub_1C9A93B18() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000011 && 0x80000001C9ADD430 == a2;
                                    if (v22 || (sub_1C9A93B18() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000016 && 0x80000001C9ADD450 == a2;
                                      if (v23 || (sub_1C9A93B18() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000018 && 0x80000001C9ADD470 == a2;
                                        if (v24 || (sub_1C9A93B18() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000010 && 0x80000001C9ADD490 == a2;
                                          if (v25 || (sub_1C9A93B18() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000015 && 0x80000001C9ADD4B0 == a2;
                                            if (v26 || (sub_1C9A93B18() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD00000000000001CLL && 0x80000001C9ADD4D0 == a2;
                                              if (v27 || (sub_1C9A93B18() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD00000000000001ALL && 0x80000001C9ADD4F0 == a2;
                                                if (v28 || (sub_1C9A93B18() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD00000000000001CLL && 0x80000001C9ADD510 == a2;
                                                  if (v29 || (sub_1C9A93B18() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD00000000000001CLL && 0x80000001C9ADD530 == a2;
                                                    if (v30 || (sub_1C9A93B18() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000019 && 0x80000001C9ADD550 == a2;
                                                      if (v31 || (sub_1C9A93B18() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD00000000000001ALL && 0x80000001C9ADD570 == a2;
                                                        if (v32 || (sub_1C9A93B18() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD000000000000021 && 0x80000001C9ADD590 == a2;
                                                          if (v33 || (sub_1C9A93B18() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000021 && 0x80000001C9ADD5C0 == a2;
                                                            if (v34 || (sub_1C9A93B18() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD00000000000001FLL && 0x80000001C9ADD5F0 == a2;
                                                              if (v35 || (sub_1C9A93B18() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD000000000000023 && 0x80000001C9ADD610 == a2;
                                                                if (v36 || (sub_1C9A93B18() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD000000000000029 && 0x80000001C9ADD640 == a2;
                                                                  if (v37 || (sub_1C9A93B18() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD00000000000001ALL && 0x80000001C9ADD670 == a2;
                                                                    if (v38 || (sub_1C9A93B18() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD00000000000001ALL && 0x80000001C9ADD690 == a2;
                                                                      if (v39 || (sub_1C9A93B18() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0xD00000000000001DLL && 0x80000001C9ADD6B0 == a2;
                                                                        if (v40 || (sub_1C9A93B18() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0xD000000000000013 && 0x80000001C9ADD6D0 == a2;
                                                                          if (v41 || (sub_1C9A93B18() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0xD000000000000012 && 0x80000001C9ADD6F0 == a2;
                                                                            if (v42 || (sub_1C9A93B18() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0x6F536D6F74737563 && a2 == 0xEF54523545646E75;
                                                                              if (v43 || (sub_1C9A93B18() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0xD000000000000021 && 0x80000001C9ADD710 == a2;
                                                                                if (v44 || (sub_1C9A93B18() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0xD00000000000001CLL && 0x80000001C9ADD740 == a2;
                                                                                  if (v45 || (sub_1C9A93B18() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0x6465626D45647070 && a2 == 0xEC000000676E6964;
                                                                                    if (v46 || (sub_1C9A93B18() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0x6365746544647070 && a2 == 0xEB00000000726F74;
                                                                                      if (v47 || (sub_1C9A93B18() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else if (a1 == 0xD000000000000019 && 0x80000001C9ADD760 == a2)
                                                                                      {

                                                                                        return 43;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v49 = sub_1C9A93B18();

                                                                                        if (v49)
                                                                                        {
                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          return 44;
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C99B9950(char a1)
{
  result = 0x6F536D6F74737563;
  switch(a1)
  {
    case 2:
    case 18:
      result = 0xD000000000000016;
      break;
    case 3:
    case 13:
    case 14:
    case 21:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
    case 20:
      result = 0xD000000000000010;
      break;
    case 6:
    case 37:
      result = 0xD000000000000012;
      break;
    case 7:
    case 8:
    case 11:
    case 36:
      result = 0xD000000000000013;
      break;
    case 9:
    case 17:
      result = 0xD000000000000011;
      break;
    case 10:
    case 12:
      result = 0xD000000000000014;
      break;
    case 15:
    case 26:
    case 43:
      result = 0xD000000000000019;
      break;
    case 16:
      result = 0xD00000000000001BLL;
      break;
    case 22:
    case 24:
    case 25:
    case 40:
      result = 0xD00000000000001CLL;
      break;
    case 23:
      result = 0xD00000000000001ALL;
      break;
    case 27:
      result = 0xD00000000000001ALL;
      break;
    case 28:
    case 29:
    case 39:
      result = 0xD000000000000021;
      break;
    case 30:
      result = 0xD00000000000001FLL;
      break;
    case 31:
      result = 0xD000000000000023;
      break;
    case 32:
      result = 0xD000000000000029;
      break;
    case 33:
      result = 0xD00000000000001ALL;
      break;
    case 34:
      result = 0xD00000000000001ALL;
      break;
    case 35:
      result = 0xD00000000000001DLL;
      break;
    case 38:
      return result;
    case 41:
      result = 0x6465626D45647070;
      break;
    case 42:
      result = 0x6365746544647070;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

void sub_1C99B9D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v21;
  a20 = v22;
  v264 = v23;
  v25 = v24;
  sub_1C97A2CEC(&qword_1EC3CF890);
  sub_1C97AE9C8();
  v260 = v27;
  v261 = v26;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97AC02C();
  v259 = v29;
  sub_1C97A2CEC(&qword_1EC3CF898);
  sub_1C97AE9C8();
  v257 = v31;
  v258 = v30;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C97AC02C();
  v256 = v33;
  sub_1C97A2CEC(&qword_1EC3CF8A0);
  sub_1C97AE9C8();
  v254 = v35;
  v255 = v34;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C97AC02C();
  v253 = v37;
  sub_1C97A2CEC(&qword_1EC3CF8A8);
  sub_1C97AE9C8();
  v251 = v39;
  v252 = v38;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C97AC02C();
  v250 = v41;
  sub_1C97A2CEC(&qword_1EC3CF8B0);
  sub_1C97AE9C8();
  v248 = v43;
  v249 = v42;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C97AC02C();
  v247 = v45;
  sub_1C97A2CEC(&qword_1EC3CF8B8);
  sub_1C97AE9C8();
  v245 = v47;
  v246 = v46;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C97AC02C();
  sub_1C97ABFB4(v49);
  v50 = sub_1C97A2CEC(&qword_1EC3CF8C0);
  sub_1C97ABF78(v50, &a17);
  v244[0] = v51;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C97AC02C();
  sub_1C97ABFB4(v53);
  v54 = sub_1C97A2CEC(&qword_1EC3CF8C8);
  sub_1C97ABF78(v54, &a14);
  v243[0] = v55;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C97AC02C();
  sub_1C97ABFB4(v57);
  v58 = sub_1C97A2CEC(&qword_1EC3CF8D0);
  sub_1C97ABF78(v58, &a11);
  v242[0] = v59;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C97AC02C();
  sub_1C97ABFB4(v61);
  v62 = sub_1C97A2CEC(&qword_1EC3CF8D8);
  sub_1C97ABF78(v62, &v265);
  v241[0] = v63;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C97AC02C();
  sub_1C97ABFB4(v65);
  v66 = sub_1C97A2CEC(&qword_1EC3CF8E0);
  sub_1C97ABF78(v66, v263);
  v240[0] = v67;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C97AC02C();
  sub_1C97ABFB4(v69);
  v70 = sub_1C97A2CEC(&qword_1EC3CF8E8);
  sub_1C97ABF78(v70, &v260);
  v239[0] = v71;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v72);
  sub_1C97AC02C();
  sub_1C97ABFB4(v73);
  v74 = sub_1C97A2CEC(&qword_1EC3CF8F0);
  sub_1C97ABF78(v74, &v257);
  v238[0] = v75;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v76);
  sub_1C97AC02C();
  sub_1C97ABFB4(v77);
  v78 = sub_1C97A2CEC(&qword_1EC3CF8F8);
  sub_1C97ABF78(v78, &v254);
  v237[0] = v79;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v80);
  sub_1C97AC02C();
  sub_1C97ABFB4(v81);
  v82 = sub_1C97A2CEC(&qword_1EC3CF900);
  sub_1C97ABF78(v82, &v251);
  v236[0] = v83;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v84);
  sub_1C97AC02C();
  sub_1C97ABFB4(v85);
  v86 = sub_1C97A2CEC(&qword_1EC3CF908);
  sub_1C97ABF78(v86, &v248);
  v235[0] = v87;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v88);
  sub_1C97AC02C();
  sub_1C97ABFB4(v89);
  v90 = sub_1C97A2CEC(&qword_1EC3CF910);
  sub_1C97ABF78(v90, &v245);
  v234[0] = v91;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v92);
  sub_1C97AC02C();
  sub_1C97ABFB4(v93);
  v94 = sub_1C97A2CEC(&qword_1EC3CF918);
  sub_1C97ABF78(v94, v244);
  v233[0] = v95;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v96);
  sub_1C97AC02C();
  sub_1C97ABFB4(v97);
  v98 = sub_1C97A2CEC(&qword_1EC3CF920);
  sub_1C97ABF78(v98, v243);
  v232[0] = v99;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v100);
  sub_1C97AC02C();
  sub_1C97ABFB4(v101);
  v102 = sub_1C97A2CEC(&qword_1EC3CF928);
  sub_1C97ABF78(v102, v242);
  v231[0] = v103;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v104);
  sub_1C97AC02C();
  sub_1C97ABFB4(v105);
  v106 = sub_1C97A2CEC(&qword_1EC3CF930);
  sub_1C97ABF78(v106, v241);
  v230[0] = v107;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v108);
  sub_1C97AC02C();
  sub_1C97ABFB4(v109);
  v110 = sub_1C97A2CEC(&qword_1EC3CF938);
  sub_1C97ABF78(v110, v240);
  v229[0] = v111;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v112);
  sub_1C97AC02C();
  sub_1C97ABFB4(v113);
  v114 = sub_1C97A2CEC(&qword_1EC3CF940);
  sub_1C97ABF78(v114, v239);
  v228[0] = v115;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v116);
  sub_1C97AC02C();
  sub_1C97ABFB4(v117);
  v118 = sub_1C97A2CEC(&qword_1EC3CF948);
  sub_1C97ABF78(v118, v238);
  v227[0] = v119;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v120);
  sub_1C97AC02C();
  sub_1C97ABFB4(v121);
  v122 = sub_1C97A2CEC(&qword_1EC3CF950);
  sub_1C97ABF78(v122, v237);
  v226[0] = v123;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v124);
  sub_1C97AC02C();
  sub_1C97ABFB4(v125);
  v126 = sub_1C97A2CEC(&qword_1EC3CF958);
  sub_1C97ABF78(v126, v236);
  v225[0] = v127;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v128);
  sub_1C97AC02C();
  sub_1C97ABFB4(v129);
  v130 = sub_1C97A2CEC(&qword_1EC3CF960);
  sub_1C97ABF78(v130, v235);
  v224[0] = v131;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v132);
  sub_1C97AC02C();
  sub_1C97ABFB4(v133);
  v134 = sub_1C97A2CEC(&qword_1EC3CF968);
  sub_1C97ABF78(v134, v234);
  v223[0] = v135;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v136);
  sub_1C97AC02C();
  sub_1C97ABFB4(v137);
  v138 = sub_1C97A2CEC(&qword_1EC3CF970);
  sub_1C97ABF78(v138, v233);
  v222[0] = v139;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v140);
  sub_1C97AC02C();
  sub_1C97ABFB4(v141);
  v142 = sub_1C97A2CEC(&qword_1EC3CF978);
  sub_1C97ABF78(v142, v232);
  v221[0] = v143;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v144);
  sub_1C97AC02C();
  sub_1C97ABFB4(v145);
  v146 = sub_1C97A2CEC(&qword_1EC3CF980);
  sub_1C97ABF78(v146, v231);
  v220 = v147;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v148);
  sub_1C97AC02C();
  sub_1C97ABFB4(v149);
  v150 = sub_1C97A2CEC(&qword_1EC3CF988);
  sub_1C97ABF78(v150, v230);
  v219[34] = v151;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v152);
  sub_1C97AC02C();
  sub_1C97ABFB4(v153);
  v154 = sub_1C97A2CEC(&qword_1EC3CF990);
  sub_1C97ABF78(v154, v229);
  v219[31] = v155;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v156);
  sub_1C97AC02C();
  sub_1C97ABFB4(v157);
  v158 = sub_1C97A2CEC(&qword_1EC3CF998);
  sub_1C97ABF78(v158, v228);
  v219[28] = v159;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v160);
  sub_1C97AC02C();
  sub_1C97ABFB4(v161);
  v162 = sub_1C97A2CEC(&qword_1EC3CF9A0);
  sub_1C97ABF78(v162, v227);
  v219[25] = v163;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v164);
  sub_1C97AC02C();
  sub_1C97ABFB4(v165);
  v166 = sub_1C97A2CEC(&qword_1EC3CF9A8);
  sub_1C97ABF78(v166, v226);
  v219[22] = v167;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v168);
  sub_1C97AC02C();
  sub_1C97ABFB4(v169);
  v170 = sub_1C97A2CEC(&qword_1EC3CF9B0);
  sub_1C97ABF78(v170, v225);
  v219[19] = v171;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v172);
  sub_1C97AC02C();
  sub_1C97ABFB4(v173);
  v174 = sub_1C97A2CEC(&qword_1EC3CF9B8);
  sub_1C97ABF78(v174, v224);
  v219[16] = v175;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v176);
  sub_1C97AC02C();
  sub_1C97ABFB4(v177);
  v178 = sub_1C97A2CEC(&qword_1EC3CF9C0);
  sub_1C97ABF78(v178, v223);
  v219[13] = v179;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v180);
  sub_1C97AC02C();
  sub_1C97ABFB4(v181);
  v182 = sub_1C97A2CEC(&qword_1EC3CF9C8);
  sub_1C97ABF78(v182, v222);
  v219[10] = v183;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v184);
  sub_1C97AC02C();
  sub_1C97ABFB4(v185);
  v186 = sub_1C97A2CEC(&qword_1EC3CF9D0);
  sub_1C97ABF78(v186, v221);
  v219[7] = v187;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v188);
  sub_1C97AC02C();
  sub_1C97ABFB4(v189);
  v190 = sub_1C97A2CEC(&qword_1EC3CF9D8);
  sub_1C97ABF78(v190, &v220);
  v219[4] = v191;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v192);
  sub_1C97AC02C();
  sub_1C97ABFB4(v193);
  v194 = sub_1C97A2CEC(&qword_1EC3CF9E0);
  sub_1C97AE9C8();
  v219[2] = v195;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v196);
  sub_1C98021C4();
  v197 = sub_1C97A2CEC(&qword_1EC3CF9E8);
  sub_1C97AE9C8();
  v219[1] = v198;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v199);
  v201 = v219 - v200;
  v263[0] = sub_1C97A2CEC(&qword_1EC3CF9F0);
  sub_1C97AE9C8();
  v203 = v202;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v204);
  v206 = v219 - v205;
  v207 = sub_1C97A5A8C(v25, v25[3]);
  sub_1C99BFA50();
  v262 = v206;
  sub_1C9A93DD8();
  v208 = (v203 + 8);
  switch(v264)
  {
    case 1:
      sub_1C99C086C();
      v207 = v262;
      v206 = v263[0];
      sub_1C9A93988();
      sub_1C97DAA58();
      v210 = v20;
      v211 = v194;
      goto LABEL_48;
    case 2:
      sub_1C99C0818();
      v215 = v219[3];
      v216 = v262;
      v217 = v263[0];
      sub_1C9A93988();
      sub_1C97DAA58();
      v218(v215, v219[5]);
      (*v208)(v216, v217);
      goto LABEL_50;
    case 3:
      sub_1C99C07C4();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v221;
      goto LABEL_47;
    case 4:
      sub_1C99C0770();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v222;
      goto LABEL_47;
    case 5:
      sub_1C99C071C();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v223;
      goto LABEL_47;
    case 6:
      sub_1C99C06C8();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v224;
      goto LABEL_47;
    case 7:
      sub_1C99C0674();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v225;
      goto LABEL_47;
    case 8:
      sub_1C99C0620();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v226;
      goto LABEL_47;
    case 9:
      sub_1C99C05CC();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v227;
      goto LABEL_47;
    case 10:
      sub_1C99C0578();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v228;
      goto LABEL_47;
    case 11:
      sub_1C99C0524();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v229;
      goto LABEL_47;
    case 12:
      sub_1C99C04D0();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v230;
      goto LABEL_47;
    case 13:
      sub_1C99C047C();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v231;
      goto LABEL_47;
    case 14:
      sub_1C99C0428();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v232;
      goto LABEL_47;
    case 15:
      sub_1C99C03D4();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v233;
      goto LABEL_47;
    case 16:
      sub_1C99C0380();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v234;
      goto LABEL_47;
    case 17:
      sub_1C99C032C();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v235;
      goto LABEL_47;
    case 18:
      sub_1C99C02D8();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v236;
      goto LABEL_47;
    case 19:
      sub_1C99C0284();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v237;
      goto LABEL_47;
    case 20:
      sub_1C99C0230();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v238;
      goto LABEL_47;
    case 21:
      sub_1C99C01DC();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v239;
      goto LABEL_47;
    case 22:
      sub_1C99C0188();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v240;
      goto LABEL_47;
    case 23:
      sub_1C99C0134();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v241;
      goto LABEL_47;
    case 24:
      sub_1C99C00E0();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v242;
      goto LABEL_47;
    case 25:
      sub_1C99C008C();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v243;
      goto LABEL_47;
    case 26:
      sub_1C99C0038();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v244;
      goto LABEL_47;
    case 27:
      sub_1C99BFFE4();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = &v245;
      goto LABEL_47;
    case 28:
      sub_1C99BFF90();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = &v248;
      goto LABEL_47;
    case 29:
      sub_1C99BFF3C();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = &v251;
      goto LABEL_47;
    case 30:
      sub_1C99BFEE8();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = &v254;
      goto LABEL_47;
    case 31:
      sub_1C99BFE94();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = &v257;
      goto LABEL_47;
    case 32:
      sub_1C99BFE40();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = &v260;
      goto LABEL_47;
    case 33:
      sub_1C99BFDEC();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = v263;
      goto LABEL_47;
    case 34:
      sub_1C99BFD98();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = &v265;
      goto LABEL_47;
    case 35:
      sub_1C99BFD44();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = &a11;
      goto LABEL_47;
    case 36:
      sub_1C99BFCF0();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = &a14;
      goto LABEL_47;
    case 37:
      sub_1C99BFC9C();
      sub_1C99C2C88();
      v210 = sub_1C9945EB0();
      v214 = &a17;
LABEL_47:
      v211 = *(v214 - 32);
      goto LABEL_48;
    case 38:
      sub_1C99BFC48();
      sub_1C99C2C88();
      v213 = v245;
      v212 = v246;
      goto LABEL_45;
    case 39:
      sub_1C99BFBF4();
      v203 = v247;
      sub_1C99C2CE0();
      v213 = v248;
      v212 = v249;
      goto LABEL_45;
    case 40:
      sub_1C99BFBA0();
      v203 = v250;
      sub_1C99C2CE0();
      v213 = v251;
      v212 = v252;
      goto LABEL_45;
    case 41:
      sub_1C99BFB4C();
      v203 = v253;
      sub_1C99C2CE0();
      v213 = v254;
      v212 = v255;
      goto LABEL_45;
    case 42:
      sub_1C99BFAF8();
      v203 = v256;
      sub_1C99C2CE0();
      v213 = v257;
      v212 = v258;
      goto LABEL_45;
    case 43:
      sub_1C99BFAA4();
      v203 = v259;
      sub_1C99C2CE0();
      v213 = v260;
      v212 = v261;
LABEL_45:
      (*(v213 + 8))(v203, v212);
      break;
    default:
      sub_1C99C08C0();
      v207 = v262;
      v206 = v263[0];
      sub_1C9A93988();
      sub_1C97DAA58();
      v210 = v201;
      v211 = v197;
LABEL_48:
      v209(v210, v211);
      break;
  }

  (*v208)(v207, v206);
LABEL_50:
  sub_1C97AEB5C();
}

void sub_1C99BBB44()
{
  sub_1C97AEB94();
  v281 = v0;
  v3 = v2;
  v276 = sub_1C97A2CEC(&qword_1EC3CF5C0);
  sub_1C97AE9C8();
  v258[1] = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AC02C();
  v275 = v6;
  v7 = sub_1C97A2CEC(&qword_1EC3CF5C8);
  sub_1C97ABF78(v7, v274);
  v257[1] = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AC02C();
  v274[7] = v10;
  v11 = sub_1C97A2CEC(&qword_1EC3CF5D0);
  sub_1C97ABF78(v11, v273);
  v256[1] = v12;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97AC02C();
  v274[6] = v14;
  v15 = sub_1C97A2CEC(&qword_1EC3CF5D8);
  sub_1C97ABF78(v15, v272);
  v255[1] = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C97AC02C();
  v274[5] = v18;
  v19 = sub_1C97A2CEC(&qword_1EC3CF5E0);
  sub_1C97ABF78(v19, v271);
  v254[1] = v20;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C97AC02C();
  v274[4] = v22;
  v23 = sub_1C97A2CEC(&qword_1EC3CF5E8);
  sub_1C97ABF78(v23, v270);
  v253[1] = v24;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C97AC02C();
  v274[3] = v26;
  v27 = sub_1C97A2CEC(&qword_1EC3CF5F0);
  sub_1C97ABF78(v27, v269);
  v252[1] = v28;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C97AC02C();
  v274[2] = v30;
  v31 = sub_1C97A2CEC(&qword_1EC3CF5F8);
  sub_1C97ABF78(v31, v268);
  v251[1] = v32;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97AC02C();
  v274[1] = v34;
  v35 = sub_1C97A2CEC(&qword_1EC3CF600);
  sub_1C97ABF78(v35, v267);
  v250[1] = v36;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C97AC02C();
  v274[0] = v38;
  v39 = sub_1C97A2CEC(&qword_1EC3CF608);
  sub_1C97ABF78(v39, v266);
  v249[1] = v40;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C97AC02C();
  v273[1] = v42;
  v43 = sub_1C97A2CEC(&qword_1EC3CF610);
  sub_1C97ABF78(v43, v265);
  v248[1] = v44;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C97AC02C();
  v273[0] = v46;
  v47 = sub_1C97A2CEC(&qword_1EC3CF618);
  sub_1C97ABF78(v47, v264);
  v247[1] = v48;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C97AC02C();
  v272[1] = v50;
  v51 = sub_1C97A2CEC(&qword_1EC3CF620);
  sub_1C97ABF78(v51, v263);
  v246[1] = v52;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C97AC02C();
  v272[0] = v54;
  v55 = sub_1C97A2CEC(&qword_1EC3CF628);
  sub_1C97ABF78(v55, v262);
  v245[1] = v56;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C97AC02C();
  v271[1] = v58;
  v59 = sub_1C97A2CEC(&qword_1EC3CF630);
  sub_1C97ABF78(v59, v261);
  v244[1] = v60;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C97AC02C();
  v271[0] = v62;
  v63 = sub_1C97A2CEC(&qword_1EC3CF638);
  sub_1C97ABF78(v63, v260);
  v243[1] = v64;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v65);
  sub_1C97AC02C();
  sub_1C97ABFB4(v66);
  v67 = sub_1C97A2CEC(&qword_1EC3CF640);
  sub_1C97ABF78(v67, v259);
  v242[1] = v68;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C97AC02C();
  sub_1C97ABFB4(v70);
  v71 = sub_1C97A2CEC(&qword_1EC3CF648);
  sub_1C97ABF78(v71, v258);
  v241[2] = v72;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v73);
  sub_1C97AC02C();
  sub_1C97ABFB4(v74);
  v75 = sub_1C97A2CEC(&qword_1EC3CF650);
  sub_1C97ABF78(v75, v257);
  v241[0] = v76;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v77);
  sub_1C97AC02C();
  sub_1C97ABFB4(v78);
  v79 = sub_1C97A2CEC(&qword_1EC3CF658);
  sub_1C97ABF78(v79, v256);
  v240[0] = v80;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v81);
  sub_1C97AC02C();
  sub_1C97ABFB4(v82);
  v83 = sub_1C97A2CEC(&qword_1EC3CF660);
  sub_1C97ABF78(v83, v255);
  v239[0] = v84;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v85);
  sub_1C97AC02C();
  sub_1C97ABFB4(v86);
  v87 = sub_1C97A2CEC(&qword_1EC3CF668);
  sub_1C97ABF78(v87, v254);
  v237[1] = v88;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v89);
  sub_1C97AC02C();
  sub_1C97ABFB4(v90);
  v91 = sub_1C97A2CEC(&qword_1EC3CF670);
  sub_1C97ABF78(v91, v253);
  v236[1] = v92;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v93);
  sub_1C97AC02C();
  sub_1C97ABFB4(v94);
  v95 = sub_1C97A2CEC(&qword_1EC3CF678);
  sub_1C97ABF78(v95, v252);
  v235[1] = v96;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v97);
  sub_1C97AC02C();
  sub_1C97ABFB4(v98);
  v99 = sub_1C97A2CEC(&qword_1EC3CF680);
  sub_1C97ABF78(v99, v251);
  v234[1] = v100;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v101);
  sub_1C97AC02C();
  sub_1C97ABFB4(v102);
  v103 = sub_1C97A2CEC(&qword_1EC3CF688);
  sub_1C97ABF78(v103, v250);
  v233[1] = v104;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v105);
  sub_1C97AC02C();
  sub_1C97ABFB4(v106);
  v107 = sub_1C97A2CEC(&qword_1EC3CF690);
  sub_1C97ABF78(v107, v249);
  v232[4] = v108;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v109);
  sub_1C97AC02C();
  sub_1C97ABFB4(v110);
  v111 = sub_1C97A2CEC(&qword_1EC3CF698);
  sub_1C97ABF78(v111, v248);
  v232[2] = v112;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v113);
  sub_1C97AC02C();
  sub_1C97ABFB4(v114);
  v115 = sub_1C97A2CEC(&qword_1EC3CF6A0);
  sub_1C97ABF78(v115, v247);
  v232[0] = v116;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v117);
  sub_1C97AC02C();
  sub_1C97ABFB4(v118);
  v119 = sub_1C97A2CEC(&qword_1EC3CF6A8);
  sub_1C97ABF78(v119, v246);
  v231 = v120;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v121);
  sub_1C97AC02C();
  sub_1C97ABFB4(v122);
  v123 = sub_1C97A2CEC(&qword_1EC3CF6B0);
  sub_1C97ABF78(v123, v245);
  v230 = v124;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v125);
  sub_1C97AC02C();
  sub_1C97ABFB4(v126);
  v127 = sub_1C97A2CEC(&qword_1EC3CF6B8);
  sub_1C97ABF78(v127, v244);
  v229 = v128;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v129);
  sub_1C97AC02C();
  v279 = v130;
  v131 = sub_1C97A2CEC(&qword_1EC3CF6C0);
  sub_1C97ABF78(v131, v243);
  v228 = v132;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v133);
  sub_1C97AC02C();
  sub_1C97ABFB4(v134);
  v135 = sub_1C97A2CEC(&qword_1EC3CF6C8);
  sub_1C97ABF78(v135, v242);
  v227 = v136;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v137);
  sub_1C97AC02C();
  v278 = v138;
  v139 = sub_1C97A2CEC(&qword_1EC3CF6D0);
  sub_1C97ABF78(v139, v241);
  v226 = v140;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v141);
  sub_1C97AC02C();
  sub_1C97ABFB4(v142);
  v143 = sub_1C97A2CEC(&qword_1EC3CF6D8);
  sub_1C97ABF78(v143, v239);
  v225 = v144;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v145);
  sub_1C97AC02C();
  sub_1C97ABFB4(v146);
  v147 = sub_1C97A2CEC(&qword_1EC3CF6E0);
  sub_1C97ABF78(v147, v240);
  v224 = v148;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v149);
  sub_1C97AC02C();
  v277 = v150;
  v151 = sub_1C97A2CEC(&qword_1EC3CF6E8);
  sub_1C97ABF78(v151, &v238);
  v223 = v152;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v153);
  sub_1C97AC02C();
  sub_1C97ABFB4(v154);
  v155 = sub_1C97A2CEC(&qword_1EC3CF6F0);
  sub_1C97ABF78(v155, v237);
  v222 = v156;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v157);
  sub_1C97AC02C();
  sub_1C97ABFB4(v158);
  v159 = sub_1C97A2CEC(&qword_1EC3CF6F8);
  sub_1C97ABF78(v159, v236);
  v221 = v160;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v161);
  sub_1C97AC02C();
  sub_1C97ABFB4(v162);
  v163 = sub_1C97A2CEC(&qword_1EC3CF700);
  sub_1C97ABF78(v163, v235);
  v220 = v164;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v165);
  sub_1C97AC02C();
  sub_1C97ABFB4(v166);
  v167 = sub_1C97A2CEC(&qword_1EC3CF708);
  sub_1C97ABF78(v167, v234);
  v219 = v168;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v169);
  sub_1C97AC02C();
  sub_1C97ABFB4(v170);
  v171 = sub_1C97A2CEC(&qword_1EC3CF710);
  sub_1C97ABF78(v171, v233);
  v218 = v172;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v173);
  v175 = v212 - v174;
  v176 = sub_1C97A2CEC(&qword_1EC3CF718);
  sub_1C97AE9C8();
  v217 = v177;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v178);
  sub_1C98021C4();
  v179 = sub_1C97A2CEC(&qword_1EC3CF720);
  sub_1C97AE9C8();
  v181 = v180;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v182);
  v184 = v212 - v183;
  v185 = v3[3];
  v280 = v3;
  sub_1C97A5A8C(v3, v185);
  sub_1C99BFA50();
  v186 = v281;
  sub_1C9A93DB8();
  if (v186)
  {
    goto LABEL_10;
  }

  v215 = v1;
  v214 = v176;
  v216 = v175;
  v187 = v277;
  v188 = v279;
  v281 = v181;
  v189 = v184;
  v190 = sub_1C9A93958();
  sub_1C98EE524(v190, 0);
  if (v192 == v193 >> 1)
  {
    v194 = v179;
LABEL_9:
    v207 = sub_1C9A93648();
    swift_allocError();
    v209 = v208;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    *v209 = &unk_1F4947E50;
    sub_1C9A93868();
    sub_1C9A93638();
    (*(*(v207 - 8) + 104))(v209, *MEMORY[0x1E69E6AF8], v207);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v281 + 8))(v189, v194);
LABEL_10:
    sub_1C97A592C(v280);
LABEL_11:
    sub_1C97AEB5C();
    return;
  }

  v213 = v179;
  v212[0] = 0;
  if (v192 < (v193 >> 1))
  {
    v195 = *(v191 + v192);
    v196 = sub_1C98EE520(v192 + 1);
    v198 = v197;
    v200 = v199;
    swift_unknownObjectRelease();
    v212[1] = v196;
    if (v198 == v200 >> 1)
    {
      v201 = v213;
      v202 = v281;
      v203 = v276;
      switch(v195)
      {
        case 1:
          sub_1C99C086C();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v233;
          goto LABEL_55;
        case 2:
          sub_1C99C0818();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v234;
          goto LABEL_55;
        case 3:
          sub_1C99C07C4();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v235;
          goto LABEL_55;
        case 4:
          sub_1C99C0770();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v236;
          goto LABEL_55;
        case 5:
          sub_1C99C071C();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v237;
          goto LABEL_55;
        case 6:
          sub_1C99C06C8();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = &v238;
          goto LABEL_55;
        case 7:
          sub_1C99C0674();
          sub_1C99C2D20();
          sub_1C99C2D3C();
          sub_1C97DAA58();
          v204 = v187;
          v206 = v240;
          goto LABEL_55;
        case 8:
          sub_1C99C0620();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v239;
          goto LABEL_55;
        case 9:
          sub_1C99C05CC();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v241;
          goto LABEL_55;
        case 10:
          sub_1C99C0578();
          sub_1C99C2D20();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v242;
          goto LABEL_55;
        case 11:
          sub_1C99C0524();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v243;
          goto LABEL_55;
        case 12:
          sub_1C99C04D0();
          sub_1C99C2D20();
          sub_1C99C2D3C();
          sub_1C97DAA58();
          v204 = v188;
          v206 = v244;
          goto LABEL_55;
        case 13:
          sub_1C99C047C();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v245;
          goto LABEL_55;
        case 14:
          sub_1C99C0428();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v246;
          goto LABEL_55;
        case 15:
          sub_1C99C03D4();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v247;
          goto LABEL_55;
        case 16:
          sub_1C99C0380();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v248;
          goto LABEL_55;
        case 17:
          sub_1C99C032C();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v249;
          goto LABEL_55;
        case 18:
          sub_1C99C02D8();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v250;
          goto LABEL_55;
        case 19:
          sub_1C99C0284();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v251;
          goto LABEL_55;
        case 20:
          sub_1C99C0230();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v252;
          goto LABEL_55;
        case 21:
          sub_1C99C01DC();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v253;
          goto LABEL_55;
        case 22:
          sub_1C99C0188();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v254;
          goto LABEL_55;
        case 23:
          sub_1C99C0134();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v255;
          goto LABEL_55;
        case 24:
          sub_1C99C00E0();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v256;
          goto LABEL_55;
        case 25:
          sub_1C99C008C();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v257;
          goto LABEL_55;
        case 26:
          sub_1C99C0038();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v258;
          goto LABEL_55;
        case 27:
          sub_1C99BFFE4();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v259;
          goto LABEL_55;
        case 28:
          sub_1C99BFF90();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v260;
          goto LABEL_55;
        case 29:
          sub_1C99BFF3C();
          sub_1C99C2D00();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v261;
          goto LABEL_55;
        case 30:
          sub_1C99BFEE8();
          sub_1C99C2D00();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v262;
          goto LABEL_55;
        case 31:
          sub_1C99BFE94();
          sub_1C99C2D00();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v263;
          goto LABEL_55;
        case 32:
          sub_1C99BFE40();
          sub_1C99C2D00();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v264;
          goto LABEL_55;
        case 33:
          sub_1C99BFDEC();
          sub_1C99C2D00();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v265;
          goto LABEL_55;
        case 34:
          sub_1C99BFD98();
          sub_1C99C2D00();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v266;
          goto LABEL_55;
        case 35:
          sub_1C99BFD44();
          sub_1C99C2D00();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v267;
          goto LABEL_55;
        case 36:
          sub_1C99BFCF0();
          sub_1C99C2D00();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v268;
          goto LABEL_55;
        case 37:
          sub_1C99BFC9C();
          sub_1C99C2D00();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v269;
          goto LABEL_55;
        case 38:
          sub_1C99BFC48();
          sub_1C99C2D00();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v270;
          goto LABEL_55;
        case 39:
          sub_1C99BFBF4();
          sub_1C99C2D00();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v271;
          goto LABEL_55;
        case 40:
          sub_1C99BFBA0();
          sub_1C99C2D00();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v272;
          goto LABEL_55;
        case 41:
          sub_1C99BFB4C();
          sub_1C99C2D00();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v273;
          goto LABEL_55;
        case 42:
          sub_1C99BFAF8();
          sub_1C99C2D00();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v274;
          goto LABEL_55;
        case 43:
          sub_1C99BFAA4();
          v210 = v275;
          sub_1C99C2D20();
          sub_1C99C2D3C();
          sub_1C97DAA58();
          v204 = v210;
          v211 = v203;
          goto LABEL_56;
        default:
          sub_1C99C08C0();
          sub_1C99C2CBC();
          sub_1C99C2D3C();
          v204 = sub_1C99C2CAC();
          v206 = v232;
LABEL_55:
          v211 = *(v206 - 32);
LABEL_56:
          v205(v204, v211);
          (*(v202 + 8))(v189, v201);
          sub_1C97A592C(v280);
          break;
      }

      goto LABEL_11;
    }

    v194 = v213;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1C99BDDA4(unsigned __int8 a1)
{
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](0);
  MEMORY[0x1CCA91980](a1);
  return sub_1C9A93D18();
}

uint64_t sub_1C99BDE10(uint64_t a1)
{
  v2 = sub_1C99C07C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BDE4C(uint64_t a1)
{
  v2 = sub_1C99C07C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BDE88(uint64_t a1)
{
  v2 = sub_1C99BFC9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BDEC4(uint64_t a1)
{
  v2 = sub_1C99BFC9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BDF00(uint64_t a1)
{
  v2 = sub_1C99C071C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BDF3C(uint64_t a1)
{
  v2 = sub_1C99C071C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BDF78(uint64_t a1)
{
  v2 = sub_1C99C06C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BDFB4(uint64_t a1)
{
  v2 = sub_1C99C06C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BDFF0(uint64_t a1)
{
  v2 = sub_1C99C0674();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE02C(uint64_t a1)
{
  v2 = sub_1C99C0674();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE068(uint64_t a1)
{
  v2 = sub_1C99C0620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE0A4(uint64_t a1)
{
  v2 = sub_1C99C0620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99B8CC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99BE128@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C99B9948();
  *a1 = result;
  return result;
}

uint64_t sub_1C99BE150(uint64_t a1)
{
  v2 = sub_1C99BFA50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE18C(uint64_t a1)
{
  v2 = sub_1C99BFA50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE1C8(uint64_t a1)
{
  v2 = sub_1C99C05CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE204(uint64_t a1)
{
  v2 = sub_1C99C05CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE240(uint64_t a1)
{
  v2 = sub_1C99BFC48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE27C(uint64_t a1)
{
  v2 = sub_1C99BFC48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE2B8(uint64_t a1)
{
  v2 = sub_1C99C0578();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE2F4(uint64_t a1)
{
  v2 = sub_1C99C0578();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE330(uint64_t a1)
{
  v2 = sub_1C99C0770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE36C(uint64_t a1)
{
  v2 = sub_1C99C0770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE3A8(uint64_t a1)
{
  v2 = sub_1C99C0524();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE3E4(uint64_t a1)
{
  v2 = sub_1C99C0524();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE420(uint64_t a1)
{
  v2 = sub_1C99C04D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE45C(uint64_t a1)
{
  v2 = sub_1C99C04D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE498(uint64_t a1)
{
  v2 = sub_1C99C047C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE4D4(uint64_t a1)
{
  v2 = sub_1C99C047C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE510(uint64_t a1)
{
  v2 = sub_1C99C0428();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE54C(uint64_t a1)
{
  v2 = sub_1C99C0428();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE588(uint64_t a1)
{
  v2 = sub_1C99BFE40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE5C4(uint64_t a1)
{
  v2 = sub_1C99BFE40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE600(uint64_t a1)
{
  v2 = sub_1C99C03D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE63C(uint64_t a1)
{
  v2 = sub_1C99C03D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE678(uint64_t a1)
{
  v2 = sub_1C99BFCF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE6B4(uint64_t a1)
{
  v2 = sub_1C99BFCF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE6F0(uint64_t a1)
{
  v2 = sub_1C99C0380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE72C(uint64_t a1)
{
  v2 = sub_1C99C0380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE768(uint64_t a1)
{
  v2 = sub_1C99BFBA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE7A4(uint64_t a1)
{
  v2 = sub_1C99BFBA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE7E0(uint64_t a1)
{
  v2 = sub_1C99BFBF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE81C(uint64_t a1)
{
  v2 = sub_1C99BFBF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE858(uint64_t a1)
{
  v2 = sub_1C99BFAA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE894(uint64_t a1)
{
  v2 = sub_1C99BFAA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE8D0(uint64_t a1)
{
  v2 = sub_1C99BFAF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE90C(uint64_t a1)
{
  v2 = sub_1C99BFAF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE948(uint64_t a1)
{
  v2 = sub_1C99BFB4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE984(uint64_t a1)
{
  v2 = sub_1C99BFB4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE9C0(uint64_t a1)
{
  v2 = sub_1C99C032C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE9FC(uint64_t a1)
{
  v2 = sub_1C99C032C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BEA38(uint64_t a1)
{
  v2 = sub_1C99C02D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BEA74(uint64_t a1)
{
  v2 = sub_1C99C02D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BEAB0(uint64_t a1)
{
  v2 = sub_1C99C0818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BEAEC(uint64_t a1)
{
  v2 = sub_1C99C0818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BEB28(uint64_t a1)
{
  v2 = sub_1C99C0230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BEB64(uint64_t a1)
{
  v2 = sub_1C99C0230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BEBA0(uint64_t a1)
{
  v2 = sub_1C99BFD44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BEBDC(uint64_t a1)
{
  v2 = sub_1C99BFD44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BEC18(uint64_t a1)
{
  v2 = sub_1C99BFDEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BEC54(uint64_t a1)
{
  v2 = sub_1C99BFDEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BEC90(uint64_t a1)
{
  v2 = sub_1C99C086C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BECCC(uint64_t a1)
{
  v2 = sub_1C99C086C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BED08(uint64_t a1)
{
  v2 = sub_1C99BFF90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BED44(uint64_t a1)
{
  v2 = sub_1C99BFF90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BED80(uint64_t a1)
{
  v2 = sub_1C99BFF3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BEDBC(uint64_t a1)
{
  v2 = sub_1C99BFF3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BEDF8(uint64_t a1)
{
  v2 = sub_1C99BFE94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BEE34(uint64_t a1)
{
  v2 = sub_1C99BFE94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BEE70(uint64_t a1)
{
  v2 = sub_1C99BFEE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BEEAC(uint64_t a1)
{
  v2 = sub_1C99BFEE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BEEE8(uint64_t a1)
{
  v2 = sub_1C99BFD98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BEF24(uint64_t a1)
{
  v2 = sub_1C99BFD98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BEF60(uint64_t a1)
{
  v2 = sub_1C99C08C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BEF9C(uint64_t a1)
{
  v2 = sub_1C99C08C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BEFD8(uint64_t a1)
{
  v2 = sub_1C99C0188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BF014(uint64_t a1)
{
  v2 = sub_1C99C0188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BF050(uint64_t a1)
{
  v2 = sub_1C99C0134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BF08C(uint64_t a1)
{
  v2 = sub_1C99C0134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BF0C8(uint64_t a1)
{
  v2 = sub_1C99C00E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BF104(uint64_t a1)
{
  v2 = sub_1C99C00E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BF140(uint64_t a1)
{
  v2 = sub_1C99C01DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BF17C(uint64_t a1)
{
  v2 = sub_1C99C01DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BF1B8(uint64_t a1)
{
  v2 = sub_1C99C008C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BF1F4(uint64_t a1)
{
  v2 = sub_1C99C008C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BF230(uint64_t a1)
{
  v2 = sub_1C99C0038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BF26C(uint64_t a1)
{
  v2 = sub_1C99C0038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BF2A8(uint64_t a1)
{
  v2 = sub_1C99BFFE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BF2E4(uint64_t a1)
{
  v2 = sub_1C99BFFE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BF320(uint64_t a1)
{
  v2 = sub_1C99C0284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BF35C(uint64_t a1)
{
  v2 = sub_1C99C0284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BF3C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

void sub_1C99BF40C(_BYTE *a1@<X8>)
{
  sub_1C99BBB44();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C99BF464()
{
  v1 = *v0;
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](0);
  sub_1C978C430(v3, v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C99BF4B4(char a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000024;
      break;
    case 2:
    case 18:
    case 31:
      sub_1C99C2D54();
      result = v10 | 1;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    case 4:
    case 20:
      sub_1C99C2D54();
      result = v8 + 5;
      break;
    case 5:
    case 21:
      sub_1C99C2D54();
      result = v9 - 5;
      break;
    case 6:
    case 30:
      sub_1C99C2D54();
      result = v12 - 3;
      break;
    case 7:
    case 8:
    case 11:
      sub_1C99C2D54();
      result = v11 - 2;
      break;
    case 9:
    case 17:
      sub_1C99C2D54();
      result = v7 - 4;
      break;
    case 10:
    case 12:
    case 28:
    case 29:
      sub_1C99C2D54();
      result = v18 - 1;
      break;
    case 13:
      result = 0xD000000000000024;
      break;
    case 14:
      result = 0xD000000000000024;
      break;
    case 15:
      sub_1C99C2D54();
      result = v6 + 4;
      break;
    case 16:
      sub_1C99C2D54();
      result = v5 + 6;
      break;
    case 19:
    case 35:
      sub_1C99C2D54();
      result = v16 | 3;
      break;
    case 22:
    case 24:
    case 25:
      sub_1C99C2D54();
      result = v14 - 6;
      break;
    case 23:
    case 27:
    case 37:
      sub_1C99C2D54();
      result = v17 - 8;
      break;
    case 26:
      sub_1C99C2D54();
      result = v19 - 9;
      break;
    case 32:
      sub_1C99C2D54();
      result = v13 + 13;
      break;
    case 33:
      result = 0xD000000000000024;
      break;
    case 34:
      result = 0xD000000000000024;
      break;
    case 36:
      sub_1C99C2D54();
      result = v4 - 7;
      break;
    case 38:
      result = 0xD000000000000036;
      break;
    case 39:
    case 40:
      sub_1C99C2D54();
      result = v15 | 2;
      break;
    case 41:
    case 42:
      return result;
    case 43:
      sub_1C99C2D54();
      result = v3 + 14;
      break;
    default:
      result = 0xD000000000000024;
      break;
  }

  return result;
}

unint64_t sub_1C99BF8D0()
{
  result = qword_1EC3C54B8;
  if (!qword_1EC3C54B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C54B8);
  }

  return result;
}

unint64_t sub_1C99BF93C()
{
  result = qword_1EC3C5670;
  if (!qword_1EC3C5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C5670);
  }

  return result;
}

unint64_t sub_1C99BF994()
{
  result = qword_1EC3CF5A8;
  if (!qword_1EC3CF5A8)
  {
    sub_1C97AA4F0(&qword_1EC3CF5B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF5A8);
  }

  return result;
}

unint64_t sub_1C99BF9FC()
{
  result = qword_1EC3CF5B8;
  if (!qword_1EC3CF5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF5B8);
  }

  return result;
}

unint64_t sub_1C99BFA50()
{
  result = qword_1EC3CF728;
  if (!qword_1EC3CF728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF728);
  }

  return result;
}

unint64_t sub_1C99BFAA4()
{
  result = qword_1EC3CF730;
  if (!qword_1EC3CF730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF730);
  }

  return result;
}

unint64_t sub_1C99BFAF8()
{
  result = qword_1EC3CF738;
  if (!qword_1EC3CF738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF738);
  }

  return result;
}

unint64_t sub_1C99BFB4C()
{
  result = qword_1EC3CF740;
  if (!qword_1EC3CF740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF740);
  }

  return result;
}

unint64_t sub_1C99BFBA0()
{
  result = qword_1EC3CF748;
  if (!qword_1EC3CF748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF748);
  }

  return result;
}

unint64_t sub_1C99BFBF4()
{
  result = qword_1EC3CF750;
  if (!qword_1EC3CF750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF750);
  }

  return result;
}

unint64_t sub_1C99BFC48()
{
  result = qword_1EC3CF758;
  if (!qword_1EC3CF758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF758);
  }

  return result;
}

unint64_t sub_1C99BFC9C()
{
  result = qword_1EC3CF760;
  if (!qword_1EC3CF760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF760);
  }

  return result;
}

unint64_t sub_1C99BFCF0()
{
  result = qword_1EC3CF768;
  if (!qword_1EC3CF768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF768);
  }

  return result;
}

unint64_t sub_1C99BFD44()
{
  result = qword_1EC3CF770;
  if (!qword_1EC3CF770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF770);
  }

  return result;
}

unint64_t sub_1C99BFD98()
{
  result = qword_1EC3CF778;
  if (!qword_1EC3CF778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF778);
  }

  return result;
}

unint64_t sub_1C99BFDEC()
{
  result = qword_1EC3CF780;
  if (!qword_1EC3CF780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF780);
  }

  return result;
}

unint64_t sub_1C99BFE40()
{
  result = qword_1EC3CF788;
  if (!qword_1EC3CF788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF788);
  }

  return result;
}

unint64_t sub_1C99BFE94()
{
  result = qword_1EC3CF790;
  if (!qword_1EC3CF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF790);
  }

  return result;
}

unint64_t sub_1C99BFEE8()
{
  result = qword_1EC3CF798;
  if (!qword_1EC3CF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF798);
  }

  return result;
}

unint64_t sub_1C99BFF3C()
{
  result = qword_1EC3CF7A0;
  if (!qword_1EC3CF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7A0);
  }

  return result;
}

unint64_t sub_1C99BFF90()
{
  result = qword_1EC3CF7A8;
  if (!qword_1EC3CF7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7A8);
  }

  return result;
}

unint64_t sub_1C99BFFE4()
{
  result = qword_1EC3CF7B0;
  if (!qword_1EC3CF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7B0);
  }

  return result;
}

unint64_t sub_1C99C0038()
{
  result = qword_1EC3CF7B8;
  if (!qword_1EC3CF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7B8);
  }

  return result;
}

unint64_t sub_1C99C008C()
{
  result = qword_1EC3CF7C0;
  if (!qword_1EC3CF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7C0);
  }

  return result;
}

unint64_t sub_1C99C00E0()
{
  result = qword_1EC3CF7C8;
  if (!qword_1EC3CF7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7C8);
  }

  return result;
}

unint64_t sub_1C99C0134()
{
  result = qword_1EC3CF7D0;
  if (!qword_1EC3CF7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7D0);
  }

  return result;
}

unint64_t sub_1C99C0188()
{
  result = qword_1EC3CF7D8;
  if (!qword_1EC3CF7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7D8);
  }

  return result;
}

unint64_t sub_1C99C01DC()
{
  result = qword_1EC3CF7E0;
  if (!qword_1EC3CF7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7E0);
  }

  return result;
}

unint64_t sub_1C99C0230()
{
  result = qword_1EC3CF7E8;
  if (!qword_1EC3CF7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7E8);
  }

  return result;
}

unint64_t sub_1C99C0284()
{
  result = qword_1EC3CF7F0;
  if (!qword_1EC3CF7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7F0);
  }

  return result;
}

unint64_t sub_1C99C02D8()
{
  result = qword_1EC3CF7F8;
  if (!qword_1EC3CF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7F8);
  }

  return result;
}

unint64_t sub_1C99C032C()
{
  result = qword_1EC3CF800;
  if (!qword_1EC3CF800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF800);
  }

  return result;
}

unint64_t sub_1C99C0380()
{
  result = qword_1EC3CF808;
  if (!qword_1EC3CF808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF808);
  }

  return result;
}

unint64_t sub_1C99C03D4()
{
  result = qword_1EC3CF810;
  if (!qword_1EC3CF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF810);
  }

  return result;
}

unint64_t sub_1C99C0428()
{
  result = qword_1EC3CF818;
  if (!qword_1EC3CF818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF818);
  }

  return result;
}

unint64_t sub_1C99C047C()
{
  result = qword_1EC3CF820;
  if (!qword_1EC3CF820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF820);
  }

  return result;
}

unint64_t sub_1C99C04D0()
{
  result = qword_1EC3CF828;
  if (!qword_1EC3CF828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF828);
  }

  return result;
}

unint64_t sub_1C99C0524()
{
  result = qword_1EC3CF830;
  if (!qword_1EC3CF830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF830);
  }

  return result;
}

unint64_t sub_1C99C0578()
{
  result = qword_1EC3CF838;
  if (!qword_1EC3CF838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF838);
  }

  return result;
}

unint64_t sub_1C99C05CC()
{
  result = qword_1EC3CF840;
  if (!qword_1EC3CF840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF840);
  }

  return result;
}

unint64_t sub_1C99C0620()
{
  result = qword_1EC3CF848;
  if (!qword_1EC3CF848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF848);
  }

  return result;
}

unint64_t sub_1C99C0674()
{
  result = qword_1EC3CF850;
  if (!qword_1EC3CF850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF850);
  }

  return result;
}

unint64_t sub_1C99C06C8()
{
  result = qword_1EC3CF858;
  if (!qword_1EC3CF858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF858);
  }

  return result;
}

unint64_t sub_1C99C071C()
{
  result = qword_1EC3CF860;
  if (!qword_1EC3CF860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF860);
  }

  return result;
}

unint64_t sub_1C99C0770()
{
  result = qword_1EC3CF868;
  if (!qword_1EC3CF868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF868);
  }

  return result;
}

unint64_t sub_1C99C07C4()
{
  result = qword_1EC3CF870;
  if (!qword_1EC3CF870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF870);
  }

  return result;
}

unint64_t sub_1C99C0818()
{
  result = qword_1EC3CF878;
  if (!qword_1EC3CF878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF878);
  }

  return result;
}

unint64_t sub_1C99C086C()
{
  result = qword_1EC3CF880;
  if (!qword_1EC3CF880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF880);
  }

  return result;
}

unint64_t sub_1C99C08C0()
{
  result = qword_1EC3CF888;
  if (!qword_1EC3CF888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF888);
  }

  return result;
}

uint64_t sub_1C99C0914(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD5)
  {
    if (a2 + 43 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 43) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 44;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2C;
  v5 = v6 - 44;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C99C099C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 43 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 43) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD4)
  {
    v6 = ((a2 - 213) >> 8) + 1;
    *result = a2 + 43;
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
          *result = a2 + 43;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C99C0D3C()
{
  result = qword_1EC3CF9F8;
  if (!qword_1EC3CF9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF9F8);
  }

  return result;
}

unint64_t sub_1C99C0D94()
{
  result = qword_1EC3CFA00;
  if (!qword_1EC3CFA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA00);
  }

  return result;
}

unint64_t sub_1C99C0DEC()
{
  result = qword_1EC3CFA08;
  if (!qword_1EC3CFA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA08);
  }

  return result;
}

unint64_t sub_1C99C0E44()
{
  result = qword_1EC3CFA10;
  if (!qword_1EC3CFA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA10);
  }

  return result;
}

unint64_t sub_1C99C0E9C()
{
  result = qword_1EC3CFA18;
  if (!qword_1EC3CFA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA18);
  }

  return result;
}

unint64_t sub_1C99C0EF4()
{
  result = qword_1EC3CFA20;
  if (!qword_1EC3CFA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA20);
  }

  return result;
}

unint64_t sub_1C99C0F4C()
{
  result = qword_1EC3CFA28;
  if (!qword_1EC3CFA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA28);
  }

  return result;
}

unint64_t sub_1C99C0FA4()
{
  result = qword_1EC3CFA30;
  if (!qword_1EC3CFA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA30);
  }

  return result;
}

unint64_t sub_1C99C0FFC()
{
  result = qword_1EC3CFA38;
  if (!qword_1EC3CFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA38);
  }

  return result;
}

unint64_t sub_1C99C1054()
{
  result = qword_1EC3CFA40;
  if (!qword_1EC3CFA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA40);
  }

  return result;
}

unint64_t sub_1C99C10AC()
{
  result = qword_1EC3CFA48;
  if (!qword_1EC3CFA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA48);
  }

  return result;
}

unint64_t sub_1C99C1104()
{
  result = qword_1EC3CFA50;
  if (!qword_1EC3CFA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA50);
  }

  return result;
}

unint64_t sub_1C99C115C()
{
  result = qword_1EC3CFA58;
  if (!qword_1EC3CFA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA58);
  }

  return result;
}

unint64_t sub_1C99C11B4()
{
  result = qword_1EC3CFA60;
  if (!qword_1EC3CFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA60);
  }

  return result;
}

unint64_t sub_1C99C120C()
{
  result = qword_1EC3CFA68;
  if (!qword_1EC3CFA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA68);
  }

  return result;
}

unint64_t sub_1C99C1264()
{
  result = qword_1EC3CFA70;
  if (!qword_1EC3CFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA70);
  }

  return result;
}

unint64_t sub_1C99C12BC()
{
  result = qword_1EC3CFA78;
  if (!qword_1EC3CFA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA78);
  }

  return result;
}

unint64_t sub_1C99C1314()
{
  result = qword_1EC3CFA80;
  if (!qword_1EC3CFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA80);
  }

  return result;
}

unint64_t sub_1C99C136C()
{
  result = qword_1EC3CFA88;
  if (!qword_1EC3CFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA88);
  }

  return result;
}

unint64_t sub_1C99C13C4()
{
  result = qword_1EC3CFA90;
  if (!qword_1EC3CFA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA90);
  }

  return result;
}

unint64_t sub_1C99C141C()
{
  result = qword_1EC3CFA98;
  if (!qword_1EC3CFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA98);
  }

  return result;
}

unint64_t sub_1C99C1474()
{
  result = qword_1EC3CFAA0;
  if (!qword_1EC3CFAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAA0);
  }

  return result;
}

unint64_t sub_1C99C14CC()
{
  result = qword_1EC3CFAA8;
  if (!qword_1EC3CFAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAA8);
  }

  return result;
}

unint64_t sub_1C99C1524()
{
  result = qword_1EC3CFAB0;
  if (!qword_1EC3CFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAB0);
  }

  return result;
}

unint64_t sub_1C99C157C()
{
  result = qword_1EC3CFAB8;
  if (!qword_1EC3CFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAB8);
  }

  return result;
}

unint64_t sub_1C99C15D4()
{
  result = qword_1EC3CFAC0;
  if (!qword_1EC3CFAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAC0);
  }

  return result;
}

unint64_t sub_1C99C162C()
{
  result = qword_1EC3CFAC8;
  if (!qword_1EC3CFAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAC8);
  }

  return result;
}

unint64_t sub_1C99C1684()
{
  result = qword_1EC3CFAD0;
  if (!qword_1EC3CFAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAD0);
  }

  return result;
}

unint64_t sub_1C99C16DC()
{
  result = qword_1EC3CFAD8;
  if (!qword_1EC3CFAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAD8);
  }

  return result;
}

unint64_t sub_1C99C1734()
{
  result = qword_1EC3CFAE0;
  if (!qword_1EC3CFAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAE0);
  }

  return result;
}

unint64_t sub_1C99C178C()
{
  result = qword_1EC3CFAE8;
  if (!qword_1EC3CFAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAE8);
  }

  return result;
}

unint64_t sub_1C99C17E4()
{
  result = qword_1EC3CFAF0;
  if (!qword_1EC3CFAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAF0);
  }

  return result;
}

unint64_t sub_1C99C183C()
{
  result = qword_1EC3CFAF8;
  if (!qword_1EC3CFAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAF8);
  }

  return result;
}

unint64_t sub_1C99C1894()
{
  result = qword_1EC3CFB00;
  if (!qword_1EC3CFB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB00);
  }

  return result;
}

unint64_t sub_1C99C18EC()
{
  result = qword_1EC3CFB08;
  if (!qword_1EC3CFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB08);
  }

  return result;
}

unint64_t sub_1C99C1944()
{
  result = qword_1EC3CFB10;
  if (!qword_1EC3CFB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB10);
  }

  return result;
}

unint64_t sub_1C99C199C()
{
  result = qword_1EC3CFB18;
  if (!qword_1EC3CFB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB18);
  }

  return result;
}

unint64_t sub_1C99C19F4()
{
  result = qword_1EC3CFB20;
  if (!qword_1EC3CFB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB20);
  }

  return result;
}

unint64_t sub_1C99C1A4C()
{
  result = qword_1EC3CFB28;
  if (!qword_1EC3CFB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB28);
  }

  return result;
}

unint64_t sub_1C99C1AA4()
{
  result = qword_1EC3CFB30;
  if (!qword_1EC3CFB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB30);
  }

  return result;
}

unint64_t sub_1C99C1AFC()
{
  result = qword_1EC3CFB38;
  if (!qword_1EC3CFB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB38);
  }

  return result;
}

unint64_t sub_1C99C1B54()
{
  result = qword_1EC3CFB40;
  if (!qword_1EC3CFB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB40);
  }

  return result;
}

unint64_t sub_1C99C1BAC()
{
  result = qword_1EC3CFB48;
  if (!qword_1EC3CFB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB48);
  }

  return result;
}

unint64_t sub_1C99C1C04()
{
  result = qword_1EC3CFB50;
  if (!qword_1EC3CFB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB50);
  }

  return result;
}

unint64_t sub_1C99C1C5C()
{
  result = qword_1EC3CFB58;
  if (!qword_1EC3CFB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB58);
  }

  return result;
}

unint64_t sub_1C99C1CB4()
{
  result = qword_1EC3CFB60;
  if (!qword_1EC3CFB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB60);
  }

  return result;
}

unint64_t sub_1C99C1D0C()
{
  result = qword_1EC3CFB68;
  if (!qword_1EC3CFB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB68);
  }

  return result;
}

unint64_t sub_1C99C1D64()
{
  result = qword_1EC3CFB70;
  if (!qword_1EC3CFB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB70);
  }

  return result;
}

unint64_t sub_1C99C1DBC()
{
  result = qword_1EC3CFB78;
  if (!qword_1EC3CFB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB78);
  }

  return result;
}

unint64_t sub_1C99C1E14()
{
  result = qword_1EC3CFB80;
  if (!qword_1EC3CFB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB80);
  }

  return result;
}

unint64_t sub_1C99C1E6C()
{
  result = qword_1EC3CFB88;
  if (!qword_1EC3CFB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB88);
  }

  return result;
}

unint64_t sub_1C99C1EC4()
{
  result = qword_1EC3CFB90;
  if (!qword_1EC3CFB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB90);
  }

  return result;
}

unint64_t sub_1C99C1F1C()
{
  result = qword_1EC3CFB98;
  if (!qword_1EC3CFB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB98);
  }

  return result;
}

unint64_t sub_1C99C1F74()
{
  result = qword_1EC3CFBA0;
  if (!qword_1EC3CFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBA0);
  }

  return result;
}

unint64_t sub_1C99C1FCC()
{
  result = qword_1EC3CFBA8;
  if (!qword_1EC3CFBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBA8);
  }

  return result;
}

unint64_t sub_1C99C2024()
{
  result = qword_1EC3CFBB0;
  if (!qword_1EC3CFBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBB0);
  }

  return result;
}

unint64_t sub_1C99C207C()
{
  result = qword_1EC3CFBB8;
  if (!qword_1EC3CFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBB8);
  }

  return result;
}

unint64_t sub_1C99C20D4()
{
  result = qword_1EC3CFBC0;
  if (!qword_1EC3CFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBC0);
  }

  return result;
}

unint64_t sub_1C99C212C()
{
  result = qword_1EC3CFBC8;
  if (!qword_1EC3CFBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBC8);
  }

  return result;
}

unint64_t sub_1C99C2184()
{
  result = qword_1EC3CFBD0;
  if (!qword_1EC3CFBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBD0);
  }

  return result;
}

unint64_t sub_1C99C21DC()
{
  result = qword_1EC3CFBD8;
  if (!qword_1EC3CFBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBD8);
  }

  return result;
}

unint64_t sub_1C99C2234()
{
  result = qword_1EC3CFBE0;
  if (!qword_1EC3CFBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBE0);
  }

  return result;
}

unint64_t sub_1C99C228C()
{
  result = qword_1EC3CFBE8;
  if (!qword_1EC3CFBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBE8);
  }

  return result;
}

unint64_t sub_1C99C22E4()
{
  result = qword_1EC3CFBF0;
  if (!qword_1EC3CFBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBF0);
  }

  return result;
}

unint64_t sub_1C99C233C()
{
  result = qword_1EC3CFBF8;
  if (!qword_1EC3CFBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBF8);
  }

  return result;
}

unint64_t sub_1C99C2394()
{
  result = qword_1EC3CFC00;
  if (!qword_1EC3CFC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC00);
  }

  return result;
}

unint64_t sub_1C99C23EC()
{
  result = qword_1EC3CFC08;
  if (!qword_1EC3CFC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC08);
  }

  return result;
}

unint64_t sub_1C99C2444()
{
  result = qword_1EC3CFC10;
  if (!qword_1EC3CFC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC10);
  }

  return result;
}

unint64_t sub_1C99C249C()
{
  result = qword_1EC3CFC18;
  if (!qword_1EC3CFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC18);
  }

  return result;
}

unint64_t sub_1C99C24F4()
{
  result = qword_1EC3CFC20;
  if (!qword_1EC3CFC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC20);
  }

  return result;
}

unint64_t sub_1C99C254C()
{
  result = qword_1EC3CFC28;
  if (!qword_1EC3CFC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC28);
  }

  return result;
}

unint64_t sub_1C99C25A4()
{
  result = qword_1EC3CFC30;
  if (!qword_1EC3CFC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC30);
  }

  return result;
}

unint64_t sub_1C99C25FC()
{
  result = qword_1EC3CFC38;
  if (!qword_1EC3CFC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC38);
  }

  return result;
}

unint64_t sub_1C99C2654()
{
  result = qword_1EC3CFC40;
  if (!qword_1EC3CFC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC40);
  }

  return result;
}

unint64_t sub_1C99C26AC()
{
  result = qword_1EC3CFC48;
  if (!qword_1EC3CFC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC48);
  }

  return result;
}

unint64_t sub_1C99C2704()
{
  result = qword_1EC3CFC50;
  if (!qword_1EC3CFC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC50);
  }

  return result;
}

unint64_t sub_1C99C275C()
{
  result = qword_1EC3CFC58;
  if (!qword_1EC3CFC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC58);
  }

  return result;
}

unint64_t sub_1C99C27B4()
{
  result = qword_1EC3CFC60;
  if (!qword_1EC3CFC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC60);
  }

  return result;
}

unint64_t sub_1C99C280C()
{
  result = qword_1EC3CFC68;
  if (!qword_1EC3CFC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC68);
  }

  return result;
}

unint64_t sub_1C99C2864()
{
  result = qword_1EC3CFC70;
  if (!qword_1EC3CFC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC70);
  }

  return result;
}

unint64_t sub_1C99C28BC()
{
  result = qword_1EC3CFC78;
  if (!qword_1EC3CFC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC78);
  }

  return result;
}

unint64_t sub_1C99C2914()
{
  result = qword_1EC3CFC80;
  if (!qword_1EC3CFC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC80);
  }

  return result;
}

unint64_t sub_1C99C296C()
{
  result = qword_1EC3CFC88;
  if (!qword_1EC3CFC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC88);
  }

  return result;
}

unint64_t sub_1C99C29C4()
{
  result = qword_1EC3CFC90;
  if (!qword_1EC3CFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC90);
  }

  return result;
}

unint64_t sub_1C99C2A1C()
{
  result = qword_1EC3CFC98;
  if (!qword_1EC3CFC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC98);
  }

  return result;
}

unint64_t sub_1C99C2A74()
{
  result = qword_1EC3CFCA0;
  if (!qword_1EC3CFCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFCA0);
  }

  return result;
}

unint64_t sub_1C99C2ACC()
{
  result = qword_1EC3CFCA8;
  if (!qword_1EC3CFCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFCA8);
  }

  return result;
}

unint64_t sub_1C99C2B24()
{
  result = qword_1EC3CFCB0;
  if (!qword_1EC3CFCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFCB0);
  }

  return result;
}

unint64_t sub_1C99C2B7C()
{
  result = qword_1EC3CFCB8;
  if (!qword_1EC3CFCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFCB8);
  }

  return result;
}

unint64_t sub_1C99C2BD4()
{
  result = qword_1EC3CFCC0;
  if (!qword_1EC3CFCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFCC0);
  }

  return result;
}

unint64_t sub_1C99C2C2C()
{
  result = qword_1EC3CFCC8;
  if (!qword_1EC3CFCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFCC8);
  }

  return result;
}

uint64_t sub_1C99C2C88()
{

  return sub_1C9A93988();
}

uint64_t sub_1C99C2CBC()
{

  return sub_1C9A93858();
}

uint64_t sub_1C99C2CE0()
{

  return sub_1C9A93988();
}

uint64_t sub_1C99C2D00()
{

  return sub_1C9A93858();
}

uint64_t sub_1C99C2D20()
{

  return sub_1C9A93858();
}

uint64_t sub_1C99C2D3C()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1C99C2D68(uint64_t a1)
{

  return sub_1C97ACC50(v1, 1, 1, a1);
}

BOOL sub_1C99C2D88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v2;
  v11[2] = *(a1 + 32);
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v5;
  v10[2] = *(a2 + 32);
  v7 = *(a2 + 48);
  v6 = *(a2 + 56);
  v8 = static TimeRange.== infix(_:_:)(v11, v10);
  result = 0;
  if (v8 && v4 == v7)
  {
    return v3 == v6;
  }

  return result;
}

uint64_t sub_1C99C2E04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74657366666FLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
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

uint64_t sub_1C99C2F20(char a1)
{
  if (!a1)
  {
    return 0x676E6152656D6974;
  }

  if (a1 == 1)
  {
    return 0x74657366666FLL;
  }

  return 0x6E656469666E6F63;
}

uint64_t sub_1C99C2F7C(void *a1)
{
  v3 = v1;
  v5 = sub_1C97A2CEC(&unk_1EC3CFCF8);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99C438C();
  sub_1C9A93DD8();
  v11 = v3[1];
  v14 = *v3;
  v15 = v11;
  v16 = v3[2];
  v13[15] = 0;
  sub_1C97BD12C();
  sub_1C9A93A18();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1C9A939E8();
    LOBYTE(v14) = 2;
    sub_1C9A939E8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C99C3128()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  MEMORY[0x1CCA919B0](*v0);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v1);
  MEMORY[0x1CCA919B0](v2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v3);
  if (v4 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  MEMORY[0x1CCA919B0](*&v6);
  if (v5 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v5;
  }

  return MEMORY[0x1CCA919B0](*&v7);
}

uint64_t sub_1C99C31EC()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 5);
  v6 = v0[6];
  v5 = v0[7];
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](*&v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  if (v6 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v6;
  }

  MEMORY[0x1CCA919B0](*&v7);
  if (v5 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v5;
  }

  MEMORY[0x1CCA919B0](*&v8);
  return sub_1C9A93D18();
}

uint64_t sub_1C99C32F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CFCE0);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99C438C();
  sub_1C9A93DB8();
  if (!v2)
  {
    v21 = 0;
    sub_1C97BD0D8();
    sub_1C9A938F8();
    v18 = v17[0];
    v19 = v17[1];
    v20 = v17[2];
    sub_1C99C45C4(1);
    v13 = v12;
    sub_1C99C45C4(2);
    v15 = v14;
    (*(v7 + 8))(v10, v5);
    v16 = v19;
    *a2 = v18;
    *(a2 + 16) = v16;
    *(a2 + 32) = v20;
    *(a2 + 48) = v13;
    *(a2 + 56) = v15;
  }

  return sub_1C97A592C(a1);
}

uint64_t sub_1C99C34D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99C2E04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99C34FC(uint64_t a1)
{
  v2 = sub_1C99C438C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99C3538(uint64_t a1)
{
  v2 = sub_1C99C438C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99C357C()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 5);
  v6 = v0[6];
  v5 = v0[7];
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](*&v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  if (v6 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v6;
  }

  MEMORY[0x1CCA919B0](*&v7);
  if (v5 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v5;
  }

  MEMORY[0x1CCA919B0](*&v8);
  return sub_1C9A93D18();
}

double SNAudioOffsetResult.timeRange.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___SNAudioOffsetResult_impl;
  v3 = *(v1 + OBJC_IVAR___SNAudioOffsetResult_impl + 40);
  *a1 = *(v1 + OBJC_IVAR___SNAudioOffsetResult_impl);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 16) = *(v2 + 16);
  result = *(v2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

double SNAudioOffsetResult.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v1 + OBJC_IVAR___SNAudioOffsetResult_impl;
  *v3 = *a1;
  *(v3 + 8) = *(a1 + 8);
  *(v3 + 16) = *(a1 + 16);
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v3 + 40) = v2;
  return result;
}

double sub_1C99C37DC@<D0>(_OWORD *a1@<X8>)
{
  SNAudioOffsetResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void (*SNAudioOffsetResult.timeRange.modify(void *a1))(void **a1)
{
  v3 = sub_1C97A2C48(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  SNAudioOffsetResult.timeRange.getter((v3 + 1));
  return sub_1C99C3884;
}

void sub_1C99C3884(void **a1)
{
  v1 = *a1;
  SNAudioOffsetResult.timeRange.setter(*a1 + 8);

  free(v1);
}

double (*SNAudioOffsetResult.offset.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNAudioOffsetResult_impl;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2 + 48);
  return sub_1C98277B8;
}

double (*SNAudioOffsetResult.confidence.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNAudioOffsetResult_impl;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2 + 56);
  return sub_1C98CB940;
}

id sub_1C99C3A14()
{
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x1E6960C98];
  v3 = *(MEMORY[0x1E6960C98] + 40);
  v4 = &v0[OBJC_IVAR___SNAudioOffsetResult_impl];
  *v4 = *MEMORY[0x1E6960C98];
  *(v4 + 1) = *(v2 + 8);
  *(v4 + 1) = *(v2 + 16);
  *(v4 + 4) = *(v2 + 32);
  *(v4 + 5) = v3;
  *(v4 + 6) = 0;
  *(v4 + 7) = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id SNAudioOffsetResult.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_1C98CC224(OBJC_IVAR___SNAudioOffsetResult_impl);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___SNAudioOffsetResult_impl];
  v6 = v9[2];
  *v5 = v9[1];
  v5[1] = v6;
  v7 = v9[4];
  v5[2] = v9[3];
  v5[3] = v7;
  v9[0].receiver = v4;
  v9[0].super_class = ObjectType;
  result = [(objc_super *)v9 init];
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

BOOL SNAudioOffsetResult.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v18);
  if (!v19)
  {
    return 0;
  }

  sub_1C97A2D34(&v18, v17);
  sub_1C97BD360(v17, v16);
  v11 = swift_dynamicCast() && (v3 = v15, v4 = *(v1 + OBJC_IVAR___SNAudioOffsetResult_impl + 16), v14[0] = *(v1 + OBJC_IVAR___SNAudioOffsetResult_impl), v14[1] = v4, v14[2] = *(v1 + OBJC_IVAR___SNAudioOffsetResult_impl + 32), v6 = *(v1 + OBJC_IVAR___SNAudioOffsetResult_impl + 48), v5 = *(v1 + OBJC_IVAR___SNAudioOffsetResult_impl + 56), v7 = *&v15[OBJC_IVAR___SNAudioOffsetResult_impl + 16], v13[0] = *&v15[OBJC_IVAR___SNAudioOffsetResult_impl], v13[1] = v7, v13[2] = *&v15[OBJC_IVAR___SNAudioOffsetResult_impl + 32], v9 = *&v15[OBJC_IVAR___SNAudioOffsetResult_impl + 48], v8 = *&v15[OBJC_IVAR___SNAudioOffsetResult_impl + 56], v10 = static TimeRange.== infix(_:_:)(v14, v13), v3, v10) && v6 == v9 && v5 == v8;
  sub_1C97A592C(v17);
  return v11;
}

id SNAudioOffsetResult.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C97A2494();
  v3 = objc_allocWithZone(ObjectType);
  v4 = &v3[OBJC_IVAR___SNAudioOffsetResult_impl];
  v5 = v11;
  *v4 = v10;
  *(v4 + 1) = v5;
  v6 = v13;
  *(v4 + 2) = v12;
  *(v4 + 3) = v6;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  swift_getObjectType();
  sub_1C9841DA0();
  return v7;
}

uint64_t SNAudioOffsetResult.description.getter()
{
  ObjectType = swift_getObjectType();
  *&v16[0] = 0;
  *(&v16[0] + 1) = 0xE000000000000000;
  sub_1C9A935B8();
  v15 = v16[0];
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v14, sel_description);
  v3 = sub_1C9A924A8();
  v5 = v4;

  MEMORY[0x1CCA90230](v3, v5);

  MEMORY[0x1CCA90230](0xD000000000000010, 0x80000001C9ADD780);
  sub_1C9A92AF8();
  MEMORY[0x1CCA90230](0x6469666E6F43203BLL, 0xEE00203A65636E65);
  sub_1C9A92AF8();
  MEMORY[0x1CCA90230](0x203A656D6954203BLL, 0xE800000000000000);
  SNAudioOffsetResult.timeRange.getter(v16);
  v6 = objc_opt_self();
  v13[0] = v16[0];
  v13[1] = v16[1];
  v13[2] = v16[2];
  v7 = [v6 valueWithCMTimeRange_];
  v8 = [v7 description];
  v9 = sub_1C9A924A8();
  v11 = v10;

  MEMORY[0x1CCA90230](v9, v11);

  return v15;
}

id SNAudioOffsetResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C99C424C@<D0>(_OWORD *a1@<X8>)
{
  SNAudioOffsetResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_1C99C42C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C99C42E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_1C99C4338()
{
  result = qword_1EC3CFCD8;
  if (!qword_1EC3CFCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFCD8);
  }

  return result;
}

unint64_t sub_1C99C438C()
{
  result = qword_1EC3CFCE8;
  if (!qword_1EC3CFCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFCE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AudioOffsetResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C99C44C0()
{
  result = qword_1EC3CFD08;
  if (!qword_1EC3CFD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFD08);
  }

  return result;
}

unint64_t sub_1C99C4518()
{
  result = qword_1EC3CFD10;
  if (!qword_1EC3CFD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFD10);
  }

  return result;
}

unint64_t sub_1C99C4570()
{
  result = qword_1EC3CFD18;
  if (!qword_1EC3CFD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFD18);
  }

  return result;
}

uint64_t sub_1C99C45C4@<X0>(char a1@<W8>)
{
  *(v1 - 66) = a1;

  return sub_1C9A938C8();
}

uint64_t sub_1C99C45E8(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 36) = 1;
  *(v1 + 40) = a1;
  return v1;
}

id sub_1C99C4604(uint64_t a1)
{
  v73[6] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v73[0] = 0;
  v4 = sub_1C9A761F8(v3, v73);
  if (!v4)
  {
    v28 = v73[0];
    sub_1C9A913C8();

    swift_willThrow();
    return v4;
  }

  v5 = v73[0];
  v6 = sub_1C9A92478();
  sub_1C9A6B534(v4, v6);

  v7 = sub_1C9A92478();
  v8 = sub_1C99C4EC0();
  v11 = sub_1C9A72FAC(v8, v9, v7, v10);

  if (!v11)
  {
    v29 = v73[0];
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_12;
  }

  v12 = v73[0];
  v13 = sub_1C9A92478();
  v14 = sub_1C99C4EC0();
  v17 = sub_1C9A74DF0(v14, v15, v13, v16);

  v18 = v73[0];
  if (!v17)
  {
    v30 = v73[0];
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_12;
  }

  v19 = v73[0];
  v20 = sub_1C9A92478();
  v21 = sub_1C99C4EC0();
  v24 = sub_1C9A75428(v21, v22, v20, v23);

  if (!v24)
  {
    v31 = v73[0];
    sub_1C99C4EE4();

    swift_willThrow();
    goto LABEL_12;
  }

  v71 = v17;
  v26 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_model);
  v25 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_model + 8);
  v27 = v73[0];
  sub_1C9A3B76C(v24, v26, v25);
  if (!v1)
  {
    v33 = sub_1C9A92478();
    v34 = sub_1C99C4EC0();
    v37 = sub_1C9A73214(v34, v35, v33, v36);

    v38 = v73[0];
    if (v37)
    {
      v70 = v37;
      v39 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_stepSizeFrames);
      if (!v39 || (v40 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_windowLengthFrames), v40 < v39))
      {
        sub_1C99C4CEC();
        swift_allocError();
        *v41 = 0;
        swift_willThrow();
        v42 = v38;

        return v4;
      }

      v44 = v73[0];
      sub_1C99C4ED4();
      sub_1C9A76554(v45, 1, 1, v46);
      v47 = sub_1C99C4E90();
      if (!sub_1C9A762F8(v47, v48, v11, v71, 0, 0, v49, v50) || (v51 = v72, sub_1C99C4ED4(), sub_1C9A76640(v52, v39, v40, 1, v53), v54 = sub_1C99C4E90(), v55 = v24, !sub_1C9A762F8(v54, v56, v71, v24, 0, 0, v57, v58)))
      {
        v68 = v72;
        sub_1C99C4EE4();

        swift_willThrow();
        goto LABEL_12;
      }

      v59 = v72;
      sub_1C99C4ED4();
      sub_1C9A76640(v60, v39, 512, 1, v61);
      v62 = sub_1C99C4E90();
      v63 = v24;
      v24 = v70;
      if (sub_1C9A762F8(v62, v64, v63, v70, 0, 0, v65, v66))
      {
        v67 = v72;
        sub_1C9A695C8(v4);
        sub_1C9A69B8C(v4);

        goto LABEL_7;
      }

      v69 = v72;
      sub_1C9A913C8();

      swift_willThrow();
    }

    else
    {
      v43 = v73[0];
      sub_1C99C4EE4();

      swift_willThrow();
    }

LABEL_12:
    return v4;
  }

LABEL_7:
  return v4;
}

id sub_1C99C4AEC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1;
  }

  sub_1C99C4CEC();
  swift_allocError();
  *v3 = 1;
  return swift_willThrow();
}

void sub_1C99C4B50(int a1, double a2)
{
  v6 = *v2;
  if ((*(v2 + 36) & 1) != 0 || (v2[3] == a2 ? (v7 = *(v2 + 8) == a1) : (v7 = 0), !v7))
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    *(v8 + 24) = v6;

    v9 = sub_1C97C1C8C();

    if (!v3)
    {
      v10 = *(v2 + 2);
      *(v2 + 2) = v9;

      v2[3] = a2;
      *(v2 + 8) = a1;
      *(v2 + 36) = 0;
    }
  }
}

void sub_1C99C4C40(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1C99C4604(v4);

  if (!v2)
  {
    *a2 = v5;
  }
}

unint64_t sub_1C99C4CEC()
{
  result = qword_1EC3CFD20;
  if (!qword_1EC3CFD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFD20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNSoundPrintFeatureExtractor.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C99C4E3C()
{
  result = qword_1EC3CFD28;
  if (!qword_1EC3CFD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFD28);
  }

  return result;
}

uint64_t sub_1C99C4EE4()
{

  return sub_1C9A913C8();
}

id sub_1C99C4F6C()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR___SNBooleanCancellable_isCancelled] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

_BYTE *storeEnumTagSinglePayload for NativeModelCompileUtils(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C99C50DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for LogMelState();
  swift_allocObject();
  result = sub_1C99B7E2C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C99C513C(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CFDC0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99C61BC();
  sub_1C9A93DD8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C99C5250(uint64_t a1)
{
  v2 = sub_1C99C61BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99C528C(uint64_t a1)
{
  v2 = sub_1C99C61BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

_UNKNOWN **sub_1C99C52E0()
{
  type metadata accessor for SNAudioOffsetEstimator();
  v1 = swift_allocObject();
  sub_1C99C57EC();
  if (v0)
  {
    return &off_1F4948898;
  }

  else
  {
    return v1;
  }
}

id SNEstimateAudioOffsetRequest.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4.receiver = objc_allocWithZone(ObjectType);
  v4.super_class = ObjectType;
  result = objc_msgSendSuper2(&v4, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNEstimateAudioOffsetRequest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v7);
  if (!v8)
  {
    return 0;
  }

  sub_1C97A2D34(&v7, v6);
  sub_1C97BD360(v6, v5);
  v2 = swift_dynamicCast();
  if (v2)
  {
  }

  sub_1C97A592C(v6);
  return v2;
}

id SNEstimateAudioOffsetRequest.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1C97FD140();
  sub_1C97A257C(v4, v5, v6);
  if (v1)
  {

    swift_getObjectType();
    sub_1C97FD174();
    return 0;
  }

  else
  {
    v9.receiver = objc_allocWithZone(ObjectType);
    v9.super_class = ObjectType;
    v7 = objc_msgSendSuper2(&v9, sel_init);

    swift_getObjectType();
    sub_1C97FD174();
  }

  return v7;
}

Swift::Void __swiftcall SNEstimateAudioOffsetRequest.encode(with:)(NSCoder with)
{
  v3 = sub_1C97FD140();
  sub_1C97A0908(v3, v4, v5);
  if (v1)
  {
    v6 = sub_1C9A913B8();
    [(objc_class *)with.super.isa failWithError:v6];
  }
}

id SNEstimateAudioOffsetRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C99C57EC()
{
  v2 = v0;
  v3 = *v0;
  v4 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v0[2] = 0.0;
  type metadata accessor for SNFileUtils();
  sub_1C9A456F0(v6);
  v7 = sub_1C9A91558();
  result = sub_1C97ABF20(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_1C9A91518();
    v11 = v10;
    (*(*(v7 - 8) + 8))(v6, v7);
    v12 = swift_allocObject();
    v12[2] = v9;
    v12[3] = v11;
    v12[4] = v3;
    v13 = sub_1C97C1C8C();

    if (v1)
    {

      swift_deallocPartialClassInstance();
    }

    else
    {
      v14 = *(v2 + 2);
      *(v2 + 2) = v13;
      v2[3] = 0.0;
      v15 = v13;

      sub_1C989DEA8(1);
      v17 = v16;
      sub_1C989DEA8(5);
      sub_1C989DEA8(6);
      sub_1C989DEA8(7);

      v18 = 0.0;
      v19 = 0;
      if (v17 > 0.0)
      {
        v20 = sub_1C99C6424();
        v18 = sub_1C99C63F4(v20, v21, v22, v23, 1000.0);
      }

      *(v2 + 4) = v19;
      v2[5] = v18;
    }

    return v2;
  }

  return result;
}

uint64_t sub_1C99C5A50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C99C5A7C();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C99C5A7C()
{
  sub_1C97A2CEC(&qword_1EC3C80C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9AA3B60;
  *(inited + 32) = sub_1C9A92348();
  *(inited + 40) = sub_1C9A92348();
  v1 = sub_1C97E9314(inited);
  swift_setDeallocating();
  sub_1C985D6D4();
  v2 = objc_allocWithZone(type metadata accessor for SNDSPConfiguration());

  v3 = sub_1C98CDEB8(v1);
  v4 = type metadata accessor for SNDSPGraphLoader();
  v5 = sub_1C98CC23C(v3);
  if (v5)
  {
    v4 = v5;
    sub_1C9A695C8(v5);
    sub_1C9A69B8C(v4);
  }

  else
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1C99C5BE8(void *a1, int64_t a2, void (*a3)(void))
{
  v5 = v3;
  v45 = *MEMORY[0x1E69E9840];
  v9 = sub_1C99C5FC8();
  if (v4)
  {
    return v5;
  }

  v10 = v9;
  sub_1C989DEA8(1);
  v12 = v11;

  v14 = sub_1C99C640C();
  sub_1C989DEA8(5);

  v15 = sub_1C99C640C();
  sub_1C989DEA8(6);

  v16 = sub_1C99C640C();
  sub_1C989DEA8(7);

  v17 = 0.0;
  v18 = 0;
  if (v12 > 0.0)
  {
    v19 = sub_1C99C6424();
    v17 = sub_1C99C63F4(v19, v20, v21, v22, 1000.0);
  }

  *(v5 + 4) = v18;
  v5[5] = v17;
  v23 = sub_1C99C640C();
  sub_1C989DEA8(3);
  v25 = v24;

  v26 = sub_1C99C640C();
  sub_1C989DEA8(4);
  v28 = v27;

  v39 = [objc_allocWithZone(type metadata accessor for SNAudioOffsetResult()) init];
  v29 = objc_opt_self();
  v40.start.value = 0;
  v30 = sub_1C9A76EE8(v29, a1, &v40);
  if (!v30)
  {
    v5 = v40.start.value;
    sub_1C9A913C8();

    swift_willThrow();
    return v5;
  }

  v31 = v30;
  v32 = v40.start.value;
  v33 = sub_1C9A93C88();
  result = sub_1C9A67138(a1);
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    CMTimeMake(&v40.start, v33, result);
    value = v40.start.value;
    v35 = *&v40.start.timescale;
    epoch = v40.start.epoch;
    result = sub_1C9A67138(a1);
    if ((result & 0x80000000) == 0)
    {
      CMTimeMake(&v40.start, a2, result);
      duration = v40.start;
      start.value = value;
      *&start.timescale = v35;
      start.epoch = epoch;
      CMTimeRangeMake(&v40, &start, &duration);
      v44 = v40;
      a3();
      v37 = sub_1C9A92F08();
      (a3)(v37);
      sub_1C9A92F18();
      SNAudioOffsetResult.timeRange.setter(v43);
      v38 = &v39[OBJC_IVAR___SNAudioOffsetResult_impl];
      v38[6] = v5[4] + v28;
      v38[7] = v25;
      sub_1C97A2CEC(&unk_1EC3C6E20);
      v5 = swift_allocObject();
      *(v5 + 1) = xmmword_1C9A9DF30;
      *(v5 + 4) = v39;

      return v5;
    }
  }

  __break(1u);
  return result;
}

id sub_1C99C5FC8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1;
  }

  sub_1C99C6168();
  swift_allocError();
  return swift_willThrow();
}

id sub_1C99C6024()
{
  result = sub_1C99C5FC8();
  if (!v0)
  {
    v2 = result;
    v3 = sub_1C9A92478();
    v4 = sub_1C9A6AEE4(v2, v3);

    return v4;
  }

  return result;
}

unint64_t sub_1C99C60CC()
{
  result = qword_1EC3CFDA8;
  if (!qword_1EC3CFDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFDA8);
  }

  return result;
}

unint64_t sub_1C99C6168()
{
  result = qword_1EC3CFDB0;
  if (!qword_1EC3CFDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFDB0);
  }

  return result;
}

unint64_t sub_1C99C61BC()
{
  result = qword_1EC3CFDC8;
  if (!qword_1EC3CFDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFDC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNAudioOffsetEstimator.DomainError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C99C62F0()
{
  result = qword_1EC3CFDD8;
  if (!qword_1EC3CFDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFDD8);
  }

  return result;
}

unint64_t sub_1C99C6348()
{
  result = qword_1EC3CFDE0;
  if (!qword_1EC3CFDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFDE0);
  }

  return result;
}

unint64_t sub_1C99C63A0()
{
  result = qword_1EC3CFDE8;
  if (!qword_1EC3CFDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFDE8);
  }

  return result;
}

id sub_1C99C640C()
{

  return sub_1C99C5FC8();
}

unint64_t sub_1C99C6450()
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

uint64_t sub_1C99C64D8(uint64_t result, unsigned int a2, uint64_t a3)
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
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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

void sub_1C99C661C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
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

uint64_t sub_1C99C6814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v20[1] = a6;
  sub_1C97AE9DC();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v7, v18);
  sub_1C99C693C(v16, a3, a4, a1, a2, a5, a7);
}

uint64_t sub_1C99C693C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  result = type metadata accessor for StatefulTryMap();
  v13 = (a7 + *(result + 52));
  *v13 = a2;
  v13[1] = a3;
  v14 = (a7 + *(result + 56));
  *v14 = a4;
  v14[1] = a5;
  return result;
}

uint64_t sub_1C99C6A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v35 = a1;
  sub_1C97AE9DC();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v12[2];
  v13 = v12[3];
  v31 = v12[5];
  v32 = sub_1C9A91C58();
  sub_1C97AE9DC();
  v34 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v30 = &v26 - v17;
  v18 = *(a2 + 32);
  v28 = swift_allocBox();
  v29 = v4;
  (*(v4 + *(a2 + 52)))();
  (*(v8 + 16))(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  v19 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = v14;
  *(v21 + 3) = v13;
  *(v21 + 4) = v18;
  *(v21 + 5) = a3;
  v22 = v33;
  *(v21 + 6) = v31;
  *(v21 + 7) = v22;
  (*(v8 + 32))(&v21[v19], v27, a2);
  *&v21[v20] = v28;

  v23 = v30;
  sub_1C9A91F68();

  v24 = v32;
  swift_getWitnessTable();
  sub_1C9A920B8();
  (*(v34 + 8))(v23, v24);
}

uint64_t sub_1C99C6C98(uint64_t a1, uint64_t a2)
{
  v4 = swift_projectBox();
  v5 = *(a2 + *(type metadata accessor for StatefulMap() + 56));
  swift_beginAccess();
  v5(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C99C6D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v30 = a2;
  v31 = a1;
  v5 = a2 - 8;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = *(v5 + 24);
  v9 = *(v5 + 32);
  v26 = *(v5 + 48);
  v27 = v8;
  v10 = v9;
  sub_1C9A91CB8();
  sub_1C97AE9DC();
  v28 = v12;
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  v15 = *(v5 + 40);
  v16 = swift_allocBox();
  (*(v4 + *(v5 + 60)))();
  v17 = *(v6 + 16);
  v25 = v4;
  v17(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v30);
  v18 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v27;
  *(v19 + 3) = v10;
  v21 = v32;
  v20 = v33;
  *(v19 + 4) = v15;
  *(v19 + 5) = v21;
  *(v19 + 6) = v26;
  *(v19 + 7) = v20;
  (*(v6 + 32))(&v19[v18], &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
  *&v19[(v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8] = v16;

  sub_1C9A92048();

  v22 = v29;
  swift_getWitnessTable();
  sub_1C9A920B8();
  (*(v28 + 8))(v14, v22);
}

uint64_t sub_1C99C703C(uint64_t a1, uint64_t a2)
{
  v4 = swift_projectBox();
  v5 = *(a2 + *(type metadata accessor for StatefulTryMap() + 56));
  swift_beginAccess();
  v5(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C99C711C(uint64_t a1)
{
  type metadata accessor for StatefulTryMap();
  sub_1C99C741C();
  return sub_1C99C703C(a1, v1 + v3);
}

uint64_t sub_1C99C7200(uint64_t (*a1)(void, __int128 *))
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 48);
  v7 = *(v1 + 16);
  v6 = v7;
  v8 = v2;
  v9 = v3;
  v4 = *(a1(0, &v7) - 8);
  (*(*(v6 - 8) + 8))(v1 + ((*(v4 + 80) + 64) & ~*(v4 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C99C7328(uint64_t a1)
{
  type metadata accessor for StatefulMap();
  sub_1C99C741C();
  return sub_1C99C6C98(a1, v1 + v3);
}

uint64_t AudioFileSequence.init(url:audioFormat:bufferFrameCapacity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)()@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = sub_1C9A91558();
  sub_1C97AE9C8();
  v10 = v9;
  v11 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = (*(v12 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  result = (*(v10 + 32))(v14 + v11, a1, v8);
  *(v14 + v13) = a2;
  *a4 = sub_1C9812A50;
  a4[1] = v14;
  a4[2] = a3;
  return result;
}

uint64_t sub_1C99C7528(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    while (a2 != -1 || result != 0x8000000000000000)
    {
      v3 = a2;
      a2 = result % a2;
      result = v3;
      if (!a2)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return result;
  }

  return result;
}

void *sub_1C99C7564(uint64_t (*a1)(uint64_t), uint64_t a2, unint64_t a3)
{
  v3 = sub_1C98254FC(a1, a2, a3);

  return v3;
}

id sub_1C99C7598(uint64_t a1)
{
  v2 = sub_1C9A91558();
  sub_1C97AE9C8();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  (*(v4 + 16))(&v13 - v7, a1, v2);
  v9 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v10 = sub_1C99CA018(v8);
  v11 = [v10 length];

  return v11;
}

void sub_1C99C78B0(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = [*a1 framePosition];
  if (v6 >= [v5 length])
  {
    goto LABEL_8;
  }

  v7 = [v5 processingFormat];
  v8 = *(a2 + 8);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }

  if (HIDWORD(v8))
  {
    goto LABEL_13;
  }

  v9 = v7;
  v10 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v7 frameCapacity:v8];

  if (v10)
  {
    v13[0] = 0;
    if ([v5 readIntoBuffer:v10 error:v13])
    {
      v11 = v13[0];
      if ([v10 frameLength])
      {
LABEL_9:
        *a3 = v10;
        return;
      }

LABEL_8:
      v10 = 0;
      goto LABEL_9;
    }

    v12 = v13[0];
    sub_1C9A913C8();

    swift_willThrow();
  }

  else
  {
    sub_1C9812B64();
    swift_allocError();
    swift_willThrow();
  }
}

AVAudioPCMBuffer_optional __swiftcall AudioFileSequence.Iterator.next()()
{
  v1 = *v0;

  v2 = objc_autoreleasePoolPush();
  if (!*(v1 + 16))
  {
    sub_1C97A2CEC(&unk_1EC3D2870);
    sub_1C9825A44();
    v6 = swift_allocError();
    swift_willThrow();
    objc_autoreleasePoolPop(v2);

LABEL_5:
    sub_1C99C9F50();
    v3 = 0;
    goto LABEL_6;
  }

  v8 = *(v1 + 16);
  sub_1C99C78B0(&v8, v0, &v9);
  v3 = v9;
  objc_autoreleasePoolPop(v2);

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_6:
  v7 = v3;
  result.value.super._impl = v4;
  result.value.super.super.isa = v7;
  result.is_nil = v5;
  return result;
}

unint64_t sub_1C99C7B34@<X0>(unint64_t *a1@<X8>)
{
  result = AudioFileSequence.Iterator.next()();
  *a1 = result;
  return result;
}

uint64_t sub_1C99C7B5C()
{
  sub_1C97A2CEC(&qword_1EC3C83F8);
  sub_1C97F07FC();
  swift_allocObject();
  return sub_1C99C9E78(sub_1C99CA4DC);
}

uint64_t AudioFileSequence.makeIterator()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = (*v1)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C99C7C40@<X0>(uint64_t *a1@<X8>)
{
  AudioFileSequence.makeIterator()(a1);
}

id sub_1C99C7C90(uint64_t a1, void *a2)
{
  sub_1C9A91558();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  v8 = [a2 settings];
  v9 = sub_1C9A92328();

  v10 = [a2 commonFormat];
  LOBYTE(a2) = [a2 isInterleaved];
  v11 = objc_allocWithZone(MEMORY[0x1E6958408]);
  return sub_1C99CA2A0(v6, v9, v10, a2);
}

id sub_1C99C7DE8(uint64_t a1, id a2)
{
  sub_1C9A91558();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1C99CA628(v6, v13);
  v8(v7);
  v9 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v10 = sub_1C99CA018(v3);
  if (!v2)
  {
    v11 = v10;
    a2 = sub_1C99C7ED0(v10, a2);
  }

  return a2;
}

id sub_1C99C7ED0(void *a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = [a1 processingFormat];
  v5 = [a2 isEqual_];

  if (v5)
  {
    return a1;
  }

  sub_1C99CA438();
  v7[0] = 0;
  return sub_1C99C8BA4(a1, a2, v7);
}

void sub_1C99C7FB0(void *a1)
{
  v2 = [a1 fileFormat];
  [v2 sampleRate];
  v4 = v3;

  sub_1C99CA608();
  if (!(v6 ^ v7 | v5))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 <= -2147483650.0)
  {
    goto LABEL_7;
  }

  sub_1C99CA5F8();
  if (v6)
  {
    v8 = v4;
    CMTimeMake(v36, 0, v4);
    value = v36[0].value;
    epoch = v36[0].epoch;
    v11 = *&v36[0].timescale;
    v12 = CMTimeMake(v36, [a1 length], v8);
    v20 = sub_1C99CA64C(v12, v13, v14, v15, v16, v17, v18, v19, v36[0].value, *&v36[0].timescale, v36[0].epoch, value);
    v23 = CMTimeRangeMake(v22, v20, v21);
    sub_1C99CA614(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33, v34, v35, v11, epoch, *&v36[0].value, *&v36[0].epoch, v31);
    return;
  }

LABEL_8:
  __break(1u);
}

void sub_1C99C80BC(void *a1, double a2)
{
  sub_1C99C7FB0(a1);
  type metadata accessor for SNTimeUtils();
  sub_1C99CA608();
  if (!(v4 ^ v5 | v3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2 <= -2147483650.0)
  {
    goto LABEL_7;
  }

  sub_1C99CA5F8();
  if (v4)
  {
    v6 = sub_1C97CB164(v15, v16);
    sub_1C99CA614(v6, v7, v8, v9, v10, v11, v12, v13, v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v16[0], v16[1], v14);
    return;
  }

LABEL_8:
  __break(1u);
}

double sub_1C99C8158@<D0>(_OWORD *a1@<X8>)
{
  sub_1C9A91558();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1C99CA628(v5, v12);
  v7(v6);
  v8 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v9 = sub_1C99CA154(v2, 1, 0);
  if (!v1)
  {
    v11 = v9;
    sub_1C99C7FB0(v9);

    *a1 = v12;
    a1[1] = v13;
    result = *&v14;
    a1[2] = v14;
  }

  return result;
}

double sub_1C99C8248@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for SNTimeUtils();
  sub_1C97CC8B4(sub_1C99CA4C0, v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_1C99C82C8@<D0>(_OWORD *a1@<X8>)
{
  result = sub_1C99C8158(v5);
  if (!v1)
  {
    v4 = v5[1];
    *a1 = v5[0];
    a1[1] = v4;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

void sub_1C99C8448(void *a1, uint64_t (*a2)(id *), uint64_t a3, uint64_t (*a4)(void *, id *), uint64_t a5, uint64_t a6, void *a7)
{
  v7 = a7;
  v9 = a1;
  v37 = *MEMORY[0x1E69E9840];
  v10 = &selRef_numberWithUnsignedInteger_;
  v11 = &off_1E8348000;
  if (a1)
  {
    while (1)
    {
      v35 = 0;
      v12 = a2(&v35);
      v13 = v35;
      if (!v12)
      {
        break;
      }

      v14 = v12;
      v15 = v35;
      v16 = v9;
      if ([v14 frameCapacity] < v9)
      {
        v16 = [v14 frameCapacity];
      }

      [v14 v10[45]];
      v17 = [v7 framePosition];
      if (v17 >= [v7 length])
      {
        [v14 v10[45]];
      }

      else
      {
        v35 = 0;
        v18 = [v7 readIntoBuffer:v14 frameCount:v16 error:&v35];
        if (v18)
        {
          v19 = v35;
          v20 = v15;
        }

        else
        {
          v21 = v35;
          v22 = v11;
          v23 = a5;
          v24 = sub_1C9A913C8();

          swift_willThrow();
          v20 = sub_1C9A913B8();
          v25 = v20;
          v26 = v24;
          a5 = v23;
          v11 = v22;
          v7 = a7;
        }

        v27 = v20;

        if (!v18)
        {
          goto LABEL_25;
        }

        v15 = v27;
      }

      if (![v14 v11[415]])
      {

        return;
      }

      if (v9 < [v14 v11[415]])
      {
        type metadata accessor for SNError();
        v35 = 0;
        v36 = 0xE000000000000000;
        sub_1C9A935B8();

        v35 = 0xD000000000000029;
        v36 = 0x80000001C9ADD8E0;
        if ([v14 v11[415]] >= v9)
        {
          v31 = sub_1C9A93A98();
          MEMORY[0x1CCA90230](v31);

          sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 2, 0, v35, v36);

          swift_willThrow();

          goto LABEL_27;
        }

LABEL_30:
        __break(1u);
      }

      v28 = [v14 v11[415]];
      v29 = (v9 - v28);
      if (v9 < v28)
      {
        __break(1u);
        goto LABEL_30;
      }

      v35 = v15;
      v30 = a4(v14, &v35);
      v27 = v35;

      if ((v30 & 1) == 0)
      {
        if (v27)
        {
          goto LABEL_26;
        }

        __break(1u);
LABEL_25:
        if (v27)
        {
LABEL_26:
          swift_willThrow();

LABEL_27:
          v7 = v14;
          goto LABEL_28;
        }

LABEL_32:

        __break(1u);
        return;
      }

      v9 = v29;
      v10 = &selRef_numberWithUnsignedInteger_;
      if (!v9)
      {
        goto LABEL_28;
      }
    }

    if (v35)
    {
      swift_willThrow();
      v13;
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_28:
}

void sub_1C99C87F4(void *a1, uint64_t (*a2)(id *), uint64_t a3, uint64_t (*a4)(void *, id, id *), uint64_t a5, uint64_t (*a6)(void *, id *))
{
  v7 = a1;
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  while (1)
  {
    v26 = 0;
    v8 = a2(&v26);
    v9 = v26;
    if (!v8)
    {
      if (v26)
      {
        swift_willThrow();
        v9;
        return;
      }

      __break(1u);
      goto LABEL_26;
    }

    v10 = v8;
    v11 = v26;
    v12 = v7;
    if ([v10 frameCapacity] < v7)
    {
      v12 = [v10 frameCapacity];
    }

    [v10 setFrameLength_];
    v26 = v11;
    v13 = a4(v10, v12, &v26);
    v14 = v26;

    if ((v13 & 1) == 0)
    {
      if (v14)
      {
        swift_willThrow();

        return;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (!sub_1C99CA670())
    {

      return;
    }

    if (v7 < sub_1C99CA670())
    {
      type metadata accessor for SNError();
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_1C9A935B8();

      v26 = 0xD000000000000029;
      v27 = 0x80000001C9ADD8E0;
      if (sub_1C99CA670() >= v7)
      {
        v19 = sub_1C9A93A98();
        MEMORY[0x1CCA90230](v19);

        v20 = v27;
        v21 = sub_1C99CA65C();
        sub_1C9929478(v21, v22, 2, 0, v23, v20);

        swift_willThrow();

        goto LABEL_22;
      }

LABEL_24:
      __break(1u);
    }

    v15 = sub_1C99CA670();
    v16 = (v7 - v15);
    if (v7 < v15)
    {
      __break(1u);
      goto LABEL_24;
    }

    v26 = v14;
    v17 = a6(v10, &v26);
    v18 = v26;

    if ((v17 & 1) == 0)
    {
      break;
    }

    v7 = v16;
    if (!v16)
    {
      return;
    }
  }

  if (!v18)
  {
LABEL_27:
    __break(1u);
    return;
  }

  swift_willThrow();
LABEL_22:
}

uint64_t sub_1C99C8AB8(uint64_t result)
{
  if (result)
  {
    type metadata accessor for SNError();
    sub_1C9A935B8();

    v1 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v1);

    v2 = sub_1C99CA65C();
    sub_1C9929478(v2, v3, 1, 0, v4, 0x80000001C9ADD910);

    return swift_willThrow();
  }

  return result;
}

id sub_1C99C8BA4(void *a1, void *a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initSecondaryReader:a1 format:a2 error:a3];

  return v5;
}

void sub_1C99C8C08(void *a1, uint64_t a2)
{
  v4 = [a1 processingFormat];
  v5 = [v4 channelLayout];

  v6 = [objc_allocWithZone(MEMORY[0x1E6958418]) initWithStreamDescription:a2 channelLayout:v5];
  if (v6)
  {
    sub_1C99C7ED0(a1, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C99C8CCC(void *a1, double a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a1 processingFormat];
  v5 = [v4 streamDescription];

  v7 = *v5;
  v6 = v5[1];
  v10 = *(v5 + 4);
  v8[1] = *(&v7 + 1);
  v9 = v6;
  *v8 = a2;
  sub_1C99C8C08(a1, v8);
}

void *(*sub_1C99C8D88(void *a1, uint64_t a2, char a3))()
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  if (a3)
  {
    sub_1C97F07FC();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    v8 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:a1 frameCapacity:a2];

    *(v7 + 16) = 0;
    v9 = sub_1C99CA490;
    if (v8)
    {
      sub_1C97F07FC();
      *(swift_allocObject() + 16) = v8;

      return sub_1C99CA498;
    }
  }

  else
  {
    v10 = a1;
    return sub_1C99CA484;
  }

  return v9;
}

id sub_1C99C8EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(MEMORY[0x1E6958440]);

  return [v5 initWithPCMFormat:a2 frameCapacity:a3];
}

uint64_t sub_1C99C8EF0(void *a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    v4 = *(a2 + 16);
    *a1 = v4;
    v5 = v4;
  }

  return 0;
}

uint64_t sub_1C99C8F4C(void *a1, uint64_t a2, void *a3, id a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v8 = [a4 framePosition];
  if (v8 >= [a4 length])
  {
    [a1 setFrameLength_];
    return 1;
  }

  v13[0] = 0;
  if ([a4 readIntoBuffer:a1 frameCount:a2 error:v13])
  {
    v9 = v13[0];
    return 1;
  }

  v11 = v13[0];
  v12 = sub_1C9A913C8();

  swift_willThrow();
  if (a3)
  {
    *a3 = sub_1C9A913B8();
  }

  return 0;
}