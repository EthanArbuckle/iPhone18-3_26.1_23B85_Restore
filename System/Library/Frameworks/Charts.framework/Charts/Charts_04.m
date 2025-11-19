double sub_1AACF6BF0(uint64_t a1)
{
  *(a1 + 336) = 0;
  result = 0.0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1AACF6C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1AACF5D54(0, &qword_1ED9B31F8, sub_1AACC9D70, type metadata accessor for Signal);
  v6 = swift_allocObject();
  sub_1AACF6D8C(v15);
  v7 = v15[4];
  *(v6 + 120) = v15[5];
  v8 = v15[7];
  *(v6 + 136) = v15[6];
  *(v6 + 152) = v8;
  v9 = v15[0];
  *(v6 + 56) = v15[1];
  v10 = v15[3];
  *(v6 + 72) = v15[2];
  *(v6 + 88) = v10;
  *(v6 + 104) = v7;
  *(v6 + 168) = v16;
  *(v6 + 40) = v9;
  *(v6 + 176) = 0;
  *(v6 + 184) = 0;
  v11 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1AACDECB4;
  *(v12 + 24) = v5;
  v13 = *(v11 + 176);
  *(v11 + 176) = sub_1AACD8838;
  *(v11 + 184) = v12;

  sub_1AACB4A98(v13);

  return v11;
}

double sub_1AACF6D8C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = -2;
  return result;
}

unint64_t sub_1AACF6DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1AACF5D54(0, &qword_1ED9B3200, sub_1AACC9DEC, type metadata accessor for Signal);
  v6 = swift_allocObject();
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 136) = -2;
  *(v6 + 144) = 0;
  *(v6 + 152) = 0;
  v7 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1AACDECB4;
  *(v8 + 24) = v5;
  v9 = *(v7 + 144);
  *(v7 + 144) = sub_1AACD8838;
  *(v7 + 152) = v8;

  sub_1AACB4A98(v9);

  return v7;
}

unint64_t sub_1AACF6EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AACC9BB0(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AAF9DE80;
  *(v6 + 32) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  sub_1AACF5D54(0, &qword_1ED9B3208, sub_1AACCF364, type metadata accessor for Signal);
  v8 = swift_allocObject();
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0;
  *(v8 + 144) = -2;
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  v9 = sub_1AACBD668(v6);

  v10 = swift_allocObject();
  *(v10 + 16) = sub_1AACDB01C;
  *(v10 + 24) = v7;
  v11 = *(v9 + 152);
  *(v9 + 152) = sub_1AACD8800;
  *(v9 + 160) = v10;

  sub_1AACB4A98(v11);

  return v9;
}

unint64_t sub_1AACF7068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1AACF5D54(0, &qword_1ED9B3208, sub_1AACCF364, type metadata accessor for Signal);
  v6 = swift_allocObject();
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0;
  *(v6 + 144) = -2;
  *(v6 + 152) = 0;
  *(v6 + 160) = 0;
  v7 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1AACDECB4;
  *(v8 + 24) = v5;
  v9 = *(v7 + 152);
  *(v7 + 152) = sub_1AACD8838;
  *(v7 + 160) = v8;

  sub_1AACB4A98(v9);

  return v7;
}

void sub_1AACF71BC()
{
  if (!qword_1ED9B34A8[0])
  {
    sub_1AACF5D54(255, &qword_1ED9B3208, sub_1AACCF364, type metadata accessor for Signal);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1ED9B34A8);
    }
  }
}

uint64_t sub_1AACF7254(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v3 = sub_1AACF741C(*(a1 + 16), 0);
  v4 = sub_1AACF74C8(&v12, v3 + 32, v2, a1);

  result = sub_1AACC9C00();
  if (v4 == v2)
  {
    if (v3 < 0)
    {
      goto LABEL_9;
    }

LABEL_6:
    if ((v3 & 0x4000000000000000) == 0)
    {

      sub_1AAF90504();
      type metadata accessor for AnySignal();
      v6 = v3;
LABEL_8:

      v7 = swift_allocObject();
      *(v7 + 16) = a1;
      sub_1AACF7624();
      v8 = swift_allocObject();
      v8[6] = 0;
      v8[7] = 0;
      v8[5] = 0;
      v9 = sub_1AACBD668(v6);

      v10 = swift_allocObject();
      *(v10 + 16) = sub_1AACDB278;
      *(v10 + 24) = v7;
      v11 = *(v9 + 48);
      *(v9 + 48) = sub_1AACD8838;
      *(v9 + 56) = v10;

      sub_1AACB4A98(v11);

      return v9;
    }

LABEL_9:
    type metadata accessor for AnySignal();

    v6 = sub_1AAF902D4();

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void *sub_1AACF7424(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AAD6D1F0(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1AACF74D0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1AACF7624()
{
  if (!qword_1ED9B31B8)
  {
    sub_1AACCA000(255, &qword_1ED9B2AB8, MEMORY[0x1E69E5E28]);
    v0 = type metadata accessor for Signal();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B31B8);
    }
  }
}

unint64_t sub_1AACF7698(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v30 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, qword_1ED9B3E60, &type metadata for AnyChartContent, MEMORY[0x1E69E6720]);
  v4 = *a1;

  MEMORY[0x1AC598430](v5);
  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9E68(0);
  v6 = a1[1];

  MEMORY[0x1AC598430](v7);
  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACCA000(0, &qword_1ED9B2AB8, MEMORY[0x1E69E5E28]);
  v8 = a1[2];

  MEMORY[0x1AC598430](v9);
  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9CF4();
  v10 = a1[3];

  MEMORY[0x1AC598430](v11);
  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9D70();
  v12 = a1[4];

  MEMORY[0x1AC598430](v13);
  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9DEC();
  v14 = a1[5];

  MEMORY[0x1AC598430](v15);
  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v16 = *v4;
  v17 = *v6;
  v18 = *v8;
  v19 = *v10;
  v20 = *v12;
  v21 = *v14;
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = v16;
  v22[5] = v17;
  v22[6] = v18;
  v22[7] = v19;
  v22[8] = v20;
  v22[9] = v21;
  sub_1AACC9BB0(0, &unk_1ED9B31D0, &type metadata for SgNode, type metadata accessor for Signal);
  v23 = swift_allocObject();
  v23[6] = 0;
  v23[7] = 0;
  v23[5] = 0xF000000000000007;

  v24 = sub_1AACBD668(v30);

  v25 = swift_allocObject();
  *(v25 + 16) = sub_1AACDB280;
  *(v25 + 24) = v22;
  v26 = *(v24 + 48);
  *(v24 + 48) = sub_1AACD8838;
  *(v24 + 56) = v25;

  sub_1AACB4A98(v26);

  return v24;
}

uint64_t sub_1AACF7B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1E69E7CC0];
  v52 = MEMORY[0x1E69E7CC0];
  v5 = a4 + 64;
  v6 = 1 << *(a4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a4 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
LABEL_4:
  result = a4;
  while (v8)
  {
LABEL_5:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v10 << 6);
    v14 = *(*(a4 + 56) + 24 * v13 + 16);
    v15 = *(v14 + 16);
    if (v15)
    {
      v31 = v5;
      v32 = v9;
      v35 = *(*(a4 + 48) + v13);

      v17 = 0;
      v44 = 0;
      v34 = v15 - 1;
      for (i = v14; ; v14 = i)
      {
        v40 = v17;
        v18 = v14 + v17;
        v19 = *(v18 + 32);
        v20 = *(v18 + 40);
        v45 = *(v18 + 48);
        v54[0] = *(v18 + 49);
        *(v54 + 3) = *(v18 + 52);
        v21 = *(v18 + 56);
        v22 = *(v18 + 64);
        v53[0] = *(v18 + 65);
        *(v53 + 3) = *(v18 + 68);
        v42 = *(v18 + 72);
        v43 = v19;
        v23 = sub_1AAEA0404(v42);
        v41 = v21;
        if (v22)
        {
          v24 = sub_1AAEA4478(v51, sub_1AAEB2074, 0);
        }

        else
        {

          v24 = sub_1AACF263C(v21);
        }

        if (v45)
        {
          v25 = sub_1AAD282BC;
          v26 = 0;
          v27 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v26 = sub_1AAEA05AC(v20);

          sub_1AACC14E4(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_1AAF9DE80;
          *(v27 + 32) = v26;
          v25 = sub_1AAEB2A34;
        }

        sub_1AAEB29A4();
        swift_allocObject();

        v28 = sub_1AAEAA3A8(v27, v25, v26);
        v49 = a2;
        v50 = a1;
        v51[0] = &v50;
        v51[1] = &v49;
        v47 = v24;
        v48 = v23;
        v51[2] = &v48;
        v51[3] = &v47;
        v46 = v28;
        v51[4] = &v46;
        v29 = swift_allocObject();
        *(v29 + 16) = v35;
        *(v29 + 24) = v44;
        *(v29 + 32) = v43;
        *(v29 + 40) = v20;
        *(v29 + 48) = v45;
        *(v29 + 49) = v54[0];
        *(v29 + 52) = *(v54 + 3);
        *(v29 + 56) = v41;
        *(v29 + 64) = v22;
        *(v29 + 65) = v53[0];
        *(v29 + 68) = *(v53 + 3);
        *(v29 + 72) = v42;
        *(v29 + 80) = a3;

        sub_1AAEA457C(v51, sub_1AAEB2A20, v29);

        MEMORY[0x1AC598430](v30);
        if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AAF8F874();
        }

        sub_1AAF8F8C4();

        if (v34 == v44)
        {
          break;
        }

        v17 = v40 + 48;
        ++v44;
      }

      v4 = v52;

      v5 = v31;
      v9 = v32;
      goto LABEL_4;
    }
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v16 >= v9)
    {

      return v4;
    }

    v8 = *(v5 + 8 * v16);
    ++v10;
    if (v8)
    {
      v10 = v16;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AACF7FD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

unint64_t sub_1AACF8008(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v4 = sub_1AAF8FFB4();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v16 = MEMORY[0x1E69E7CC0];
    result = sub_1AAF901E4();
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = 0;
    if ((a2 & 0xC000000000000001) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    for (i = MEMORY[0x1AC598D40](v7, a2); ; i = )
    {
      v13 = i;
      v14 = a1;
      v15[0] = &v14;
      v15[1] = &v13;

      sub_1AAEA49A0(v15, sub_1AAEB2628, 0);
      sub_1AAF901B4();
      sub_1AAF901F4();
      sub_1AAF90204();
      sub_1AAF901C4();
      if (v4 - 1 == v7)
      {
        break;
      }

      ++v7;
      if ((a2 & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }

LABEL_7:
      ;
    }

    v5 = v16;
  }

  sub_1AACC14E4(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AAF9DE80;
  *(inited + 32) = a1;
  v15[0] = v5;

  sub_1AACF82B4(inited);
  v10 = v15[0];
  if (v15[0] >> 62)
  {
    type metadata accessor for AnySignal();

    v11 = sub_1AAF902D4();
  }

  else
  {

    sub_1AAF90504();
    type metadata accessor for AnySignal();
    v11 = v10;
  }

  v12 = swift_allocObject();
  v12[2] = sub_1AACFEA44;
  v12[3] = 0;
  v12[4] = v10;
  sub_1AACC14E4(0, &qword_1ED9B31C8, &type metadata for SgPadding, type metadata accessor for Signal);
  swift_allocObject();
  return sub_1AACF669C(v11, sub_1AACDCED8, v12);
}

uint64_t sub_1AACF82E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1AAF8FFB4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = sub_1AAF8FFB4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1AAEAFD78();
          sub_1AAEB02DC(&qword_1EB4268D0, sub_1AAEAFD78);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1AAEAD53C(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1AACC9BB0(0, &qword_1ED9B31C8, &type metadata for SgPadding, type metadata accessor for Signal);
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

unint64_t sub_1AACF84A0(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v21 = MEMORY[0x1E69E7CC0];
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  type metadata accessor for CGSize(0);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = *v6;
  v13 = *v8;
  v14 = *v10;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  sub_1AACC9BB0(0, &unk_1ED9B31D0, &type metadata for SgNode, type metadata accessor for Signal);
  v16 = swift_allocObject();
  v16[6] = 0;
  v16[7] = 0;
  v16[5] = 0xF000000000000007;

  v17 = sub_1AACBD668(v21);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AACE351C;
  *(v18 + 24) = v15;
  v19 = *(v17 + 48);
  *(v17 + 48) = sub_1AACD8838;
  *(v17 + 56) = v18;

  sub_1AACB4A98(v19);

  return v17;
}

uint64_t sub_1AACF8750(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 62)
  {
    v8 = sub_1AAF8FFB4();
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v23 = MEMORY[0x1E69E7CC0];
    result = sub_1AAF901E4();
    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v11 = 0;
    if ((a2 & 0xC000000000000001) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    for (i = MEMORY[0x1AC598D40](v11, a2); ; i = )
    {
      v20 = i;
      v21 = a1;
      v22[0] = &v21;
      v22[1] = &v20;
      v19 = a4;
      v22[2] = &v19;

      sub_1AAEA4BCC(v22, sub_1AAEB2620, a3);
      sub_1AAF901B4();
      sub_1AAF901F4();
      sub_1AAF90204();
      sub_1AAF901C4();
      if (v8 - 1 == v11)
      {
        break;
      }

      ++v11;
      if ((a2 & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }

LABEL_7:
      ;
    }

    v9 = v23;
  }

  if (v9 >> 62)
  {
    type metadata accessor for AnySignal();

    v13 = sub_1AAF902D4();
  }

  else
  {

    sub_1AAF90504();
    type metadata accessor for AnySignal();
    v13 = v9;
  }

  v14 = swift_allocObject();
  v14[2] = sub_1AAD14BCC;
  v14[3] = 0;
  v14[4] = v9;
  sub_1AACC14E4(0, &unk_1ED9B31D0, &type metadata for SgNode, type metadata accessor for Signal);
  v15 = swift_allocObject();
  v15[6] = 0;
  v15[7] = 0;
  v15[5] = 0xF000000000000007;
  v16 = sub_1AACBD668(v13);

  v17 = swift_allocObject();
  *(v17 + 16) = sub_1AAD04F6C;
  *(v17 + 24) = v14;
  v18 = *(v16 + 48);
  *(v16 + 48) = sub_1AACD8830;
  *(v16 + 56) = v17;

  sub_1AACB8784(v18);

  return v16;
}

uint64_t sub_1AACF8A10()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AACF8A74(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1AAF8FFB4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = sub_1AAF8FFB4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1AAEAFC74();
          sub_1AAEB02DC(&qword_1EB4268B8, sub_1AAEAFC74);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1AAEAD53C(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1AACC9BB0(0, &unk_1ED9B31D0, &type metadata for SgNode, type metadata accessor for Signal);
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

unint64_t sub_1AACF8C34(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v27 = MEMORY[0x1E69E7CC0];
  v5 = *a1;

  MEMORY[0x1AC598430](v6);
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  type metadata accessor for CGSize(0);
  v7 = a1[1];

  MEMORY[0x1AC598430](v8);
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v9 = a1[2];

  MEMORY[0x1AC598430](v10);
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v11 = a1[3];

  MEMORY[0x1AC598430](v12);
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v13 = a1[4];

  MEMORY[0x1AC598430](v14);
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v15 = *v5;
  v16 = *v7;
  v17 = *v9;
  v18 = *v11;
  v19 = *v13;
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = v15;
  v20[5] = v16;
  v20[6] = v17;
  v20[7] = v18;
  v20[8] = v19;
  sub_1AACC9BB0(0, &qword_1ED9B31C8, &type metadata for SgPadding, type metadata accessor for Signal);
  v21 = swift_allocObject();
  *(v21 + 40) = 0u;
  *(v21 + 56) = 0u;
  *(v21 + 72) = 1;
  *(v21 + 80) = 0;
  *(v21 + 88) = 0;

  v22 = sub_1AACBD668(v27);

  v23 = swift_allocObject();
  *(v23 + 16) = sub_1AAD0FACC;
  *(v23 + 24) = v20;
  v24 = *(v22 + 80);
  *(v22 + 80) = sub_1AACD8800;
  *(v22 + 88) = v23;

  sub_1AACB4A98(v24);

  return v22;
}

void sub_1AACF900C(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    a4(255, a3, MEMORY[0x1E69E5E28]);
    v5 = type metadata accessor for Signal();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AACF9078(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v18 = MEMORY[0x1E69E7CC0];
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACF92C8(0, &qword_1ED9B2AC8, MEMORY[0x1E69E5E28]);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AACF5D54(0, &qword_1ED9B31A0, sub_1AACFE60C, type metadata accessor for Signal);
  v13 = swift_allocObject();
  v13[6] = 0;
  v13[7] = 0;
  v13[5] = 0;

  v14 = sub_1AACBD668(v18);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEAFA2C;
  *(v15 + 24) = v12;
  v16 = *(v14 + 48);
  *(v14 + 48) = sub_1AACD8838;
  *(v14 + 56) = v15;

  sub_1AACB4A98(v16);

  return v14;
}

void sub_1AACF92C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AACFDD38();
    v7 = a3(a1, &type metadata for EncodableProperty, &type metadata for AnyFormatStyle, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AACF9334(unsigned __int8 a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  result = sub_1AACB6398(a1);
  if ((v9 & 1) == 0 || (*(*(a2 + 56) + 88 * result + 55) & 0x40) == 0)
  {
    return 0;
  }

  if (!*(a3 + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_1AACB6398(a1);
  if ((v10 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a4(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v11 = result;

    return v11;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_1AACF93EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AACF9334(5u, a1, a2, sub_1AAEAF480);
  sub_1AACF9334(6u, a1, a2, sub_1AAEAF1EC);
  sub_1AACF9334(8u, a1, a2, sub_1AAEAF378);
  sub_1AACF9334(7u, a1, a2, sub_1AAEAF504);
  v6 = sub_1AACF96C4(5u, a1, a2, sub_1AAEAF3FC);
  sub_1AACF96C4(7u, a1, a2, sub_1AACC9C70);
  if (*(a1 + 16) && (v7 = sub_1AACB6398(5u), (v8 & 1) != 0))
  {
    v9 = *(a1 + 56) + 88 * v7;
    v10 = *v9;
    v11 = *(v9 + 8);
  }

  else
  {
    v10 = 0;
    v11 = -1;
  }

  v28 = sub_1AACF9780(v12);
  v29[0] = &v28;

  v27 = sub_1AACF991C(v13);
  v29[1] = &v27;

  v26 = sub_1AACF9A84(v14);
  v29[2] = &v26;

  v25 = sub_1AACF9C40(v15);
  v29[3] = &v25;
  v23 = sub_1AACF9DA4(v29, sub_1AACFECA8, 0);
  v24[0] = &v23;

  v22 = sub_1AACFA350(v6);
  v24[1] = &v22;

  v20 = a3;
  v21 = sub_1AACFA4B4(v16);
  v24[2] = &v21;
  v24[3] = &v20;
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  *(v17 + 24) = v11;

  v18 = sub_1AACFA648(v24, sub_1AACFE334, v17);

  return v18;
}

unint64_t sub_1AACF96C4(unsigned __int8 a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  result = sub_1AACB6398(a1);
  if ((v9 & 1) == 0 || (*(*(a2 + 56) + 88 * result + 55) & 0x60) != 0)
  {
    return 0;
  }

  if (!*(a3 + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_1AACB6398(a1);
  if ((v10 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a4(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v11 = result;

    return v11;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_1AACF9780(uint64_t a1)
{
  if (a1)
  {
    sub_1AACB25D8(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AAF9DE80;
    *(v2 + 32) = a1;
    v3 = sub_1AAEC010C;
    v4 = a1;
  }

  else
  {
    v3 = sub_1AACFDB08;
    v4 = 0;
    v2 = MEMORY[0x1E69E7CC0];
  }

  sub_1AAEC0094();
  v5 = swift_allocObject();
  *(v5 + 40) = 1;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0;

  v6 = sub_1AACBD668(v2);

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  v8 = *(v6 + 136);
  *(v6 + 136) = sub_1AACFEA94;
  *(v6 + 144) = v7;

  sub_1AACB4A98(v8);

  return v6;
}

uint64_t sub_1AACF98E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1AACF991C(uint64_t a1)
{
  if (a1)
  {
    sub_1AACB25D8(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AAF9DE80;
    *(v2 + 32) = a1;
    v3 = sub_1AAEBFF8C;
    v4 = a1;
  }

  else
  {
    v3 = sub_1AACFEAD0;
    v4 = 0;
    v2 = MEMORY[0x1E69E7CC0];
  }

  sub_1AAEBFF14();
  v5 = swift_allocObject();
  *(v5 + 40) = 1;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0;

  v6 = sub_1AACBD668(v2);

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  v8 = *(v6 + 168);
  *(v6 + 168) = sub_1AACFEA94;
  *(v6 + 176) = v7;

  sub_1AACB4A98(v8);

  return v6;
}

unint64_t sub_1AACF9A84(uint64_t a1)
{
  if (a1)
  {
    sub_1AACB25D8(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AAF9DE80;
    *(v2 + 32) = a1;
    v3 = sub_1AAEBFF0C;
    v4 = a1;
  }

  else
  {
    v3 = sub_1AACFEAE8;
    v4 = 0;
    v2 = MEMORY[0x1E69E7CC0];
  }

  sub_1AAEBFE94();
  v5 = swift_allocObject();
  sub_1AACF9C10(v14);
  v6 = v14[5];
  *(v5 + 104) = v14[4];
  *(v5 + 120) = v6;
  v7 = v14[7];
  *(v5 + 136) = v14[6];
  *(v5 + 152) = v7;
  v8 = v14[1];
  *(v5 + 40) = v14[0];
  *(v5 + 56) = v8;
  v9 = v14[3];
  *(v5 + 72) = v14[2];
  *(v5 + 88) = v9;
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  v10 = sub_1AACBD668(v2);

  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = v4;
  v12 = *(v10 + 168);
  *(v10 + 168) = sub_1AACFEA94;
  *(v10 + 176) = v11;

  sub_1AACB4A98(v12);

  return v10;
}

double sub_1AACF9C10(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

unint64_t sub_1AACF9C40(uint64_t a1)
{
  if (a1)
  {
    sub_1AACB25D8(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AAF9DE80;
    *(v2 + 32) = a1;
    v3 = sub_1AAEBFE68;
    v4 = a1;
  }

  else
  {
    v3 = sub_1AACFDF30;
    v4 = 0;
    v2 = MEMORY[0x1E69E7CC0];
  }

  sub_1AAEBFDF0();
  v5 = swift_allocObject();
  *(v5 + 40) = 1;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;

  v6 = sub_1AACBD668(v2);

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  v8 = *(v6 + 144);
  *(v6 + 144) = sub_1AACFEA94;
  *(v6 + 152) = v7;

  sub_1AACB4A98(v8);

  return v6;
}

unint64_t sub_1AACF9DA4(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v24 = MEMORY[0x1E69E7CC0];
  sub_1AACFA0C4();
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACFA148();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACFA1CC();
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACFA250();
  v12 = a1[3];

  MEMORY[0x1AC598430](v13);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v14 = *v6;
  v15 = *v8;
  v16 = *v10;
  v17 = *v12;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = v14;
  v18[5] = v15;
  v18[6] = v16;
  v18[7] = v17;
  sub_1AACFA2D4();
  v19 = swift_allocObject();
  v19[6] = 0;
  v19[7] = 0;
  v19[5] = 0;

  v20 = sub_1AACBD668(v24);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_1AACFEB54;
  *(v21 + 24) = v18;
  v22 = *(v20 + 48);
  *(v20 + 48) = sub_1AACD8838;
  *(v20 + 56) = v21;

  sub_1AACB4A98(v22);

  return v20;
}

void sub_1AACFA0C4()
{
  if (!qword_1ED9B4090)
  {
    sub_1AACC9C1C(255, &qword_1ED9B4098, MEMORY[0x1E69E6158], MEMORY[0x1E697E0B8], type metadata accessor for ConcreteScale);
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B4090);
    }
  }
}

void sub_1AACFA148()
{
  if (!qword_1ED9B4078)
  {
    sub_1AACC9C1C(255, &qword_1ED9B4080, MEMORY[0x1E69E6158], &type metadata for AnyChartSymbolShape, type metadata accessor for ConcreteScale);
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B4078);
    }
  }
}

void sub_1AACFA1CC()
{
  if (!qword_1ED9B40A0)
  {
    sub_1AACC9C1C(255, &qword_1ED9B40A8, MEMORY[0x1E69E6158], MEMORY[0x1E697DD48], type metadata accessor for ConcreteScale);
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B40A0);
    }
  }
}

void sub_1AACFA250()
{
  if (!qword_1ED9B40B0)
  {
    sub_1AACC9C1C(255, qword_1ED9B40B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScale);
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B40B0);
    }
  }
}

void sub_1AACFA2D4()
{
  if (!qword_1ED9B3198)
  {
    sub_1AACC9BB0(255, &qword_1ED9B2A78, &type metadata for LegendRenderingContext.Categories, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for Signal();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B3198);
    }
  }
}

unint64_t sub_1AACFA350(uint64_t a1)
{
  if (a1)
  {
    sub_1AACB25D8(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AAF9DE80;
    *(v2 + 32) = a1;
    v3 = sub_1AAEBFDC4;
    v4 = a1;
  }

  else
  {
    v3 = sub_1AACFDB08;
    v4 = 0;
    v2 = MEMORY[0x1E69E7CC0];
  }

  sub_1AAEBFCF0();
  v5 = swift_allocObject();
  *(v5 + 40) = 1;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0;

  v6 = sub_1AACBD668(v2);

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  v8 = *(v6 + 136);
  *(v6 + 136) = sub_1AACFEA94;
  *(v6 + 144) = v7;

  sub_1AACB4A98(v8);

  return v6;
}

unint64_t sub_1AACFA4B4(uint64_t a1)
{
  if (a1)
  {
    sub_1AACB25D8(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AAF9DE80;
    *(v2 + 32) = a1;
    v3 = sub_1AAEBFCC4;
    v4 = a1;
  }

  else
  {
    v3 = sub_1AACFDF30;
    v4 = 0;
    v2 = MEMORY[0x1E69E7CC0];
  }

  sub_1AAEBF694(0, &unk_1ED9B3230, sub_1AACFAA34, type metadata accessor for Signal);
  v5 = swift_allocObject();
  *(v5 + 40) = 1;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;

  v6 = sub_1AACBD668(v2);

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  v8 = *(v6 + 144);
  *(v6 + 144) = sub_1AACFEA94;
  *(v6 + 152) = v7;

  sub_1AACB4A98(v8);

  return v6;
}

unint64_t sub_1AACFA648(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v24 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A78, &type metadata for LegendRenderingContext.Categories, MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACFA9B0();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACFAA34();
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAF8CAA4();
  v12 = a1[3];

  MEMORY[0x1AC598430](v13);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v14 = *v6;
  v15 = *v8;
  v16 = *v10;
  v17 = *v12;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = v14;
  v18[5] = v15;
  v18[6] = v16;
  v18[7] = v17;
  sub_1AACC9BB0(0, &qword_1ED9B31E8, &type metadata for LegendRenderingContext, type metadata accessor for Signal);
  v19 = swift_allocObject();
  v19[6] = 0;
  v19[7] = 0;
  v19[5] = 0;

  v20 = sub_1AACBD668(v24);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_1AACFE300;
  *(v21 + 24) = v18;
  v22 = *(v20 + 48);
  *(v20 + 48) = sub_1AACD8800;
  *(v20 + 56) = v21;

  sub_1AACB4A98(v22);

  return v20;
}

void sub_1AACFA9B0()
{
  if (!qword_1ED9B4050)
  {
    sub_1AACC9C1C(255, &qword_1ED9B4060, MEMORY[0x1E69E63B0], MEMORY[0x1E697E0B8], type metadata accessor for ConcreteScale);
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B4050);
    }
  }
}

void sub_1AACFAA34()
{
  if (!qword_1ED9B4068)
  {
    sub_1AACC9C1C(255, &qword_1ED9B4070, MEMORY[0x1E69E63B0], MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScale);
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B4068);
    }
  }
}

uint64_t sub_1AACFAAB8(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v32 = v5;
  v33 = result;
  v31 = v1;
  while (v4)
  {
LABEL_10:
    v10 = *(*(result + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v4)))));
    v11 = v10 >> 62;
    v12 = v10;
    if (v10 >> 62)
    {
      v13 = sub_1AAF8FFB4();
    }

    else
    {
      v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v8 >> 62;
    if (v8 >> 62)
    {
      result = sub_1AAF8FFB4();
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = v13;
    v15 = __OFADD__(result, v13);
    v16 = result + v13;
    if (v15)
    {
      goto LABEL_39;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v14)
      {
LABEL_20:
        sub_1AAF8FFB4();
      }

LABEL_21:
      result = sub_1AAF90134();
      v17 = result;
      v18 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_22;
    }

    if (v14)
    {
      goto LABEL_20;
    }

    v17 = v8;
    v18 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v16 > *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

LABEL_22:
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    v21 = v12;
    v34 = v17;
    if (v11)
    {
      result = sub_1AAF8FFB4();
      v21 = v12;
      v22 = result;
    }

    else
    {
      v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 &= v4 - 1;
    if (v22)
    {
      if (((v20 >> 1) - v19) < v36)
      {
        goto LABEL_41;
      }

      v23 = v18 + 8 * v19 + 32;
      if (v11)
      {
        if (v22 < 1)
        {
          goto LABEL_43;
        }

        v24 = v21;
        sub_1AAD9B4FC();
        sub_1AAEB02DC(&qword_1EB4268A8, sub_1AAD9B4FC);
        for (i = 0; i != v22; ++i)
        {
          v26 = sub_1AAEAD5BC(v35, i, v24);
          v28 = *v27;

          (v26)(v35, 0);
          *(v23 + 8 * i) = v28;
        }
      }

      else
      {
        sub_1AACC9BB0(0, &qword_1ED9B1740, &type metadata for AnyPrimitivePlottableArray, type metadata accessor for Signal);
        swift_arrayInitWithCopy();
      }

      v5 = v32;
      result = v33;
      v1 = v31;
      v8 = v34;
      if (v36 >= 1)
      {
        v29 = *(v18 + 16);
        v15 = __OFADD__(v29, v36);
        v30 = v29 + v36;
        if (v15)
        {
          goto LABEL_42;
        }

        *(v18 + 16) = v30;
      }
    }

    else
    {

      v5 = v32;
      result = v33;
      v8 = v34;
      if (v36 > 0)
      {
        goto LABEL_40;
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v8;
    }

    v4 = *(v1 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

unint64_t sub_1AACFAE38(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v24 = MEMORY[0x1E69E7CC0];
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACCA000(0, &qword_1ED9B2AB8, MEMORY[0x1E69E5E28]);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACFE434(0, &qword_1ED9B2AA8, MEMORY[0x1E69E5E28]);
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACF92C8(0, &qword_1ED9B2AC8, MEMORY[0x1E69E5E28]);
  v12 = a1[3];

  MEMORY[0x1AC598430](v13);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v14 = *v6;
  v15 = *v8;
  v16 = *v10;
  v17 = *v12;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = v14;
  v18[5] = v15;
  v18[6] = v16;
  v18[7] = v17;
  sub_1AACF5D54(0, &qword_1ED9B3188, sub_1AACFDD8C, type metadata accessor for Signal);
  v19 = swift_allocObject();
  v19[6] = 0;
  v19[7] = 0;
  v19[5] = 1;

  v20 = sub_1AACBD668(v24);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_1AAEAF9C0;
  *(v21 + 24) = v18;
  v22 = *(v20 + 48);
  *(v20 + 48) = sub_1AACD8838;
  *(v20 + 56) = v21;

  sub_1AACB4A98(v22);

  return v20;
}

unint64_t sub_1AACFB1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1AACC9BB0(0, &qword_1ED9B0DD8, &type metadata for AxisMarkPreset.Storage, type metadata accessor for Signal);
  v6 = swift_allocObject();
  *(v6 + 40) = 3;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  v7 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1AAD13104;
  *(v8 + 24) = v5;
  v9 = *(v7 + 48);
  *(v7 + 48) = sub_1AACD8800;
  *(v7 + 56) = v8;

  sub_1AACB4A98(v9);

  return v7;
}

void *sub_1AACFB310(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), void (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1AAD6CF88(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 5);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[4 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 32 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void sub_1AACFB478(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1AAD6CF88(255, &qword_1ED9B1750, type metadata accessor for AxisMarkRenderContext, type metadata accessor for Signal);
    sub_1AAD6C9B4();
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

unint64_t sub_1AACFB538(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v15 = MEMORY[0x1E69E7CC0];
  sub_1AACE49D8();
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = *v6;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  sub_1AACC9BB0(0, &qword_1ED9B31C8, &type metadata for SgPadding, type metadata accessor for Signal);
  v10 = swift_allocObject();
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 1;
  *(v10 + 80) = 0;
  *(v10 + 88) = 0;

  v11 = sub_1AACBD668(v15);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1AAD14AB4;
  *(v12 + 24) = v9;
  v13 = *(v11 + 80);
  *(v11 + 80) = sub_1AACD8838;
  *(v11 + 88) = v12;

  sub_1AACB4A98(v13);

  return v11;
}

unint64_t sub_1AACFB710(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AACB6398(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1AACF4D48(v14, a3 & 1);
      result = sub_1AACB6398(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1AAF905B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1AAD9695C();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_1AACFB85C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t AxisValue.as<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  sub_1AACCAE10(v7, v8, v9);
  return sub_1AACFB938(v7, v8, v9, a1, a2, a3);
}

uint64_t sub_1AACFB938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v248 = a5;
  v247 = a3;
  v241 = a2;
  v244 = a6;
  v245 = a1;
  v200 = sub_1AAF8CA64();
  v199 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v217 = v7;
  v220 = &v197 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AAF8FE74();
  v9 = *(v8 - 8);
  v234 = v8;
  v235 = v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v201 = &v197 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v198 = &v197 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v197 = &v197 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v219 = &v197 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v218 = &v197 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v216 = &v197 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v215 = &v197 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v214 = &v197 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v213 = &v197 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v212 = &v197 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v211 = &v197 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v210 = &v197 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v209 = &v197 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v208 = &v197 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v207 = &v197 - v38;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = sub_1AAF8FE74();
  v41 = *(v40 - 8);
  v236 = v40;
  v237 = v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v232 = &v197 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v231 = &v197 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v230 = &v197 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v229 = &v197 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v228 = &v197 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v227 = &v197 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v226 = &v197 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v225 = &v197 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v224 = &v197 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v223 = &v197 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v222 = &v197 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v221 = &v197 - v65;
  v239 = *(AssociatedTypeWitness - 8);
  v66 = *(v239 + 64);
  v67 = MEMORY[0x1EEE9AC00](v64);
  v206 = &v197 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1EEE9AC00](v67);
  v205 = &v197 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v204 = &v197 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v203 = &v197 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v202 = &v197 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v78 = &v197 - v77;
  v79 = MEMORY[0x1EEE9AC00](v76);
  v81 = &v197 - v80;
  v82 = MEMORY[0x1EEE9AC00](v79);
  v84 = &v197 - v83;
  v85 = MEMORY[0x1EEE9AC00](v82);
  v87 = &v197 - v86;
  v88 = MEMORY[0x1EEE9AC00](v85);
  v90 = &v197 - v89;
  v91 = MEMORY[0x1EEE9AC00](v88);
  v93 = &v197 - v92;
  v94 = MEMORY[0x1EEE9AC00](v91);
  v238 = &v197 - v95;
  v96 = MEMORY[0x1EEE9AC00](v94);
  v98 = &v197 - v97;
  v243 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v233 = &v197 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v101 = *(AssociatedConformanceWitness + 16);
  v240 = AssociatedTypeWitness;
  v101(&v252, AssociatedTypeWitness, AssociatedConformanceWitness);
  switch(v252)
  {
    case 1:
      sub_1AAE8AD04();
      v119 = v222;
      v159 = v245;
      v160 = v241;
      v105 = v242;
      v161 = v247;
      v162 = v248;
      sub_1AAE86AAC(v245, v222);
      sub_1AACCA728(v159, v160, v161);
      v164 = v239;
      v163 = v240;
      if ((*(v239 + 48))(v119, 1, v240) == 1)
      {
        goto LABEL_36;
      }

      (*(v164 + 32))(v93, v119, v163);
      v165 = v238;
      (*(v164 + 16))(v238, v93, v163);
      v118 = v208;
      (*(v162 + 32))(v165, v105, v162);
      (*(v164 + 8))(v93, v163);
      goto LABEL_45;
    case 2:
      sub_1AAE8ACB0();
      v102 = v223;
      v137 = v245;
      v138 = v241;
      v105 = v242;
      v139 = v247;
      v140 = v248;
      sub_1AAE86AAC(v245, v223);
      sub_1AACCA728(v137, v138, v139);
      v142 = v239;
      v141 = v240;
      if ((*(v239 + 48))(v102, 1, v240) == 1)
      {
        goto LABEL_19;
      }

      (*(v142 + 32))(v90, v102, v141);
      v143 = v238;
      (*(v142 + 16))(v238, v90, v141);
      v111 = v209;
      (*(v140 + 32))(v143, v105, v140);
      (*(v142 + 8))(v90, v141);
      goto LABEL_38;
    case 3:
      sub_1AAE8AC5C();
      v102 = v224;
      v144 = v245;
      v145 = v241;
      v105 = v242;
      v146 = v247;
      v147 = v248;
      sub_1AAE86AAC(v245, v224);
      sub_1AACCA728(v144, v145, v146);
      v149 = v239;
      v148 = v240;
      if ((*(v239 + 48))(v102, 1, v240) == 1)
      {
        goto LABEL_19;
      }

      (*(v149 + 32))(v87, v102, v148);
      v189 = v238;
      (*(v149 + 16))(v238, v87, v148);
      v111 = v210;
      (*(v147 + 32))(v189, v105, v147);
      (*(v149 + 8))(v87, v148);
      goto LABEL_38;
    case 4:
      sub_1AADF24EC();
      v119 = v225;
      v129 = v245;
      v130 = v241;
      v105 = v242;
      v131 = v247;
      v123 = v248;
      sub_1AAE86AAC(v245, v225);
      sub_1AACCA728(v129, v130, v131);
      v125 = v239;
      v124 = v240;
      if ((*(v239 + 48))(v119, 1, v240) == 1)
      {
        goto LABEL_36;
      }

      (*(v125 + 32))(v84, v119, v124);
      v126 = v238;
      (*(v125 + 16))(v238, v84, v124);
      v127 = *(v123 + 32);
      v128 = &v242;
      goto LABEL_44;
    case 5:
      sub_1AAE8AC08();
      v119 = v226;
      v166 = v245;
      v167 = v241;
      v105 = v242;
      v168 = v247;
      v169 = v248;
      sub_1AAE86AAC(v245, v226);
      sub_1AACCA728(v166, v167, v168);
      v171 = v239;
      v170 = v240;
      if ((*(v239 + 48))(v119, 1, v240) == 1)
      {
        goto LABEL_36;
      }

      (*(v171 + 32))(v81, v119, v170);
      v172 = v238;
      (*(v171 + 16))(v238, v81, v170);
      v118 = v212;
      (*(v169 + 32))(v172, v105, v169);
      (*(v171 + 8))(v81, v170);
      goto LABEL_45;
    case 6:
      sub_1AAE8ABB4();
      v119 = v227;
      v176 = v245;
      v177 = v241;
      v105 = v242;
      v178 = v247;
      v179 = v248;
      sub_1AAE86AAC(v245, v227);
      sub_1AACCA728(v176, v177, v178);
      v181 = v239;
      v180 = v240;
      if ((*(v239 + 48))(v119, 1, v240) == 1)
      {
        goto LABEL_36;
      }

      (*(v181 + 32))(v78, v119, v180);
      v182 = v238;
      (*(v181 + 16))(v238, v78, v180);
      v118 = v213;
      (*(v179 + 32))(v182, v105, v179);
      (*(v181 + 8))(v78, v180);
      goto LABEL_45;
    case 7:
      sub_1AAE8AB60();
      v119 = v228;
      v150 = v245;
      v151 = v241;
      v105 = v242;
      v152 = v247;
      v153 = v248;
      sub_1AAE86AAC(v245, v228);
      sub_1AACCA728(v150, v151, v152);
      v155 = v239;
      v154 = v240;
      if ((*(v239 + 48))(v119, 1, v240) == 1)
      {
        goto LABEL_36;
      }

      v156 = v202;
      (*(v155 + 32))(v202, v119, v154);
      v157 = v238;
      (*(v155 + 16))(v238, v156, v154);
      v158 = v214;
      (*(v153 + 32))(v157, v105, v153);
      (*(v155 + 8))(v156, v154);
      v116 = v243;
      if ((*(v243 + 48))(v158, 1, v105))
      {
        (*(v235 + 8))(v158, v234);
        v113 = v244;
        goto LABEL_47;
      }

      v175 = v158;
      v113 = v244;
      goto LABEL_52;
    case 8:
      sub_1AAE8AB0C();
      v119 = v229;
      v186 = v245;
      v187 = v241;
      v105 = v242;
      v188 = v247;
      v123 = v248;
      sub_1AAE86AAC(v245, v229);
      sub_1AACCA728(v186, v187, v188);
      v125 = v239;
      v124 = v240;
      if ((*(v239 + 48))(v119, 1, v240) == 1)
      {
        goto LABEL_36;
      }

      v84 = v203;
      (*(v125 + 32))(v203, v119, v124);
      v126 = v238;
      (*(v125 + 16))(v238, v84, v124);
      v127 = *(v123 + 32);
      v128 = &v246;
      goto LABEL_44;
    case 9:
      sub_1AAE8AAB8();
      v119 = v230;
      v134 = v245;
      v135 = v241;
      v105 = v242;
      v136 = v247;
      v123 = v248;
      sub_1AAE86AAC(v245, v230);
      sub_1AACCA728(v134, v135, v136);
      v125 = v239;
      v124 = v240;
      if ((*(v239 + 48))(v119, 1, v240) == 1)
      {
        goto LABEL_36;
      }

      v84 = v204;
      (*(v125 + 32))(v204, v119, v124);
      v126 = v238;
      (*(v125 + 16))(v238, v84, v124);
      v127 = *(v123 + 32);
      v128 = &v248;
      goto LABEL_44;
    case 10:
      sub_1AAE8AA64();
      v119 = v231;
      v183 = v245;
      v184 = v241;
      v105 = v242;
      v185 = v247;
      v123 = v248;
      sub_1AAE86C6C(v245, v231);
      sub_1AACCA728(v183, v184, v185);
      v125 = v239;
      v124 = v240;
      if ((*(v239 + 48))(v119, 1, v240) == 1)
      {
        goto LABEL_36;
      }

      v84 = v205;
      (*(v125 + 32))(v205, v119, v124);
      v126 = v238;
      (*(v125 + 16))(v238, v84, v124);
      v127 = *(v123 + 32);
      v128 = &v250;
      goto LABEL_44;
    case 11:
      sub_1AAE8AA10();
      v119 = v232;
      v120 = v245;
      v121 = v241;
      v105 = v242;
      v122 = v247;
      v123 = v248;
      sub_1AAE86C6C(v245, v232);
      sub_1AACCA728(v120, v121, v122);
      v125 = v239;
      v124 = v240;
      if ((*(v239 + 48))(v119, 1, v240) == 1)
      {
LABEL_36:
        (*(v237 + 8))(v119, v236);
        goto LABEL_42;
      }

      v84 = v206;
      (*(v125 + 32))(v206, v119, v124);
      v126 = v238;
      (*(v125 + 16))(v238, v84, v124);
      v127 = *(v123 + 32);
      v128 = &v251;
LABEL_44:
      v118 = *(v128 - 32);
      v127(v126, v105, v123);
      (*(v125 + 8))(v84, v124);
LABEL_45:
      v116 = v243;
      v191 = (*(v243 + 48))(v118, 1, v105);
      v113 = v244;
      if (v191)
      {
        goto LABEL_46;
      }

LABEL_51:
      v175 = v118;
      goto LABEL_52;
    case 12:
      v112 = v247;
      if (v247)
      {
        goto LABEL_13;
      }

      v113 = v244;
      v249 = v245;
      v116 = v243;
      if (*(*(MEMORY[0x1E69E63B0] - 8) + 64) != v66)
      {
        goto LABEL_57;
      }

      v194 = v238;
      (*(v239 + 16))(v238, &v249, v240);
      v118 = v197;
      v105 = v242;
      (*(v248 + 32))(v194, v242);
      if (!(*(v116 + 48))(v118, 1, v105))
      {
        goto LABEL_51;
      }

      goto LABEL_46;
    case 13:
      if (v247 <= 1u)
      {
        v173 = v220;
        sub_1AAF8C844();
        v116 = v243;
        v113 = v244;
        if (v217 == v66)
        {
          v174 = v238;
          (*(v239 + 16))(v238, v173, v240);
          v111 = v198;
          v105 = v242;
          (*(v248 + 32))(v174, v242);
          (*(v199 + 8))(v173, v200);
          if (!(*(v116 + 48))(v111, 1, v105))
          {
LABEL_30:
            v175 = v111;
LABEL_52:
            v195 = *(v116 + 32);
            v196 = v233;
            v195(v233, v175, v105);
            v195(v113, v196, v105);
            v192 = 0;
            return (*(v116 + 56))(v113, v192, 1, v105);
          }

LABEL_39:
          (*(v235 + 8))(v111, v234);
          goto LABEL_47;
        }

LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        JUMPOUT(0x1AACFD23CLL);
      }

      v132 = v245;
      v133 = v241;
      v112 = 2;
      goto LABEL_41;
    case 14:
      v112 = v247;
      if (v247 != 2)
      {
LABEL_13:
        v132 = v245;
        v133 = v241;
LABEL_41:
        sub_1AACCA728(v132, v133, v112);
        v105 = v242;
LABEL_42:
        v116 = v243;
        v113 = v244;
        goto LABEL_47;
      }

      v113 = v244;
      v114 = v245;
      v115 = v241;
      v249 = v245;
      v250 = v241;
      v116 = v243;
      if (*(*(MEMORY[0x1E69E6158] - 8) + 64) != v66)
      {
        __break(1u);
        goto LABEL_56;
      }

      v117 = v238;
      (*(v239 + 16))(v238, &v249, v240);
      sub_1AACCA728(v114, v115, 2);
      v118 = v201;
      v105 = v242;
      (*(v248 + 32))(v117, v242);
      if (!(*(v116 + 48))(v118, 1, v105))
      {
        v175 = v118;
        goto LABEL_52;
      }

LABEL_46:
      (*(v235 + 8))(v118, v234);
LABEL_47:
      v192 = 1;
      return (*(v116 + 56))(v113, v192, 1, v105);
    default:
      sub_1AAE8AD58();
      v102 = v221;
      v103 = v245;
      v104 = v241;
      v105 = v242;
      v106 = v247;
      v107 = v248;
      sub_1AAE86AAC(v245, v221);
      sub_1AACCA728(v103, v104, v106);
      v109 = v239;
      v108 = v240;
      if ((*(v239 + 48))(v102, 1, v240) == 1)
      {
LABEL_19:
        (*(v237 + 8))(v102, v236);
        goto LABEL_42;
      }

      (*(v109 + 32))(v98, v102, v108);
      v110 = v238;
      (*(v109 + 16))(v238, v98, v108);
      v111 = v207;
      (*(v107 + 32))(v110, v105, v107);
      (*(v109 + 8))(v98, v108);
LABEL_38:
      v116 = v243;
      v190 = (*(v243 + 48))(v111, 1, v105);
      v113 = v244;
      if (v190)
      {
        goto LABEL_39;
      }

      goto LABEL_30;
  }
}

uint64_t sub_1AACFD288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  v5 = *(v7 + 56);

  return v5(a3, 0, 1, a2);
}

void static AxisValueLabelCollisionResolution.automatic.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 1;
}

uint64_t *sub_1AACFD36C(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = (*result + 40 * a2);
  v5 = *v4;
  if ((*v4 & 0x8000000000000000) == 0)
  {
    *(v3 + 40 * v5 + 8) = v4[1];
  }

  v6 = v4[1];
  if ((v6 & 0x8000000000000000) == 0)
  {
    *(v3 + 40 * v6) = v5;
  }

  if (*(a3 + 24) == a2)
  {
    *(a3 + 24) = *v4;
  }

  *v4 = -1;
  *(v3 + 40 * *(a3 + 16)) = a2;
  v4[1] = *(a3 + 16);
  *(a3 + 16) = a2;
  return result;
}

uint64_t sub_1AACFD3F0(uint64_t a1)
{
  sub_1AACDF9B8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AACFD44C(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AACC9B78(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_1AAD95064();
    result = v17;
    goto LABEL_8;
  }

  sub_1AACFD574(v14, a2 & 1);
  result = sub_1AACC9B78(a1);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a3;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a1;
    *(v19[7] + 8 * result) = a3;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

uint64_t sub_1AACFD574(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9B5CC();
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_1AAF90684();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AACFD820(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 16);
  v3 = *a2;
  if (v2 == 2)
  {
    v4 = *(result + 8);
  }

  else
  {
    if (v2 != 255)
    {
      return result;
    }

    v4 = 4.0;
    if (*(v3 + 24) - 1 > 1)
    {
      return result;
    }
  }

  result = swift_beginAccess();
  v5 = *(v3 + 224);
  if (v5 <= v4)
  {
    v5 = v4;
  }

  *(v3 + 224) = v5;
  return result;
}

uint64_t sub_1AACFD8A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = a1[1];
  a2[1] = v2;
}

uint64_t sub_1AACFD8F0()
{
  result = type metadata accessor for ConcreteScale();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ConcreteScale();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1AACFD9B4()
{
  result = qword_1ED9B4480;
  if (!qword_1ED9B4480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9B4480);
  }

  return result;
}

void sub_1AACFDA00()
{
  if (!qword_1ED9B2880)
  {
    sub_1AACFDCAC();
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2880);
    }
  }
}

void sub_1AACFDA58()
{
  if (!qword_1ED9B36E0)
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B36E0);
    }
  }
}

void sub_1AACFDAA8()
{
  if (!qword_1ED9B2E48)
  {
    sub_1AAF8E734();
    v0 = sub_1AAF8DF74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2E48);
    }
  }
}

double sub_1AACFDB0C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *sub_1AACFDB20@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v4, &v4 + 1);
  *a1 = v4;
  return result;
}

void sub_1AACFDBAC()
{
  sub_1AACFDCAC();
  if (v0 <= 0x3F)
  {
    sub_1AAF8FE74();
    if (v1 <= 0x3F)
    {
      sub_1AACFDA00();
      if (v2 <= 0x3F)
      {
        sub_1AAF8F914();
        if (v3 <= 0x3F)
        {
          type metadata accessor for ConcreteScaleRange();
          sub_1AAF8FE74();
          if (v4 <= 0x3F)
          {
            sub_1AACFDA58();
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

unint64_t sub_1AACFDCAC()
{
  result = qword_1ED9B2888;
  if (!qword_1ED9B2888)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ED9B2888);
  }

  return result;
}

uint64_t sub_1AACFDCFC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1AACFDD38()
{
  result = qword_1ED9B4EC0[0];
  if (!qword_1ED9B4EC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B4EC0);
  }

  return result;
}

void sub_1AACFDD8C()
{
  if (!qword_1ED9B29A8)
  {
    sub_1AAD59D08(255, &qword_1ED9B4480);
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B29A8);
    }
  }
}

uint64_t sub_1AACFDDF4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;

  sub_1AACDCA88();
  *(v1 + 16) = 1;
  result = swift_beginAccess();
  v4 = *(v1 + 32);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;

    do
    {
      sub_1AACDCB7C(v6, v8, sub_1AACC9B7C);
      Strong = swift_weakLoadStrong();
      sub_1AACC9B18(v8, sub_1AACC9B7C);
      if (Strong)
      {
        *(Strong + 17) = 1;
      }

      v6 += 8;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1AACFDF04(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1AACFE87C(a1);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

double sub_1AACFDF34@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1AACFDF4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AACFDFAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AACFE00C()
{
  if (!qword_1ED9B4088)
  {
    sub_1AACFA0C4();
    sub_1AACFA148();
    sub_1AACFA1CC();
    sub_1AACFA250();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED9B4088);
    }
  }
}

uint64_t sub_1AACFE0A0(void (*a1)(uint64_t *__return_ptr, void *))
{
  sub_1AACFE248();
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACC9BB0(0, &qword_1ED9B2A78, &type metadata for LegendRenderingContext.Categories, MEMORY[0x1E69E62F8]);
  sub_1AACFA9B0();
  sub_1AACFAA34();
  sub_1AAF8CAA4();

  sub_1AACD889C(v5);

  v9[0] = v5;

  sub_1AACD889C((v5 + 8));

  v9[1] = v5 + 8;

  sub_1AACD889C((v5 + 104));

  v9[2] = v5 + 104;
  v6 = &v5[*(v3 + 88)];

  sub_1AACD889C(v6);

  v9[3] = v6;
  a1(&v10, v9);
  sub_1AACD8D78(v5, sub_1AACFE248);
  return v10;
}

void sub_1AACFE248()
{
  if (!qword_1ED9B2A70)
  {
    sub_1AACC9BB0(255, &qword_1ED9B2A78, &type metadata for LegendRenderingContext.Categories, MEMORY[0x1E69E62F8]);
    sub_1AACFA9B0();
    sub_1AACFAA34();
    sub_1AAF8CAA4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED9B2A70);
    }
  }
}

uint64_t sub_1AACFE300@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AACFE0A0(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_1AACFE340(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1AAD6A9BC(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1AACFE434(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1AACC9BB0(255, &qword_1ED9B2A60, &type metadata for AnyPrimitivePlottableArray, MEMORY[0x1E69E62F8]);
    v7 = v6;
    v8 = sub_1AACB62F8();
    v9 = a3(a1, &type metadata for Spec.Channel, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1AACFE4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1AACFE510()
{
  sub_1AACFE544();

  return swift_deallocClassInstance();
}

uint64_t sub_1AACFE544()
{

  return v0;
}

unint64_t sub_1AACFE5B8()
{
  result = qword_1ED9B6050;
  if (!qword_1ED9B6050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B6050);
  }

  return result;
}

void sub_1AACFE640(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for ConcreteScale();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1AACFE690(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v8 = a2(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20[-v10];
  v12 = a3(0, v9);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = *(*v4 + 256);
  swift_beginAccess();
  sub_1AACBD0FC(v11, v4 + v14, a4);
  swift_endAccess();
  sub_1AACDCA88();
  *(v4 + 16) = 1;
  result = swift_beginAccess();
  v16 = *(v4 + 32);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v16 + 32;

    do
    {
      sub_1AACDCB7C(v18, v20, sub_1AACC9B7C);
      Strong = swift_weakLoadStrong();
      sub_1AACC9B18(v20, sub_1AACC9B7C);
      if (Strong)
      {
        *(Strong + 17) = 1;
      }

      v18 += 8;
      --v17;
    }

    while (v17);
  }

  return result;
}

double sub_1AACFE87C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = 0uLL;
    v4 = 0uLL;
    do
    {
      v6 = *v2;
      v5 = v2[1];
      v2 += 2;
      v4 = vbslq_s8(vcgtq_f64(v5, v4), v5, v4);
      v3 = vbslq_s8(vcgtq_f64(v6, v3), v6, v3);
      --v1;
    }

    while (v1);
  }

  else
  {
    v3.f64[0] = 0.0;
  }

  return ceil(v3.f64[0]);
}

char *sub_1AACFE8D4(char *a1, int64_t a2, char a3)
{
  result = sub_1AACFE930(a1, a2, a3, *v3, &qword_1ED9B28C8, &type metadata for SgPadding);
  *v3 = result;
  return result;
}

uint64_t sub_1AACFE904@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_1AACDCC9C(a1, a2, a3);
  *a4 = v6;
  a4[1] = v7;
  a4[2] = v8;
  a4[3] = v9;
  return result;
}

char *sub_1AACFE930(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1AAD469FC(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 32 * v10);
  }

  return v12;
}

float64x2_t sub_1AACFEA44@<Q0>(uint64_t a1@<X0>, float64x2_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 48);
    v4 = 0uLL;
    v5 = 0uLL;
    do
    {
      v4 = vbslq_s8(vcgtq_f64(v3[-1], v4), v3[-1], v4);
      v5 = vbslq_s8(vcgtq_f64(*v3, v5), *v3, v5);
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = 0uLL;
    v5 = 0uLL;
  }

  result = vrndpq_f64(v4);
  *a2 = result;
  a2[1] = vrndpq_f64(v5);
  return result;
}

double sub_1AACFEAD0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_1AACFEAE8@<D0>(_OWORD *a1@<X8>)
{
  sub_1AACFEB38(v7);
  v2 = v11;
  a1[4] = v10;
  a1[5] = v2;
  v3 = v13;
  a1[6] = v12;
  a1[7] = v3;
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

double sub_1AACFEB3C(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1AACFEB6C(void (*a1)(uint64_t *__return_ptr, void *))
{
  sub_1AACFA0C4();
  sub_1AACFA148();
  sub_1AACFA1CC();
  sub_1AACFA250();

  sub_1AACD889C(v3);

  v7[0] = v3;

  sub_1AACD889C(v4);

  v7[1] = v4;

  sub_1AACD889C(v5);

  v7[2] = v5;

  sub_1AACD889C(v6);

  v7[3] = v6;
  a1(&v8, v7);
  sub_1AACD8D78(v3, sub_1AACFE00C);
  return v8;
}

uint64_t sub_1AACFECA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(*a1 + 16);
  *v58 = **a1;
  *&v58[16] = v5;
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[5];
  *&v58[64] = v3[4];
  *&v58[80] = v8;
  *&v58[32] = v6;
  *&v58[48] = v7;
  v9 = a1[2];
  v10 = a1[3];
  v12 = v9[6];
  v11 = v9[7];
  v13 = v9[4];
  v64 = v9[5];
  v65 = v12;
  v66 = v11;
  v14 = v9[3];
  v16 = *v9;
  v15 = v9[1];
  v61 = v9[2];
  v62 = v14;
  v59 = v16;
  v60 = v15;
  v63 = v13;
  v17 = *v10;
  v18 = v10[2];
  *&v67[16] = v10[1];
  *&v67[32] = v18;
  *v67 = v17;
  v19 = v10[3];
  v20 = v10[4];
  v21 = v10[5];
  *&v67[96] = *(v10 + 12);
  *&v67[64] = v20;
  *&v67[80] = v21;
  *&v67[48] = v19;
  v42 = MEMORY[0x1E69E7CC0];
  if (*v58)
  {
    v54 = *&v58[40];
    v55 = *&v58[56];
    v56 = *&v58[72];
    v51 = *v58;
    v57 = *&v58[88];
    v52 = *&v58[8];
    v53 = *&v58[24];
    sub_1AACFF080(v58, &v43, sub_1AACFA0C4);
    sub_1AAEB37B4(&v42, &v51, &v51);
    sub_1AACFDF4C(v58, sub_1AACFA0C4);
  }

  v22 = sub_1AACFF080(v4, &v43, sub_1AACFA148);
  if (v43)
  {
    v41[4] = v47;
    v41[5] = v48;
    v41[6] = v49;
    v41[7] = v50;
    v41[0] = v43;
    v41[1] = v44;
    v41[2] = v45;
    v41[3] = v46;
    MEMORY[0x1EEE9AC00](v22);
    v24[2] = v41;
    sub_1AAEB2CB0(&v42, v41, sub_1AAEB4318, v24);
    sub_1AAEB3754(v41, &qword_1ED9B4080, MEMORY[0x1E69E6158], &type metadata for AnyChartSymbolShape, sub_1AACFE640);
  }

  else
  {
    sub_1AACFDF4C(&v43, sub_1AACFA148);
  }

  v37 = v63;
  v38 = v64;
  v39 = v65;
  v40 = v66;
  v33 = v59;
  v34 = v60;
  v35 = v61;
  v36 = v62;
  result = sub_1AAEB1528(&v33);
  if (result != 1)
  {
    v47 = v37;
    v48 = v38;
    v49 = v39;
    v50 = v40;
    v43 = v33;
    v44 = v34;
    v45 = v35;
    v46 = v36;
    sub_1AACFF080(&v59, &v25, sub_1AACFA1CC);
    sub_1AAEB3B80(&v42, &v43, &v43);
    result = sub_1AACFDF4C(&v59, sub_1AACFA1CC);
  }

  if (*v67)
  {
    v25 = *v67;
    v28 = *&v67[40];
    v29 = *&v67[56];
    v30 = *&v67[72];
    v31 = *&v67[88];
    v26 = *&v67[8];
    v27 = *&v67[24];
    sub_1AACFF080(v67, &v32, sub_1AACFA250);
    sub_1AAEB3F64(&v42, &v25, &v25);
    result = sub_1AACFDF4C(v67, sub_1AACFA250);
  }

  *a2 = v42;
  return result;
}

uint64_t sub_1AACFEFFC(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1AAE28B54(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AACFF080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AACFF0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  v5 = *(a1 + 8);
  v6 = **a1;
  v7 = *v5;
  v98[1] = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v10 = v5[5];
  v101 = v5[4];
  v102 = v10;
  v99 = v8;
  v100 = v9;
  v98[0] = v7;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(v11 + 12);
  v15 = v11[3];
  v14 = v11[4];
  *&v106[32] = v11[5];
  *v106 = v15;
  *&v106[48] = v13;
  v17 = v11[1];
  v16 = v11[2];
  v103 = *v11;
  v104 = v17;
  v105 = v16;
  *&v106[16] = v14;
  if (*&v98[0] && (v18 = BYTE8(v100), BYTE8(v100) != 255) && (BYTE8(v100) & 1) != 0)
  {
    *&v87 = v12;
    v19 = *(&v99 + 1);
    v20 = v100;
    if (a3 == 255)
    {
      a2 = 1;
    }

    if (a3 == 255)
    {
      v22 = 2;
    }

    else
    {
      v22 = a3;
    }

    sub_1AACFF080(v98, v93, sub_1AACFA9B0);
    sub_1AAEB36D4(v20, v18);

    v23 = sub_1AAD6A9D0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    v26 = v23;
    if (v25 >= v24 >> 1)
    {
      v26 = sub_1AAD6A9D0((v24 > 1), v25 + 1, 1, v23);
    }

    sub_1AACFDF4C(v98, sub_1AACFA9B0);
    *(v26 + 2) = v25 + 1;
    v27 = &v26[32 * v25];
    v28 = v26;
    *(v27 + 4) = v19;
    *(v27 + 5) = v20;
    *(v27 + 6) = a2;
    v27[56] = v22;
    v12 = v87;
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
  }

  v29 = v103;
  v86 = v28;
  if (v103)
  {
    v28 = *(&v103 + 1);
    v30 = *v106;
    v93[0] = v103;
    v93[1] = v104;
    v93[2] = v105;
    v94 = *v106;
    v95 = *&v106[8];
    v96 = *&v106[24];
    v97 = *&v106[40];
    v31 = COERCE_DOUBLE(sub_1AADE69D4(*v106));
    v32 = v31;
    v34 = v33 & 1;
    v35 = 0.0;
    if (v33)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = v31;
    }

    v37 = COERCE_DOUBLE(sub_1AADC5CE8(v30));
    if ((v38 & 1) == 0)
    {
      v35 = v37;
    }

    if (!v34 && (*&v32 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || !(v38 & 1 | ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)) || v36 >= v35)
    {
      v28 = v86;
      goto LABEL_46;
    }

    if (v36 > v35)
    {
      __break(1u);
    }

    else
    {
      *&v87 = v12;
      v84 = a4;
      v85 = v6;
      sub_1AACFF080(&v103, v92, sub_1AACFAA34);
      v39 = sub_1AADEAF9C(4, 1, 1, v36, v35, 0.0);
      sub_1AAEC512C(v92, v39, v36, v35);
      v40 = sub_1AAEC4CDC();
      v41 = *(v40 + 16);
      if (v41)
      {
        v42 = (v40 + 32);
        v43 = MEMORY[0x1E69E7CC0];
        do
        {
          v46 = *v42;
          v91 = *v42;
          v29(&v88, &v91);
          if (v88 > 0.0)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v90[0] = v43;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1AACEF664(0, *(v43 + 16) + 1, 1);
              v43 = v90[0];
            }

            v45 = *(v43 + 16);
            v44 = *(v43 + 24);
            if (v45 >= v44 >> 1)
            {
              sub_1AACEF664((v44 > 1), v45 + 1, 1);
              v43 = v90[0];
            }

            *(v43 + 16) = v45 + 1;
            *(v43 + 8 * v45 + 32) = v46;
          }

          ++v42;
          --v41;
        }

        while (v41);
      }

      else
      {
        v43 = MEMORY[0x1E69E7CC0];
      }

      sub_1AAF0D208(v43, v87, v90);
      MEMORY[0x1EEE9AC00](v48);
      v82 = v90;
      v49 = sub_1AADE5BF8(sub_1AAEB36AC, &v81, v43);
      v50 = v49;
      v51 = *(v43 + 16);
      v6 = MEMORY[0x1E69E7CC0];
      if (v51)
      {
        v83 = 0;
        *&v87 = v49;
        v91 = MEMORY[0x1E69E7CC0];
        sub_1AAD411E8(0, v51, 0);
        v6 = v91;
        v52 = v43 + 32;
        do
        {
          v88 = 0.0;
          v89 = 0xE000000000000000;
          sub_1AAF8FA24();
          v49 = MEMORY[0x1AC5982F0](0x536C6F626D797324, 0xEB00000000657A69);
          v53 = v88;
          v54 = v89;
          v91 = v6;
          v56 = *(v6 + 2);
          v55 = *(v6 + 3);
          if (v56 >= v55 >> 1)
          {
            v49 = sub_1AAD411E8((v55 > 1), v56 + 1, 1);
            v6 = v91;
          }

          *(v6 + 2) = v56 + 1;
          v57 = &v6[16 * v56];
          *(v57 + 4) = v53;
          *(v57 + 5) = v54;
          v52 += 8;
          --v51;
        }

        while (v51);
        v50 = v87;
      }

      MEMORY[0x1EEE9AC00](v49);
      v82 = v93;
      v30 = sub_1AAEB3404(v43, v50, sub_1AAEB36CC);

      v58 = swift_isUniquelyReferenced_nonNull_native();
      v28 = v86;
      if (v58)
      {
        goto LABEL_43;
      }
    }

    v85 = sub_1AAD6A75C(0, *(v85 + 2) + 1, 1, v85);
LABEL_43:
    v60 = *(v85 + 2);
    v59 = *(v85 + 3);
    if (v60 >= v59 >> 1)
    {
      v85 = sub_1AAD6A75C((v59 > 1), v60 + 1, 1, v85);
    }

    sub_1AACFDF4C(v92, sub_1AAD172C4);
    sub_1AACFDF4C(&v103, sub_1AACFAA34);
    v61 = v85;
    *(v85 + 2) = v60 + 1;
    v62 = &v61[16 * v60];
    *(v62 + 4) = v6;
    *(v62 + 5) = v30;
    v6 = v61;
    sub_1AAD57C94(v90);
    a4 = v84;
  }

LABEL_46:
  v63 = *(v6 + 2);
  v64 = MEMORY[0x1E69E7CC0];
  if (v63)
  {
    v65 = a4;
    v90[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD41584(0, v63, 0);
    v66 = v90[0];
    v67 = (v6 + 32);
    do
    {
      v87 = *v67;
      v90[0] = v66;
      v68 = *(v66 + 16);
      v69 = *(v66 + 24);

      if (v68 >= v69 >> 1)
      {
        sub_1AAD41584((v69 > 1), v68 + 1, 1);
        v66 = v90[0];
      }

      *(v66 + 16) = v68 + 1;
      v70 = v66 + 32 * v68;
      *(v70 + 32) = v87;
      *(v70 + 48) = 0;
      *(v70 + 56) = 0;
      ++v67;
      --v63;
    }

    while (v63);
    a4 = v65;
    v64 = MEMORY[0x1E69E7CC0];
    v71 = *(v28 + 2);
    if (v71)
    {
      goto LABEL_52;
    }

LABEL_58:

    v72 = MEMORY[0x1E69E7CC0];
    goto LABEL_59;
  }

  v66 = MEMORY[0x1E69E7CC0];
  v71 = *(v28 + 2);
  if (!v71)
  {
    goto LABEL_58;
  }

LABEL_52:
  v83 = v66;
  v84 = a4;
  v85 = v6;
  v90[0] = v64;
  sub_1AAD41584(0, v71, 0);
  v72 = v90[0];
  v73 = v28 + 56;
  do
  {
    v74 = *(v73 - 3);
    v75 = *(v73 - 2);
    *&v87 = *(v73 - 1);
    v76 = *v73;
    v90[0] = v72;
    v78 = *(v72 + 16);
    v77 = *(v72 + 24);

    if (v78 >= v77 >> 1)
    {
      sub_1AAD41584((v77 > 1), v78 + 1, 1);
      v72 = v90[0];
    }

    v73 += 32;
    *(v72 + 16) = v78 + 1;
    v79 = v72 + 32 * v78;
    *(v79 + 32) = v74;
    *(v79 + 40) = v75;
    *(v79 + 48) = v87;
    *(v79 + 56) = v76 | 0x80;
    --v71;
  }

  while (v71);

  v66 = v83;
  a4 = v84;
LABEL_59:
  v90[0] = v66;
  result = sub_1AACFE340(v72);
  *a4 = v90[0];
  return result;
}

char *sub_1AACFF894(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1AAD6D1F0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_1AACFF9B8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a4;
  LODWORD(v37) = a3;
  v38 = a2;
  v11 = type metadata accessor for RenderBasedChartView();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v13;
  sub_1AACFFED8(v15, &v55);
  v75 = v61;
  v76[0] = *v62;
  *(v76 + 15) = *&v62[15];
  v71 = v57;
  v72 = v58;
  v73 = v59;
  v74 = v60;
  v69 = v55;
  v70 = v56;
  (*(v12 + 16))(v14, a1, v11);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v18 = v17 + v16;
  v19 = v38;
  (*(v12 + 32))(v18, v14, v11);
  v20 = sub_1AAF8F124();
  v39 = v21;
  v83 = v75;
  *v84 = v76[0];
  *&v84[15] = *(v76 + 15);
  v79 = v71;
  v80 = v72;
  v81 = v73;
  v82 = v74;
  v77 = v69;
  v78 = v70;
  if (!v19)
  {
    v22 = 0;
    v25 = 0;
    goto LABEL_9;
  }

  if ((sub_1AAF8D874() & 1) != 0 || !*(v19 + 2))
  {

    v22 = 0;
    v25 = 0;
    v19 = 0;
LABEL_9:
    v26 = 0;
    v27 = 0;
    goto LABEL_10;
  }

  sub_1AAE2F91C(v11, v67);
  v22 = v68;
  if (v68 < 2)
  {
    KeyPath = swift_getKeyPath();
    v24 = swift_getKeyPath();
    *&v55 = KeyPath;
    BYTE8(v55) = 0;
    *&v56 = v24;
    BYTE8(v56) = 0;
    sub_1AAE3944C();
    v22 = sub_1AAF8EF44();
    sub_1AACEC574(v67, &qword_1ED9B3888, &type metadata for ChartLegendConfiguration);
  }

  v25 = swift_getKeyPath();
  v26 = swift_getKeyPath();
  v27 = v36 - 3 < 2;

LABEL_10:
  v40[6] = v83;
  v40[7] = *v84;
  v40[2] = v79;
  v40[3] = v80;
  v40[4] = v81;
  v40[5] = v82;
  v40[0] = v77;
  v40[1] = v78;
  v37 = v20;
  v38 = sub_1AAD0D470;
  *&v41 = *&v84[16];
  *(&v41 + 1) = sub_1AAD0D470;
  *&v42 = v17;
  *(&v42 + 1) = v20;
  v28 = v39;
  v43 = v39;
  v54 = v39;
  v48 = v81;
  v49 = v82;
  v50 = v83;
  v51 = *v84;
  v44 = v77;
  v45 = v78;
  v46 = v79;
  v47 = v80;
  v52 = v41;
  v53 = v42;
  sub_1AAD00998(v40, &v55, sub_1AAD0113C);
  sub_1AAD01184(v22);
  sub_1AAD011E8(v22);
  v29 = v53;
  *(a7 + 128) = v52;
  *(a7 + 144) = v29;
  v30 = v54;
  v31 = v49;
  *(a7 + 64) = v48;
  *(a7 + 80) = v31;
  v32 = v51;
  *(a7 + 96) = v50;
  *(a7 + 112) = v32;
  v33 = v45;
  *a7 = v44;
  *(a7 + 16) = v33;
  v34 = v47;
  *(a7 + 32) = v46;
  *(a7 + 48) = v34;
  *(a7 + 160) = v30;
  *(a7 + 168) = v22;
  *(a7 + 176) = v25;
  *(a7 + 184) = v19;
  *(a7 + 192) = v26;
  *(a7 + 200) = v27;
  sub_1AAD011E8(v22);
  v61 = v83;
  *v62 = *v84;
  v57 = v79;
  v58 = v80;
  v59 = v81;
  v60 = v82;
  v55 = v77;
  v56 = v78;
  *&v62[16] = *&v84[16];
  v63 = v38;
  v64 = v17;
  v65 = v37;
  v66 = v28;
  return sub_1AAD00EF8(&v55, sub_1AAD0113C);
}

uint64_t sub_1AACFFDE4@<X0>(void *a1@<X8>)
{
  sub_1AAE394F4();
  result = sub_1AAF8E144();
  *a1 = v3;
  return result;
}

uint64_t sub_1AACFFE38@<X0>(_BYTE *a1@<X8>)
{
  sub_1AAE394A0();
  result = sub_1AAF8E144();
  *a1 = v3;
  return result;
}

__n128 sub_1AACFFED8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_1AAD00AC4(a1))
  {
    sub_1AAE320C4(a1, sub_1AAE3965C, sub_1AAE39BB8, &v26);
    v18 = v26;
    v19 = v27;
    v20.n128_u64[0] = v28.n128_u64[0];
    v20.n128_u8[8] = 0;
  }

  else
  {
    if ((sub_1AAD00C3C(a1) & 1) == 0)
    {
      sub_1AAD0028C(a1, v16);
      v24 = v16[6];
      *v25 = v16[7];
      *&v25[16] = v17;
      v20 = v16[2];
      v21 = v16[3];
      v22 = v16[4];
      v23 = v16[5];
      v18 = v16[0];
      v19 = v16[1];
      sub_1AAD00F58(&v18);
      sub_1AACCC1B0();
      sub_1AAD00E14(0);
      sub_1AAD00F64();
      sub_1AAD00A0C(&qword_1ED9B2C40, sub_1AAD00E14, sub_1AAD00A90);
      sub_1AAF8E374();
      goto LABEL_7;
    }

    sub_1AAE320C4(a1, sub_1AAE3976C, sub_1AAE39BB8, &v26);
    v18 = v26;
    v19 = v27;
    v20.n128_u64[0] = v28.n128_u64[0];
    v20.n128_u8[8] = 1;
  }

  sub_1AAD00B34(0, &qword_1ED9B2DD0, sub_1AACCF894, &qword_1ED9B2BC0, MEMORY[0x1E6980448]);
  sub_1AAD00FDC();

  sub_1AAF8E374();
  v18 = v26;
  v19 = v27;
  v20.n128_u64[0] = v28.n128_u64[0];
  v20.n128_u8[8] = v28.n128_u8[8];
  sub_1AAE39654(&v18);
  v32 = v24;
  v33[0] = *v25;
  *(v33 + 15) = *&v25[15];
  v28 = v20;
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v26 = v18;
  v27 = v19;
  sub_1AACCC1B0();
  sub_1AAD00E14(0);
  sub_1AAD00F64();
  sub_1AAD00A0C(&qword_1ED9B2C40, sub_1AAD00E14, sub_1AAD00A90);
  sub_1AAF8E374();

  v32 = v14;
  v33[0] = *v15;
  *(v33 + 15) = *&v15[15];
  v28 = v10;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v26 = v8;
  v27 = v9;
LABEL_7:
  v4 = v33[0];
  *(a2 + 96) = v32;
  *(a2 + 112) = v4;
  *(a2 + 127) = *(v33 + 15);
  v5 = v29;
  *(a2 + 32) = v28;
  *(a2 + 48) = v5;
  v6 = v31;
  *(a2 + 64) = v30;
  *(a2 + 80) = v6;
  result = v27;
  *a2 = v26;
  *(a2 + 16) = result;
  return result;
}

__n128 sub_1AAD0028C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v2, a1, v6);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(v9 + 16) = v11;
  *(v9 + 24) = v10;
  (*(v4 + 32))(v9 + v8, v7, a1);
  sub_1AAF8F124();
  sub_1AAF8E054();
  *&v78 = sub_1AACDD678;
  *(&v78 + 1) = v9;
  v12 = sub_1AAE2F2F4(a1);
  v77[4] = v82;
  v77[5] = v83;
  v77[6] = v84;
  v77[7] = v85;
  v77[0] = v78;
  v77[1] = v79;
  v77[2] = v80;
  v77[3] = v81;
  v23[1] = v10;
  v23[2] = v11;
  if (v12)
  {
    *&v66[0] = v12;
    *(&v66[0] + 1) = v13;
    v14 = v12;

    sub_1AAE302B0(v77, v66, &v46);
    sub_1AAE39810(&v46);
    v42 = v52;
    v43 = v53;
    LOBYTE(v44) = v54;
    v38 = v48;
    v39 = v49;
    v40 = v50;
    v41 = v51;
    v36 = v46;
    v37 = v47;
    sub_1AACCFC94(0);
    sub_1AAD00E48();
    swift_retain_n();
    sub_1AAF8E374();
    sub_1AAD00EF8(&v78, sub_1AACCFC94);
    sub_1AACB4A98(v14);

    sub_1AACB4A98(v14);
  }

  else
  {
    v31 = v82;
    v32 = v83;
    v33 = v84;
    v34 = v85;
    v27 = v78;
    v28 = v79;
    v29 = v80;
    v30 = v81;
    v48 = v80;
    v49 = v81;
    v46 = v78;
    v47 = v79;
    v52 = v84;
    v53 = v85;
    v50 = v82;
    v51 = v83;
    sub_1AAD0098C(&v46);
    v42 = v52;
    v43 = v53;
    LOBYTE(v44) = v54;
    v38 = v48;
    v39 = v49;
    v40 = v50;
    v41 = v51;
    v36 = v46;
    v37 = v47;
    sub_1AAD00998(&v27, v25, sub_1AACCFC94);
    sub_1AAD00998(&v27, v25, sub_1AACCFC94);
    sub_1AAD00998(&v27, v25, sub_1AACCFC94);
    sub_1AACCFC94(0);
    sub_1AAD00E48();
    sub_1AAF8E374();
    sub_1AAD00EF8(&v78, sub_1AACCFC94);
    sub_1AAD00EF8(&v27, sub_1AACCFC94);
    sub_1AAD00EF8(&v27, sub_1AACCFC94);
  }

  v63 = v74;
  v64 = v75;
  v59 = v70;
  v60 = v71;
  v61 = v72;
  v62 = v73;
  v57 = v68;
  v58 = v69;
  v66[6] = v74;
  v66[7] = v75;
  v66[2] = v70;
  v66[3] = v71;
  v66[4] = v72;
  v66[5] = v73;
  v65 = v76;
  v67 = v76;
  v66[0] = v68;
  v66[1] = v69;
  sub_1AAD00998(&v57, &v46, sub_1AACCD07C);
  sub_1AAD00EF8(v66, sub_1AACCD07C);
  v15 = sub_1AAE2F478(a1);
  v55[6] = v63;
  v55[7] = v64;
  v56 = v65;
  v55[2] = v59;
  v55[3] = v60;
  v55[4] = v61;
  v55[5] = v62;
  v55[0] = v57;
  v55[1] = v58;
  if (v15)
  {
    v45[0] = v15;
    v45[1] = v16;
    v17 = v15;
    sub_1AAE30390(v55, v45, &v46);
    *&v36 = v46;
    sub_1AAE39808(&v36);
    v33 = v42;
    v34 = v43;
    v35 = v44;
    v29 = v38;
    v30 = v39;
    v31 = v40;
    v32 = v41;
    v27 = v36;
    v28 = v37;
    sub_1AACCD07C(0);
    sub_1AAD00A90();

    sub_1AAF8E374();
    sub_1AAD00EF8(&v57, sub_1AACCD07C);

    sub_1AACB4A98(v17);
  }

  else
  {
    v25[6] = v63;
    v25[7] = v64;
    v25[2] = v59;
    v25[3] = v60;
    v25[4] = v61;
    v25[5] = v62;
    v25[0] = v57;
    v25[1] = v58;
    v42 = v63;
    v43 = v64;
    v38 = v59;
    v39 = v60;
    v40 = v61;
    v41 = v62;
    v26 = v65;
    LOBYTE(v44) = v65;
    v36 = v57;
    v37 = v58;
    sub_1AAD00A00(&v36);
    v33 = v42;
    v34 = v43;
    v35 = v44;
    v29 = v38;
    v30 = v39;
    v31 = v40;
    v32 = v41;
    v27 = v36;
    v28 = v37;
    sub_1AAD00998(v25, &v46, sub_1AACCD07C);
    sub_1AAD00998(v25, &v46, sub_1AACCD07C);
    sub_1AACCD07C(0);
    sub_1AAD00A90();
    sub_1AAF8E374();
    sub_1AAD00EF8(&v57, sub_1AACCD07C);
    sub_1AAD00EF8(v25, sub_1AACCD07C);
  }

  v33 = v52;
  v34 = v53;
  v29 = v48;
  v30 = v49;
  v31 = v50;
  v32 = v51;
  v27 = v46;
  v28 = v47;
  v42 = v52;
  v43 = v53;
  v38 = v48;
  v39 = v49;
  v40 = v50;
  v41 = v51;
  v35 = v54;
  v44 = v54;
  v36 = v46;
  v37 = v47;
  sub_1AAD00998(&v27, v25, sub_1AAD00E14);
  sub_1AAD00EF8(&v36, sub_1AAD00E14);
  v18 = v34;
  v19 = v24;
  *(v24 + 96) = v33;
  *(v19 + 112) = v18;
  *(v19 + 128) = v35;
  v20 = v30;
  *(v19 + 32) = v29;
  *(v19 + 48) = v20;
  v21 = v32;
  *(v19 + 64) = v31;
  *(v19 + 80) = v21;
  result = v28;
  *v19 = v27;
  *(v19 + 16) = result;
  return result;
}

uint64_t sub_1AAD00998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAD00A0C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_1AAD00AC4(uint64_t a1)
{
  if ((sub_1AAD00C3C(a1) & 1) == 0)
  {
    return 0;
  }

  sub_1AAE2FE08(a1, v4);
  sub_1AACB2684(v4);
  v2 = sub_1AAF8E794();
  sub_1AAF8E784();
  return sub_1AAF8E784() != v2;
}

void sub_1AAD00B34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1AACCC748(255, a4, a5);
    v8 = sub_1AAF8DF74();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1AAD00BB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x1E6981910], v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1AAD00C24(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AAD00C3C(uint64_t a1)
{
  sub_1AAE2FE08(a1, v15);
  v1 = LOBYTE(v15[0]);
  sub_1AACB2684(v15);
  v2 = sub_1AAF8E784();
  v3 = 0;
  if (v1 != v2)
  {
    sub_1AACB6294(0, &qword_1ED9B44B0, type metadata accessor for ChartModel, MEMORY[0x1E6981E98]);
    sub_1AAF8F1D4();
    v4 = *(v9[0] + 64);
    v11 = *(v9[0] + 48);
    v5 = *(v9[0] + 80);
    v12 = v4;
    v13 = v5;
    v14 = *(v9[0] + 96);
    v6 = *(v9[0] + 32);
    v10[0] = *(v9[0] + 16);
    v10[1] = v6;
    sub_1AAE387DC(v10, v9, &qword_1ED9B5460, &type metadata for PartialSpec.Chart, MEMORY[0x1E69E6720]);

    if (v11)
    {
      v7 = HIBYTE(v14);
      sub_1AACEC574(v10, &qword_1ED9B5460, &type metadata for PartialSpec.Chart);
      v3 = v7 ^ 1;
    }

    else
    {
      v3 = 1;
    }
  }

  return v3 & 1;
}

void sub_1AAD00D70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_1AAD00E48()
{
  result = qword_1ED9B2DB8;
  if (!qword_1ED9B2DB8)
  {
    sub_1AACCFC94(255);
    sub_1AACDCA40(&qword_1ED9B2EA0, sub_1AACCD0B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2DB8);
  }

  return result;
}

uint64_t sub_1AAD00EF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AAD00F64()
{
  result = qword_1ED9B2CB8;
  if (!qword_1ED9B2CB8)
  {
    sub_1AACCC1B0();
    sub_1AAD00FDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2CB8);
  }

  return result;
}

unint64_t sub_1AAD00FDC()
{
  result = qword_1ED9B2DD8;
  if (!qword_1ED9B2DD8)
  {
    v1 = MEMORY[0x1E6980448];
    sub_1AAD00B34(255, &qword_1ED9B2DD0, sub_1AACCF894, &qword_1ED9B2BC0, MEMORY[0x1E6980448]);
    sub_1AACDCA40(&qword_1ED9B2E90, sub_1AACCF894);
    sub_1AAD010F8(&qword_1ED9B5538, &qword_1ED9B2BC0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2DD8);
  }

  return result;
}

uint64_t sub_1AAD010F8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1AACCC748(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AAD01184(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AAD011E8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AAD01248()
{
  result = sub_1AAF8EC44();
  qword_1ED9C3950 = result;
  return result;
}

uint64_t static BuilderTuple<each A>._renderChartContent(_:_:)@<X0>(uint64_t TupleTypeMetadata@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = a3;
  v65 = a6;
  if (a3 == 1)
  {
    v10 = *(a4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v8)
    {
      v13 = 0;
      v14 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 < 4)
      {
        goto LABEL_9;
      }

      if (&v12[-v14] < 0x20)
      {
        goto LABEL_9;
      }

      v13 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v15 = (v14 + 16);
      v16 = v12 + 16;
      v17 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v18 = *v15;
        *(v16 - 1) = *(v15 - 1);
        *v16 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
      if (v13 != v8)
      {
LABEL_9:
        v19 = v8 - v13;
        v20 = 8 * v13;
        v21 = &v12[8 * v13];
        v22 = (v14 + v20);
        do
        {
          v23 = *v22++;
          *v21 = v23;
          v21 += 8;
          --v19;
        }

        while (v19);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v10 = TupleTypeMetadata;
  }

  v63 = &v61;
  v24 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v70 = *a2;
  v26 = *(a2 + 1);
  v62 = v27;
  v28 = *(v27 + 16);
  v71 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v28(v24);
  v30 = MEMORY[0x1E69E7CC0];
  v64 = v10;
  if (v8)
  {
    v31 = 0;
    v68 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v67 = a5 & 0xFFFFFFFFFFFFFFFELL;
    v32 = (v10 + 32);
    v66 = v8;
    v69 = v26;
    while (1)
    {
      v72 = &v61;
      v33 = *(v68 + 8 * v31);
      v73 = *(v67 + 8 * v31);
      v35.n128_f64[0] = MEMORY[0x1EEE9AC00](result);
      v37 = &v61 - v36;
      if (v8 == 1)
      {
        v38 = 0;
      }

      else
      {
        v38 = *v32;
      }

      v74 = v34;
      (*(v34 + 16))(v37, &v71[v38], v33, v35);
      v39 = *(v26 + 16);
      v40 = *(v39 + 16);
      v41 = *(v40 + 32);
      *&v77[0] = v31;

      sub_1AAF90024();
      v79[0] = v41;
      swift_beginAccess();
      v42 = *(v40 + 16);
      v43 = *(v42 + 16);
      v75 = v30;
      if (v43 && (v44 = sub_1AACCAE28(v79), (v45 & 1) != 0))
      {
        v46 = *(*(v42 + 56) + 8 * v44);
      }

      else
      {
        swift_endAccess();
        sub_1AAF90704();
        MEMORY[0x1AC5992C0](v31);
        MEMORY[0x1AC5992F0](v41);
        v82 = v77[2];
        v83 = v77[3];
        v84 = v78;
        v80 = v77[0];
        v81 = v77[1];
        v47 = sub_1AAF906E4();
        v46 = sub_1AACCB060(v47);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76 = *(v40 + 16);
        *(v40 + 16) = 0x8000000000000000;
        sub_1AACCB154(v46, v79, isUniquelyReferenced_nonNull_native);
        *(v40 + 16) = v76;
      }

      swift_endAccess();
      sub_1AACCAFF0(v79);
      v49 = *(v40 + 32);
      *(v40 + 32) = v46;
      v50 = *(v39 + 24);
      *(v39 + 24) = v46;
      LOBYTE(v77[0]) = v70;
      v26 = v69;
      *(&v77[0] + 1) = v69;
      (*(v73 + 40))(v79, v37, v77, v33);
      *(v39 + 24) = v50;
      *(v40 + 32) = v49;

      v51 = v79[0];
      v30 = v75;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AACE3508(0, *(v30 + 2) + 1, 1, v30);
      }

      v53 = *(v30 + 2);
      v52 = *(v30 + 3);
      if (v53 >= v52 >> 1)
      {
        v30 = sub_1AACE3508((v52 > 1), v53 + 1, 1, v30);
      }

      *(v30 + 2) = v53 + 1;
      *&v30[8 * v53 + 32] = v51;
      result = (*(v74 + 8))(v37, v33);
      if (v31 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++v31;
      v32 += 4;
      v8 = v66;
      if (v66 == v31)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_27:
    v54 = type metadata accessor for SgGroup(0);
    v55 = swift_allocBox();
    v57 = v56;
    v58 = *(*(v26 + 16) + 24);
    v59 = v54[6];
    v60 = type metadata accessor for SgClipRect(0);
    (*(*(v60 - 8) + 56))(&v57[v59], 1, 1, v60);
    *v57 = v58;
    *(v57 + 1) = v30;
    *&v57[v54[7]] = 0x3FF0000000000000;
    *&v57[v54[8]] = 0;
    *&v57[v54[9]] = MEMORY[0x1E69E7CC0];
    v57[v54[10]] = 0;
    *v65 = v55;
    return (*(v62 + 8))(v71, v64);
  }

  return result;
}

uint64_t static BuilderConditional<>._renderChartContent(_:_:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v37 = a6;
  v38 = a5;
  v40 = a7;
  v11 = *(a4 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BuilderConditional.Storage();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  v39 = *a2;
  v22 = *(a2 + 1);
  (*(v23 + 16))(&v37 - v20, a1, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v21, a4);
    v24 = *(v22 + 16);
    v25 = *(v24 + 16);
    v26 = *(v25 + 32);

    v27 = sub_1AACD5520(0, v26);
    v28 = *(v25 + 32);
    *(v25 + 32) = v27;
    v29 = *(v24 + 24);
    *(v24 + 24) = v27;
    v41[0] = v39;
    v42 = v22;
    (*(v37 + 40))(v14, v41, a4);
    *(v24 + 24) = v29;
    *(v25 + 32) = v28;

    return (*(v11 + 8))(v14, a4);
  }

  else
  {
    (*(v16 + 32))(v18, v21, a3);
    v31 = *(v22 + 16);
    v32 = *(v31 + 16);
    v33 = *(v32 + 32);

    v34 = sub_1AACD5520(1, v33);
    v35 = *(v32 + 32);
    *(v32 + 32) = v34;
    v36 = *(v31 + 24);
    *(v31 + 24) = v34;
    v41[0] = v39;
    v42 = v22;
    (*(v38 + 40))(v18, v41, a3);
    *(v31 + 24) = v36;
    *(v32 + 32) = v35;

    return (*(v16 + 8))(v18, a3);
  }
}

uint64_t sub_1AAD01C58(char **a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v44 = a8;
  v45 = a5;
  v43 = a4;
  v47 = a3;
  v38 = a1;
  v46 = a11;
  v49 = *(a7 - 8);
  v42 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = (&v37 - v18);
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v37 - v21;
  (*(v23 + 16))(v19, a2, TupleTypeMetadata2);
  v39 = *v19;
  v24 = *(TupleTypeMetadata2 + 48);
  v48 = v20;
  v25 = *(v20 + 32);
  v50 = AssociatedTypeWitness;
  v25(v22, v19 + v24, AssociatedTypeWitness);
  v26 = v43;
  v40 = *(v43 + 16);
  v61 = a6;
  v62 = a7;
  v27 = v44;
  v63 = v44;
  v64 = a9;
  v28 = v42;
  v65 = v42;
  sub_1AAF8EFE4();
  v29 = v41;
  v30 = v45;
  sub_1AAF8EFA4();
  v51 = a6;
  v52 = a7;
  v53 = v27;
  v54 = a9;
  v55 = v28;
  v56 = v46;
  v57 = v30;
  v58 = v22;
  v59 = v47 & 1;
  v60 = v26;
  sub_1AACD857C(v29);
  (*(v49 + 8))(v29, a7);
  v31 = v61;
  if (v61 != 0xE000000000000000)
  {
    v32 = v38;
    v33 = *v38;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_1AAD04BDC(0, *(v33 + 2) + 1, 1, v33);
    }

    v35 = *(v33 + 2);
    v34 = *(v33 + 3);
    if (v35 >= v34 >> 1)
    {
      v33 = sub_1AAD04BDC((v34 > 1), v35 + 1, 1, v33);
    }

    *(v33 + 2) = v35 + 1;
    *&v33[8 * v35 + 32] = v31;
    *v32 = v33;
  }

  return (*(v48 + 8))(v22, v50);
}

uint64_t sub_1AAD0209C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v61 = a2;
  sub_1AAD0A9A4(0);
  v62 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD0A9DC(0, &qword_1ED9B2D00, sub_1AAD0A9A4, MEMORY[0x1E697F948]);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v51 - v6;
  v7 = *(v2 + 496);
  v65 = *(v2 + 488);
  v66 = v7;
  if (v65)
  {
    sub_1AAD0F924(v2, v73);
    v8 = swift_allocObject();
    v9 = v66;
    v8[2] = v65;
    v8[3] = v9;
    memcpy(v8 + 4, v73, 0x1F8uLL);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1AAEBDDD8;
    *(v10 + 24) = v8;
    v63 = v10;
    v64 = sub_1AAEBDDE4;
    v11 = *(v2 + 424);
    v12 = *(v2 + 432);
    if (v11)
    {
LABEL_3:
      sub_1AAD0F924(v2, v73);
      v13 = swift_allocObject();
      v13[2] = v11;
      v13[3] = v12;
      memcpy(v13 + 4, v73, 0x1F8uLL);
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1AAEBDD8C;
      *(v14 + 24) = v13;
      v71 = sub_1AAEC0148;
      v72 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v63 = 0;
    v64 = 0;
    v11 = *(v2 + 424);
    v12 = *(v2 + 432);
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v71 = 0;
  v72 = 0;
LABEL_6:
  v16 = *(v2 + 456);
  v15 = *(v2 + 464);
  v57 = v11;
  v55 = v16;
  if (v16)
  {
    sub_1AAD0F924(v2, v73);
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v15;
    memcpy(v17 + 4, v73, 0x1F8uLL);
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1AAEBDD7C;
    *(v18 + 24) = v17;
    v69 = v18;
    v70 = sub_1AAEBDD88;
  }

  else
  {
    v69 = 0;
    v70 = 0;
  }

  v19 = *(v2 + 440);
  v20 = *(v2 + 448);
  v56 = v12;
  if (v19)
  {
    sub_1AAD0F924(v2, v73);
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v20;
    memcpy(v21 + 4, v73, 0x1F8uLL);
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1AAEBDD20;
    *(v22 + 24) = v21;
    v67 = sub_1AAEC0138;
    v68 = v22;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v53 = v15;
  v54 = v20;
  v24 = *(v2 + 472);
  v23 = *(v2 + 480);
  if (v24)
  {
    sub_1AAD0F924(v2, v73);
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = v23;
    memcpy(v25 + 4, v73, 0x1F8uLL);
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1AAEBDBB4;
    *(v26 + 24) = v25;
    v27 = sub_1AAEBDBC0;
  }

  else
  {
    v27 = 0;
    v26 = 0;
  }

  v28 = v55;
  if (*(v2 + 420) == 1)
  {
    sub_1AAD0AA94(0, &qword_1ED9B2BE8, sub_1AACCFAB4, &type metadata for ChartInternalOverlayListenerModifier, MEMORY[0x1E697FDE8]);
    (*(*(v29 - 8) + 16))(v60, v58, v29);
    swift_storeEnumTagMultiPayload();
    sub_1AACBD93C(v65);
    sub_1AACBD93C(v57);
    sub_1AACBD93C(v28);
    sub_1AACBD93C(v19);
    sub_1AACBD93C(v24);
    sub_1AAD0ABAC();
    sub_1AAD0AAFC();
    sub_1AAF8E374();
    sub_1AACB4A98(v27);
    sub_1AACB4A98(v67);
    sub_1AACB4A98(v70);
    sub_1AACB4A98(v71);
    return sub_1AACB4A98(v64);
  }

  else
  {
    sub_1AACBD93C(v65);
    sub_1AACBD93C(v57);
    sub_1AACBD93C(v28);
    sub_1AACBD93C(v19);
    sub_1AACBD93C(v24);
    v31 = sub_1AAF8F124();
    v65 = v32;
    v66 = v31;
    v33 = swift_allocObject();
    v34 = v69;
    v35 = v70;
    v36 = v33;
    v37 = v26;
    v38 = v63;
    *(v33 + 2) = v64;
    *(v33 + 3) = v38;
    v40 = v71;
    v39 = v72;
    *(v33 + 4) = v71;
    *(v33 + 5) = v39;
    v71 = v40;
    v72 = v39;
    *(v33 + 6) = v35;
    *(v33 + 7) = v34;
    v69 = v34;
    v70 = v35;
    v42 = v67;
    v41 = v68;
    *(v33 + 8) = v67;
    *(v33 + 9) = v41;
    v67 = v42;
    v68 = v41;
    v51 = v27;
    *(v33 + 10) = v27;
    *(v33 + 11) = v37;
    v43 = v37;
    v44 = swift_allocObject();
    *(v44 + 2) = v40;
    *(v44 + 3) = v39;
    *(v44 + 4) = v35;
    *(v44 + 5) = v34;
    *(v44 + 6) = v42;
    *(v44 + 7) = v41;
    *(v44 + 8) = v51;
    *(v44 + 9) = v43;
    v46 = v63;
    v45 = v64;
    *(v44 + 10) = v64;
    *(v44 + 11) = v46;
    sub_1AAD0AA94(0, &qword_1ED9B2BE8, sub_1AACCFAB4, &type metadata for ChartInternalOverlayListenerModifier, MEMORY[0x1E697FDE8]);
    v48 = v52;
    (*(*(v47 - 8) + 16))(v52, v58, v47);
    v49 = (v48 + *(v62 + 36));
    *v49 = sub_1AAEBDA7C;
    v49[1] = v36;
    v49[2] = sub_1AAEBDA94;
    v49[3] = v44;
    v50 = v65;
    v49[4] = v66;
    v49[5] = v50;
    sub_1AAEBDAF4(v48, v60);
    swift_storeEnumTagMultiPayload();
    sub_1AACBD93C(v45);
    sub_1AACBD93C(v71);
    sub_1AACBD93C(v70);
    sub_1AACBD93C(v67);
    sub_1AACBD93C(v51);
    sub_1AAD0ABAC();
    sub_1AAD0AAFC();
    sub_1AAF8E374();
    return sub_1AAEBDB58(v48);
  }
}

uint64_t sub_1AAD02808@<X0>(uint64_t a1@<X1>, int a2@<W2>, void (*a3)(void)@<X3>, uint64_t a4@<X4>, void (*a5)(void)@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v26 = a5;
  v33 = a3;
  v34 = a8;
  v32 = a2;
  v31 = a10;
  v28 = *(*(a7 + 8) + 8);
  v29 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v26 - v15;
  v17 = *(a4 - 8);
  v18 = MEMORY[0x1EEE9AC00](v14);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a4;
  v36 = v26;
  v37 = a6;
  v38 = a7;
  v39 = a9;
  sub_1AAF8EFE4();
  v26 = sub_1AAF8EFB4();
  sub_1AAF8EF94();
  v23 = sub_1AAF8FC84();
  v24 = AssociatedTypeWitness;
  (*(v13 + 16))(v16);
  v23(&v35, 0);
  (*(v17 + 8))(v20, a4);
  v26(v16);

  (*(v13 + 8))(v16, v24);
  LOBYTE(v35) = v32 & 1;
  v36 = v33;
  (*(v31 + 40))(v22, &v35, a6);
  return (*(v30 + 8))(v22, a6);
}

uint64_t sub_1AAD02B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v26 = a4;
  v29 = a2;
  v30 = a5;
  v28 = *(a3 - 8);
  v7 = v28;
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v27 = *v13;
  v14 = *(v13 + 1);
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v20 = type metadata accessor for CombinedModifiedChartContent_Environment();
  v25 = *(a1 + *(v20 + 60));
  swift_beginAccess();
  v21 = swift_readAtKeyPath();
  v22 = *(v7 + 16);
  v22(v12);
  v21(&v32, 0);
  swift_endAccess();
  (v22)(v10, a1 + *(v20 + 64), a3);
  swift_beginAccess();
  swift_setAtWritableKeyPath();
  swift_endAccess();
  LOBYTE(v32) = v27;
  v33 = v14;
  (*(v26 + 40))(v31, a1, &v32);
  v23 = v31[0];
  (v22)(v10, v12, a3);
  swift_beginAccess();
  swift_setAtWritableKeyPath();
  swift_endAccess();
  result = (*(v28 + 8))(v12, a3);
  *v30 = v23;
  return result;
}

unint64_t static BarMark._renderChartContent(_:_:)@<X0>(__int128 *a1@<X0>, char *a2@<X1>, unint64_t *a3@<X8>)
{
  sub_1AACAE13C(0, &qword_1ED9B5558, MEMORY[0x1E697F488]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v109 = &v102 - v7;
  v8 = sub_1AAF8E244();
  v114 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v110 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACAE13C(0, &qword_1ED9B67A0, type metadata accessor for SgClipRect);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v111 = (&v102 - v11);
  v113 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v113);
  v112 = (&v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = type metadata accessor for ChartContentRenderContext.Environment(0);
  MEMORY[0x1EEE9AC00](v115);
  v14 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for SgRectangle(0);
  v15 = MEMORY[0x1EEE9AC00](v116);
  v17 = (&v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v102 - v18);
  v20 = a1[7];
  v126[6] = a1[6];
  v126[7] = v20;
  v21 = a1[9];
  v126[8] = a1[8];
  v22 = a1[3];
  v126[2] = a1[2];
  v126[3] = v22;
  v23 = a1[5];
  v126[4] = a1[4];
  v126[5] = v23;
  v24 = a1[1];
  v126[0] = *a1;
  v126[1] = v24;
  v25 = a1[15];
  v125[5] = a1[14];
  v125[6] = v25;
  v26 = a1[17];
  v125[7] = a1[16];
  v125[8] = v26;
  v27 = a1[11];
  v125[1] = a1[10];
  v125[2] = v27;
  v28 = a1[13];
  v125[3] = a1[12];
  v125[4] = v28;
  v125[0] = v21;
  v29 = *a2;
  v30 = *(a2 + 1);
  if (v29)
  {
    result = sub_1AAE53674(v126, v125, v30);
  }

  else
  {
    v107 = a3;
    v32 = v30 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    v33 = *(v32 + 160);
    if (*(v32 + 168))
    {
      v33 = 2.0;
    }

    v108 = v33;
    sub_1AAD036DC(v126, 0, &v117);
    sub_1AAD036DC(v125, 1, &v121);
    v34 = *(*(v30 + 16) + 24);
    if (v118 >= v117)
    {
      v35 = v117;
    }

    else
    {
      v35 = v118;
    }

    if (v122 >= v121)
    {
      v36 = v121;
    }

    else
    {
      v36 = v122;
    }

    v37 = vabdd_f64(v118, v117);
    v38 = vabdd_f64(v122, v121);
    v106 = v32;
    sub_1AAD0F1D4(v32, v14, type metadata accessor for ChartContentRenderContext.Environment);
    v39 = v116;
    sub_1AAD0F2A4(v14, v19 + *(v116 + 44));
    sub_1AAF8E444();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = *MEMORY[0x1E697F468];
    v49 = *(v114 + 104);
    v50 = v19 + *(v39 + 40);
    v105 = v8;
    v103 = v49;
    v49(v50, v48, v8);
    *v19 = v34;
    v104 = v35;
    v19[1] = v35;
    v19[2] = v36;
    v51 = v38;
    v19[3] = v37;
    v19[4] = v38;
    *(v19 + 5) = v41;
    *(v19 + 6) = v43;
    *(v19 + 7) = v45;
    *(v19 + 8) = v47;
    *(v19 + *(v39 + 48)) = 0.0;
    if (v108 <= 2.22044605e-16)
    {
      v80 = v36;
      v81 = *(*(v30 + 16) + 24);
      v82 = v106;
      sub_1AAD0F1D4(v106, v14, type metadata accessor for ChartContentRenderContext.Environment);
      v83 = v116;
      sub_1AAD0F2A4(v14, v17 + *(v116 + 44));
      v84 = *(v82 + *(v115 + 64));
      sub_1AAF8E444();
      v86 = v85;
      v88 = v87;
      v90 = v89;
      v92 = v91;
      sub_1AAD0F610(v19, type metadata accessor for SgRectangle);
      v103(v17 + *(v83 + 40), v48, v105);
      *v17 = v81;
      v17[1] = v104;
      v17[2] = v80;
      v17[3] = v37;
      v17[4] = v51;
      *(v17 + 5) = v86;
      *(v17 + 6) = v88;
      *(v17 + 7) = v90;
      *(v17 + 8) = v92;
      *(v17 + *(v83 + 48)) = v84;
      v93 = swift_allocBox();
      sub_1AAD04A58(v17, v94, type metadata accessor for SgRectangle);
      result = v93 | 0x4000000000000000;
    }

    else
    {
      v52 = v119;
      v53 = v120;
      v54 = v123;
      v55 = v124;
      sub_1AAD04760(v126);
      sub_1AAD04760(v125);
      if (v53 >= v52)
      {
        v56 = v53;
      }

      else
      {
        v56 = v52;
      }

      if (v53 < v52)
      {
        v52 = v53;
      }

      if (v55 >= v54)
      {
        v57 = v55;
      }

      else
      {
        v57 = v54;
      }

      if (v55 >= v54)
      {
        v58 = v54;
      }

      else
      {
        v58 = v55;
      }

      v59 = v56 - v52;
      v60 = v57 - v58;
      v127.origin.x = v52;
      v127.origin.y = v58;
      v127.size.width = v59;
      v127.size.height = v60;
      CGRectGetWidth(v127);
      v128.origin.x = v52;
      v128.origin.y = v58;
      v128.size.width = v59;
      v128.size.height = v60;
      CGRectGetHeight(v128);
      sub_1AAF8E444();
      v62 = v61;
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v69 = *(*(*(v30 + 16) + 16) + 32);

      v108 = COERCE_DOUBLE(sub_1AACD5520(0, v69));

      sub_1AAD04A08(0, &qword_1ED9B28D0, &type metadata for SgNode, MEMORY[0x1E69E6F90]);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_1AAF92AB0;
      v71 = swift_allocBox();
      sub_1AAD0F1D4(v19, v72, type metadata accessor for SgRectangle);
      *(v70 + 32) = v71 | 0x4000000000000000;
      v73 = v106;
      v74 = v109;
      sub_1AAD0F558(v106 + *(v115 + 44), v109);
      v75 = v114;
      v76 = *(v114 + 48);
      v77 = v105;
      if (v76(v74, 1, v105) == 1)
      {
        v78 = v110;
        if (qword_1ED9B1D88 != -1)
        {
          swift_once();
        }

        v79 = sub_1AAD0F5D8(v77, qword_1ED9C3498);
        (*(v75 + 16))(v78, v79, v77);
        if (v76(v74, 1, v77) != 1)
        {
          sub_1AAE551B4(v74);
        }
      }

      else
      {
        v78 = v110;
        (*(v75 + 32))(v110, v74, v77);
      }

      v95 = v111;
      *v111 = v52;
      *(v95 + 8) = v58;
      *(v95 + 16) = v59;
      *(v95 + 24) = v60;
      *(v95 + 32) = v62;
      *(v95 + 40) = v64;
      *(v95 + 48) = v66;
      *(v95 + 56) = v68;
      v96 = type metadata accessor for SgClipRect(0);
      (*(v75 + 32))(v95 + *(v96 + 24), v78, v77);
      (*(*(v96 - 8) + 56))(v95, 0, 1, v96);
      v97 = *(v73 + *(v115 + 64));
      sub_1AAD0F610(v19, type metadata accessor for SgRectangle);
      v99 = v112;
      v98 = v113;
      *v112 = v108;
      *(v99 + 8) = v70;
      sub_1AAD0F670(v95, v99 + v98[6]);
      *(v99 + v98[7]) = 0x3FF0000000000000;
      *(v99 + v98[8]) = v97;
      *(v99 + v98[9]) = MEMORY[0x1E69E7CC0];
      *(v99 + v98[10]) = 0;
      v100 = swift_allocBox();
      sub_1AAD04A58(v99, v101, type metadata accessor for SgGroup);
      result = v100;
    }

    a3 = v107;
  }

  *a3 = result;
  return result;
}

uint64_t sub_1AAD036DC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v4 = v3;
  v8 = v4 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v9 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v10 = (v8 + *(v9 + 84));
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];
  v14 = (v8 + *(v9 + 88));
  v16 = *v14;
  v15 = v14[1];
  v17 = v14[2];
  v18 = a1[7];
  v99[6] = a1[6];
  v99[7] = v18;
  v99[8] = a1[8];
  v19 = a1[3];
  v99[2] = a1[2];
  v99[3] = v19;
  v20 = a1[5];
  v99[4] = a1[4];
  v99[5] = v20;
  v21 = a1[1];
  v99[0] = *a1;
  v99[1] = v21;
  v22 = sub_1AACDB99C(v99);
  result = sub_1AACD2C84(v99);
  if (v22 <= 2)
  {
    if (!v22)
    {
      v27 = *(result + 24);
      v28 = *(result + 32);
      v29 = *(result + 40);
      v30 = *(result + 16);
      __dst[0] = *result;
      LOBYTE(__dst[1]) = v30;
      *&v103[0] = v27;
      v31 = *(result + 48);

      v32 = MEMORY[0x1E69810C8];
      v33 = MEMORY[0x1E69E62F8];
      sub_1AACDB9A8(v103, &v91, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AADFA6FC(__dst, &v91);
      sub_1AACD7C50(v28, v29, v31);
      v34 = COERCE_DOUBLE(sub_1AAE0B2CC(a2, v4, v28, v29, v31));
      v36 = v35;
      sub_1AAD6E0DC(__dst);
      sub_1AAE0BE80(v103, &qword_1ED9B1E40, v32, v33);
      sub_1AAD0E818(v28, v29, v31);

      if (v36)
      {
        v37 = NAN;
      }

      else
      {
        v37 = v34;
      }

      goto LABEL_21;
    }

    if (v22 == 1)
    {
      if (a2 == 1)
      {
        if (*(result + 8))
        {
          v37 = v16 + (*(v4 + 40) + *(v4 + 48)) * 0.5;
        }

        else
        {
          v37 = v16 + *result;
        }

        goto LABEL_21;
      }

      if (!a2)
      {
        if (*(result + 8))
        {
          v24 = (*(v4 + 24) + *(v4 + 32)) * 0.5;
        }

        else
        {
          v24 = *result;
        }

        v37 = v12 + v24;
        goto LABEL_21;
      }

LABEL_20:
      v37 = NAN;
LABEL_21:
      v45 = v37;
      v46 = v37;
      v47 = v37;
      v48 = v37;
      v49 = v37;
      goto LABEL_47;
    }

    v50 = *result;
    v51 = *(result + 8);
    v52 = *(result + 32);
    v53 = *(result + 40);
    v86 = *(result + 72);
    v54 = *(result + 16);
    v55 = *(result + 48);
    v83 = *(result + 80);

    sub_1AACD7304(v50, v51, v54 & 1);
    sub_1AACD7C50(v52, v53, v55);
    sub_1AAD03E9C(a2, v4, v52, v53, v55, v86, v83, __dst);
    v45 = *(__dst + 1);
    v37 = *__dst;
    v47 = *(&__dst[1] + 1);
    v46 = *&__dst[1];
    v49 = *(&__dst[2] + 1);
    v48 = *&__dst[2];
    sub_1AAD04750(v50, v51, v54 & 1);

    sub_1AAD0E818(v52, v53, v55);
LABEL_19:

    if ((__dst[3] & 1) == 0)
    {
LABEL_47:
      *a3 = v37;
      a3[1] = v45;
      a3[2] = v46;
      a3[3] = v47;
      a3[4] = v48;
      a3[5] = v49;
      return result;
    }

    goto LABEL_20;
  }

  v85 = a2;
  if (v22 == 3)
  {
    v38 = *(result + 8);
    v82 = *result;
    v74 = *(result + 40);
    v75 = *(result + 32);
    v76 = *(result + 80);
    v77 = *(result + 72);
    v39 = *(result + 104);
    v40 = *(result + 112);
    v41 = *(result + 16);
    v42 = *(result + 48);
    v43 = *(result + 88);
    v78 = v4;
    v44 = *(result + 120);

    sub_1AACD7304(v82, v38, v41 & 1);
    sub_1AACD7C50(v75, v74, v42);
    sub_1AACD7304(v77, v76, v43 & 1);
    sub_1AACD7C50(v39, v40, v44);
    sub_1AAE0A9CC(v85, v78, v75, v74, v42, v39, v40, v44, __dst);
    v45 = *(__dst + 1);
    v37 = *__dst;
    v47 = *(&__dst[1] + 1);
    v46 = *&__dst[1];
    v49 = *(&__dst[2] + 1);
    v48 = *&__dst[2];
    sub_1AAD04750(v77, v76, v43 & 1);

    sub_1AAD0E818(v39, v40, v44);
    sub_1AAD04750(v82, v38, v41 & 1);

    sub_1AAD0E818(v75, v74, v42);
    goto LABEL_19;
  }

  if (v22 == 4)
  {
    if (a2)
    {
      if (*(result + 8))
      {
        v25 = *(v4 + 40);
        if ((*(result + 24) & 1) == 0)
        {
LABEL_13:
          v26 = *(result + 16);
LABEL_42:
          v37 = v15 + v25;
          v45 = v17 + v26;
LABEL_46:
          v46 = v37;
          v47 = v45;
          v48 = v37;
          v49 = v45;
          goto LABEL_47;
        }
      }

      else
      {
        v25 = *result;
        if ((*(result + 24) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v26 = *(v4 + 48);
      goto LABEL_42;
    }

    if (*(result + 8))
    {
      v64 = *(v4 + 24);
      if ((*(result + 24) & 1) == 0)
      {
LABEL_26:
        v65 = *(result + 16);
LABEL_45:
        v37 = v11 + v64;
        v45 = v13 + v65;
        goto LABEL_46;
      }
    }

    else
    {
      v64 = *result;
      if ((*(result + 24) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v65 = *(v4 + 32);
    goto LABEL_45;
  }

  v79 = *(result + 32);
  v84 = *(result + 48);
  v56 = *(result + 73);
  v80 = *(result + 74);
  v81 = *(result + 72);
  v57 = *(result + 80);
  v58 = *(result + 88);
  v59 = *(result + 96);
  swift_beginAccess();
  memcpy(__dst, (v4 + 80), 0x102uLL);
  sub_1AACBB21C(__dst, &v91);
  sub_1AACD7C50(v57, v58, v59);
  sub_1AACDBAD0((v56 & 1) == 0, &v91);
  result = sub_1AACBB254(__dst);
  v60 = v93;
  if (v93)
  {
    v61 = v96;
    v63 = v94;
    v62 = v95;
    v101 = v91;
    v102 = v92;
    sub_1AACD7C50(v94, v95, v96);
    sub_1AAD6E0DC(&v101);
    v100 = v60;
    sub_1AAE0BE80(&v100, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    result = sub_1AAD0E818(v63, v62, v61);
  }

  else
  {
    v63 = 0;
    v62 = 0;
    v61 = -4;
  }

  LOBYTE(v87) = v81;
  BYTE1(v87) = v56 & 1;
  BYTE2(v87) = v80 & 1;
  *(&v87 + 1) = v57;
  *&v88 = v58;
  BYTE8(v88) = v59;
  *&v89 = v63;
  *(&v89 + 1) = v62;
  v90 = v61;
  v104 = v61;
  v103[1] = v88;
  v103[2] = v89;
  v103[0] = v87;
  if (v81 == 3)
  {
    if ((v84 & 0x80) == 0)
    {
      if (!v84)
      {
        v66 = v79;
        v67 = 0.0;
        v68 = v79;
        v69 = 0.0;
        goto LABEL_35;
      }

      goto LABEL_53;
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  swift_beginAccess();
  v70 = *(v4 + 64);

  sub_1AAD0E824(v103, v70);
  v69 = v71;
  v68 = v72;

  if ((v84 & 0x80) != 0)
  {
    goto LABEL_52;
  }

  if (!v84)
  {
    swift_beginAccess();
    v67 = sub_1AAD0E8DC(v103, v79);
    v66 = v73;
    swift_endAccess();
LABEL_35:
    sub_1AACDC920(&v87);

    sub_1AAD0EACC(v85, v4, v85, v4, v97, v67, v66, v69, v68);
    v37 = *v97;
    v45 = *&v97[1];
    v46 = *&v97[2];
    v47 = *&v97[3];
    v48 = *&v97[4];
    v49 = *&v97[5];

    if (v98)
    {
      v37 = NAN;
      v45 = NAN;
      v46 = NAN;
      v47 = NAN;
      v48 = NAN;
      v49 = NAN;
    }

    goto LABEL_47;
  }

LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_1AAD03E9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, double a6@<X5>, unsigned __int8 a7@<W6>, uint64_t a8@<X8>)
{
  v15 = 0uLL;
  v16 = 0.0;
  if (result == 1)
  {
    swift_beginAccess();
    memcpy(__dst, (a2 + 80), sizeof(__dst));
    v97 = a3;
    v98 = a6;
    if (*&__dst[112])
    {
      v92 = a5;
      v94 = a7;
      v31 = *(a2 + 184);
      v32 = *(a2 + 216);
      v120 = *(a2 + 200);
      v121 = v32;
      v122 = *(a2 + 232);
      v123 = *(a2 + 248);
      v118 = *(a2 + 168);
      v119 = v31;
      v90 = a4;
LABEL_8:
      v33 = v118;
      v34 = v119;
      v36 = *(&v120 + 1);
      v35 = v120;
      v37 = *(&v122 + 1);
      v38 = v123;
      v39 = v121;
      sub_1AACDB9A8(&__dst[88], &v99, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AAE0BFDC(&v118, &v99);
      sub_1AAE0A738(v35, v36, v39, v37, v38, 4, &v125);
      v40 = v125;
      v41 = v126;
      v43 = v127;
      v42 = v128;
      v44 = v129;
      sub_1AAE0C014(&v118);
      sub_1AAD04750(v33, *(&v33 + 1), v34);

      sub_1AAD0E818(v35, v36, v39);
      a5 = v92;
      a7 = v94;
      a4 = v90;
      goto LABEL_30;
    }

    if (__dst[257] != 2)
    {
      sub_1AACBB21C(__dst, &v99);
      v48 = sub_1AAF8E7A4();
      if (v48 != sub_1AAF8E7A4())
      {
        v40 = 0.0;
        sub_1AACBB254(__dst);
        goto LABEL_29;
      }

      sub_1AACDB9A8(&__dst[176], &v99, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AACBB254(__dst);
      if (*&__dst[200])
      {
        v90 = a4;
        v92 = a5;
        v94 = a7;
        v118 = *&__dst[176];
        v119 = *&__dst[192];
        v120 = *&__dst[208];
        v121 = *&__dst[224];
        v122 = *&__dst[240];
        v123 = __dst[256];
        goto LABEL_8;
      }
    }

    v40 = 0.0;
LABEL_29:
    v44 = 2;
    v41 = 0.0;
    v43 = 0.0;
    v42 = 0.0;
LABEL_30:
    v67 = a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    result = type metadata accessor for ChartContentRenderContext.Environment(0);
    v68 = v67 + *(result + 88);
    v69 = *(v68 + 8);
    v52 = *(v68 + 16);
    v70 = *(a2 + 368);
    v71 = (a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
    *&v117[9] = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 89);
    v72 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 80);
    v116 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 64);
    *v117 = v72;
    v73 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 16);
    v112 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
    v113 = v73;
    v74 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 48);
    v114 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 32);
    v115 = v74;
    if (v117[24] != 255)
    {
      v95 = v69;
      v75 = v71[5];
      v110 = v71[4];
      v111[0] = v75;
      *(v111 + 9) = *(v71 + 89);
      v76 = v71[1];
      v106 = *v71;
      v107 = v76;
      v77 = v71[3];
      v108 = v71[2];
      v109 = v77;
      v99 = v106;
      v100 = v76;
      v101 = v108;
      v102 = v77;
      v103 = v110;
      v104[0] = v75;
      *(v104 + 9) = *(v111 + 9);
      sub_1AACDB9A8(&v106, v105, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
      v78 = COERCE_DOUBLE(sub_1AAD0E70C(v97, a4, a5, v70));
      if ((v80 & 1) == 0)
      {
        v64 = v78;
        v65 = v79;
        if (v44)
        {
          if (v44 == 1)
          {
            v64 = v41 + v40 * (v79 - v78) + v78;
            v65 = v42 + v43 * (v79 - v78) + v78;
          }
        }

        else
        {
          v65 = v41 * (v79 - v78) + v78;
          v64 = v40 * (v79 - v78) + v78;
        }

        goto LABEL_33;
      }

LABEL_32:
      v65 = NAN;
      v64 = NAN;
LABEL_33:
      v66 = v98;
      goto LABEL_34;
    }

LABEL_37:
    v45 = 1;
    v46 = 0.0;
    v15 = 0uLL;
    goto LABEL_56;
  }

  if (result)
  {
    v45 = 1;
    v46 = 0.0;
    goto LABEL_56;
  }

  swift_beginAccess();
  memcpy(__dst, (a2 + 80), sizeof(__dst));
  v98 = a6;
  if (*&__dst[24])
  {
    v96 = a3;
    v91 = a5;
    v93 = a7;
    v17 = *(a2 + 128);
    v120 = *(a2 + 112);
    v121 = v17;
    v122 = *(a2 + 144);
    v123 = *(a2 + 160);
    v18 = *(a2 + 96);
    v118 = *(a2 + 80);
    v119 = v18;
    v89 = a4;
LABEL_5:
    v19 = v118;
    v20 = v119;
    v22 = *(&v120 + 1);
    v21 = v120;
    v23 = *(&v122 + 1);
    v24 = v123;
    v25 = v121;
    sub_1AACDB9A8(__dst, &v99, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
    sub_1AAE0BFDC(&v118, &v99);
    sub_1AAE0A738(v21, v22, v25, v23, v24, 3, &v125);
    v26 = v125;
    v27 = v126;
    v29 = v127;
    v28 = v128;
    v30 = v129;
    sub_1AAE0C014(&v118);
    sub_1AAD04750(v19, *(&v19 + 1), v20);

    sub_1AAD0E818(v21, v22, v25);
    a5 = v91;
    a7 = v93;
    a4 = v89;
    a3 = v96;
    goto LABEL_22;
  }

  if (__dst[257] != 2)
  {
    sub_1AACBB21C(__dst, &v99);
    v47 = sub_1AAF8E7A4();
    if (v47 != sub_1AAF8E7A4())
    {
      v26 = 0.0;
      sub_1AACBB254(__dst);
      goto LABEL_21;
    }

    sub_1AACDB9A8(&__dst[176], &v99, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
    sub_1AACBB254(__dst);
    if (*&__dst[200])
    {
      v96 = a3;
      v89 = a4;
      v91 = a5;
      v93 = a7;
      v118 = *&__dst[176];
      v119 = *&__dst[192];
      v120 = *&__dst[208];
      v121 = *&__dst[224];
      v122 = *&__dst[240];
      v123 = __dst[256];
      goto LABEL_5;
    }
  }

  v26 = 0.0;
LABEL_21:
  v30 = 2;
  v27 = 0.0;
  v29 = 0.0;
  v28 = 0.0;
LABEL_22:
  v49 = a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  result = type metadata accessor for ChartContentRenderContext.Environment(0);
  v50 = v49 + *(result + 84);
  v51 = *(v50 + 8);
  v52 = *(v50 + 16);
  v53 = *(a2 + 352);
  v54 = (a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
  *&v117[9] = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 89);
  v55 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 80);
  v116 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 64);
  *v117 = v55;
  v56 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 16);
  v112 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
  v113 = v56;
  v57 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 48);
  v114 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 32);
  v115 = v57;
  if (v117[24] == 255)
  {
    goto LABEL_37;
  }

  v95 = v51;
  v58 = v54[5];
  v110 = v54[4];
  v111[0] = v58;
  *(v111 + 9) = *(v54 + 89);
  v59 = v54[1];
  v106 = *v54;
  v107 = v59;
  v60 = v54[3];
  v108 = v54[2];
  v109 = v60;
  v99 = v106;
  v100 = v59;
  v101 = v108;
  v102 = v60;
  v103 = v110;
  v104[0] = v58;
  *(v104 + 9) = *(v111 + 9);
  sub_1AACDB9A8(&v106, v105, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
  v61 = COERCE_DOUBLE(sub_1AAD0E70C(a3, a4, a5, v53));
  if (v63)
  {
    goto LABEL_32;
  }

  v64 = v61;
  v65 = v62;
  v66 = a6;
  if (v30)
  {
    if (v30 == 1)
    {
      v64 = v27 + v26 * (v62 - v61) + v61;
      v65 = v28 + v29 * (v62 - v61) + v61;
    }
  }

  else
  {
    v65 = v27 * (v62 - v61) + v61;
    v64 = v26 * (v62 - v61) + v61;
  }

LABEL_34:
  if (a7 <= 1u)
  {
    v81 = v66;
    if (!a7)
    {
      result = sub_1AACE337C(&v112, &qword_1ED9B3E30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0]);
      v82 = (v65 + v64) * 0.5;
      v83 = v81 * 0.5;
      v84 = v82 - v81 * 0.5;
LABEL_48:
      v86 = v83 + v82;
      goto LABEL_49;
    }

    result = sub_1AACE337C(&v112, &qword_1ED9B3E30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0]);
    v87 = (v65 - v64) * v81;
LABEL_47:
    v82 = v87 * 0.5;
    v83 = (v65 + v64) * 0.5;
    v84 = v83 - v82;
    goto LABEL_48;
  }

  if (a7 == 2)
  {
    v85 = v66;
    result = sub_1AACE337C(&v112, &qword_1ED9B3E30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0]);
    v84 = v64 + v85;
    v86 = v65 - v85;
  }

  else
  {
    if (v64 != v65)
    {
      result = sub_1AACE337C(&v112, &qword_1ED9B3E30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0]);
      v87 = (v65 - v64) * 0.7;
      goto LABEL_47;
    }

    v84 = v64 + -4.0;
    v86 = v64 + 4.0;
    sub_1AAF885A0(0);
    result = sub_1AACE337C(&v112, &qword_1ED9B3E30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0]);
  }

LABEL_49:
  v45 = 0;
  if (v64 == v65)
  {
    v88 = v84;
  }

  else
  {
    v88 = v64;
  }

  if (v64 == v65)
  {
    v46 = v86;
  }

  else
  {
    v46 = v65;
  }

  v16 = v95 + v84;
  *&v15 = v52 + v86;
  *(&v15 + 1) = v88;
LABEL_56:
  *a8 = v16;
  *(a8 + 8) = v15;
  *(a8 + 16) = v16;
  *(a8 + 24) = v15;
  *(a8 + 40) = v46;
  *(a8 + 48) = v45;
  return result;
}

uint64_t sub_1AAD04750(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1AAD04760(_OWORD *a1)
{
  v2 = v1;
  v3 = a1[7];
  v36[6] = a1[6];
  v36[7] = v3;
  v36[8] = a1[8];
  v4 = a1[3];
  v36[2] = a1[2];
  v36[3] = v4;
  v5 = a1[5];
  v36[4] = a1[4];
  v36[5] = v5;
  v6 = a1[1];
  v36[0] = *a1;
  v36[1] = v6;
  if (sub_1AACDB99C(v36) == 5)
  {
    v7 = sub_1AACD2C84(v36);
    v8 = *(v7 + 72);
    v9 = *(v7 + 73);
    v25 = *(v7 + 74);
    v10 = *(v7 + 80);
    v11 = *(v7 + 88);
    v12 = *(v7 + 96);
    swift_beginAccess();
    memcpy(__dst, (v1 + 80), 0x102uLL);
    sub_1AACBB21C(__dst, &v30);
    sub_1AACD7C50(v10, v11, v12);
    sub_1AACDBAD0((v9 & 1) == 0, &v30);
    sub_1AACBB254(__dst);
    v13 = v32;
    if (v32)
    {
      v14 = v35;
      v16 = v33;
      v15 = v34;
      v38 = v30;
      v39 = v31;
      sub_1AACD7C50(v33, v34, v35);
      sub_1AAD6E0DC(&v38);
      v37 = v13;
      sub_1AAE0BE80(&v37, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AAD0E818(v16, v15, v14);
    }

    else
    {
      v16 = 0;
      v15 = 0;
      v14 = -4;
    }

    LOBYTE(v26) = v8;
    BYTE1(v26) = v9 & 1;
    BYTE2(v26) = v25 & 1;
    *(&v26 + 1) = v10;
    *&v27 = v11;
    BYTE8(v27) = v12;
    *&v28 = v16;
    *(&v28 + 1) = v15;
    v29 = v14;
    v41 = v14;
    v40[1] = v27;
    v40[2] = v28;
    v40[0] = v26;
    if (v8 == 3)
    {
      sub_1AACDC920(&v26);
      v18 = 0;
      v17 = 1;
    }

    else
    {
      swift_beginAccess();
      v19 = *(v2 + 64);

      sub_1AAD0E824(v40, v19);
      v21 = v20;
      v23 = v22 == 0.0;
      sub_1AACDC920(&v26);

      v17 = v21 == 0.0;
      v18 = v23 << 8;
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  return v18 | v17;
}

void sub_1AAD049BC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1AAF90484();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1AAD04A08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AAD04A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1AAD04AC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AAF8FE74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AAD04B14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AAD04B78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *sub_1AAD04BF0(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1AAD469FC(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t static Optional<A>._renderChartContent(_:_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v21 = a5;
  v9 = sub_1AAF8FE74();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  v18 = *(a2 + 1);
  (*(v10 + 16))(v13, a1, v9);
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    result = (*(v10 + 8))(v13, v9);
    *v21 = 0xE000000000000000;
  }

  else
  {
    (*(v14 + 32))(v16, v13, a3);
    v22[0] = v17;
    v23 = v18;
    (*(a4 + 40))(v16, v22, a3, a4);
    return (*(v14 + 8))(v16, a3);
  }

  return result;
}

uint64_t sub_1AAD04F3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AAD0F720(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *a1 = result;
  return result;
}

uint64_t sub_1AAD04F78@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1ED9B5A00 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1AAD0F924(&qword_1ED9C36D0, v2);
}

uint64_t sub_1AAD04FE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 504) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 504) = 0;
    }

    if (a2)
    {
      *(result + 424) = a2;
    }
  }

  return result;
}

uint64_t sub_1AAD05118(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAD0513C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAD0515C(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAD05174(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAD0518C@<X0>(unint64_t **a1@<X0>, void *a2@<X8>)
{
  result = sub_1AAD10220(*a1[2], *a1[3], *a1[4]);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

CGFloat sub_1AAD05240()
{
  v1 = type metadata accessor for SgPath(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v759 = v738 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v763 = v738 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v769 = v738 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v768 = v738 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v761 = v738 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v767 = v738 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v766 = v738 - v14;
  v15 = type metadata accessor for SgArea(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v762 = v738 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v760 = v738 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v772 = (v738 - v20);
  v21 = type metadata accessor for SgLine(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v774 = (v738 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v765 = v738 - v24;
  v25 = type metadata accessor for SgRule(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v740 = (v738 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v750 = (v738 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v755 = (v738 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v754 = (v738 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v746 = (v738 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v753 = (v738 - v36);
  MEMORY[0x1EEE9AC00](v37);
  v752 = (v738 - v38);
  v779 = type metadata accessor for SgSector(0);
  MEMORY[0x1EEE9AC00](v779);
  v778 = v738 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for SgRectangle(0);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v777 = (v738 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for SgPoint(0);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v739 = v738 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v749 = v738 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v757 = v738 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v758 = v738 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v745 = v738 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v756 = v738 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v751 = v738 - v55;
  v56 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v56 - 8);
  v776 = (v738 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = *(v0 + 8);
  v60 = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  v62 = *(MEMORY[0x1E695F050] + 16);
  v61 = *(MEMORY[0x1E695F050] + 24);
  v783 = *(v58 + 16);
  if (v783)
  {
    v63 = 0;
    v773 = 0;
    v782 = v58 + 32;
    v788.size.width = v62;
    v788.size.height = v61;
    v788.origin.x = v60;
    v788.origin.y = y;
    v794 = v60;
    v795 = v62;
    v796 = y;
    v797 = v61;
    v770 = v58;
    while (2)
    {
      if (v63 >= *(v58 + 16))
      {
        goto LABEL_428;
      }

      v72 = *(v782 + 8 * v63++);
      v66 = v60;
      v68 = y;
      v65 = v62;
      v64 = v61;
      switch(v72 >> 60)
      {
        case 1uLL:
          v764 = v72;
          v87 = *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v88 = *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          *&v798 = v87;
          v738[2] = v87;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();

          v738[1] = v88;
          sub_1AADC9018(v88);
          v89 = *&v798;
          v785 = *(v798 + 16);
          if (v785)
          {
            v90 = 0;
            v784 = v798 + 32;
            v64 = v61;
            v65 = v62;
            v793 = y;
            v66 = v60;
            v775 = *&v798;
            v780 = v63;
            while (1)
            {
              if (v90 >= *(*&v89 + 16))
              {
                goto LABEL_427;
              }

              v790 = v64;
              v791 = v66;
              v792 = v65;
              v103 = *(v784 + 8 * v90);
              v789 = v90 + 1;
              v97 = v60;
              v98 = y;
              v99 = v62;
              switch(*&v103 >> 60)
              {
                case 1:
                  v129 = *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                  *&v798 = *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v748 = *&v798;
                  swift_bridgeObjectRetain_n();
                  swift_bridgeObjectRetain_n();

                  v747 = v129;
                  sub_1AADC9018(*&v129);
                  v130 = *&v798;
                  v787 = *(v798 + 16);
                  if (v787)
                  {
                    v131 = 0;
                    *&v786 = v798 + 32;
                    v61 = v797;
                    v99 = v62;
                    v98 = y;
                    v97 = v60;
                    v781 = *&v798;
                    v771 = v103;
                    while (1)
                    {
                      if (v131 >= *(*&v130 + 16))
                      {
                        goto LABEL_425;
                      }

                      v143 = *(*&v786 + 8 * v131++);
                      x = v60;
                      width = v62;
                      height = v797;
                      switch(v143 >> 60)
                      {
                        case 1uLL:
                          v147 = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                          *&v798 = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                          swift_bridgeObjectRetain_n();
                          swift_bridgeObjectRetain_n();

                          sub_1AADC9018(v147);
                          v148 = v798;
                          v149 = *(v798 + 16);
                          if (v149)
                          {
                            v150 = 0;
                            y = v796;
                            height = v797;
                            x = v794;
                            width = v795;
                            while (v150 < *(v148 + 16))
                            {
                              v151 = v150 + 1;
                              v152 = *(v148 + 32 + 8 * v150);

                              v864.origin.x = sub_1AAD0FB18(v152);
                              v864.origin.y = v153;
                              v864.size.width = v154;
                              v864.size.height = v155;
                              v838.origin.x = x;
                              v838.origin.y = y;
                              v838.size.width = width;
                              v838.size.height = height;
                              v839 = CGRectUnion(v838, v864);
                              x = v839.origin.x;
                              y = v839.origin.y;
                              width = v839.size.width;
                              height = v839.size.height;

                              v150 = v151;
                              if (v149 == v151)
                              {
                                goto LABEL_93;
                              }
                            }

                            __break(1u);
                            goto LABEL_415;
                          }

                          x = v794;
                          width = v795;
                          y = v796;
                          height = v797;
LABEL_93:

                          v63 = v780;
                          v89 = v775;
                          v103 = v771;
                          goto LABEL_109;
                        case 2uLL:
                          v156 = v103;
                          sub_1AAD117A0((v143 & 0xFFFFFFFFFFFFFFFLL) + 16, &v798);
                          v157 = *(&v798 + 1);
                          v158 = *(*(&v798 + 1) + 16);

                          if (v158)
                          {
                            v159 = 0;
                            y = v796;
                            height = v797;
                            x = v794;
                            width = v795;
                            while (v159 < *(v157 + 16))
                            {
                              v160 = v159 + 1;
                              v161 = *(v157 + 32 + 8 * v159);

                              v865.origin.x = sub_1AAD0FB18(v161);
                              v865.origin.y = v162;
                              v865.size.width = v163;
                              v865.size.height = v164;
                              v840.origin.x = x;
                              v840.origin.y = y;
                              v840.size.width = width;
                              v840.size.height = height;
                              v841 = CGRectUnion(v840, v865);
                              x = v841.origin.x;
                              y = v841.origin.y;
                              width = v841.size.width;
                              height = v841.size.height;

                              v159 = v160;
                              if (v158 == v160)
                              {
                                goto LABEL_95;
                              }
                            }

LABEL_415:
                            __break(1u);
LABEL_416:
                            __break(1u);
LABEL_417:
                            __break(1u);
LABEL_418:
                            __break(1u);
                            goto LABEL_419;
                          }

                          x = v794;
                          width = v795;
                          y = v796;
                          height = v797;
LABEL_95:
                          sub_1AAF14C40(&v798);
                          v89 = v775;
                          v103 = v156;
LABEL_109:
                          v130 = v781;
LABEL_50:
                          v836.origin.x = v97;
                          v836.origin.y = v98;
                          v836.size.width = v99;
                          v836.size.height = v61;
                          v863.origin.x = x;
                          v863.origin.y = y;
                          v863.size.width = width;
                          v863.size.height = height;
                          v837 = CGRectUnion(v836, v863);
                          v97 = v837.origin.x;
                          v98 = v837.origin.y;
                          v99 = v837.size.width;
                          v61 = v837.size.height;

                          v60 = v794;
                          v62 = v795;
                          y = v796;
                          if (v131 == v787)
                          {
                            goto LABEL_206;
                          }

                          break;
                        case 3uLL:
                          v144 = v103;
                          v145 = swift_projectBox();
                          v146 = v751;
                          sub_1AACAAD4C(v145, v751, type metadata accessor for SgPoint);
                          sub_1AAD9ADE4(v146 + 48, &v798);
                          if (v801)
                          {
                            width = *(&v798 + 1);
                            height = *&v799;

LABEL_91:
                            v203 = *(v146 + 16);
                            x = *(v146 + 8) - width * 0.5;
                            sub_1AACAADB4(v146, type metadata accessor for SgPoint);
                            y = v203 - height * 0.5;
                            goto LABEL_108;
                          }

                          v809 = v798;
                          v810 = v799;
                          v811 = v800;
                          v202 = *(v146 + 24);
                          if (*(v146 + 40) == 1)
                          {
                            height = *(v146 + 32);
                            width = *(v146 + 24);

                            sub_1AAE45A14(&v809);
                            goto LABEL_91;
                          }

                          v221 = *(v146 + 16);
                          v743 = *(v146 + 8);
                          v744 = v221;
                          v222 = *(&v810 + 1);
                          v223 = v811;
                          v224 = sqrt(v202);

                          sub_1AACBB42C(&v809, v222);
                          v225 = *(v223 + 16);
                          v226 = v223;
                          v89 = v775;
                          v741 = v225(v222, v226);
                          v742 = v227;
                          v229 = v228;
                          v231 = v230;
                          sub_1AACAADB4(v146, type metadata accessor for SgPoint);
                          width = v224 * v229;
                          height = v224 * v231;
                          x = v743 + v224 * (v741 + -0.5);
                          y = v744 + v224 * (v742 + -0.5);
                          sub_1AAE45A14(&v809);
LABEL_108:
                          v103 = v144;
                          goto LABEL_109;
                        case 4uLL:
                          v175 = swift_projectBox();
                          v133 = v777;
                          sub_1AACAAD4C(v175, v777, type metadata accessor for SgRectangle);
                          x = v133[1];
                          y = v133[2];
                          width = v133[3];
                          height = v133[4];

                          v141 = type metadata accessor for SgRectangle;
                          goto LABEL_49;
                        case 5uLL:
                          v176 = swift_projectBox();
                          v177 = v778;
                          sub_1AACAAD4C(v176, v778, type metadata accessor for SgSector);
                          v178 = vaddvq_f64(vmulq_f64(*(v177 + 24), xmmword_1AAFC7450));
                          v179 = __sincos_stret(((*(v177 + 8) + *(v177 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                          x = v178 * v179.__cosval;
                          y = v178 * v179.__sinval;
                          v180 = (v177 + *(v779 + 52));
                          v181 = v180[1];
                          width = *v180 + *v180;

                          v182 = v177;
                          v130 = v781;
                          sub_1AACAADB4(v182, type metadata accessor for SgSector);
                          height = v181 + v181;
                          goto LABEL_50;
                        case 6uLL:
                          v165 = swift_projectBox();
                          v133 = v752;
                          sub_1AACAAD4C(v165, v752, type metadata accessor for SgRule);
                          v166 = v133[1];
                          v167 = v133[2];
                          v168 = v133[3];
                          v169 = v133[4];
                          if (v168 >= v166)
                          {
                            x = v133[1];
                          }

                          else
                          {
                            x = v133[3];
                          }

                          if (v169 >= v167)
                          {
                            y = v133[2];
                          }

                          else
                          {
                            y = v133[4];
                          }

                          width = vabdd_f64(v168, v166);
                          height = vabdd_f64(v169, v167);

                          v141 = type metadata accessor for SgRule;
                          goto LABEL_49;
                        case 7uLL:
                          v191 = swift_projectBox();
                          v192 = v765;
                          sub_1AACAAD4C(v191, v765, type metadata accessor for SgLine);
                          v193 = *(v192 + 8);
                          swift_beginAccess();
                          v744 = v193;
                          v194 = *(*&v193 + 16);
                          v195 = *(v194 + 16);
                          if (v195)
                          {
                            *&v809 = MEMORY[0x1E69E7CC0];

                            sub_1AAF67208(v195);
                            v196 = v194 + 32;
                            v197 = v809;
                            x = v794;
                            y = v796;
                            do
                            {
                              sub_1AAE5EDF4(v196, &v798);
                              v198 = *(&v798 + 1);
                              sub_1AAE5EE50(&v798);
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                sub_1AAD1FAF4(0, *(v197 + 16) + 1, 1);
                                v197 = v809;
                              }

                              v200 = *(v197 + 16);
                              v199 = *(v197 + 24);
                              if (v200 >= v199 >> 1)
                              {
                                sub_1AAD1FAF4((v199 > 1), v200 + 1, 1);
                                v197 = v809;
                              }

                              *(v197 + 16) = v200 + 1;
                              *(v197 + 8 * v200 + 32) = v198;
                              v196 += 96;
                              --v195;
                            }

                            while (v195);
                          }

                          else
                          {

                            v197 = MEMORY[0x1E69E7CC0];
                            x = v794;
                            y = v796;
                          }

                          MEMORY[0x1EEE9AC00](v201);
                          sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                          v743 = v204;
                          *&v738[-4] = v204;
                          v742 = COERCE_DOUBLE(sub_1AAE840B8());
                          *&v738[-3] = v742;
                          v741 = COERCE_DOUBLE(sub_1AAE971D0());
                          *&v738[-2] = v741;
                          swift_getKeyPath();
                          v205 = v773;
                          v206 = COERCE_DOUBLE(sub_1AAF894FC(v197, sub_1AAF68E40));
                          v208 = v207;
                          v210 = v209;
                          v773 = v205;

                          width = v795;
                          height = v797;
                          v103 = v771;
                          v130 = v781;
                          if (v210)
                          {
                            goto LABEL_115;
                          }

                          x = v206;
                          v212 = v208;
                          if (v206 > v208)
                          {
                            goto LABEL_439;
                          }

                          v213 = *(*&v744 + 16);
                          v214 = *(v213 + 16);
                          if (v214)
                          {
                            *&v809 = MEMORY[0x1E69E7CC0];

                            sub_1AAF67208(v214);
                            v215 = v213 + 32;
                            v216 = v809;
                            v217 = v794;
                            do
                            {
                              sub_1AAE5EDF4(v215, &v798);
                              v218 = v799;
                              sub_1AAE5EE50(&v798);
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                sub_1AAD1FAF4(0, *(v216 + 16) + 1, 1);
                                v216 = v809;
                              }

                              v220 = *(v216 + 16);
                              v219 = *(v216 + 24);
                              if (v220 >= v219 >> 1)
                              {
                                sub_1AAD1FAF4((v219 > 1), v220 + 1, 1);
                                v216 = v809;
                              }

                              *(v216 + 16) = v220 + 1;
                              *(v216 + 8 * v220 + 32) = v218;
                              v215 += 96;
                              --v214;
                            }

                            while (v214);
                          }

                          else
                          {
                            v216 = MEMORY[0x1E69E7CC0];
                            v217 = v794;
                          }

                          MEMORY[0x1EEE9AC00](v211);
                          v232 = v742;
                          *&v738[-4] = v743;
                          *&v738[-3] = v232;
                          *&v738[-2] = v741;
                          swift_getKeyPath();
                          v233 = v773;
                          v234 = COERCE_DOUBLE(sub_1AAF894FC(v216, sub_1AAF68E40));
                          v236 = v235;
                          v238 = v237;
                          v773 = v233;

                          if (v238)
                          {
                            x = v217;
                            width = v795;
                            y = v796;
                            height = v797;
                            v103 = v771;
                            v130 = v781;
                          }

                          else
                          {
                            y = v234;
                            v103 = v771;
                            v130 = v781;
                            if (v234 > v236)
                            {
                              goto LABEL_441;
                            }

                            width = v212 - x;
                            height = v236 - v234;
                          }

LABEL_115:
                          sub_1AACAADB4(v765, type metadata accessor for SgLine);
                          v63 = v780;
                          v89 = v775;
                          goto LABEL_50;
                        case 8uLL:
                          v132 = swift_projectBox();
                          v133 = v772;
                          sub_1AACAAD4C(v132, v772, type metadata accessor for SgArea);

                          sub_1AAF58424();
                          x = v134;
                          y = v136;
                          width = v137;
                          height = v139;
                          v141 = type metadata accessor for SgArea;
                          goto LABEL_49;
                        case 9uLL:
                          v183 = swift_projectBox();
                          v184 = v766;
                          sub_1AACAAD4C(v183, v766, type metadata accessor for SgPath);
                          v185 = *(v184 + 24);
                          v813 = *(v184 + 8);
                          v814 = v185;
                          v815 = *(v184 + 40);

                          v186 = sub_1AAF8E8E4();
                          x = v794;
                          width = v795;
                          y = v796;
                          height = v797;
                          if ((v186 & 1) == 0)
                          {
                            sub_1AAF8E874();
                            x = v187;
                            y = v188;
                            width = v189;
                            height = v190;
                          }

                          sub_1AACAADB4(v766, type metadata accessor for SgPath);
                          goto LABEL_109;
                        case 0xAuLL:
                          width = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
                          height = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
                          x = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * width;
                          y = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * height;

                          goto LABEL_50;
                        case 0xBuLL:
                        case 0xCuLL:
                          x = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                          y = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                          width = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                          height = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                          goto LABEL_50;
                        case 0xDuLL:

                          x = 0.0;
                          y = 0.0;
                          width = 0.0;
                          height = 0.0;
                          goto LABEL_50;
                        case 0xEuLL:
                          goto LABEL_50;
                        default:
                          v170 = swift_projectBox();
                          v133 = v776;
                          sub_1AACAAD4C(v170, v776, type metadata accessor for SgGroup);

                          x = sub_1AAD05240(v171);
                          y = v172;
                          width = v173;
                          height = v174;
                          v141 = type metadata accessor for SgGroup;
LABEL_49:
                          v142 = v133;
                          v130 = v781;
                          sub_1AACAADB4(v142, v141);
                          goto LABEL_50;
                      }
                    }
                  }

                  v97 = v60;
                  v98 = y;
                  v99 = v62;
                  v61 = v797;
LABEL_206:

                  v58 = v770;
                  goto LABEL_25;
                case 2:
                  sub_1AAD117A0((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 16, &v798);
                  v239 = *(&v798 + 1);
                  v240 = *(*(&v798 + 1) + 16);

                  if (v240)
                  {
                    v241 = 0;
                    v242 = v239 + 32;
                    v61 = v797;
                    v99 = v62;
                    v98 = y;
                    v97 = v60;
                    v787 = v239 + 32;
                    v771 = v103;
                    while (1)
                    {
                      if (v241 >= *(v239 + 16))
                      {
                        goto LABEL_421;
                      }

                      v246 = *(v242 + 8 * v241++);
                      v243 = v60;
                      v244 = y;
                      v245 = v797;
                      switch(v246 >> 60)
                      {
                        case 1uLL:
                          v259 = *((v246 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                          *&v809 = *((v246 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                          swift_bridgeObjectRetain_n();
                          swift_bridgeObjectRetain_n();

                          sub_1AADC9018(v259);
                          v260 = *(v809 + 16);
                          if (v260)
                          {
                            v261 = (v809 + 32);
                            v244 = v796;
                            v245 = v797;
                            v243 = v794;
                            v62 = v795;
                            do
                            {
                              v262 = *v261++;
                              v867.origin.x = sub_1AAD0FB18(v262);
                              v867.origin.y = v263;
                              v867.size.width = v264;
                              v867.size.height = v265;
                              v844.origin.x = v243;
                              v844.origin.y = v244;
                              v844.size.width = v62;
                              v844.size.height = v245;
                              v845 = CGRectUnion(v844, v867);
                              v243 = v845.origin.x;
                              v244 = v845.origin.y;
                              v62 = v845.size.width;
                              v245 = v845.size.height;
                              --v260;
                            }

                            while (v260);
                          }

                          else
                          {
                            v243 = v794;
                            v62 = v795;
                            v244 = v796;
                            v245 = v797;
                          }

                          v63 = v780;
                          v89 = v775;
                          v103 = v771;
                          v242 = v787;
                          goto LABEL_119;
                        case 2uLL:
                          v247 = v103;
                          sub_1AAD117A0((v246 & 0xFFFFFFFFFFFFFFFLL) + 16, &v809);
                          v266 = *(&v809 + 1);
                          v267 = *(*(&v809 + 1) + 16);

                          if (v267)
                          {
                            v268 = (v266 + 32);
                            v244 = v796;
                            v245 = v797;
                            v243 = v794;
                            v62 = v795;
                            do
                            {
                              v269 = *v268++;
                              v868.origin.x = sub_1AAD0FB18(v269);
                              v868.origin.y = v270;
                              v868.size.width = v271;
                              v868.size.height = v272;
                              v846.origin.x = v243;
                              v846.origin.y = v244;
                              v846.size.width = v62;
                              v846.size.height = v245;
                              v847 = CGRectUnion(v846, v868);
                              v243 = v847.origin.x;
                              v244 = v847.origin.y;
                              v62 = v847.size.width;
                              v245 = v847.size.height;
                              --v267;
                            }

                            while (v267);
                          }

                          else
                          {
                            v243 = v794;
                            v62 = v795;
                            v244 = v796;
                            v245 = v797;
                          }

                          sub_1AAF14C40(&v809);
                          v89 = v775;
                          goto LABEL_158;
                        case 3uLL:
                          v247 = v103;
                          v248 = swift_projectBox();
                          v249 = v756;
                          sub_1AACAAD4C(v248, v756, type metadata accessor for SgPoint);
                          sub_1AAD9ADE4(v249 + 48, &v809);
                          if (v812)
                          {
                            v62 = *(&v809 + 1);
                            v245 = *&v810;

                            v250 = *(v249 + 16);
                            v243 = *(v249 + 8) - v62 * 0.5;
                            v251 = v249;
LABEL_153:
                            sub_1AACAADB4(v251, type metadata accessor for SgPoint);
                            v244 = v250 - v245 * 0.5;
                            goto LABEL_158;
                          }

                          v802 = v809;
                          v803 = v810;
                          v804 = v811;
                          v305 = *(v249 + 24);
                          if (*(v249 + 40) == 1)
                          {
                            v245 = *(v249 + 32);
                            v62 = *(v249 + 24);

                            sub_1AAE45A14(&v802);
                            v250 = *(v249 + 16);
                            v243 = *(v249 + 8) - v62 * 0.5;
                            v251 = v249;
                            goto LABEL_153;
                          }

                          v306 = *(v249 + 16);
                          v781 = *(v249 + 8);
                          v786 = v306;
                          v307 = *(&v803 + 1);
                          v308 = v804;
                          v309 = sqrt(v305);

                          sub_1AACBB42C(&v802, v307);
                          v310 = *(v308 + 16);
                          v311 = v308;
                          v89 = v775;
                          v312 = v310(v307, v311);
                          v748 = v313;
                          v315 = v314;
                          v317 = v316;
                          sub_1AACAADB4(v756, type metadata accessor for SgPoint);
                          v62 = v309 * v315;
                          v245 = v309 * v317;
                          v243 = v781 + v309 * (v312 + -0.5);
                          v244 = v786 + v309 * (v748 + -0.5);
                          sub_1AAE45A14(&v802);
LABEL_158:
                          v103 = v247;
                          v242 = v787;
LABEL_119:
                          v842.origin.x = v97;
                          v842.origin.y = v98;
                          v842.size.width = v99;
                          v842.size.height = v61;
                          v866.origin.x = v243;
                          v866.origin.y = v244;
                          v866.size.width = v62;
                          v866.size.height = v245;
                          v843 = CGRectUnion(v842, v866);
                          v97 = v843.origin.x;
                          v98 = v843.origin.y;
                          v99 = v843.size.width;
                          v61 = v843.size.height;

                          v60 = v794;
                          v62 = v795;
                          y = v796;
                          if (v241 == v240)
                          {
                            goto LABEL_208;
                          }

                          break;
                        case 4uLL:
                          v283 = swift_projectBox();
                          v253 = v777;
                          sub_1AACAAD4C(v283, v777, type metadata accessor for SgRectangle);
                          v243 = v253[1];
                          v244 = v253[2];
                          v62 = v253[3];
                          v245 = v253[4];

                          v258 = type metadata accessor for SgRectangle;
                          goto LABEL_149;
                        case 5uLL:
                          v284 = swift_projectBox();
                          v285 = v778;
                          sub_1AACAAD4C(v284, v778, type metadata accessor for SgSector);
                          v286 = vaddvq_f64(vmulq_f64(*(v285 + 24), xmmword_1AAFC7450));
                          v287 = __sincos_stret(((*(v285 + 8) + *(v285 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                          v243 = v286 * v287.__cosval;
                          v244 = v286 * v287.__sinval;
                          v288 = (v285 + *(v779 + 52));
                          v289 = v288[1];
                          v62 = *v288 + *v288;

                          sub_1AACAADB4(v285, type metadata accessor for SgSector);
                          v245 = v289 + v289;
                          goto LABEL_119;
                        case 6uLL:
                          v273 = swift_projectBox();
                          v253 = v753;
                          sub_1AACAAD4C(v273, v753, type metadata accessor for SgRule);
                          v274 = v253[1];
                          v275 = v253[2];
                          v276 = v253[3];
                          v277 = v253[4];
                          if (v276 >= v274)
                          {
                            v243 = v253[1];
                          }

                          else
                          {
                            v243 = v253[3];
                          }

                          if (v277 >= v275)
                          {
                            v244 = v253[2];
                          }

                          else
                          {
                            v244 = v253[4];
                          }

                          v62 = vabdd_f64(v276, v274);
                          v245 = vabdd_f64(v277, v275);

                          v258 = type metadata accessor for SgRule;
                          goto LABEL_149;
                        case 7uLL:
                          v300 = swift_projectBox();
                          v253 = v774;
                          sub_1AACAAD4C(v300, v774, type metadata accessor for SgLine);

                          sub_1AAF56CF0();
                          v243 = v301;
                          v244 = v302;
                          v62 = v303;
                          v245 = v304;
                          v258 = type metadata accessor for SgLine;
                          goto LABEL_149;
                        case 8uLL:
                          v252 = swift_projectBox();
                          v253 = v772;
                          sub_1AACAAD4C(v252, v772, type metadata accessor for SgArea);

                          sub_1AAF58424();
                          v243 = v254;
                          v244 = v255;
                          v62 = v256;
                          v245 = v257;
                          v258 = type metadata accessor for SgArea;
                          goto LABEL_149;
                        case 9uLL:
                          v290 = swift_projectBox();
                          v291 = v767;
                          sub_1AACAAD4C(v290, v767, type metadata accessor for SgPath);
                          v292 = *(v291 + 24);
                          v816 = *(v291 + 8);
                          v817 = v292;
                          v818 = *(v291 + 40);

                          v293 = sub_1AAF8E8E4();
                          v243 = v794;
                          v62 = v795;
                          v244 = v796;
                          v245 = v797;
                          if ((v293 & 1) == 0)
                          {
                            sub_1AAF8E874();
                            v243 = v294;
                            v244 = v295;
                            v62 = v296;
                            v245 = v297;
                          }

                          v298 = type metadata accessor for SgPath;
                          v299 = v767;
                          goto LABEL_150;
                        case 0xAuLL:
                          v62 = *((v246 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
                          v245 = *((v246 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
                          v243 = *((v246 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((v246 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * v62;
                          v244 = *((v246 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((v246 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * v245;

                          goto LABEL_119;
                        case 0xBuLL:
                        case 0xCuLL:
                          v243 = *((v246 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                          v244 = *((v246 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                          v62 = *((v246 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                          v245 = *((v246 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                          goto LABEL_119;
                        case 0xDuLL:

                          v243 = 0.0;
                          v244 = 0.0;
                          v62 = 0.0;
                          v245 = 0.0;
                          goto LABEL_119;
                        case 0xEuLL:
                          goto LABEL_119;
                        default:
                          v278 = swift_projectBox();
                          v253 = v776;
                          sub_1AACAAD4C(v278, v776, type metadata accessor for SgGroup);

                          v243 = sub_1AAD05240(v279);
                          v244 = v280;
                          v62 = v281;
                          v245 = v282;
                          v258 = type metadata accessor for SgGroup;
LABEL_149:
                          v298 = v258;
                          v299 = v253;
LABEL_150:
                          sub_1AACAADB4(v299, v298);
                          goto LABEL_119;
                      }
                    }
                  }

                  v97 = v60;
                  v98 = y;
                  v99 = v62;
                  v61 = v797;
LABEL_208:
                  sub_1AAF14C40(&v798);
                  v58 = v770;
                  goto LABEL_25;
                case 3:
                  v104 = swift_projectBox();
                  v105 = v745;
                  sub_1AACAAD4C(v104, v745, type metadata accessor for SgPoint);
                  sub_1AAD9ADE4(v105 + 48, &v798);
                  if (v801)
                  {
                    v99 = *(&v798 + 1);
                    v61 = *&v799;

                    v106 = *(v105 + 16);
                    v97 = *(v105 + 8) - v99 * 0.5;
                    sub_1AACAADB4(v105, type metadata accessor for SgPoint);
                    v98 = v106 - v61 * 0.5;
                  }

                  else
                  {
                    v809 = v798;
                    v810 = v799;
                    v811 = v800;
                    v343 = *(v105 + 24);
                    v344 = v105;
                    if (*(v105 + 40) == 1)
                    {
                      v61 = *(v105 + 32);
                      v99 = *(v105 + 24);

                      sub_1AAE45A14(&v809);
                      v345 = *(v105 + 16);
                      v97 = *(v105 + 8) - v99 * 0.5;
                      sub_1AACAADB4(v105, type metadata accessor for SgPoint);
                      v98 = v345 - v61 * 0.5;
                    }

                    else
                    {
                      v360 = *(v105 + 8);
                      v361 = *(v105 + 16);
                      v362 = *(&v810 + 1);
                      v363 = v811;
                      v364 = sqrt(v343);

                      sub_1AACBB42C(&v809, v362);
                      v365 = *(v363 + 16);
                      v366 = v363;
                      v89 = v775;
                      v367 = v365(v362, v366);
                      v369 = v368;
                      v371 = v370;
                      v373 = v372;
                      v58 = v770;
                      sub_1AACAADB4(v344, type metadata accessor for SgPoint);
                      v99 = v364 * v371;
                      v61 = v364 * v373;
                      v97 = v360 + v364 * (v367 + -0.5);
                      v374 = v364 * (v369 + -0.5);
                      v62 = v795;
                      y = v796;
                      v98 = v361 + v374;
                      sub_1AAE45A14(&v809);
                    }
                  }

                  goto LABEL_25;
                case 4:
                  v323 = swift_projectBox();
                  v92 = v777;
                  sub_1AACAAD4C(v323, v777, type metadata accessor for SgRectangle);
                  v97 = v92[1];
                  v98 = v92[2];
                  v99 = v92[3];
                  v61 = v92[4];

                  v100 = type metadata accessor for SgRectangle;
                  goto LABEL_23;
                case 5:
                  v324 = swift_projectBox();
                  v325 = v778;
                  sub_1AACAAD4C(v324, v778, type metadata accessor for SgSector);
                  v326 = vaddvq_f64(vmulq_f64(*(v325 + 24), xmmword_1AAFC7450));
                  v327 = __sincos_stret(((*(v325 + 8) + *(v325 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                  v97 = v326 * v327.__cosval;
                  v98 = v326 * v327.__sinval;
                  v328 = (v325 + *(v779 + 52));
                  v329 = v328[1];
                  v99 = *v328 + *v328;

                  sub_1AACAADB4(v325, type metadata accessor for SgSector);
                  v61 = v329 + v329;
                  goto LABEL_25;
                case 6:
                  v91 = swift_projectBox();
                  v92 = v746;
                  sub_1AACAAD4C(v91, v746, type metadata accessor for SgRule);
                  v93 = v92[1];
                  v94 = v92[2];
                  v95 = v92[3];
                  v96 = v92[4];
                  if (v95 >= v93)
                  {
                    v97 = v92[1];
                  }

                  else
                  {
                    v97 = v92[3];
                  }

                  if (v96 >= v94)
                  {
                    v98 = v92[2];
                  }

                  else
                  {
                    v98 = v92[4];
                  }

                  v99 = vabdd_f64(v95, v93);
                  v61 = vabdd_f64(v96, v94);

                  v100 = type metadata accessor for SgRule;
                  goto LABEL_23;
                case 7:
                  v338 = swift_projectBox();
                  v92 = v774;
                  sub_1AACAAD4C(v338, v774, type metadata accessor for SgLine);

                  sub_1AAF56CF0();
                  v97 = v339;
                  v98 = v340;
                  v99 = v341;
                  v61 = v342;
                  v100 = type metadata accessor for SgLine;
                  goto LABEL_23;
                case 8:
                  v107 = swift_projectBox();
                  v108 = v760;
                  sub_1AACAAD4C(v107, v760, type metadata accessor for SgArea);
                  v109 = *(v108 + 8);
                  v110 = v103;
                  v111 = *(v109 + 16);
                  v112 = *(v111 + 16);
                  if (v112)
                  {
                    v787 = *(v108 + 8);
                    sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
                    v771 = v110;

                    v113 = (v111 + 56);
                    v114 = MEMORY[0x1E69E7CC0];
                    v61 = v797;
                    do
                    {
                      v115 = *(v113 - 2);
                      v116 = *v113;
                      v117 = swift_allocObject();
                      *(v117 + 32) = v115;
                      v118 = (v117 + 32);
                      *(v117 + 40) = v116;
                      v119 = *(v114 + 2);
                      v120 = v119 + 2;
                      if (__OFADD__(v119, 2))
                      {
                        goto LABEL_422;
                      }

                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      if (!isUniquelyReferenced_nonNull_native || (v122 = *(v114 + 3) >> 1, v122 < v120))
                      {
                        if (v119 <= v120)
                        {
                          v123 = v119 + 2;
                        }

                        else
                        {
                          v123 = v119;
                        }

                        v114 = sub_1AAD69810(isUniquelyReferenced_nonNull_native, v123, 1, v114);
                        v122 = *(v114 + 3) >> 1;
                      }

                      v124 = *(v114 + 2);
                      if (v122 - v124 < 2)
                      {
                        goto LABEL_423;
                      }

                      *&v114[8 * v124 + 32] = *v118;
                      swift_setDeallocating();
                      swift_deallocClassInstance();
                      v125 = *(v114 + 2);
                      v126 = __OFADD__(v125, 2);
                      v127 = v125 + 2;
                      if (v126)
                      {
                        goto LABEL_424;
                      }

                      *(v114 + 2) = v127;
                      v113 += 5;
                      --v112;
                    }

                    while (v112);

                    v58 = v770;
                    v128 = v771;
                    v63 = v780;
                    v89 = v775;
                    v109 = v787;
                  }

                  else
                  {

                    v114 = MEMORY[0x1E69E7CC0];
                    v61 = v797;
                    v128 = v110;
                  }

                  v346 = 0;
                  v347 = *(v114 + 2);
                  v348 = 1;
                  break;
                case 9:
                  v330 = swift_projectBox();
                  v331 = v761;
                  sub_1AACAAD4C(v330, v761, type metadata accessor for SgPath);
                  v332 = *(v331 + 24);
                  v819 = *(v331 + 8);
                  v820 = v332;
                  v821 = *(v331 + 40);

                  v333 = sub_1AAF8E8E4();
                  v97 = v60;
                  v98 = y;
                  v99 = v62;
                  v61 = v797;
                  if ((v333 & 1) == 0)
                  {
                    sub_1AAF8E874();
                    v97 = v334;
                    v98 = v335;
                    v99 = v336;
                    v61 = v337;
                  }

                  v101 = type metadata accessor for SgPath;
                  v102 = v761;
                  goto LABEL_24;
                case 0xALL:
                  v99 = *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
                  v61 = *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
                  v97 = *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * v99;
                  v98 = *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * v61;

                  goto LABEL_25;
                case 0xBLL:
                case 0xCLL:
                  v97 = *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v98 = *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                  v99 = *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                  v61 = *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                  goto LABEL_25;
                case 0xDLL:

                  v97 = 0.0;
                  v98 = 0.0;
                  v99 = 0.0;
                  v61 = 0.0;
                  goto LABEL_25;
                case 0xELL:
                  goto LABEL_25;
                default:
                  v318 = swift_projectBox();
                  v92 = v776;
                  sub_1AACAAD4C(v318, v776, type metadata accessor for SgGroup);

                  v97 = sub_1AAD05240(v319);
                  v98 = v320;
                  v99 = v321;
                  v61 = v322;
                  v100 = type metadata accessor for SgGroup;
LABEL_23:
                  v101 = v100;
                  v102 = v92;
                  goto LABEL_24;
              }

              do
              {
                if (v347 == v346)
                {

LABEL_203:
                  v97 = v60;
                  v98 = y;
                  v99 = v62;
                  goto LABEL_204;
                }

                v349 = v348;
                v350 = &v114[8 * v346++];
                v97 = *(v350 + 4);
                v348 = v349 + 1;
              }

              while ((*&v97 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL);
              do
              {
                if (v347 == v349)
                {
                  LOBYTE(v798) = 0;

                  v355 = v97;
                  if ((v798 & 1) == 0)
                  {
                    goto LABEL_213;
                  }

                  goto LABEL_203;
                }

                v351 = v349 + 1;
                if (__OFADD__(v349, 1))
                {
                  goto LABEL_432;
                }

                v352 = *&v114[8 * v349++ + 32];
              }

              while ((*&v352 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL);
              if (v352 >= v97)
              {
                v353 = v352;
              }

              else
              {
                v353 = v97;
              }

              if (v352 < v97)
              {
                v97 = v352;
              }

              v354 = v97;
LABEL_182:
              v355 = v353;
LABEL_183:
              v356 = v351 + 1;
              while (v347 != v351)
              {
                if (v351 >= v347)
                {
                  goto LABEL_433;
                }

                if (__OFADD__(v351, 1))
                {
                  goto LABEL_434;
                }

                v357 = v356;
                v358 = *&v114[8 * v351++ + 32];
                ++v356;
                if ((*&v358 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  while (v347 != v357)
                  {
                    v351 = v357 + 1;
                    if (__OFADD__(v357, 1))
                    {
                      goto LABEL_438;
                    }

                    v359 = *&v114[8 * v357++ + 32];
                    if ((*&v359 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                    {
                      goto LABEL_193;
                    }
                  }

                  v351 = *(v114 + 2);
                  v359 = v358;
LABEL_193:
                  if (v359 >= v358)
                  {
                    v353 = v359;
                  }

                  else
                  {
                    v353 = v358;
                  }

                  if (v359 < v358)
                  {
                    v358 = v359;
                  }

                  if (v358 < v354)
                  {
                    v97 = v358;
                    v354 = v358;
                  }

                  if (v353 < v355)
                  {
                    goto LABEL_183;
                  }

                  goto LABEL_182;
                }
              }

              LOBYTE(v798) = 0;

              if (v798)
              {
                goto LABEL_203;
              }

LABEL_213:
              if (v97 > v355)
              {
                goto LABEL_443;
              }

              v376 = *(v109 + 16);
              v377 = *(*&v376 + 16);
              if (v377)
              {
                sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
                v787 = v378;

                v786 = v376;
                v379 = (*&v376 + 64);
                v380 = MEMORY[0x1E69E7CC0];
                do
                {
                  v381 = v128;
                  v382 = v63;
                  v383 = *(v379 - 2);
                  v384 = *v379;
                  v385 = swift_allocObject();
                  *(v385 + 32) = v383;
                  v386 = (v385 + 32);
                  *(v385 + 40) = v384;
                  v387 = *(v380 + 2);
                  v388 = v387 + 2;
                  if (__OFADD__(v387, 2))
                  {
                    goto LABEL_435;
                  }

                  v389 = swift_isUniquelyReferenced_nonNull_native();
                  if (!v389 || (v390 = *(v380 + 3) >> 1, v390 < v388))
                  {
                    if (v387 <= v388)
                    {
                      v391 = v387 + 2;
                    }

                    else
                    {
                      v391 = v387;
                    }

                    v380 = sub_1AAD69810(v389, v391, 1, v380);
                    v390 = *(v380 + 3) >> 1;
                  }

                  v61 = v797;
                  v63 = v382;
                  v392 = *(v380 + 2);
                  if (v390 - v392 < 2)
                  {
                    goto LABEL_436;
                  }

                  v128 = v381;
                  *&v380[8 * v392 + 32] = *v386;
                  swift_setDeallocating();
                  swift_deallocClassInstance();
                  v393 = *(v380 + 2);
                  v126 = __OFADD__(v393, 2);
                  v394 = v393 + 2;
                  if (v126)
                  {
                    goto LABEL_437;
                  }

                  *(v380 + 2) = v394;
                  v379 += 5;
                  --v377;
                }

                while (v377);
              }

              else
              {
                v380 = MEMORY[0x1E69E7CC0];
              }

              MEMORY[0x1EEE9AC00](v375);
              sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
              v738[-4] = v395;
              v738[-3] = sub_1AAE840B8();
              v738[-2] = sub_1AAE971D0();
              swift_getKeyPath();
              v396 = v773;
              v397 = COERCE_DOUBLE(sub_1AAF894FC(v380, sub_1AAF68E40));
              v399 = v398;
              v401 = v400;
              v773 = v396;

              if (v401)
              {
                v97 = v60;
                v98 = y;
                v99 = v62;
                v58 = v770;
                v89 = v775;
                goto LABEL_204;
              }

              v98 = v397;
              v402 = v397 > v399;
              v58 = v770;
              if (v402)
              {
                goto LABEL_444;
              }

              v99 = v355 - v97;
              v61 = v399 - v98;
              v89 = v775;
LABEL_204:
              v101 = type metadata accessor for SgArea;
              v102 = v760;
LABEL_24:
              sub_1AACAADB4(v102, v101);
LABEL_25:
              v834.origin.x = v791;
              v834.size.width = v792;
              v834.origin.y = v793;
              v834.size.height = v790;
              v862.origin.x = v97;
              v862.origin.y = v98;
              v862.size.width = v99;
              v862.size.height = v61;
              v835 = CGRectUnion(v834, v862);
              v66 = v835.origin.x;
              v793 = v835.origin.y;
              v65 = v835.size.width;
              v64 = v835.size.height;

              v90 = v789;
              v61 = v797;
              if (v789 == v785)
              {
                goto LABEL_407;
              }
            }
          }

          v66 = v60;
          v793 = y;
          v65 = v62;
          v64 = v61;
LABEL_407:

          goto LABEL_410;
        case 2uLL:
          v764 = v72;
          sub_1AAD117A0((v72 & 0xFFFFFFFFFFFFFFFLL) + 16, &v798);
          v403 = *(&v798 + 1);
          v404 = *(*(&v798 + 1) + 16);

          if (v404 != 0.0)
          {
            v405 = 0;
            v787 = v403 + 32;
            v64 = v61;
            v65 = v62;
            v793 = y;
            v66 = v60;
            v785 = v403;
            v780 = v63;
            v781 = v404;
            while (1)
            {
              if (v405 >= *(v403 + 16))
              {
                goto LABEL_426;
              }

              v790 = v64;
              v791 = v66;
              v792 = v65;
              v409 = *(v787 + 8 * v405++);
              v406 = v60;
              v407 = y;
              v408 = v62;
              switch(*&v409 >> 60)
              {
                case 1:
                  v434 = *((*&v409 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                  *&v809 = *((*&v409 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v775 = *&v809;
                  swift_bridgeObjectRetain_n();
                  swift_bridgeObjectRetain_n();

                  v771 = v434;
                  sub_1AADC9018(*&v434);
                  v435 = v809;
                  v436 = *(v809 + 16);
                  if (v436)
                  {
                    v437 = 0;
                    v789 = v809 + 32;
                    v61 = v797;
                    v408 = v62;
                    v407 = y;
                    v406 = v60;
                    v784 = v436;
                    v786 = v409;
                    while (1)
                    {
                      if (v437 >= *(v435 + 16))
                      {
                        goto LABEL_416;
                      }

                      v441 = *(v789 + 8 * v437++);
                      v438 = v60;
                      v439 = y;
                      v440 = v797;
                      switch(v441 >> 60)
                      {
                        case 1uLL:
                          v454 = *((v441 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                          *&v809 = *((v441 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                          swift_bridgeObjectRetain_n();
                          swift_bridgeObjectRetain_n();

                          sub_1AADC9018(v454);
                          v455 = *(v809 + 16);
                          if (v455)
                          {
                            v456 = (v809 + 32);
                            v439 = v796;
                            v440 = v797;
                            v438 = v794;
                            v62 = v795;
                            do
                            {
                              v457 = *v456++;
                              v871.origin.x = sub_1AAD0FB18(v457);
                              v871.origin.y = v458;
                              v871.size.width = v459;
                              v871.size.height = v460;
                              v852.origin.x = v438;
                              v852.origin.y = v439;
                              v852.size.width = v62;
                              v852.size.height = v440;
                              v853 = CGRectUnion(v852, v871);
                              v438 = v853.origin.x;
                              v439 = v853.origin.y;
                              v62 = v853.size.width;
                              v440 = v853.size.height;
                              --v455;
                            }

                            while (v455);
                          }

                          else
                          {
                            v438 = v794;
                            v62 = v795;
                            v439 = v796;
                            v440 = v797;
                          }

                          v63 = v780;
                          v404 = v781;
                          v409 = v786;
                          v436 = v784;
                          goto LABEL_258;
                        case 2uLL:
                          v461 = v404;
                          v462 = v409;
                          sub_1AAD117A0((v441 & 0xFFFFFFFFFFFFFFFLL) + 16, &v809);
                          v463 = *(&v809 + 1);
                          v464 = *(*(&v809 + 1) + 16);

                          if (v464)
                          {
                            v465 = (v463 + 32);
                            v439 = v796;
                            v440 = v797;
                            v438 = v794;
                            v62 = v795;
                            do
                            {
                              v466 = *v465++;
                              v872.origin.x = sub_1AAD0FB18(v466);
                              v872.origin.y = v467;
                              v872.size.width = v468;
                              v872.size.height = v469;
                              v854.origin.x = v438;
                              v854.origin.y = v439;
                              v854.size.width = v62;
                              v854.size.height = v440;
                              v855 = CGRectUnion(v854, v872);
                              v438 = v855.origin.x;
                              v439 = v855.origin.y;
                              v62 = v855.size.width;
                              v440 = v855.size.height;
                              --v464;
                            }

                            while (v464);
                          }

                          else
                          {
                            v438 = v794;
                            v62 = v795;
                            v439 = v796;
                            v440 = v797;
                          }

                          sub_1AAF14C40(&v809);
                          v409 = v462;
                          v404 = v461;
                          v63 = v780;
                          v436 = v784;
                          goto LABEL_258;
                        case 3uLL:
                          v442 = v409;
                          v443 = swift_projectBox();
                          v444 = v758;
                          sub_1AACAAD4C(v443, v758, type metadata accessor for SgPoint);
                          sub_1AAD9ADE4(v444 + 48, &v809);
                          if (v812)
                          {
                            v62 = *(&v809 + 1);
                            v440 = *&v810;

                            v445 = *(v444 + 16);
                            v438 = *(v444 + 8) - v62 * 0.5;
                            v446 = v444;
LABEL_292:
                            sub_1AACAADB4(v446, type metadata accessor for SgPoint);
                            v439 = v445 - v440 * 0.5;
                            goto LABEL_298;
                          }

                          v802 = v809;
                          v803 = v810;
                          v804 = v811;
                          v502 = *(v444 + 24);
                          if (*(v444 + 40) == 1)
                          {
                            v440 = *(v444 + 32);
                            v62 = *(v444 + 24);

                            sub_1AAE45A14(&v802);
                            v445 = *(v444 + 16);
                            v438 = *(v444 + 8) - v62 * 0.5;
                            v446 = v444;
                            goto LABEL_292;
                          }

                          v503 = *(v444 + 16);
                          v747 = *(v444 + 8);
                          v748 = v503;
                          v504 = *(&v803 + 1);
                          v505 = v804;
                          v506 = sqrt(v502);

                          sub_1AACBB42C(&v802, v504);
                          v507 = *(v505 + 16);
                          v508 = v505;
                          v404 = v781;
                          v509 = v507(v504, v508);
                          v744 = v510;
                          v512 = v511;
                          v514 = v513;
                          sub_1AACAADB4(v758, type metadata accessor for SgPoint);
                          v62 = v506 * v512;
                          v440 = v506 * v514;
                          v438 = v747 + v506 * (v509 + -0.5);
                          v439 = v748 + v506 * (v744 + -0.5);
                          sub_1AAE45A14(&v802);
LABEL_298:
                          v409 = v442;
                          v436 = v784;
LABEL_258:
                          v850.origin.x = v406;
                          v850.origin.y = v407;
                          v850.size.width = v408;
                          v850.size.height = v61;
                          v870.origin.x = v438;
                          v870.origin.y = v439;
                          v870.size.width = v62;
                          v870.size.height = v440;
                          v851 = CGRectUnion(v850, v870);
                          v406 = v851.origin.x;
                          v407 = v851.origin.y;
                          v408 = v851.size.width;
                          v61 = v851.size.height;

                          v60 = v794;
                          v62 = v795;
                          y = v796;
                          if (v437 == v436)
                          {
                            goto LABEL_378;
                          }

                          break;
                        case 4uLL:
                          v480 = swift_projectBox();
                          v448 = v777;
                          sub_1AACAAD4C(v480, v777, type metadata accessor for SgRectangle);
                          v438 = v448[1];
                          v439 = v448[2];
                          v62 = v448[3];
                          v440 = v448[4];

                          v453 = type metadata accessor for SgRectangle;
                          goto LABEL_288;
                        case 5uLL:
                          v481 = swift_projectBox();
                          v482 = v778;
                          sub_1AACAAD4C(v481, v778, type metadata accessor for SgSector);
                          v483 = vaddvq_f64(vmulq_f64(*(v482 + 24), xmmword_1AAFC7450));
                          v484 = __sincos_stret(((*(v482 + 8) + *(v482 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                          v438 = v483 * v484.__cosval;
                          v439 = v483 * v484.__sinval;
                          v485 = (v482 + *(v779 + 52));
                          v486 = v485[1];
                          v62 = *v485 + *v485;

                          sub_1AACAADB4(v482, type metadata accessor for SgSector);
                          v440 = v486 + v486;
                          goto LABEL_258;
                        case 6uLL:
                          v470 = swift_projectBox();
                          v448 = v754;
                          sub_1AACAAD4C(v470, v754, type metadata accessor for SgRule);
                          v471 = v448[1];
                          v472 = v448[2];
                          v473 = v448[3];
                          v474 = v448[4];
                          if (v473 >= v471)
                          {
                            v438 = v448[1];
                          }

                          else
                          {
                            v438 = v448[3];
                          }

                          if (v474 >= v472)
                          {
                            v439 = v448[2];
                          }

                          else
                          {
                            v439 = v448[4];
                          }

                          v62 = vabdd_f64(v473, v471);
                          v440 = vabdd_f64(v474, v472);

                          v453 = type metadata accessor for SgRule;
                          goto LABEL_288;
                        case 7uLL:
                          v497 = swift_projectBox();
                          v448 = v774;
                          sub_1AACAAD4C(v497, v774, type metadata accessor for SgLine);

                          sub_1AAF56CF0();
                          v438 = v498;
                          v439 = v499;
                          v62 = v500;
                          v440 = v501;
                          v453 = type metadata accessor for SgLine;
                          goto LABEL_288;
                        case 8uLL:
                          v447 = swift_projectBox();
                          v448 = v772;
                          sub_1AACAAD4C(v447, v772, type metadata accessor for SgArea);

                          sub_1AAF58424();
                          v438 = v449;
                          v439 = v450;
                          v62 = v451;
                          v440 = v452;
                          v453 = type metadata accessor for SgArea;
                          goto LABEL_288;
                        case 9uLL:
                          v487 = swift_projectBox();
                          v488 = v768;
                          sub_1AACAAD4C(v487, v768, type metadata accessor for SgPath);
                          v489 = *(v488 + 24);
                          v822 = *(v488 + 8);
                          v823 = v489;
                          v824 = *(v488 + 40);

                          v490 = sub_1AAF8E8E4();
                          v438 = v794;
                          v62 = v795;
                          v439 = v796;
                          v440 = v797;
                          if ((v490 & 1) == 0)
                          {
                            sub_1AAF8E874();
                            v438 = v491;
                            v439 = v492;
                            v62 = v493;
                            v440 = v494;
                          }

                          v495 = type metadata accessor for SgPath;
                          v496 = v768;
                          goto LABEL_289;
                        case 0xAuLL:
                          v62 = *((v441 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
                          v440 = *((v441 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
                          v438 = *((v441 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((v441 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * v62;
                          v439 = *((v441 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((v441 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * v440;

                          goto LABEL_258;
                        case 0xBuLL:
                        case 0xCuLL:
                          v438 = *((v441 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                          v439 = *((v441 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                          v62 = *((v441 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                          v440 = *((v441 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                          goto LABEL_258;
                        case 0xDuLL:

                          v438 = 0.0;
                          v439 = 0.0;
                          v62 = 0.0;
                          v440 = 0.0;
                          goto LABEL_258;
                        case 0xEuLL:
                          goto LABEL_258;
                        default:
                          v475 = swift_projectBox();
                          v448 = v776;
                          sub_1AACAAD4C(v475, v776, type metadata accessor for SgGroup);

                          v438 = sub_1AAD05240(v476);
                          v439 = v477;
                          v62 = v478;
                          v440 = v479;
                          v453 = type metadata accessor for SgGroup;
LABEL_288:
                          v495 = v453;
                          v496 = v448;
LABEL_289:
                          sub_1AACAADB4(v496, v495);
                          goto LABEL_258;
                      }
                    }
                  }

                  v406 = v60;
                  v407 = y;
                  v408 = v62;
                  v61 = v797;
LABEL_378:

                  v403 = v785;
                  goto LABEL_235;
                case 2:
                  sub_1AAD117A0((*&v409 & 0xFFFFFFFFFFFFFFFLL) + 16, &v809);
                  v515 = *(&v809 + 1);
                  v516 = *(*(&v809 + 1) + 16);

                  if (v516)
                  {
                    v517 = 0;
                    v789 = v515 + 32;
                    v61 = v797;
                    v408 = v62;
                    v407 = y;
                    v406 = v60;
                    v784 = v516;
                    v786 = v409;
                    while (1)
                    {
                      if (v517 >= *(v515 + 16))
                      {
                        goto LABEL_417;
                      }

                      v521 = *(v789 + 8 * v517++);
                      v518 = v60;
                      v519 = y;
                      v520 = v797;
                      switch(v521 >> 60)
                      {
                        case 1uLL:
                          v533 = *((v521 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                          *&v802 = *((v521 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                          swift_bridgeObjectRetain_n();
                          swift_bridgeObjectRetain_n();

                          sub_1AADC9018(v533);
                          v534 = *(v802 + 16);
                          if (v534)
                          {
                            v535 = (v802 + 32);
                            v519 = v796;
                            v520 = v797;
                            v518 = v794;
                            v62 = v795;
                            do
                            {
                              v536 = *v535++;
                              v874.origin.x = sub_1AAD0FB18(v536);
                              v874.origin.y = v537;
                              v874.size.width = v538;
                              v874.size.height = v539;
                              v858.origin.x = v518;
                              v858.origin.y = v519;
                              v858.size.width = v62;
                              v858.size.height = v520;
                              v859 = CGRectUnion(v858, v874);
                              v518 = v859.origin.x;
                              v519 = v859.origin.y;
                              v62 = v859.size.width;
                              v520 = v859.size.height;
                              --v534;
                            }

                            while (v534);
                          }

                          else
                          {
                            v518 = v794;
                            v62 = v795;
                            v519 = v796;
                            v520 = v797;
                          }

                          v63 = v780;
                          v403 = v785;
                          v409 = v786;
                          v516 = v784;
                          goto LABEL_302;
                        case 2uLL:
                          v540 = v63;
                          v541 = v409;
                          sub_1AAD117A0((v521 & 0xFFFFFFFFFFFFFFFLL) + 16, &v802);
                          v542 = *(&v802 + 1);
                          v543 = *(*(&v802 + 1) + 16);

                          if (v543)
                          {
                            v544 = (v542 + 32);
                            v519 = v796;
                            v520 = v797;
                            v518 = v794;
                            v62 = v795;
                            do
                            {
                              v545 = *v544++;
                              v875.origin.x = sub_1AAD0FB18(v545);
                              v875.origin.y = v546;
                              v875.size.width = v547;
                              v875.size.height = v548;
                              v860.origin.x = v518;
                              v860.origin.y = v519;
                              v860.size.width = v62;
                              v860.size.height = v520;
                              v861 = CGRectUnion(v860, v875);
                              v518 = v861.origin.x;
                              v519 = v861.origin.y;
                              v62 = v861.size.width;
                              v520 = v861.size.height;
                              --v543;
                            }

                            while (v543);
                          }

                          else
                          {
                            v518 = v794;
                            v62 = v795;
                            v519 = v796;
                            v520 = v797;
                          }

                          sub_1AAF14C40(&v802);
                          v409 = v541;
                          v63 = v540;
                          v516 = v784;
                          v403 = v785;
                          goto LABEL_302;
                        case 3uLL:
                          v522 = swift_projectBox();
                          v523 = v757;
                          sub_1AACAAD4C(v522, v757, type metadata accessor for SgPoint);
                          sub_1AAD9ADE4(v523 + 48, &v802);
                          if (v805)
                          {
                            v62 = *(&v802 + 1);
                            v520 = *&v803;

                            v524 = *(v523 + 16);
                            v518 = *(v523 + 8) - v62 * 0.5;
                            v525 = v523;
LABEL_336:
                            sub_1AACAADB4(v525, type metadata accessor for SgPoint);
                            v519 = v524 - v520 * 0.5;
                            v516 = v784;
                            goto LABEL_302;
                          }

                          v806 = v802;
                          v807 = v803;
                          v808 = v804;
                          v581 = *(v523 + 24);
                          if (*(v523 + 40) == 1)
                          {
                            v520 = *(v523 + 32);
                            v62 = *(v523 + 24);

                            sub_1AAE45A14(&v806);
                            v524 = *(v523 + 16);
                            v518 = *(v523 + 8) - v62 * 0.5;
                            v525 = v523;
                            goto LABEL_336;
                          }

                          v582 = *(v523 + 16);
                          v771 = *(v523 + 8);
                          v775 = v582;
                          v583 = *(&v807 + 1);
                          v584 = v63;
                          v585 = v409;
                          v586 = v808;
                          v587 = sqrt(v581);

                          sub_1AACBB42C(&v806, v583);
                          v588 = *(v586 + 16);
                          v589 = v586;
                          v409 = v585;
                          v63 = v584;
                          v590 = v588(v583, v589);
                          v748 = v591;
                          v593 = v592;
                          v595 = v594;
                          v403 = v785;
                          sub_1AACAADB4(v757, type metadata accessor for SgPoint);
                          v62 = v587 * v593;
                          v520 = v587 * v595;
                          v518 = v771 + v587 * (v590 + -0.5);
                          v519 = v775 + v587 * (v748 + -0.5);
                          sub_1AAE45A14(&v806);
                          v516 = v784;
LABEL_302:
                          v856.origin.x = v406;
                          v856.origin.y = v407;
                          v856.size.width = v408;
                          v856.size.height = v61;
                          v873.origin.x = v518;
                          v873.origin.y = v519;
                          v873.size.width = v62;
                          v873.size.height = v520;
                          v857 = CGRectUnion(v856, v873);
                          v406 = v857.origin.x;
                          v407 = v857.origin.y;
                          v408 = v857.size.width;
                          v61 = v857.size.height;

                          v60 = v794;
                          v62 = v795;
                          y = v796;
                          if (v517 == v516)
                          {
                            goto LABEL_380;
                          }

                          break;
                        case 4uLL:
                          v559 = swift_projectBox();
                          v527 = v777;
                          sub_1AACAAD4C(v559, v777, type metadata accessor for SgRectangle);
                          v518 = v527[1];
                          v519 = v527[2];
                          v62 = v527[3];
                          v520 = v527[4];

                          v532 = type metadata accessor for SgRectangle;
                          goto LABEL_332;
                        case 5uLL:
                          v560 = swift_projectBox();
                          v561 = v778;
                          sub_1AACAAD4C(v560, v778, type metadata accessor for SgSector);
                          v562 = vaddvq_f64(vmulq_f64(*(v561 + 24), xmmword_1AAFC7450));
                          v563 = __sincos_stret(((*(v561 + 8) + *(v561 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                          v518 = v562 * v563.__cosval;
                          v519 = v562 * v563.__sinval;
                          v564 = (v561 + *(v779 + 52));
                          v565 = v564[1];
                          v62 = *v564 + *v564;

                          sub_1AACAADB4(v561, type metadata accessor for SgSector);
                          v520 = v565 + v565;
                          goto LABEL_302;
                        case 6uLL:
                          v549 = swift_projectBox();
                          v527 = v755;
                          sub_1AACAAD4C(v549, v755, type metadata accessor for SgRule);
                          v550 = v527[1];
                          v551 = v527[2];
                          v552 = v527[3];
                          v553 = v527[4];
                          if (v552 >= v550)
                          {
                            v518 = v527[1];
                          }

                          else
                          {
                            v518 = v527[3];
                          }

                          if (v553 >= v551)
                          {
                            v519 = v527[2];
                          }

                          else
                          {
                            v519 = v527[4];
                          }

                          v62 = vabdd_f64(v552, v550);
                          v520 = vabdd_f64(v553, v551);

                          v532 = type metadata accessor for SgRule;
                          goto LABEL_332;
                        case 7uLL:
                          v576 = swift_projectBox();
                          v527 = v774;
                          sub_1AACAAD4C(v576, v774, type metadata accessor for SgLine);

                          sub_1AAF56CF0();
                          v518 = v577;
                          v519 = v578;
                          v62 = v579;
                          v520 = v580;
                          v532 = type metadata accessor for SgLine;
                          goto LABEL_332;
                        case 8uLL:
                          v526 = swift_projectBox();
                          v527 = v772;
                          sub_1AACAAD4C(v526, v772, type metadata accessor for SgArea);

                          sub_1AAF58424();
                          v518 = v528;
                          v519 = v529;
                          v62 = v530;
                          v520 = v531;
                          v532 = type metadata accessor for SgArea;
                          goto LABEL_332;
                        case 9uLL:
                          v566 = swift_projectBox();
                          v567 = v769;
                          sub_1AACAAD4C(v566, v769, type metadata accessor for SgPath);
                          v568 = *(v567 + 24);
                          v825 = *(v567 + 8);
                          v826 = v568;
                          v827 = *(v567 + 40);

                          v569 = sub_1AAF8E8E4();
                          v518 = v794;
                          v62 = v795;
                          v519 = v796;
                          v520 = v797;
                          if ((v569 & 1) == 0)
                          {
                            sub_1AAF8E874();
                            v518 = v570;
                            v519 = v571;
                            v62 = v572;
                            v520 = v573;
                          }

                          v574 = type metadata accessor for SgPath;
                          v575 = v769;
                          goto LABEL_333;
                        case 0xAuLL:
                          v62 = *((v521 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
                          v520 = *((v521 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
                          v518 = *((v521 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((v521 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * v62;
                          v519 = *((v521 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((v521 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * v520;

                          goto LABEL_302;
                        case 0xBuLL:
                        case 0xCuLL:
                          v518 = *((v521 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                          v519 = *((v521 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                          v62 = *((v521 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                          v520 = *((v521 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                          goto LABEL_302;
                        case 0xDuLL:

                          v518 = 0.0;
                          v519 = 0.0;
                          v62 = 0.0;
                          v520 = 0.0;
                          goto LABEL_302;
                        case 0xEuLL:
                          goto LABEL_302;
                        default:
                          v554 = swift_projectBox();
                          v527 = v776;
                          sub_1AACAAD4C(v554, v776, type metadata accessor for SgGroup);

                          v518 = sub_1AAD05240(v555);
                          v519 = v556;
                          v62 = v557;
                          v520 = v558;
                          v532 = type metadata accessor for SgGroup;
LABEL_332:
                          v574 = v532;
                          v575 = v527;
LABEL_333:
                          sub_1AACAADB4(v575, v574);
                          goto LABEL_302;
                      }
                    }
                  }

                  v406 = v60;
                  v407 = y;
                  v408 = v62;
                  v61 = v797;
LABEL_380:
                  sub_1AAF14C40(&v809);
                  v404 = v781;
                  goto LABEL_235;
                case 3:
                  v410 = swift_projectBox();
                  v411 = v749;
                  sub_1AACAAD4C(v410, v749, type metadata accessor for SgPoint);
                  sub_1AAD9ADE4(v411 + 48, &v809);
                  if (v812)
                  {
                    v408 = *(&v809 + 1);
                    v61 = *&v810;

                    v412 = 0.5;
                    v413 = *(v411 + 16);
                    v406 = *(v411 + 8) - v408 * 0.5;
                    v414 = v411;
LABEL_360:
                    sub_1AACAADB4(v414, type metadata accessor for SgPoint);
                    v407 = v413 - v61 * v412;
                    goto LABEL_235;
                  }

                  v802 = v809;
                  v803 = v810;
                  v804 = v811;
                  v630 = *(v411 + 24);
                  v631 = v411;
                  if (*(v411 + 40) == 1)
                  {
                    v61 = *(v411 + 32);
                    v408 = *(v411 + 24);

                    sub_1AAE45A14(&v802);
                    v412 = 0.5;
                    v413 = *(v411 + 16);
                    v406 = *(v411 + 8) - v408 * 0.5;
                    v414 = v411;
                    goto LABEL_360;
                  }

                  v657 = *(v411 + 8);
                  v658 = *(v411 + 16);
                  v659 = *(&v803 + 1);
                  v660 = v804;
                  v661 = sqrt(v630);

                  sub_1AACBB42C(&v802, v659);
                  v662 = (*(v660 + 16))(v659, v660);
                  v664 = v663;
                  v666 = v665;
                  v668 = v667;
                  sub_1AACAADB4(v631, type metadata accessor for SgPoint);
                  v408 = v661 * v666;
                  v61 = v661 * v668;
                  v406 = v657 + v661 * (v662 + -0.5);
                  v669 = v661 * (v664 + -0.5);
                  v62 = v795;
                  y = v796;
                  v407 = v658 + v669;
                  sub_1AAE45A14(&v802);
                  goto LABEL_235;
                case 4:
                  v608 = swift_projectBox();
                  v597 = v777;
                  sub_1AACAAD4C(v608, v777, type metadata accessor for SgRectangle);
                  v406 = v597[1];
                  v407 = v597[2];
                  v408 = v597[3];
                  v61 = v597[4];

                  v602 = type metadata accessor for SgRectangle;
                  goto LABEL_356;
                case 5:
                  v609 = swift_projectBox();
                  v610 = v778;
                  sub_1AACAAD4C(v609, v778, type metadata accessor for SgSector);
                  v611 = vaddvq_f64(vmulq_f64(*(v610 + 24), xmmword_1AAFC7450));
                  v612 = __sincos_stret(((*(v610 + 8) + *(v610 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                  v406 = v611 * v612.__cosval;
                  v407 = v611 * v612.__sinval;
                  v613 = (v610 + *(v779 + 52));
                  v614 = v613[1];
                  v408 = *v613 + *v613;

                  sub_1AACAADB4(v610, type metadata accessor for SgSector);
                  v61 = v614 + v614;
                  goto LABEL_235;
                case 6:
                  v596 = swift_projectBox();
                  v597 = v750;
                  sub_1AACAAD4C(v596, v750, type metadata accessor for SgRule);
                  v598 = v597[1];
                  v599 = v597[2];
                  v600 = v597[3];
                  v601 = v597[4];
                  if (v600 >= v598)
                  {
                    v406 = v597[1];
                  }

                  else
                  {
                    v406 = v597[3];
                  }

                  if (v601 >= v599)
                  {
                    v407 = v597[2];
                  }

                  else
                  {
                    v407 = v597[4];
                  }

                  v408 = vabdd_f64(v600, v598);
                  v61 = vabdd_f64(v601, v599);

                  v602 = type metadata accessor for SgRule;
                  goto LABEL_356;
                case 7:
                  v625 = swift_projectBox();
                  v597 = v774;
                  sub_1AACAAD4C(v625, v774, type metadata accessor for SgLine);

                  sub_1AAF56CF0();
                  v406 = v626;
                  v407 = v627;
                  v408 = v628;
                  v61 = v629;
                  v602 = type metadata accessor for SgLine;
                  goto LABEL_356;
                case 8:
                  v415 = swift_projectBox();
                  v416 = v762;
                  sub_1AACAAD4C(v415, v762, type metadata accessor for SgArea);
                  v789 = *(v416 + 8);
                  v417 = *(v789 + 16);
                  v418 = *(v417 + 16);
                  v786 = v409;
                  if (v418)
                  {
                    sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                    v784 = v417;
                    v419 = (v417 + 56);
                    v420 = MEMORY[0x1E69E7CC0];
                    v61 = v797;
                    while (1)
                    {
                      v421 = *(v419 - 2);
                      v422 = *v419;
                      v423 = swift_allocObject();
                      *(v423 + 32) = v421;
                      v424 = (v423 + 32);
                      *(v423 + 40) = v422;
                      v425 = *(v420 + 2);
                      v426 = v425 + 2;
                      if (__OFADD__(v425, 2))
                      {
                        goto LABEL_418;
                      }

                      v427 = swift_isUniquelyReferenced_nonNull_native();
                      if (!v427 || (v428 = *(v420 + 3) >> 1, v428 < v426))
                      {
                        if (v425 <= v426)
                        {
                          v429 = v425 + 2;
                        }

                        else
                        {
                          v429 = v425;
                        }

                        v420 = sub_1AAD69810(v427, v429, 1, v420);
                        v428 = *(v420 + 3) >> 1;
                      }

                      v430 = *(v420 + 2);
                      if (v428 - v430 < 2)
                      {
                        break;
                      }

                      *&v420[8 * v430 + 32] = *v424;
                      swift_setDeallocating();
                      swift_deallocClassInstance();
                      v431 = *(v420 + 2);
                      v126 = __OFADD__(v431, 2);
                      v432 = v431 + 2;
                      if (v126)
                      {
                        goto LABEL_420;
                      }

                      *(v420 + 2) = v432;
                      v419 += 5;
                      if (!--v418)
                      {

                        goto LABEL_362;
                      }
                    }

LABEL_419:
                    __break(1u);
LABEL_420:
                    __break(1u);
LABEL_421:
                    __break(1u);
LABEL_422:
                    __break(1u);
LABEL_423:
                    __break(1u);
LABEL_424:
                    __break(1u);
LABEL_425:
                    __break(1u);
LABEL_426:
                    __break(1u);
LABEL_427:
                    __break(1u);
LABEL_428:
                    __break(1u);
LABEL_429:
                    __break(1u);
LABEL_430:
                    __break(1u);
LABEL_431:
                    __break(1u);
LABEL_432:
                    __break(1u);
LABEL_433:
                    __break(1u);
LABEL_434:
                    __break(1u);
LABEL_435:
                    __break(1u);
LABEL_436:
                    __break(1u);
LABEL_437:
                    __break(1u);
LABEL_438:
                    __break(1u);
LABEL_439:
                    __break(1u);
LABEL_440:
                    __break(1u);
LABEL_441:
                    __break(1u);
LABEL_442:
                    __break(1u);
LABEL_443:
                    __break(1u);
LABEL_444:
                    __break(1u);
                    JUMPOUT(0x1AAD0977CLL);
                  }

                  v420 = MEMORY[0x1E69E7CC0];
                  v61 = v797;
LABEL_362:
                  MEMORY[0x1EEE9AC00](v433);
                  sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                  v784 = v632;
                  v738[-4] = v632;
                  v775 = COERCE_DOUBLE(sub_1AAE840B8());
                  *&v738[-3] = v775;
                  v771 = COERCE_DOUBLE(sub_1AAE971D0());
                  *&v738[-2] = v771;
                  swift_getKeyPath();
                  v633 = v773;
                  v634 = COERCE_DOUBLE(sub_1AAF894FC(v420, sub_1AAF67DF8));
                  v636 = v635;
                  v638 = v637;
                  v773 = v633;

                  v406 = v60;
                  v407 = y;
                  v408 = v62;
                  v63 = v780;
                  if ((v638 & 1) == 0)
                  {
                    v406 = v634;
                    v640 = v636;
                    if (v634 > v636)
                    {
                      goto LABEL_440;
                    }

                    v641 = *(v789 + 16);
                    v642 = *(v641 + 16);
                    if (v642)
                    {
                      sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                      v789 = v641;
                      v643 = (v641 + 64);
                      v644 = MEMORY[0x1E69E7CC0];
                      do
                      {
                        v645 = *(v643 - 2);
                        v646 = *v643;
                        v647 = swift_allocObject();
                        *(v647 + 32) = v645;
                        v648 = (v647 + 32);
                        *(v647 + 40) = v646;
                        v649 = *(v644 + 2);
                        v650 = v649 + 2;
                        if (__OFADD__(v649, 2))
                        {
                          goto LABEL_429;
                        }

                        v651 = swift_isUniquelyReferenced_nonNull_native();
                        if (!v651 || (v652 = *(v644 + 3) >> 1, v652 < v650))
                        {
                          if (v649 <= v650)
                          {
                            v653 = v649 + 2;
                          }

                          else
                          {
                            v653 = v649;
                          }

                          v644 = sub_1AAD69810(v651, v653, 1, v644);
                          v652 = *(v644 + 3) >> 1;
                        }

                        v61 = v797;
                        v654 = *(v644 + 2);
                        if (v652 - v654 < 2)
                        {
                          goto LABEL_430;
                        }

                        *&v644[8 * v654 + 32] = *v648;
                        swift_setDeallocating();
                        swift_deallocClassInstance();
                        v655 = *(v644 + 2);
                        v126 = __OFADD__(v655, 2);
                        v656 = v655 + 2;
                        if (v126)
                        {
                          goto LABEL_431;
                        }

                        *(v644 + 2) = v656;
                        v643 += 5;
                        --v642;
                      }

                      while (v642);

                      v63 = v780;
                    }

                    else
                    {
                      v644 = MEMORY[0x1E69E7CC0];
                      v61 = v797;
                    }

                    MEMORY[0x1EEE9AC00](v639);
                    v670 = v775;
                    v738[-4] = v784;
                    *&v738[-3] = v670;
                    *&v738[-2] = v771;
                    swift_getKeyPath();
                    v671 = v773;
                    v672 = COERCE_DOUBLE(sub_1AAF894FC(v644, sub_1AAF68E40));
                    v674 = v673;
                    v676 = v675;
                    v773 = v671;

                    if (v676)
                    {
                      v406 = v60;
                      v407 = y;
                      v408 = v62;
                    }

                    else
                    {
                      v407 = v672;
                      if (v672 > v674)
                      {
                        goto LABEL_442;
                      }

                      v408 = v640 - v406;
                      v61 = v674 - v672;
                    }
                  }

                  sub_1AACAADB4(v762, type metadata accessor for SgArea);
                  v403 = v785;
                  v404 = v781;
LABEL_235:
                  v848.origin.x = v791;
                  v848.size.width = v792;
                  v848.origin.y = v793;
                  v848.size.height = v790;
                  v869.origin.x = v406;
                  v869.origin.y = v407;
                  v869.size.width = v408;
                  v869.size.height = v61;
                  v849 = CGRectUnion(v848, v869);
                  v66 = v849.origin.x;
                  v793 = v849.origin.y;
                  v65 = v849.size.width;
                  v64 = v849.size.height;

                  v61 = v797;
                  if (v405 == *&v404)
                  {
                    goto LABEL_409;
                  }

                  break;
                case 9:
                  v615 = swift_projectBox();
                  v616 = v763;
                  sub_1AACAAD4C(v615, v763, type metadata accessor for SgPath);
                  v617 = *(v616 + 24);
                  v828 = *(v616 + 8);
                  v829 = v617;
                  v830 = *(v616 + 40);

                  v618 = sub_1AAF8E8E4();
                  v406 = v60;
                  v407 = y;
                  v408 = v62;
                  v61 = v797;
                  if ((v618 & 1) == 0)
                  {
                    sub_1AAF8E874();
                    v406 = v619;
                    v407 = v620;
                    v408 = v621;
                    v61 = v622;
                  }

                  v623 = type metadata accessor for SgPath;
                  v624 = v763;
                  goto LABEL_357;
                case 0xALL:
                  v408 = *((*&v409 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
                  v61 = *((*&v409 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
                  v406 = *((*&v409 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((*&v409 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * v408;
                  v407 = *((*&v409 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((*&v409 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * v61;

                  goto LABEL_235;
                case 0xBLL:
                case 0xCLL:
                  v406 = *((*&v409 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v407 = *((*&v409 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                  v408 = *((*&v409 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                  v61 = *((*&v409 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                  goto LABEL_235;
                case 0xDLL:

                  v406 = 0.0;
                  v407 = 0.0;
                  v408 = 0.0;
                  v61 = 0.0;
                  goto LABEL_235;
                case 0xELL:
                  goto LABEL_235;
                default:
                  v603 = swift_projectBox();
                  v597 = v776;
                  sub_1AACAAD4C(v603, v776, type metadata accessor for SgGroup);

                  v406 = sub_1AAD05240(v604);
                  v407 = v605;
                  v408 = v606;
                  v61 = v607;
                  v602 = type metadata accessor for SgGroup;
LABEL_356:
                  v623 = v602;
                  v624 = v597;
LABEL_357:
                  sub_1AACAADB4(v624, v623);
                  goto LABEL_235;
              }
            }
          }

          v66 = v60;
          v793 = y;
          v65 = v62;
          v64 = v61;
LABEL_409:
          sub_1AAF14C40(&v798);
          v58 = v770;
LABEL_410:
          v68 = v793;
LABEL_6:
          v69 = v66;
          v70 = v65;
          v71 = v64;
          v788 = CGRectUnion(v788, *(&v68 - 1));

          if (v63 != v783)
          {
            continue;
          }

          return v788.origin.x;
        case 3uLL:
          v73 = swift_projectBox();
          v74 = v739;
          sub_1AACAAD4C(v73, v739, type metadata accessor for SgPoint);
          sub_1AAD9ADE4(v74 + 48, &v798);
          if (v801)
          {
            v65 = *(&v798 + 1);
            v75 = *&v799;

            v76 = *(v74 + 16);
            v77 = *(v74 + 8) - v65 * 0.5;
            sub_1AACAADB4(v74, type metadata accessor for SgPoint);
            v78 = v75;
            v79 = v75 * 0.5;
            v66 = v77;
            v68 = v76 - v79;
            v64 = v78;
          }

          else
          {
            v809 = v798;
            v810 = v799;
            v811 = v800;
            v710 = *(v74 + 24);
            v711 = v74;
            if (*(v74 + 40) == 1)
            {
              v712 = *(v74 + 32);
              v65 = *(v74 + 24);

              sub_1AAE45A14(&v809);
              v713 = *(v74 + 16);
              v714 = *(v74 + 8) - v65 * 0.5;
              sub_1AACAADB4(v74, type metadata accessor for SgPoint);
              v715 = v712;
              v716 = v712 * 0.5;
              v66 = v714;
              v68 = v713 - v716;
              v64 = v715;
            }

            else
            {
              v717 = *(v74 + 8);
              v718 = *(v74 + 16);
              v719 = *(&v810 + 1);
              v720 = v811;
              v721 = sqrt(v710);

              sub_1AACBB42C(&v809, v719);
              v722 = *(v720 + 16);
              v723 = v720;
              v58 = v770;
              v724 = v722(v719, v723);
              v726 = v725;
              v728 = v727;
              v730 = v729;
              sub_1AACAADB4(v711, type metadata accessor for SgPoint);
              v731 = v721 * v730;
              v65 = v721 * v728;
              v732 = v724 + -0.5;
              v64 = v731;
              v733 = v717 + v721 * v732;
              v62 = v795;
              v734 = v726 + -0.5;
              v66 = v733;
              v735 = v721 * v734;
              y = v796;
              v61 = v797;
              v736 = v718 + v735;
              sub_1AAE45A14(&v809);
              v68 = v736;
            }
          }

          goto LABEL_6;
        case 4uLL:
          v687 = swift_projectBox();
          v81 = v777;
          sub_1AACAAD4C(v687, v777, type metadata accessor for SgRectangle);
          v66 = v81[1];
          v67 = v81[2];
          v65 = v81[3];
          v64 = v81[4];

          v86 = type metadata accessor for SgRectangle;
          goto LABEL_402;
        case 5uLL:
          v688 = swift_projectBox();
          v689 = v778;
          sub_1AACAAD4C(v688, v778, type metadata accessor for SgSector);
          v690 = vaddvq_f64(vmulq_f64(*(v689 + 24), xmmword_1AAFC7450));
          v691 = __sincos_stret(((*(v689 + 8) + *(v689 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
          v66 = v690 * v691.__cosval;
          v692 = v690 * v691.__sinval;
          v693 = (v689 + *(v779 + 52));
          v694 = v693[1];
          v65 = *v693 + *v693;

          sub_1AACAADB4(v689, type metadata accessor for SgSector);
          v68 = v692;
          v64 = v694 + v694;
          goto LABEL_6;
        case 6uLL:
          v677 = swift_projectBox();
          v81 = v740;
          sub_1AACAAD4C(v677, v740, type metadata accessor for SgRule);
          v678 = v81[1];
          v679 = v81[2];
          v680 = v81[3];
          v681 = v81[4];
          if (v680 >= v678)
          {
            v66 = v81[1];
          }

          else
          {
            v66 = v81[3];
          }

          if (v681 >= v679)
          {
            v67 = v81[2];
          }

          else
          {
            v67 = v81[4];
          }

          v65 = vabdd_f64(v680, v678);
          v64 = vabdd_f64(v681, v679);

          v86 = type metadata accessor for SgRule;
          goto LABEL_402;
        case 7uLL:
          v705 = swift_projectBox();
          v81 = v774;
          sub_1AACAAD4C(v705, v774, type metadata accessor for SgLine);

          sub_1AAF56CF0();
          v66 = v706;
          v67 = v707;
          v65 = v708;
          v64 = v709;
          v86 = type metadata accessor for SgLine;
          goto LABEL_402;
        case 8uLL:
          v80 = swift_projectBox();
          v81 = v772;
          sub_1AACAAD4C(v80, v772, type metadata accessor for SgArea);

          sub_1AAF58424();
          v66 = v82;
          v67 = v83;
          v65 = v84;
          v64 = v85;
          v86 = type metadata accessor for SgArea;
          goto LABEL_402;
        case 9uLL:
          v695 = swift_projectBox();
          v696 = v759;
          sub_1AACAAD4C(v695, v759, type metadata accessor for SgPath);
          v697 = *(v696 + 24);
          v831 = *(v696 + 8);
          v832 = v697;
          v833 = *(v696 + 40);

          v698 = sub_1AAF8E8E4();
          v66 = v60;
          v699 = y;
          v65 = v62;
          v64 = v61;
          if ((v698 & 1) == 0)
          {
            sub_1AAF8E874();
            v66 = v700;
            v65 = v701;
            v64 = v702;
          }

          v703 = type metadata accessor for SgPath;
          v704 = v759;
          v67 = v699;
          goto LABEL_403;
        case 0xAuLL:
          v65 = *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
          v64 = *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
          v66 = *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * v65;
          v67 = *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * v64;
          goto LABEL_4;
        case 0xBuLL:
        case 0xCuLL:
          v66 = *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v67 = *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v65 = *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v64 = *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
LABEL_4:

          goto LABEL_5;
        case 0xDuLL:

          v66 = 0.0;
          v68 = 0.0;
          v65 = 0.0;
          v64 = 0.0;
          goto LABEL_6;
        case 0xEuLL:
          goto LABEL_6;
        default:
          v682 = swift_projectBox();
          v81 = v776;
          sub_1AACAAD4C(v682, v776, type metadata accessor for SgGroup);

          v66 = sub_1AAD05240(v683);
          v67 = v684;
          v65 = v685;
          v64 = v686;
          v86 = type metadata accessor for SgGroup;
LABEL_402:
          v703 = v86;
          v704 = v81;
LABEL_403:
          sub_1AACAADB4(v704, v703);
LABEL_5:
          v68 = v67;
          goto LABEL_6;
      }
    }
  }

  v788.origin.x = v60;
  v788.origin.y = y;
  v788.size.width = v62;
  v788.size.height = v61;
  return v788.origin.x;
}