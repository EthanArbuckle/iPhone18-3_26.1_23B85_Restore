uint64_t sub_1E16AAF04()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E16AAF9C()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E16AB020()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E16AB0C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x6469576172747865;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1768843629;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1E16AB120()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E16AB200()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E16AB2CC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E16AB3A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E16AD794();
  *a1 = result;
  return result;
}

void sub_1E16AB3D8(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6574756C6F736261;
  v4 = 0xEF68746469576C61;
  if (*v1 != 2)
  {
    v4 = 0xEE00657A69536C61;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000001E1B57A80;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E6F697463617266;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t TodayCardArtworkSizedLayoutMetrics.LayoutSize.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v62 = a2;
  v4 = sub_1E1AF39DC();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v55 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - v22;
  v24 = a1;
  sub_1E1AF381C();
  sub_1E16ABA18();
  v25 = v59;
  sub_1E1AF36AC();
  if (v25)
  {
    (*(v60 + 8))(v62, v61);
    v26 = *(v7 + 8);
    v26(a1, v6);
    return (v26)(v23, v6);
  }

  else
  {
    v55 = v17;
    v59 = *(v7 + 8);
    v59(v23, v6);
    v28 = v64;
    if (v64 > 1u)
    {
      v56 = 0;
      v34 = v58;
      if (v64 == 2)
      {
        sub_1E1AF381C();
        v35 = sub_1E1AF379C();
        v37 = v36;
        (*(v60 + 8))(v62, v61);
        v38 = v59;
        v59(v24, v6);
        result = v38(v14, v6);
        v54 = 0;
        v53 = 0x3FF0000000000000;
        if ((v37 & 1) == 0)
        {
          v53 = v35;
        }
      }

      else
      {
        sub_1E1AF381C();
        v55 = sub_1E1AF379C();
        v63 = v44;
        v45 = v59;
        v59(v11, v6);
        v46 = v57;
        sub_1E1AF381C();
        v47 = sub_1E1AF379C();
        v49 = v48;
        (*(v60 + 8))(v62, v61);
        v45(v24, v6);
        result = (v45)(v46, v6);
        v54 = 0x3FF0000000000000;
        v53 = v55;
        if (v63)
        {
          v53 = 0x3FF0000000000000;
        }

        if ((v49 & 1) == 0)
        {
          v54 = v47;
        }
      }
    }

    else
    {
      if (v64)
      {
        v39 = v55;
        sub_1E1AF381C();
        v40 = sub_1E1AF379C();
        v42 = v41;
        (*(v60 + 8))(v62, v61);
        v43 = v59;
        v59(v24, v6);
        result = v43(v39, v6);
        v54 = 0;
        v53 = 0x3FF0000000000000;
        if ((v42 & 1) == 0)
        {
          v53 = v40;
        }
      }

      else
      {
        v57 = (v7 + 8);
        v29 = v20;
        (*(v7 + 16))(v20, a1, v6);
        v31 = v60;
        v30 = v61;
        v32 = v56;
        v33 = v62;
        (*(v60 + 16))(v56, v62, v61);
        v50 = sub_1E1380198(v29, v32);
        v52 = v51;
        (*(v31 + 8))(v33, v30);
        result = (v59)(a1, v6);
        v53 = *&v50;
        v54 = v52;
      }

      v34 = v58;
    }

    *v34 = v53;
    *(v34 + 8) = v54;
    *(v34 + 16) = v28;
  }

  return result;
}

unint64_t sub_1E16ABA18()
{
  result = qword_1EE1D44E8;
  if (!qword_1EE1D44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D44E8);
  }

  return result;
}

double sub_1E16ABA84()
{
  if (qword_1ECEB1188 != -1)
  {
    swift_once();
  }

  type metadata accessor for TodayCardArtworkSizedLayoutMetrics();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v2 = xmmword_1ECEF4AE0;
  v1 = *&qword_1ECEF4AF0;
  *(v0 + 40) = *&qword_1ECEF4AF0;
  v3 = xmmword_1ECEF4B00;
  v4 = *&qword_1ECEF4B10;
  *(v0 + 56) = xmmword_1ECEF4B00;
  *(v0 + 72) = v4;
  v5 = xmmword_1ECEF4B20;
  *(v0 + 88) = xmmword_1ECEF4B20;
  *(v0 + 24) = v2;
  *(v0 + 120) = v1;
  *(v0 + 136) = v3;
  *(v0 + 152) = v4;
  *(v0 + 168) = v5;
  *(v0 + 104) = v2;
  result = 0.0;
  *(v0 + 248) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 264) = 1;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 1;
  *(v0 + 360) = 0;
  *(v0 + 368) = 0;
  *(v0 + 376) = -1;
  *(v0 + 384) = 0;
  *(v0 + 392) = 0;
  *(v0 + 400) = -1;
  *(v0 + 408) = 0u;
  *(v0 + 424) = 0u;
  *(v0 + 440) = 0u;
  *(v0 + 456) = 513;
  qword_1ECEF4600 = v0;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.__allocating_init(maxWidth:ltrArtLayout:rtlArtLayout:ltrAXArtLayout:rtlAXArtLayout:collapsedSize:expandedSize:sourceCropOverrideLTR:sourceCropOverrideRTL:sourceSizeOverride:priority:)(__int128 *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 *a7, __int128 *a8, double a9, uint64_t a10, uint64_t a11, char a12, char *a13)
{
  v21 = swift_allocObject();
  v22 = *(a5 + 16);
  v23 = *(a6 + 16);
  v24 = *a13;
  *(v21 + 16) = a9;
  v25 = *a1;
  *(v21 + 40) = a1[1];
  v26 = a1[3];
  *(v21 + 56) = a1[2];
  *(v21 + 72) = v26;
  *(v21 + 88) = a1[4];
  *(v21 + 24) = v25;
  v27 = a2[1];
  *(v21 + 104) = *a2;
  v28 = a2[2];
  v29 = a2[3];
  *(v21 + 168) = a2[4];
  *(v21 + 152) = v29;
  *(v21 + 136) = v28;
  *(v21 + 120) = v27;
  v30 = *(a3 + 48);
  *(v21 + 216) = *(a3 + 32);
  *(v21 + 232) = v30;
  *(v21 + 248) = *(a3 + 64);
  *(v21 + 264) = *(a3 + 80);
  v31 = *(a3 + 16);
  *(v21 + 184) = *a3;
  *(v21 + 200) = v31;
  v32 = *(a4 + 16);
  *(v21 + 272) = *a4;
  *(v21 + 288) = v32;
  *(v21 + 352) = *(a4 + 80);
  v33 = *(a4 + 64);
  *(v21 + 320) = *(a4 + 48);
  *(v21 + 336) = v33;
  *(v21 + 304) = *(a4 + 32);
  *(v21 + 360) = *a5;
  *(v21 + 376) = v22;
  *(v21 + 384) = *a6;
  *(v21 + 400) = v23;
  result = *a7;
  v35 = *a8;
  *(v21 + 408) = *a7;
  *(v21 + 424) = v35;
  *(v21 + 440) = a10;
  *(v21 + 448) = a11;
  *(v21 + 456) = a12 & 1;
  *(v21 + 457) = v24;
  return result;
}

uint64_t TodayCardArtworkSizedLayoutMetrics.init(maxWidth:ltrArtLayout:rtlArtLayout:ltrAXArtLayout:rtlAXArtLayout:collapsedSize:expandedSize:sourceCropOverrideLTR:sourceCropOverrideRTL:sourceSizeOverride:priority:)(__int128 *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7, __int128 *a8, double a9, uint64_t a10, uint64_t a11, char a12, char *a13)
{
  v14 = *(a5 + 16);
  v15 = *(a6 + 16);
  v16 = *a13;
  *(v13 + 16) = a9;
  v17 = *a1;
  *(v13 + 40) = a1[1];
  v18 = a1[3];
  *(v13 + 56) = a1[2];
  *(v13 + 72) = v18;
  *(v13 + 88) = a1[4];
  *(v13 + 24) = v17;
  v19 = a2[1];
  *(v13 + 104) = *a2;
  v20 = a2[2];
  v21 = a2[3];
  *(v13 + 168) = a2[4];
  *(v13 + 152) = v21;
  *(v13 + 136) = v20;
  *(v13 + 120) = v19;
  v22 = *(a3 + 48);
  *(v13 + 216) = *(a3 + 32);
  *(v13 + 232) = v22;
  *(v13 + 248) = *(a3 + 64);
  *(v13 + 264) = *(a3 + 80);
  v23 = *(a3 + 16);
  *(v13 + 184) = *a3;
  *(v13 + 200) = v23;
  v24 = *(a4 + 16);
  *(v13 + 272) = *a4;
  *(v13 + 288) = v24;
  *(v13 + 352) = *(a4 + 80);
  v25 = *(a4 + 64);
  *(v13 + 320) = *(a4 + 48);
  *(v13 + 336) = v25;
  *(v13 + 304) = *(a4 + 32);
  *(v13 + 360) = *a5;
  *(v13 + 376) = v14;
  *(v13 + 384) = *a6;
  *(v13 + 400) = v15;
  v26 = *a8;
  *(v13 + 408) = *a7;
  *(v13 + 424) = v26;
  *(v13 + 440) = a10;
  *(v13 + 448) = a11;
  *(v13 + 456) = a12 & 1;
  *(v13 + 457) = v16;
  return v13;
}

__n128 TodayCardArtworkSizedLayoutMetrics.ltrArtLayout.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 72);
  *(a1 + 32) = *(v1 + 56);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 88);
  *a1 = *(v1 + 24);
  *(a1 + 16) = result;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.rtlArtLayout.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 120);
  v3 = *(v1 + 152);
  *(a1 + 32) = *(v1 + 136);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 168);
  *a1 = *(v1 + 104);
  *(a1 + 16) = result;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.ltrAXArtLayout.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  *(a1 + 32) = *(v1 + 216);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 248);
  *(a1 + 80) = *(v1 + 264);
  result = *(v1 + 184);
  v4 = *(v1 + 200);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.rtlAXArtLayout.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 320);
  *(a1 + 32) = *(v1 + 304);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 336);
  *(a1 + 80) = *(v1 + 352);
  result = *(v1 + 272);
  v4 = *(v1 + 288);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.collapsedSize.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 376);
  result = *(v1 + 360);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.expandedSize.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[25].n128_u8[0];
  result = v1[24];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.layout(for:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 layoutDirection];
  if (sub_1E1AF698C())
  {
    if (v4 == 1)
    {
      v5 = (*(v2 + 352) & 1) == 0;
      v6 = 272;
      v7 = 104;
    }

    else
    {
      v5 = (*(v2 + 264) & 1) == 0;
      v6 = 184;
      v7 = 24;
    }

    if (!v5)
    {
      v6 = v7;
    }
  }

  else
  {
    v6 = 24;
    if (v4 == 1)
    {
      v6 = 104;
    }
  }

  v8 = (v2 + v6);
  result = v8[2];
  v13 = v8[3];
  v10 = v8[4];
  v11 = *v8;
  v12 = v8[1];
  *(a2 + 32) = result;
  *(a2 + 48) = v13;
  *(a2 + 64) = v10;
  *a2 = v11;
  *(a2 + 16) = v12;
  return result;
}

uint64_t TodayCardArtworkSizedLayoutMetrics.sourceCropOverride(for:)@<X0>(void *a1@<X8>)
{
  v3 = sub_1E1AF697C();
  v4 = (v3 & 1) == 0;
  v5 = 408;
  v6 = 416;
  if (v3)
  {
    v6 = 432;
  }

  v7 = *(v1 + v6);
  if (!v4)
  {
    v5 = 424;
  }

  *a1 = *(v1 + v5);
  a1[1] = v7;
}

uint64_t TodayCardArtworkSizedLayoutMetrics.deinit()
{

  return v0;
}

uint64_t TodayCardArtworkSizedLayoutMetrics.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1E16AC054(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1E16AD7E0(a1, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

uint64_t Array<A>.bestArtworkLayout(for:prioritizing:traitCollection:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v8 = *a1;
  Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)(&v8, a3, a5);
  TodayCardArtworkSizedLayoutMetrics.layout(for:)(a2, a4);
}

uint64_t Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)(unsigned __int8 *a1, unint64_t a2, double a3)
{
  v5 = *a1;

  v14 = sub_1E1AA7538(a2);
  sub_1E16AC69C(&v14, v5);
  v6 = v14;
  v7 = v14 < 0 || (v14 & 0x4000000000000000) != 0;
  if (!v7)
  {
    if (*(v14 + 16))
    {
      goto LABEL_6;
    }

LABEL_11:
    v8 = 0;
    if (!v7)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!sub_1E1AF71CC())
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1E68FFD80](0, v6);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!*(v6 + 16))
    {
      goto LABEL_32;
    }

    v8 = *(v6 + 32);

    if (!v7)
    {
LABEL_15:
      v9 = *(v6 + 16);
      if (v9)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }
  }

LABEL_12:
  v9 = sub_1E1AF71CC();
  if (v9)
  {
LABEL_16:
    v10 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1E68FFD80](v10, v6);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_25:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v10 >= *(v6 + 16))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          swift_once();
LABEL_28:
          v8 = qword_1ECEF4600;

          return v8;
        }

        v11 = *(v6 + 8 * v10 + 32);

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_25;
        }
      }

      if (*(v11 + 16) >= a3)
      {

        return v11;
      }

      ++v10;
    }

    while (v12 != v9);
  }

LABEL_26:

  if (!v8)
  {
    if (qword_1ECEB0F80 != -1)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  return v8;
}

uint64_t sub_1E16AC2E4(uint64_t *a1, uint64_t *a2, unsigned __int8 a3)
{
  v4 = 0xE900000000000065;
  v5 = *a1;
  if (*(*a1 + 457))
  {
    if (*(*a1 + 457) == 1)
    {
      v6 = 0x6469576172747865;
      v7 = 0xE900000000000065;
    }

    else
    {
      v7 = 0xE400000000000000;
      v6 = 1701736302;
    }
  }

  else
  {
    v7 = 0xE400000000000000;
    v6 = 1768843629;
  }

  v8 = *a2;
  v9 = a3;
  if (a3)
  {
    if (a3 == 1)
    {
      v10 = 0x6469576172747865;
    }

    else
    {
      v10 = 1701736302;
    }

    if (v9 == 1)
    {
      v11 = 0xE900000000000065;
    }

    else
    {
      v11 = 0xE400000000000000;
    }

    if (v6 != v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = 0xE400000000000000;
    if (v6 != 1768843629)
    {
      goto LABEL_18;
    }
  }

  if (v7 == v11)
  {

    goto LABEL_19;
  }

LABEL_18:
  v12 = sub_1E1AF74AC();

  if ((v12 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_19:
  if (!*(v8 + 457))
  {
    v14 = 0xE400000000000000;
    v13 = 1768843629;
    v15 = a3;
    if (!a3)
    {
      goto LABEL_33;
    }

    goto LABEL_24;
  }

  if (*(v8 + 457) != 1)
  {
    v14 = 0xE400000000000000;
    v13 = 1701736302;
    v15 = a3;
    if (!a3)
    {
      goto LABEL_33;
    }

LABEL_24:
    if (v15 == 1)
    {
      v16 = 0x6469576172747865;
    }

    else
    {
      v16 = 1701736302;
    }

    if (v15 == 1)
    {
      v17 = 0xE900000000000065;
    }

    else
    {
      v17 = 0xE400000000000000;
    }

    if (v13 != v16)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v13 = 0x6469576172747865;
  v14 = 0xE900000000000065;
  v15 = a3;
  if (a3)
  {
    goto LABEL_24;
  }

LABEL_33:
  v17 = 0xE400000000000000;
  if (v13 != 1768843629)
  {
    goto LABEL_36;
  }

LABEL_34:
  if (v14 == v17)
  {

    goto LABEL_37;
  }

LABEL_36:
  v18 = sub_1E1AF74AC();

  if (v18)
  {
LABEL_37:
    if (*(v8 + 457))
    {
      if (*(v8 + 457) == 1)
      {
        v19 = 0x6469576172747865;
        v20 = 0xE900000000000065;
        v21 = a3;
        if (!a3)
        {
LABEL_51:
          v23 = 0xE400000000000000;
          if (v19 != 1768843629)
          {
            goto LABEL_54;
          }

LABEL_52:
          if (v20 == v23)
          {

            goto LABEL_55;
          }

LABEL_54:
          v24 = sub_1E1AF74AC();

          if ((v24 & 1) == 0)
          {
            return *(v5 + 16) <= *(v8 + 16);
          }

LABEL_55:
          if (*(v5 + 457))
          {
            if (*(v5 + 457) == 1)
            {
              v25 = 0x6469576172747865;
              v26 = 0xE900000000000065;
              v27 = a3;
              if (!a3)
              {
LABEL_64:
                v4 = 0xE400000000000000;
                if (v25 != 1768843629)
                {
LABEL_69:
                  v28 = sub_1E1AF74AC();

                  result = 0;
                  if ((v28 & 1) == 0)
                  {
                    return result;
                  }

                  return *(v5 + 16) <= *(v8 + 16);
                }

                goto LABEL_67;
              }
            }

            else
            {
              v26 = 0xE400000000000000;
              v25 = 1701736302;
              v27 = a3;
              if (!a3)
              {
                goto LABEL_64;
              }
            }
          }

          else
          {
            v26 = 0xE400000000000000;
            v25 = 1768843629;
            v27 = a3;
            if (!a3)
            {
              goto LABEL_64;
            }
          }

          if (v27 == 1)
          {
            if (v25 != 0x6469576172747865)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v4 = 0xE400000000000000;
            if (v25 != 1701736302)
            {
              goto LABEL_69;
            }
          }

LABEL_67:
          if (v26 != v4)
          {
            goto LABEL_69;
          }

          return *(v5 + 16) <= *(v8 + 16);
        }
      }

      else
      {
        v20 = 0xE400000000000000;
        v19 = 1701736302;
        v21 = a3;
        if (!a3)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      v20 = 0xE400000000000000;
      v19 = 1768843629;
      v21 = a3;
      if (!a3)
      {
        goto LABEL_51;
      }
    }

    if (v21 == 1)
    {
      v22 = 0x6469576172747865;
    }

    else
    {
      v22 = 1701736302;
    }

    if (v21 == 1)
    {
      v23 = 0xE900000000000065;
    }

    else
    {
      v23 = 0xE400000000000000;
    }

    if (v19 != v22)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  return 1;
}

uint64_t sub_1E16AC69C(uint64_t *a1, unsigned __int8 a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1E196B840(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1E16AC720(v8, a2);
  return sub_1E1AF70CC();
}

uint64_t sub_1E16AC720(uint64_t *a1, unsigned __int8 a2)
{
  v4 = a1[1];
  result = sub_1E1AF741C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for TodayCardArtworkSizedLayoutMetrics();
        v8 = sub_1E1AF628C();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v10[1] = v7;
      sub_1E16AC924(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_1E16AC82C(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_1E16AC82C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = (*a4 + 8 * a3 - 8);
    v10 = result - a3;
LABEL_4:
    v11 = *(v8 + 8 * v7);
    v16 = v10;
    v17 = v9;
    while (1)
    {
      v19 = v11;
      v18 = *v9;

      v12 = sub_1E16AC2E4(&v19, &v18, a5);

      if (v5)
      {
        break;
      }

      if (v12)
      {
        if (!v8)
        {
          __break(1u);
          return result;
        }

        v13 = *v9;
        v11 = v9[1];
        *v9 = v11;
        v9[1] = v13;
        --v9;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v17 + 1;
      v10 = v16 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1E16AC924(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned __int8 a5)
{
  v7 = v5;
  v114 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_164:
    v6 = *v114;
    if (*v114)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_195;
      }

      goto LABEL_166;
    }

    goto LABEL_204;
  }

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v10;
    v13 = v10 + 1;
    if (v10 + 1 < v9)
    {
      v14 = *a3;
      v15 = *(*a3 + 8 * v13);
      v123 = *(*a3 + 8 * v10);
      v124 = v15;

      v121 = sub_1E16AC2E4(&v124, &v123, a5);
      if (v7)
      {
      }

      v112 = v11;

      v16 = v12 + 2;
      v110 = v12;
      v17 = 8 * v12;
      v6 = v14 + v17 + 16;
      while (v9 != v16)
      {
        v18 = *v6;
        v123 = *(v6 - 8);
        v124 = v18;

        v19 = sub_1E16AC2E4(&v124, &v123, a5);

        ++v16;
        v6 += 8;
        if ((v121 ^ v19))
        {
          v9 = v16 - 1;
          break;
        }
      }

      v11 = v112;
      if (v121)
      {
        v20 = v110;
        if (v9 < v110)
        {
          goto LABEL_198;
        }

        if (v110 < v9)
        {
          v21 = 8 * v9 - 8;
          v22 = v9;
          while (1)
          {
            if (v20 != --v22)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_202;
              }

              v24 = *(v23 + v17);
              *(v23 + v17) = *(v23 + v21);
              *(v23 + v21) = v24;
            }

            ++v20;
            v21 -= 8;
            v17 += 8;
            if (v20 >= v22)
            {
              goto LABEL_18;
            }
          }
        }

        v13 = v9;
        v12 = v110;
      }

      else
      {
LABEL_18:
        v13 = v9;
        v12 = v110;
      }
    }

    v25 = a3[1];
    if (v13 >= v25)
    {
      goto LABEL_29;
    }

    v26 = v13;
    v43 = __OFSUB__(v13, v12);
    v27 = v13 - v12;
    if (v43)
    {
      goto LABEL_194;
    }

    if (v27 >= a4)
    {
LABEL_28:
      v13 = v26;
LABEL_29:
      if (v13 < v12)
      {
        goto LABEL_193;
      }

      goto LABEL_30;
    }

    if (__OFADD__(v12, a4))
    {
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
      return result;
    }

    if (v12 + a4 < v25)
    {
      v25 = v12 + a4;
    }

    if (v25 < v12)
    {
      goto LABEL_197;
    }

    if (v26 == v25)
    {
      goto LABEL_28;
    }

    v115 = v25;
    v111 = v12;
    v113 = v11;
    v108 = v7;
    v122 = *a3;
    v75 = (*a3 + 8 * v26 - 8);
    v76 = v12 - v26;
    while (2)
    {
      v117 = v75;
      v119 = v26;
      v77 = *(v122 + 8 * v26);
      v116 = v76;
      while (1)
      {
        v78 = *(v77 + 457);
        if (*(v77 + 457))
        {
          if (v78 == 1)
          {
            v79 = 0x6469576172747865;
          }

          else
          {
            v79 = 1701736302;
          }

          if (v78 == 1)
          {
            v80 = 0xE900000000000065;
          }

          else
          {
            v80 = 0xE400000000000000;
          }

          v81 = a5;
          if (!a5)
          {
LABEL_98:
            v83 = 0xE400000000000000;
            v82 = 1768843629;
            goto LABEL_99;
          }
        }

        else
        {
          v80 = 0xE400000000000000;
          v79 = 1768843629;
          v81 = a5;
          if (!a5)
          {
            goto LABEL_98;
          }
        }

        v82 = v81 == 1 ? 0x6469576172747865 : 1701736302;
        v83 = v81 == 1 ? 0xE900000000000065 : 0xE400000000000000;
LABEL_99:
        v84 = *v75;
        if (v79 == v82 && v80 == v83)
        {
        }

        else
        {
          v6 = sub_1E1AF74AC();

          if ((v6 & 1) == 0)
          {
            goto LABEL_121;
          }
        }

        if (*(v84 + 457))
        {
          if (*(v84 + 457) == 1)
          {
            v85 = 0x6469576172747865;
            v86 = 0xE900000000000065;
            v87 = a5;
            if (a5)
            {
              goto LABEL_108;
            }
          }

          else
          {
            v86 = 0xE400000000000000;
            v85 = 1701736302;
            v87 = a5;
            if (a5)
            {
LABEL_108:
              if (v87 == 1)
              {
                v88 = 0x6469576172747865;
              }

              else
              {
                v88 = 1701736302;
              }

              if (v87 == 1)
              {
                v89 = 0xE900000000000065;
              }

              else
              {
                v89 = 0xE400000000000000;
              }

              if (v85 != v88)
              {
                goto LABEL_120;
              }

              goto LABEL_118;
            }
          }
        }

        else
        {
          v86 = 0xE400000000000000;
          v85 = 1768843629;
          v87 = a5;
          if (a5)
          {
            goto LABEL_108;
          }
        }

        v89 = 0xE400000000000000;
        if (v85 != 1768843629)
        {
          goto LABEL_120;
        }

LABEL_118:
        if (v86 == v89)
        {

          goto LABEL_121;
        }

LABEL_120:
        v6 = sub_1E1AF74AC();

        if ((v6 & 1) == 0)
        {

          if (!v122)
          {
            goto LABEL_199;
          }

          goto LABEL_156;
        }

LABEL_121:
        if (*(v84 + 457))
        {
          if (*(v84 + 457) == 1)
          {
            v90 = 0x6469576172747865;
            v91 = 0xE900000000000065;
            v92 = a5;
            if (a5)
            {
              goto LABEL_126;
            }
          }

          else
          {
            v91 = 0xE400000000000000;
            v90 = 1701736302;
            v92 = a5;
            if (a5)
            {
LABEL_126:
              if (v92 == 1)
              {
                v93 = 0x6469576172747865;
              }

              else
              {
                v93 = 1701736302;
              }

              if (v92 == 1)
              {
                v94 = 0xE900000000000065;
              }

              else
              {
                v94 = 0xE400000000000000;
              }

              if (v90 != v93)
              {
                goto LABEL_138;
              }

              goto LABEL_136;
            }
          }
        }

        else
        {
          v91 = 0xE400000000000000;
          v90 = 1768843629;
          v92 = a5;
          if (a5)
          {
            goto LABEL_126;
          }
        }

        v94 = 0xE400000000000000;
        if (v90 != 1768843629)
        {
          goto LABEL_138;
        }

LABEL_136:
        if (v91 == v94)
        {

          goto LABEL_139;
        }

LABEL_138:
        v6 = sub_1E1AF74AC();

        if ((v6 & 1) == 0)
        {
          goto LABEL_154;
        }

LABEL_139:
        if (*(v77 + 457))
        {
          if (*(v77 + 457) == 1)
          {
            v95 = 0x6469576172747865;
            v96 = 0xE900000000000065;
            v97 = a5;
            if (!a5)
            {
              goto LABEL_148;
            }
          }

          else
          {
            v96 = 0xE400000000000000;
            v95 = 1701736302;
            v97 = a5;
            if (!a5)
            {
LABEL_148:
              v98 = 0xE400000000000000;
              if (v95 != 1768843629)
              {
                goto LABEL_153;
              }

              goto LABEL_151;
            }
          }
        }

        else
        {
          v96 = 0xE400000000000000;
          v95 = 1768843629;
          v97 = a5;
          if (!a5)
          {
            goto LABEL_148;
          }
        }

        if (v97 == 1)
        {
          v98 = 0xE900000000000065;
          if (v95 != 0x6469576172747865)
          {
            goto LABEL_153;
          }
        }

        else
        {
          v98 = 0xE400000000000000;
          if (v95 != 1701736302)
          {
            goto LABEL_153;
          }
        }

LABEL_151:
        if (v96 == v98)
        {

          goto LABEL_154;
        }

LABEL_153:
        v6 = sub_1E1AF74AC();

        if ((v6 & 1) == 0)
        {
          break;
        }

LABEL_154:
        v99 = *(v77 + 16);
        v100 = *(v84 + 16);

        if (v99 > v100)
        {
          goto LABEL_81;
        }

        if (!v122)
        {
          goto LABEL_199;
        }

LABEL_156:
        v101 = *v75;
        v77 = v75[1];
        *v75 = v77;
        v75[1] = v101;
        --v75;
        if (__CFADD__(v76++, 1))
        {
          goto LABEL_81;
        }
      }

LABEL_81:
      v26 = v119 + 1;
      v75 = v117 + 1;
      v76 = v116 - 1;
      if (v119 + 1 != v115)
      {
        continue;
      }

      break;
    }

    v13 = v115;
    v7 = v108;
    v12 = v111;
    v11 = v113;
    if (v115 < v111)
    {
      goto LABEL_193;
    }

LABEL_30:
    v118 = v13;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E172D878(0, *(v11 + 16) + 1, 1, v11);
      v11 = result;
    }

    v29 = *(v11 + 16);
    v28 = *(v11 + 24);
    v30 = v29 + 1;
    v6 = v7;
    if (v29 >= v28 >> 1)
    {
      result = sub_1E172D878((v28 > 1), v29 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 16) = v30;
    v31 = v11 + 16 * v29;
    *(v31 + 32) = v12;
    *(v31 + 40) = v118;
    v7 = *v114;
    if (!*v114)
    {
      goto LABEL_203;
    }

    if (v29)
    {
      break;
    }

LABEL_3:
    v10 = v118;
    v9 = a3[1];
    v7 = v6;
    if (v118 >= v9)
    {
      goto LABEL_164;
    }
  }

  while (1)
  {
    v32 = v30 - 1;
    if (v30 >= 4)
    {
      v37 = v11 + 32 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_180;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_181;
      }

      v44 = (v11 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_183;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_186;
      }

      if (v48 >= v40)
      {
        v66 = (v11 + 32 + 16 * v32);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_192;
        }

        if (v35 < v69)
        {
          v32 = v30 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v30 == 3)
    {
      v33 = *(v11 + 32);
      v34 = *(v11 + 40);
      v43 = __OFSUB__(v34, v33);
      v35 = v34 - v33;
      v36 = v43;
LABEL_49:
      if (v36)
      {
        goto LABEL_182;
      }

      v49 = (v11 + 16 * v30);
      v51 = *v49;
      v50 = v49[1];
      v52 = __OFSUB__(v50, v51);
      v53 = v50 - v51;
      v54 = v52;
      if (v52)
      {
        goto LABEL_185;
      }

      v55 = (v11 + 32 + 16 * v32);
      v57 = *v55;
      v56 = v55[1];
      v43 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v43)
      {
        goto LABEL_188;
      }

      if (__OFADD__(v53, v58))
      {
        goto LABEL_189;
      }

      if (v53 + v58 >= v35)
      {
        if (v35 < v58)
        {
          v32 = v30 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v59 = (v11 + 16 * v30);
    v61 = *v59;
    v60 = v59[1];
    v43 = __OFSUB__(v60, v61);
    v53 = v60 - v61;
    v54 = v43;
LABEL_63:
    if (v54)
    {
      goto LABEL_184;
    }

    v62 = v11 + 16 * v32;
    v64 = *(v62 + 32);
    v63 = *(v62 + 40);
    v43 = __OFSUB__(v63, v64);
    v65 = v63 - v64;
    if (v43)
    {
      goto LABEL_187;
    }

    if (v65 < v53)
    {
      goto LABEL_3;
    }

LABEL_70:
    v70 = v32 - 1;
    if (v32 - 1 >= v30)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_200;
    }

    v71 = v11;
    v72 = *(v11 + 32 + 16 * v70);
    v73 = *(v11 + 32 + 16 * v32);
    v11 = *(v11 + 32 + 16 * v32 + 8);
    sub_1E16AD3D8((*a3 + 8 * v72), (*a3 + 8 * v73), (*a3 + 8 * v11), v7, a5);
    if (v6)
    {
    }

    if (v11 < v72)
    {
      goto LABEL_178;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = sub_1E1968F00(v71);
    }

    if (v70 >= *(v71 + 2))
    {
      goto LABEL_179;
    }

    v74 = &v71[16 * v70];
    *(v74 + 4) = v72;
    *(v74 + 5) = v11;
    v125 = v71;
    result = sub_1E1968E74(v32);
    v11 = v125;
    v30 = *(v125 + 16);
    if (v30 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  result = sub_1E1968F00(v11);
  v11 = result;
LABEL_166:
  v125 = v11;
  v103 = *(v11 + 16);
  if (v103 >= 2)
  {
    while (*a3)
    {
      v104 = *(v11 + 16 * v103);
      v105 = v11;
      v106 = *(v11 + 16 * (v103 - 1) + 32);
      v11 = *(v11 + 16 * (v103 - 1) + 40);
      sub_1E16AD3D8((*a3 + 8 * v104), (*a3 + 8 * v106), (*a3 + 8 * v11), v6, a5);
      if (v7)
      {
      }

      if (v11 < v104)
      {
        goto LABEL_190;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v105 = sub_1E1968F00(v105);
      }

      if (v103 - 2 >= *(v105 + 2))
      {
        goto LABEL_191;
      }

      v107 = &v105[16 * v103];
      *v107 = v104;
      *(v107 + 1) = v11;
      v125 = v105;
      result = sub_1E1968E74(v103 - 1);
      v11 = v125;
      v103 = *(v125 + 16);
      if (v103 <= 1)
      {
      }
    }

    goto LABEL_201;
  }
}

uint64_t sub_1E16AD3D8(char *__dst, uint64_t *a2, uint64_t *a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = a3;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v9 = a2 - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = a2;
    v15 = a4;
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v16 = &v15[v10];
    if (v8 < 8 || v14 >= v6)
    {
LABEL_21:
      a2 = v7;
      goto LABEL_54;
    }

    v17 = v14;
    while (1)
    {
      v48 = *v17;
      v47 = *v15;

      v18 = sub_1E16AC2E4(&v48, &v47, a5);
      if (v5)
      {

        v35 = v16 - v15 + 7;
        if (v16 - v15 >= 0)
        {
          v35 = v16 - v15;
        }

        if (v7 < v15 || v7 >= (v15 + (v35 & 0xFFFFFFFFFFFFFFF8)) || v7 != v15)
        {
          v36 = 8 * (v35 >> 3);
          v37 = v7;
          goto LABEL_60;
        }

        return 1;
      }

      v19 = v18;

      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = v17;
      v21 = v7 == v17++;
      if (!v21)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v15 >= v16 || v17 >= v6)
      {
        goto LABEL_21;
      }
    }

    v20 = v15;
    v21 = v7 == v15++;
    if (v21)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v20;
    goto LABEL_19;
  }

  if (a4 != a2 || &a2[v13] <= a4)
  {
    v22 = a2;
    v23 = a4;
    memmove(a4, a2, 8 * v13);
    a4 = v23;
    a2 = v22;
  }

  v45 = a4;
  v16 = (a4 + 8 * v13);
  if (v11 < 8 || a2 <= v7)
  {
    v15 = a4;
    goto LABEL_54;
  }

  v24 = -a4;
  v43 = -a4;
LABEL_28:
  v44 = a2;
  v25 = a2 - 1;
  v26 = v16 + v24;
  --v6;
  v27 = v16;
  v28 = v16;
  while (1)
  {
    v29 = *--v28;
    v48 = v29;
    v30 = v25;
    v47 = *v25;

    v31 = sub_1E16AC2E4(&v48, &v47, a5);
    if (v5)
    {
      break;
    }

    v32 = v31;

    v33 = v6 + 1;
    if (v32)
    {
      v34 = v30;
      if (v33 != v44)
      {
        *v6 = *v30;
      }

      v15 = v45;
      v16 = v27;
      if (v27 <= v45 || (a2 = v34, v24 = v43, v34 <= v7))
      {
        a2 = v34;
        goto LABEL_54;
      }

      goto LABEL_28;
    }

    if (v33 != v27)
    {
      *v6 = *v28;
    }

    v26 -= 8;
    --v6;
    v27 = v28;
    v25 = v30;
    if (v28 <= v45)
    {
      v16 = v28;
      a2 = v44;
      v15 = v45;
LABEL_54:
      v41 = v16 - v15 + 7;
      if (v16 - v15 >= 0)
      {
        v41 = v16 - v15;
      }

      if (a2 >= v15 && a2 < (v15 + (v41 & 0xFFFFFFFFFFFFFFF8)) && a2 == v15)
      {
        return 1;
      }

      v36 = 8 * (v41 >> 3);
      v37 = a2;
LABEL_60:
      v40 = v15;
LABEL_61:
      memmove(v37, v40, v36);
      return 1;
    }
  }

  if (v26 >= 0)
  {
    v38 = v26;
  }

  else
  {
    v38 = v26 + 7;
  }

  v39 = v38 >> 3;
  v37 = v44;
  v40 = v45;
  if (v44 < v45 || v44 >= (v45 + (v38 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v44, v45, 8 * v39);
    return 1;
  }

  if (v44 != v45)
  {
    v36 = 8 * v39;
    goto LABEL_61;
  }

  return 1;
}

uint64_t sub_1E16AD794()
{
  v0 = sub_1E1AF72FC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

double sub_1E16AD7E0(char *a1, uint64_t a2)
{
  v70 = a2;
  v3 = sub_1E1AF39DC();
  v67 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  sub_1E1AF381C();
  v62 = sub_1E1AF379C();
  LODWORD(v61) = v13;
  v63 = *(v7 + 8);
  v64 = v6;
  v66 = v7 + 8;
  v63(v12, v6);
  v14 = v5;
  v68 = a1;
  sub_1E1AF381C();
  v16 = v67 + 16;
  v15 = *(v67 + 16);
  v71 = v3;
  v69 = v15;
  v15(v14, v70, v3);
  sub_1E16AE24C();
  v17 = v114;
  sub_1E1AF464C();
  if (v114[80])
  {
    if (qword_1ECEB1188 != -1)
    {
      swift_once();
    }

    v17 = &xmmword_1ECEF4AE0;
  }

  v18 = v17[3];
  v117 = v17[2];
  v118 = v18;
  v119 = v17[4];
  v19 = v17[1];
  v115 = *v17;
  v116 = v19;
  sub_1E1AF381C();
  v65 = v16;
  v69(v14, v70, v71);
  v20 = v108;
  sub_1E1AF464C();
  if (v108[80])
  {
    if (qword_1ECEB1188 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_1ECEF4AE0;
  }

  v21 = v20[3];
  v111 = v20[2];
  v112 = v21;
  v113 = v20[4];
  v22 = v20[1];
  v109 = *v20;
  v110 = v22;
  if (v61)
  {
    v23 = 1.79769313e308;
  }

  else
  {
    v23 = *&v62;
  }

  v24 = v9;
  sub_1E1AF381C();
  v54 = v14;
  v25 = v70;
  v69(v14, v70, v71);
  sub_1E1AF464C();
  v98 = v92;
  v99 = v93;
  v100 = v94;
  v101 = v95;
  v96 = v90;
  v97 = v91;
  sub_1E1AF381C();
  v26 = v25;
  v27 = v69;
  v69(v14, v26, v71);
  sub_1E1AF464C();
  v104 = v86;
  v105 = v87;
  v106 = v88;
  v107 = v89;
  v102 = v84;
  v103 = v85;
  sub_1E1AF381C();
  v29 = v70;
  v28 = v71;
  v27(v14, v70, v71);
  v30 = v27;
  v59 = sub_1E16AE2A0();
  sub_1E1AF464C();
  v61 = v82;
  v62 = v81;
  v60 = v83;
  v31 = v68;
  sub_1E1AF381C();
  v30(v14, v29, v28);
  sub_1E1AF464C();
  v58 = v79;
  v59 = v78;
  v57 = v80;
  sub_1E1AF381C();
  sub_1E14479F8();
  sub_1E1AF36DC();
  v33 = v63;
  v32 = v64;
  v63(v24, v64);
  v56 = v77;
  v34 = v31;
  sub_1E1AF381C();
  sub_1E1AF36DC();
  v33(v24, v32);
  v55 = v76;
  type metadata accessor for CGSize(0);
  sub_1E1AF381C();
  v36 = v70;
  v35 = v71;
  v69(v54, v70, v71);
  sub_1E16AE2F4();
  sub_1E1AF464C();
  v37 = v73;
  v69 = v74;
  LODWORD(v65) = v75;
  sub_1E1AF381C();
  sub_1E16AE34C();
  sub_1E1AF369C();
  (*(v67 + 8))(v36, v35);
  v33(v34, v32);
  v33(v24, v32);
  v38 = v72;
  type metadata accessor for TodayCardArtworkSizedLayoutMetrics();
  v39 = swift_allocObject();
  *(v39 + 16) = v23;
  v40 = v115;
  *(v39 + 40) = v116;
  v41 = v118;
  *(v39 + 56) = v117;
  *(v39 + 72) = v41;
  *(v39 + 88) = v119;
  *(v39 + 24) = v40;
  v42 = v109;
  *(v39 + 120) = v110;
  v43 = v112;
  *(v39 + 136) = v111;
  *(v39 + 152) = v43;
  *(v39 + 168) = v113;
  *(v39 + 104) = v42;
  v44 = v99;
  *(v39 + 216) = v98;
  *(v39 + 232) = v44;
  *(v39 + 248) = v100;
  *(v39 + 264) = v101;
  v45 = v97;
  *(v39 + 184) = v96;
  *(v39 + 200) = v45;
  *(v39 + 352) = v107;
  v46 = v106;
  *(v39 + 320) = v105;
  *(v39 + 336) = v46;
  v47 = v104;
  *(v39 + 288) = v103;
  *(v39 + 304) = v47;
  *(v39 + 272) = v102;
  v48 = v61;
  *(v39 + 360) = v62;
  *(v39 + 368) = v48;
  *(v39 + 376) = v60;
  v49 = v58;
  *(v39 + 384) = v59;
  *(v39 + 392) = v49;
  *(v39 + 400) = v57;
  v51 = v55;
  result = *&v56;
  *(v39 + 408) = v56;
  *(v39 + 424) = v51;
  v52 = v69;
  *(v39 + 440) = v37;
  *(v39 + 448) = v52;
  *(v39 + 456) = v65;
  *(v39 + 457) = v38;
  return result;
}

unint64_t sub_1E16AE040()
{
  result = qword_1ECEB7970;
  if (!qword_1ECEB7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7970);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TodayCardArtworkSizedLayoutMetrics.LayoutSize(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TodayCardArtworkSizedLayoutMetrics.LayoutSize(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

unint64_t sub_1E16AE1F8()
{
  result = qword_1ECEB7978;
  if (!qword_1ECEB7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7978);
  }

  return result;
}

unint64_t sub_1E16AE24C()
{
  result = qword_1EE1D9F00;
  if (!qword_1EE1D9F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D9F00);
  }

  return result;
}

unint64_t sub_1E16AE2A0()
{
  result = qword_1EE1D44E0;
  if (!qword_1EE1D44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D44E0);
  }

  return result;
}

unint64_t sub_1E16AE2F4()
{
  result = qword_1EE1D2400;
  if (!qword_1EE1D2400)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2400);
  }

  return result;
}

unint64_t sub_1E16AE34C()
{
  result = qword_1EE1D44D8;
  if (!qword_1EE1D44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D44D8);
  }

  return result;
}

void UnifiedMessagingPlacement.navigationTab.getter(char *a1@<X8>)
{
  if (*v1 - 17 >= 5)
  {
    v2 = 9;
  }

  else
  {
    v2 = 0x507030402uLL >> (8 * (*v1 - 17));
  }

  *a1 = v2;
}

void NavigationTab.unifiedMessagingPlacement.getter(char *a1@<X8>)
{
  v2 = *v1;
  if (v2 >= 8)
  {
    v3 = 30;
  }

  else
  {
    v3 = 0x141E151213111E1EuLL >> (8 * v2);
  }

  *a1 = v3;
}

uint64_t VideoControls.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  sub_1E1300B24(a1, v49);
  sub_1E1AF372C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v44 = 0;
  v45 = a1;
  v46 = a2;
  sub_1E1AF381C();
  v25 = sub_1E1AF370C();
  v26 = v25;
  v43 = v25;
  v27 = *(v6 + 8);
  v27(v20, v5);
  sub_1E1AF381C();
  v28 = sub_1E1AF370C();
  v27(v17, v5);
  v29 = v43 & 1 | 2;
  if ((v28 & 1) == 0)
  {
    v29 = v26 & 1;
  }

  if (v28 == 2)
  {
    v30 = v26 & 1;
  }

  else
  {
    v30 = v29;
  }

  sub_1E1AF381C();
  v31 = sub_1E1AF370C();
  v27(v14, v5);
  v32 = v30 | 4;
  if ((v31 & 1) == 0)
  {
    v32 = v30;
  }

  if (v31 != 2)
  {
    v30 = v32;
  }

  v33 = v47;
  sub_1E1AF381C();
  v34 = sub_1E1AF370C();
  v27(v33, v5);
  v35 = v30 | 8;
  if ((v34 & 1) == 0)
  {
    v35 = v30;
  }

  if (v34 != 2)
  {
    v30 = v35;
  }

  v36 = v48;
  sub_1E1AF381C();
  v37 = sub_1E1AF370C();
  v27(v36, v5);
  v38 = v30 | 0x10;
  if ((v37 & 1) == 0)
  {
    v38 = v30;
  }

  if (v37 == 2)
  {
    v39 = v30;
  }

  else
  {
    v39 = v38;
  }

  v40 = v50;
  sub_1E1AF381C();
  v41 = sub_1E1AF370C();
  v27(v40, v5);
  if (v41 == 2 || (v41 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
    result = (v27)(v23, v5);
    *v46 = v39;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
    result = (v27)(v23, v5);
    *v46 = v39 | 0x20;
  }

  return result;
}

uint64_t VideoControls.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1E1AF76DC();
  sub_1E15A1B10(MEMORY[0x1E69E7CC0]);
  if (v2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159B6E8(1, 0x6E656E696D6F7270, 0xED000079616C5074, isUniquelyReferenced_nonNull_native);
  }

  if ((v2 & 2) != 0)
  {
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159B6E8(1, 0xD000000000000010, 0x80000001E1B6F670, v6);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159B6E8(1, 0x6C50656E696C6E69, 0xEF65737561507961, v7);
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159B6E8(1, 0x7265626275726373, 0xE800000000000000, v9);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_12:
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159B6E8(1, 0x756D6E556574756DLL, 0xEA00000000006574, v8);
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((v2 & 0x20) != 0)
  {
LABEL_8:
    v4 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159B6E8(1, 0xD000000000000014, 0x80000001E1B6F690, v4);
  }

LABEL_9:
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3568);
  sub_1E16AEB90();
  sub_1E1AF74CC();

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

unint64_t sub_1E16AEB90()
{
  result = qword_1ECEB7980;
  if (!qword_1ECEB7980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB3568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7980);
  }

  return result;
}

unint64_t sub_1E16AEC18()
{
  result = qword_1ECEB7988;
  if (!qword_1ECEB7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7988);
  }

  return result;
}

unint64_t sub_1E16AEC70()
{
  result = qword_1ECEB7990;
  if (!qword_1ECEB7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7990);
  }

  return result;
}

unint64_t sub_1E16AECC8()
{
  result = qword_1EE1DFEF0;
  if (!qword_1EE1DFEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DFEF0);
  }

  return result;
}

unint64_t sub_1E16AED20()
{
  result = qword_1EE1DFEE0;
  if (!qword_1EE1DFEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DFEE0);
  }

  return result;
}

uint64_t ImpressionMetrics.withParentId(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1E1AF468C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  if (a2)
  {
    v24[2] = a1;
    sub_1E1AF46AC();
    v17 = sub_1E1AF467C();
    v24[0] = v18;
    v24[1] = v17;
    v25 = a3;
    v19 = *(v8 + 8);
    v19(v13, v7);
    sub_1E1AF46AC();
    sub_1E1AF465C();
    v19(v10, v7);

    sub_1E1AF466C();
    v20 = sub_1E1AF46DC();
    (*(*(v20 - 8) + 16))(v25, v3, v20);
    (*(v8 + 16))(v13, v16, v7);
    sub_1E1AF46BC();
    return (v19)(v16, v7);
  }

  else
  {
    v22 = sub_1E1AF46DC();
    v23 = *(*(v22 - 8) + 16);

    return v23(a3, v3, v22);
  }
}

uint64_t ImpressionMetrics.ID.withParentId(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_1E1AF467C();
    sub_1E1AF465C();

    return sub_1E1AF466C();
  }

  else
  {
    v5 = sub_1E1AF468C();
    v6 = *(*(v5 - 8) + 16);

    return v6(a2, v2, v5);
  }
}

void sub_1E16AF0D4(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = [v4 valueWithNewObjectInContext_];
  if (!v5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v5;
  v7 = type metadata accessor for MSOPageIntent();
  v8 = v6;
  *&v31 = sub_1E1AEFBDC();
  *(&v31 + 1) = v9;
  v10 = &selRef_remoteDownloadIdentifiersDidChange_;
  v11 = [v4 valueWithObject:sub_1E1AF755C() inContext:a1];
  swift_unknownObjectRelease();
  if (!v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1E1AF6C5C();
  v12 = (v2 + *(v7 + 24));
  v13 = v12[1];
  if (v13)
  {
    *&v31 = *v12;
    *(&v31 + 1) = v13;

    v14 = a1;
    v15 = sub_1E1AF748C();
    sub_1E1455104(&v31);
  }

  else
  {
    v16 = a1;
    v15 = 0;
  }

  v17 = [v4 valueWithObject:v15 inContext:a1];
  swift_unknownObjectRelease();

  if (!v17)
  {
    goto LABEL_21;
  }

  sub_1E1AF6C5C();
  v18 = *(v2 + *(v7 + 28));
  if (!v18)
  {
    v31 = 0u;
    v32 = 0u;
    goto LABEL_16;
  }

  v19 = *(v18 + 16);
  if (v19)
  {
    v29 = v4;
    v30 = v8;
    v20 = sub_1E1545A54(v19, 0);
    v21 = sub_1E1546A64(&v31, v20 + 4, v19, v18);
    swift_bridgeObjectRetain_n();
    sub_1E1337ECC();
    if (v21 == v19)
    {
      v4 = v29;
      v8 = v30;
      v10 = &selRef_remoteDownloadIdentifiersDidChange_;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_19;
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_13:
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
  *(&v32 + 1) = v22;
  *&v31 = v20;

  if (v22)
  {
    v23 = __swift_project_boxed_opaque_existential_1Tm(&v31, v22);
    v24 = *(v22 - 8);
    v25 = MEMORY[0x1EEE9AC00](v23);
    v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27, v25);
    v18 = sub_1E1AF748C();
    (*(v24 + 8))(v27, v22);
    __swift_destroy_boxed_opaque_existential_1(&v31);
  }

  else
  {
    v18 = 0;
  }

LABEL_16:
  v28 = [v4 v10[3]];
  swift_unknownObjectRelease();
  if (v28)
  {
    sub_1E1AF6C5C();

    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t type metadata accessor for MSOPageIntent()
{
  result = qword_1ECEB7998;
  if (!qword_1ECEB7998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E16AF4F8()
{
  sub_1E1AEFCCC();
  if (v0 <= 0x3F)
  {
    sub_1E16AF5A4();
    if (v1 <= 0x3F)
    {
      sub_1E16AF5F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E16AF5A4()
{
  if (!qword_1ECEB79A8)
  {
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECEB79A8);
    }
  }
}

void sub_1E16AF5F4()
{
  if (!qword_1ECEB79B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECEBBDD0);
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECEB79B0);
    }
  }
}

uint64_t sub_1E16AF734(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E16AF77C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v17 = a1[4];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = sub_1E1AF5DBC();
  v9 = sub_1E1AF5DBC();
  [v3 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v8 withReuseIdentifier:v9];

  v10 = sub_1E1AF5DBC();
  v11 = sub_1E1AF5DBC();
  v12 = sub_1E1AF015C();
  v13 = [v3 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:v12];

  v14 = swift_dynamicCastUnknownClass();
  if (v14)
  {
    v15 = v14;
    v17(v14, v5, v6, a2);
    return v15;
  }

  else
  {

    result = sub_1E1AF71FC();
    __break(1u);
  }

  return result;
}

void sub_1E16AF908(double *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1Tm(a4, v10);
  if (!(*(v11 + 16))(a2, a6, v10, v11))
  {
    v14 = 1;
    goto LABEL_5;
  }

  v12 = swift_conformsToProtocol2();
  if (!v12)
  {
    v16 = swift_conformsToProtocol2();
    if (v16)
    {
      MEMORY[0x1EEE9AC00](v16);
      v13 = sub_1E16AFCBC;
      goto LABEL_8;
    }

    v14 = 0;
LABEL_5:
    sub_1E16AFAB8();
    swift_allocError();
    *v15 = v14;
    swift_willThrow();
    return;
  }

  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1E16AFCC0;
LABEL_8:
  v17 = ComponentHeightCache.height(for:or:)(a2, v13);
  if (v9 > v17)
  {
    v17 = v9;
  }

  *a1 = v17;
}

unint64_t sub_1E16AFAB8()
{
  result = qword_1ECEB79C0;
  if (!qword_1ECEB79C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB79C0);
  }

  return result;
}

void sub_1E16AFB0C(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X5>, double *a5@<X8>)
{
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v9);
  if (!(*(v10 + 16))(a1, a3, v9, v10))
  {
    v13 = 1;
    goto LABEL_5;
  }

  v11 = swift_conformsToProtocol2();
  if (!v11)
  {
    v16 = swift_conformsToProtocol2();
    if (v16)
    {
      MEMORY[0x1EEE9AC00](v16);
      v12 = sub_1E16AFDC8;
      goto LABEL_8;
    }

    v13 = 0;
LABEL_5:
    sub_1E16AFAB8();
    v14 = swift_allocError();
    *v15 = v13;
    swift_willThrow();
    *a4 = v14;
    return;
  }

  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1E16AFDCC;
LABEL_8:
  *a5 = ComponentHeightCache.height(for:or:)(a1, v12);
}

uint64_t sub_1E16AFCC4()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for ItemLayoutContext();
  return (*(v2 + 16))(v4 + *(v5 + 32), v3, v1, v2);
}

unint64_t sub_1E16AFD74()
{
  result = qword_1ECEB79C8;
  if (!qword_1ECEB79C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB79C8);
  }

  return result;
}

uint64_t FlowPreviewAction.__allocating_init(previewViewController:presentationContext:requiresNavigationController:actionMetrics:)(uint64_t a1, char *a2, char a3, uint64_t a4)
{
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = *a2;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit17FlowPreviewAction_previewViewController) = a1;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit17FlowPreviewAction_presentationContext) = v13;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit17FlowPreviewAction_requiresNavigationController) = a3;
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v14 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v15 = sub_1E1AF3E1C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v12 + v14, a4, v15);
  v17 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v18 = sub_1E1AF46DC();
  (*(*(v18 - 8) + 56))(v12 + v17, 1, 1, v18);
  v19 = (v12 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v19 = 0u;
  v19[1] = 0u;
  v20 = v12 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v30, &v27);
  if (*(&v28 + 1))
  {
    v21 = v28;
    *v20 = v27;
    *(v20 + 16) = v21;
    *(v20 + 32) = v29;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v24 = v23;
    (*(v9 + 8))(v11, v8);
    v26[1] = v22;
    v26[2] = v24;
    sub_1E1AF6F6C();
    sub_1E1308058(&v27, &unk_1ECEB5670);
  }

  (*(v16 + 8))(a4, v15);
  sub_1E1308058(v30, &unk_1ECEB5670);
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  return v12;
}

uint64_t FlowPreviewAction.init(previewViewController:presentationContext:requiresNavigationController:actionMetrics:)(uint64_t a1, _BYTE *a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1E1AEFEAC();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - v14;
  v16 = sub_1E1AF3E1C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v18) = *a2;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit17FlowPreviewAction_previewViewController) = a1;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit17FlowPreviewAction_presentationContext) = v18;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit17FlowPreviewAction_requiresNavigationController) = a3;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  (*(v17 + 16))(v19, a4, v16);
  v20 = sub_1E1AF46DC();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = (v5 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
  sub_1E138853C(v39, &v33);
  if (*(&v34 + 1))
  {
    v36 = v33;
    v37 = v34;
    v38 = v35;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v24 = v23;
    (*(v29 + 8))(v12, v30);
    v31 = v22;
    v32 = v24;
    sub_1E1AF6F6C();
    sub_1E1308058(&v33, &unk_1ECEB5670);
  }

  (*(v17 + 8))(a4, v16);
  sub_1E1308058(v39, &unk_1ECEB5670);
  v25 = v5 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v25 + 32) = v38;
  v26 = v37;
  *v25 = v36;
  *(v25 + 16) = v26;
  sub_1E134B7C8(v15, v5 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  (*(v17 + 32))(v5 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v19, v16);
  return v5;
}

uint64_t FlowPreviewAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t FlowPreviewAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FlowPreviewAction()
{
  result = qword_1EE1F1548;
  if (!qword_1EE1F1548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL Color.isDark.getter()
{
  sub_1E1355E88();

  v0 = sub_1E1AF6CBC();
  [v0 _luminance];
  v2 = v1;

  return v2 < 0.5;
}

BOOL Color.isDark(threshold:)(double a1)
{
  sub_1E1355E88();

  v2 = sub_1E1AF6CBC();
  [v2 _luminance];
  v4 = v3;

  return v4 < a1;
}

uint64_t sub_1E16B0884(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v49 = a2 + 56;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v9 = (v6 - 1) & v6;
LABEL_13:
    v41 = result;
    v12 = (*(result + 48) + ((v8 | (v2 << 6)) << 6));
    v13 = v12[3];
    v15 = *v12;
    v14 = v12[1];
    v57 = v12[2];
    v58 = v13;
    v55 = v15;
    v56 = v14;
    v16 = v12[1];
    v51 = *v12;
    v52 = v16;
    v17 = v12[3];
    v53 = v12[2];
    v54 = v17;
    v18 = a2;
    sub_1E1AF762C();
    sub_1E13C5038(&v55, v50);
    PageFacets.Facet.Option.hash(into:)();
    v19 = sub_1E1AF767C();
    v20 = -1 << *(v18 + 32);
    v21 = v19 & ~v20;
    if (((*(v49 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_48:
      sub_1E13C5094(&v55);
      return 0;
    }

    v36 = v9;
    v37 = v7;
    v38 = v2;
    v39 = v3;
    v22 = ~v20;
    v23 = *(&v55 + 1);
    v48 = v56;
    v46 = v55;
    v47 = *(&v56 + 1);
    v42 = v58;
    v43 = v57;
    v44 = *(&v58 + 1);
    v45 = *(&v57 + 1);
    v40 = v18;
    v24 = *(v18 + 48);
    while (1)
    {
      v25 = (v24 + (v21 << 6));
      v26 = v25[1];
      v27 = v25[2];
      v29 = v25[3];
      v28 = v25[4];
      v30 = v25[5];
      v31 = v25[6];
      v32 = v25[7];
      if (v26)
      {
        if (!v23)
        {
          goto LABEL_16;
        }

        v33 = *v25 == v46 && v26 == v23;
        if (!v33 && (sub_1E1AF74AC() & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (v23)
      {
        goto LABEL_16;
      }

      v34 = v27 == v48 && v29 == v47;
      if (!v34 && (sub_1E1AF74AC() & 1) == 0)
      {
        goto LABEL_16;
      }

      if (v30)
      {
        if (!v45)
        {
          goto LABEL_16;
        }

        v35 = v28 == v43 && v30 == v45;
        if (!v35 && (sub_1E1AF74AC() & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (v45)
      {
        goto LABEL_16;
      }

      if (v32)
      {
        break;
      }

      if (!v44)
      {
        goto LABEL_45;
      }

LABEL_16:
      v21 = (v21 + 1) & v22;
      if (((*(v49 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    if (!v44 || (v31 != v42 || v32 != v44) && (sub_1E1AF74AC() & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_45:
    sub_1E13C5094(&v55);
    a2 = v40;
    result = v41;
    v2 = v38;
    v3 = v39;
    v6 = v36;
    v7 = v37;
  }

  while (v36);
LABEL_8:
  v10 = v2;
  while (1)
  {
    v2 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v11 = *(v3 + 8 * v2);
    ++v10;
    if (v11)
    {
      v8 = __clz(__rbit64(v11));
      v9 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E16B0B84(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v25 = v9;
  v26 = result;
  if (v8)
  {
    do
    {
      v11 = __clz(__rbit64(v8));
      v27 = (v8 - 1) & v8;
LABEL_13:
      v14 = *(*(v3 + 48) + (v11 | (v4 << 6)));
      sub_1E1AF762C();
      v15 = v14 ? 7304045 : 1701736302;
      v16 = v14 ? 0xE300000000000000 : 0xE400000000000000;
      sub_1E1AF5F0C();

      v17 = sub_1E1AF767C();
      v18 = -1 << *(a2 + 32);
      v19 = v17 & ~v18;
      if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }

      v20 = ~v18;
      while (1)
      {
        v21 = *(*(a2 + 48) + v19) ? 7304045 : 1701736302;
        v22 = *(*(a2 + 48) + v19) ? 0xE300000000000000 : 0xE400000000000000;
        if (v21 == v15 && v22 == v16)
        {
          break;
        }

        v24 = sub_1E1AF74AC();

        if (v24)
        {
          goto LABEL_35;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          return 0;
        }
      }

LABEL_35:
      v9 = v25;
      v3 = v26;
      v8 = v27;
    }

    while (v27);
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v27 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E16B0DAC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1E1AF762C();

    sub_1E1AF5F0C();
    v16 = sub_1E1AF767C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1E1AF74AC() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall GuidedSearchQueryStore.adding(queries:)(Swift::OpaquePointer queries)
{

  sub_1E1922070(0, 0, queries._rawValue);
}

Swift::String_optional __swiftcall GuidedSearchQueryStore.optimizationTerm(for:tokens:)(Swift::String a1, Swift::OpaquePointer_optional tokens)
{
  rawValue = tokens.value._rawValue;
  if (!tokens.value._rawValue)
  {
LABEL_16:
    v14 = 0;
LABEL_17:
    v8 = rawValue;
    v9 = v14;
    goto LABEL_20;
  }

  if (!*(tokens.value._rawValue + 2))
  {
LABEL_15:
    rawValue = 0;
    goto LABEL_16;
  }

  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v6 = *v2;

  v17 = sub_1E13C4BB8(v7);

  v10 = *(v6 + 16);
  if (!v10)
  {
LABEL_14:

    goto LABEL_15;
  }

  v11 = 0;
  v12 = (v6 + 64);
  while (v11 < *(v6 + 16))
  {
    v13 = *(v12 - 2);
    rawValue = *(v12 - 1);
    v14 = *v12;
    v15 = *(v12 - 4) == countAndFlagsBits && *(v12 - 3) == object;
    if (v15 || (v8 = sub_1E1AF74AC(), (v8 & 1) != 0))
    {

      if (sub_1E16B0DAC(v13, v17))
      {

        goto LABEL_17;
      }
    }

    ++v11;
    v12 += 5;
    if (v10 == v11)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

uint64_t static UIColor.hex(_:)()
{
  sub_1E1355E88();

  return sub_1E1AF6C9C();
}

__n128 ProductReviewLayout.init(metrics:titleText:ratingView:dateText:authorText:bodyText:responseTitleText:responseDateText:responseBodyText:badgeText:actionViews:)@<Q0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12)
{
  memcpy((a9 + 368), __src, 0x260uLL);
  sub_1E1308EC0(a2, a9);
  sub_1E1308EC0(a3, a9 + 40);
  sub_1E1308EC0(a4, a9 + 80);
  sub_1E1308EC0(a5, a9 + 120);
  sub_1E1308EC0(a6, a9 + 200);
  sub_1E1308EC0(a7, a9 + 240);
  sub_1E1308EC0(a8, a9 + 280);
  sub_1E1308EC0(a10, a9 + 320);
  result = *a11;
  v21 = *(a11 + 16);
  *(a9 + 160) = *a11;
  *(a9 + 176) = v21;
  *(a9 + 192) = *(a11 + 32);
  *(a9 + 360) = a12;
  return result;
}

uint64_t ProductReviewLayout.Metrics.init(titleSpace:ratingSpace:dateSpace:authorSpace:bodyFirstLineSpace:bodySubsequentLineSpace:bodyEstimatedNumberOfLines:responseTitleSpace:responseDateSpace:responseBodyFirstLineSpace:horizontalInterViewSpace:horizontalEdgeSpace:bottomEdgeSpace:badgeSpace:actionsSpace:actionsInterItemSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, __int128 *a11, __int128 *a12, __int128 *a13, __int128 *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(a9 + 600) = 0;
  *(a9 + 568) = 0u;
  *(a9 + 584) = 0u;
  *(a9 + 536) = 0u;
  *(a9 + 552) = 0u;
  *(a9 + 504) = 0u;
  *(a9 + 520) = 0u;
  *(a9 + 488) = 0u;
  sub_1E1308EC0(a1, a9);
  sub_1E1308EC0(a2, a9 + 40);
  sub_1E1308EC0(a3, a9 + 80);
  sub_1E1308EC0(a4, a9 + 120);
  sub_1E1308EC0(a5, a9 + 160);
  sub_1E1308EC0(a6, a9 + 200);
  *(a9 + 240) = a7;
  sub_1E1308EC0(a8, a9 + 248);
  sub_1E1308EC0(a10, a9 + 288);
  sub_1E1308EC0(a11, a9 + 328);
  sub_1E1308EC0(a12, a9 + 368);
  sub_1E1308EC0(a13, a9 + 408);
  sub_1E1308EC0(a14, a9 + 448);
  sub_1E13BC4E4(a15, a9 + 488);
  sub_1E13BC4E4(a16, a9 + 528);

  return sub_1E13BC4E4(a17, a9 + 568);
}

uint64_t ProductReviewLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t ProductReviewLayout.Metrics.ratingSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t ProductReviewLayout.Metrics.dateSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_1E1308EC0(a1, v1 + 80);
}

uint64_t ProductReviewLayout.Metrics.authorSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 120);

  return sub_1E1308EC0(a1, v1 + 120);
}

uint64_t ProductReviewLayout.Metrics.bodyFirstLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 160);

  return sub_1E1308EC0(a1, v1 + 160);
}

uint64_t ProductReviewLayout.Metrics.bodySubsequentLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 200);

  return sub_1E1308EC0(a1, v1 + 200);
}

uint64_t ProductReviewLayout.Metrics.responseTitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 248);

  return sub_1E1308EC0(a1, v1 + 248);
}

uint64_t ProductReviewLayout.Metrics.responseDateSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 288);

  return sub_1E1308EC0(a1, v1 + 288);
}

uint64_t ProductReviewLayout.Metrics.responseBodyFirstLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 328);

  return sub_1E1308EC0(a1, v1 + 328);
}

uint64_t ProductReviewLayout.Metrics.horizontalInterViewSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 368);

  return sub_1E1308EC0(a1, v1 + 368);
}

uint64_t ProductReviewLayout.Metrics.horizontalEdgeSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 408);

  return sub_1E1308EC0(a1, v1 + 408);
}

uint64_t ProductReviewLayout.Metrics.bottomEdgeSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 448);

  return sub_1E1308EC0(a1, v1 + 448);
}

double ProductReviewLayout.measurements(fitting:in:)(void *a1, double a2)
{
  v3 = v2;
  v158 = sub_1E1AF162C();
  v156 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v155 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_1E1AF165C();
  v157 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v154 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF1A1C();
  v162 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v148 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v153 = &v141 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v144 = &v141 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v142 = &v141 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v164 = &v141 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v163 = &v141 - v19;
  v165 = sub_1E1AF1A6C();
  v167 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v152 = &v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v143 = &v141 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v151 = &v141 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v141 - v26;
  v28 = sub_1E1AF745C();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v141 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v2 + 97, v2[100]);
  sub_1E13BC274();
  v166 = a1;
  sub_1E1AF12DC();
  v32 = *(v29 + 8);
  v145 = v31;
  v147 = v28;
  v146 = v29 + 8;
  v32(v31, v28);
  sub_1E134FD1C((v2 + 20), &v175, &qword_1ECEB2AD0);
  v33 = MEMORY[0x1E69AB908];
  v161 = v8;
  v141 = v32;
  if (v176)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v175, v176);
    v34 = sub_1E1AF117C();
    __swift_destroy_boxed_opaque_existential_1(&v175);
    if ((v34 & 1) == 0)
    {
      v35 = 1;
LABEL_7:
      v38 = v3[3];
      v39 = v3[4];
      v40 = __swift_project_boxed_opaque_existential_1Tm(v3, v38);
      v176 = v38;
      v177 = *(*(v39 + 8) + 8);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v175);
      (*(*(v38 - 8) + 16))(boxed_opaque_existential_0, v40, v38);
      sub_1E1300B24((v3 + 46), &v171);
      v169 = sub_1E1AF140C();
      v170 = v33;
      __swift_allocate_boxed_opaque_existential_0(v168);
      sub_1E1AF13FC();
      sub_1E1AF1A5C();
      v42 = sub_1E172D4BC(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v44 = v42[2];
      v43 = v42[3];
      v45 = v162;
      if (v44 >= v43 >> 1)
      {
        v42 = sub_1E172D4BC((v43 > 1), v44 + 1, 1, v42);
      }

      v46 = v165;
      v176 = v165;
      v177 = MEMORY[0x1E69ABAA0];
      v47 = __swift_allocate_boxed_opaque_existential_0(&v175);
      v48 = v167;
      (*(v167 + 16))(v47, v27, v46);
      v42[2] = v44 + 1;
      sub_1E1308EC0(&v175, &v42[5 * v44 + 4]);
      (*(v48 + 8))(v27, v46);
      v8 = v161;
      v49 = v164;
      goto LABEL_13;
    }
  }

  else
  {
    sub_1E1308058(&v175, &qword_1ECEB2AD0);
  }

  v36 = [v166 traitCollection];
  v37 = sub_1E1AF698C();

  if (v37)
  {
    v35 = 0;
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1Tm(v3 + 92, v3[95]);
  v50 = v145;
  sub_1E13BC274();
  sub_1E1AF12DC();
  v32(v50, v147);
  __swift_project_boxed_opaque_existential_1Tm(v3 + 10, v3[13]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  sub_1E1AF11CC();
  v52 = v51;
  v54 = v53;
  __swift_project_boxed_opaque_existential_1Tm(v3 + 46, v3[49]);
  sub_1E1AF12FC();
  v176 = MEMORY[0x1E69E7DE0];
  v177 = MEMORY[0x1E69AB858];
  *&v175 = v52 - v54 + v55;
  v56 = v163;
  sub_1E1AF1A2C();
  v42 = sub_1E172D4BC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v58 = v42[2];
  v57 = v42[3];
  if (v58 >= v57 >> 1)
  {
    v42 = sub_1E172D4BC((v57 > 1), v58 + 1, 1, v42);
  }

  v45 = v162;
  v49 = v164;
  v176 = v8;
  v177 = MEMORY[0x1E69ABA90];
  v59 = __swift_allocate_boxed_opaque_existential_0(&v175);
  (*(v45 + 16))(v59, v56, v8);
  v42[2] = v58 + 1;
  sub_1E1308EC0(&v175, &v42[5 * v58 + 4]);
  (*(v45 + 8))(v56, v8);
  v35 = 0;
LABEL_13:
  sub_1E1300B24((v3 + 51), &v175);
  sub_1E1AF1A2C();
  v61 = v42[2];
  v60 = v42[3];
  if (v61 >= v60 >> 1)
  {
    v42 = sub_1E172D4BC((v60 > 1), v61 + 1, 1, v42);
  }

  v62 = MEMORY[0x1E69AB908];
  v176 = v8;
  v177 = MEMORY[0x1E69ABA90];
  v63 = __swift_allocate_boxed_opaque_existential_0(&v175);
  v64 = *(v45 + 16);
  v160 = v45 + 16;
  v164 = v64;
  (v64)(v63, v49, v8);
  v42[2] = v61 + 1;
  sub_1E1308EC0(&v175, &v42[5 * v61 + 4]);
  v66 = *(v45 + 8);
  v65 = v45 + 8;
  v163 = v66;
  (v66)(v49, v8);
  v174 = v42;
  if (v35)
  {
    sub_1E134FD1C((v3 + 107), &v175, &unk_1ECEB47F0);
    if (v176)
    {
      sub_1E1308EC0(&v175, &v171);
    }

    else
    {
      sub_1E1300B24((v3 + 61), &v171);
      if (v176)
      {
        sub_1E1308058(&v175, &unk_1ECEB47F0);
      }
    }

    v176 = v8;
    v177 = MEMORY[0x1E69ABA90];
    __swift_allocate_boxed_opaque_existential_0(&v175);
    sub_1E1AF1A2C();
    v174 = v42;
    v68 = v42[2];
    v67 = v42[3];
    if (v68 >= v67 >> 1)
    {
      v42 = sub_1E172D4BC((v67 > 1), v68 + 1, 1, v42);
      v174 = v42;
    }

    v69 = v176;
    v70 = v177;
    v71 = __swift_mutable_project_boxed_opaque_existential_1(&v175, v176);
    v72 = MEMORY[0x1EEE9AC00](v71);
    v74 = &v141 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v75 + 16))(v74, v72);
    sub_1E16B64D0(v68, v74, &v174, v69, v70);
    __swift_destroy_boxed_opaque_existential_1(&v175);
    v174 = v42;
  }

  v76 = MEMORY[0x1E69ABAA0];
  v77 = [v166 traitCollection];
  v78 = sub_1E1AF698C();

  v79 = v151;
  if (v78)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39D0);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_1E1B02CD0;
    sub_1E1300B24((v3 + 56), &v175);
    *(v80 + 56) = v8;
    v81 = MEMORY[0x1E69ABA90];
    *(v80 + 64) = MEMORY[0x1E69ABA90];
    __swift_allocate_boxed_opaque_existential_0((v80 + 32));
    sub_1E1AF1A2C();
    sub_1E1300B24((v3 + 61), &v175);
    *(v80 + 96) = v8;
    *(v80 + 104) = v81;
    __swift_allocate_boxed_opaque_existential_0((v80 + 72));
    sub_1E1AF1A2C();
    sub_1E172830C(v80);
    v42 = v174;
  }

  v82 = v3[28];
  v83 = v3[29];
  v84 = __swift_project_boxed_opaque_existential_1Tm(v3 + 25, v82);
  v176 = v82;
  v177 = *(*(v83 + 8) + 8);
  v85 = __swift_allocate_boxed_opaque_existential_0(&v175);
  (*(*(v82 - 8) + 16))(v85, v84, v82);
  sub_1E1300B24((v3 + 66), &v171);
  v150 = sub_1E1AF140C();
  v169 = v150;
  v170 = v62;
  __swift_allocate_boxed_opaque_existential_0(v168);
  sub_1E1AF13FC();
  sub_1E1AF1A5C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v42 = sub_1E172D4BC(0, v42[2] + 1, 1, v42);
  }

  v87 = v42[2];
  v86 = v42[3];
  if (v87 >= v86 >> 1)
  {
    v42 = sub_1E172D4BC((v86 > 1), v87 + 1, 1, v42);
  }

  v88 = v165;
  v176 = v165;
  v177 = v76;
  v89 = __swift_allocate_boxed_opaque_existential_0(&v175);
  v90 = v167;
  v149 = *(v167 + 16);
  v149(v89, v79, v88);
  v42[2] = v87 + 1;
  sub_1E1308EC0(&v175, &v42[5 * v87 + 4]);
  v91 = *(v90 + 8);
  v167 = v90 + 8;
  v151 = v91;
  (v91)(v79, v88);
  __swift_project_boxed_opaque_existential_1Tm(v3 + 40, v3[43]);
  if (sub_1E1AF117C())
  {
    v92 = v161;
  }

  else
  {
    v162 = v65;
    v93 = v166;
    v94 = [v166 traitCollection];
    v95 = sub_1E1AF698C();

    v92 = v161;
    if (v95)
    {
      v96 = v3[33];
      v97 = v3[34];
      v98 = __swift_project_boxed_opaque_existential_1Tm(v3 + 30, v96);
      v176 = v96;
      v177 = *(*(v97 + 8) + 8);
      v99 = __swift_allocate_boxed_opaque_existential_0(&v175);
      (*(*(v96 - 8) + 16))(v99, v98, v96);
      sub_1E1300B24((v3 + 77), &v171);
      v169 = v150;
      v170 = v62;
      __swift_allocate_boxed_opaque_existential_0(v168);
      sub_1E1AF13FC();
      sub_1E1AF1A5C();
      v101 = v42[2];
      v100 = v42[3];
      if (v101 >= v100 >> 1)
      {
        v42 = sub_1E172D4BC((v100 > 1), v101 + 1, 1, v42);
      }

      v102 = v166;
      v103 = v165;
      v176 = v165;
      v177 = MEMORY[0x1E69ABAA0];
      v104 = __swift_allocate_boxed_opaque_existential_0(&v175);
      v105 = v143;
      v149(v104, v143, v103);
      v42[2] = v101 + 1;
      sub_1E1308EC0(&v175, &v42[5 * v101 + 4]);
      (v151)(v105, v103);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1Tm(v3 + 92, v3[95]);
      v106 = v145;
      sub_1E13BC274();
      sub_1E1AF12DC();
      v141(v106, v147);
      __swift_project_boxed_opaque_existential_1Tm(v3 + 35, v3[38]);
      sub_1E1AF11CC();
      __swift_project_boxed_opaque_existential_1Tm(v3 + 30, v3[33]);
      sub_1E1AF11CC();
      v108 = v107;
      v110 = v109;
      __swift_project_boxed_opaque_existential_1Tm(v3 + 77, v3[80]);
      sub_1E1AF12FC();
      v176 = MEMORY[0x1E69E7DE0];
      v177 = MEMORY[0x1E69AB858];
      *&v175 = v108 - v110 + v111;
      v112 = v142;
      sub_1E1AF1A2C();
      v114 = v42[2];
      v113 = v42[3];
      v102 = v93;
      if (v114 >= v113 >> 1)
      {
        v42 = sub_1E172D4BC((v113 > 1), v114 + 1, 1, v42);
      }

      v176 = v92;
      v177 = MEMORY[0x1E69ABA90];
      v115 = __swift_allocate_boxed_opaque_existential_0(&v175);
      (v164)(v115, v112, v92);
      v42[2] = v114 + 1;
      sub_1E1308EC0(&v175, &v42[5 * v114 + 4]);
      (v163)(v112, v92);
    }

    v116 = [v102 traitCollection];
    v117 = sub_1E1AF698C();

    if (v117)
    {
      sub_1E1300B24((v3 + 82), &v175);
      sub_1E1AF1A2C();
      v119 = v42[2];
      v118 = v42[3];
      if (v119 >= v118 >> 1)
      {
        v42 = sub_1E172D4BC((v118 > 1), v119 + 1, 1, v42);
      }

      v176 = v92;
      v177 = MEMORY[0x1E69ABA90];
      v120 = __swift_allocate_boxed_opaque_existential_0(&v175);
      v121 = v144;
      (v164)(v120, v144, v92);
      v42[2] = v119 + 1;
      sub_1E1308EC0(&v175, &v42[5 * v119 + 4]);
      (v163)(v121, v92);
    }

    v122 = v3[43];
    v123 = v3[44];
    v124 = __swift_project_boxed_opaque_existential_1Tm(v3 + 40, v122);
    v176 = v122;
    v177 = *(*(v123 + 8) + 8);
    v125 = __swift_allocate_boxed_opaque_existential_0(&v175);
    (*(*(v122 - 8) + 16))(v125, v124, v122);
    sub_1E1300B24((v3 + 87), &v171);
    v169 = v150;
    v170 = MEMORY[0x1E69AB908];
    __swift_allocate_boxed_opaque_existential_0(v168);
    sub_1E1AF13FC();
    sub_1E1AF1A5C();
    v127 = v42[2];
    v126 = v42[3];
    if (v127 >= v126 >> 1)
    {
      v42 = sub_1E172D4BC((v126 > 1), v127 + 1, 1, v42);
    }

    v128 = v165;
    v176 = v165;
    v177 = MEMORY[0x1E69ABAA0];
    v129 = __swift_allocate_boxed_opaque_existential_0(&v175);
    v130 = v152;
    v149(v129, v152, v128);
    v42[2] = v127 + 1;
    sub_1E1308EC0(&v175, &v42[5 * v127 + 4]);
    (v151)(v130, v128);
  }

  sub_1E1300B24((v3 + 102), &v175);
  v131 = v153;
  sub_1E1AF1A2C();
  v133 = v42[2];
  v132 = v42[3];
  if (v133 >= v132 >> 1)
  {
    v42 = sub_1E172D4BC((v132 > 1), v133 + 1, 1, v42);
  }

  v176 = v92;
  v177 = MEMORY[0x1E69ABA90];
  v134 = __swift_allocate_boxed_opaque_existential_0(&v175);
  (v164)(v134, v131, v92);
  v42[2] = v133 + 1;
  sub_1E1308EC0(&v175, &v42[5 * v133 + 4]);
  (v163)(v131, v92);
  sub_1E134FD1C((v3 + 112), &v171, &unk_1ECEB47F0);
  if (v172)
  {
    sub_1E1308EC0(&v171, &v175);
    sub_1E1300B24(&v175, &v171);
    v135 = v148;
    sub_1E1AF1A2C();
    v137 = v42[2];
    v136 = v42[3];
    if (v137 >= v136 >> 1)
    {
      v42 = sub_1E172D4BC((v136 > 1), v137 + 1, 1, v42);
    }

    __swift_destroy_boxed_opaque_existential_1(&v175);
    v172 = v92;
    v173 = MEMORY[0x1E69ABA90];
    v138 = __swift_allocate_boxed_opaque_existential_0(&v171);
    (v164)(v138, v135, v92);
    v42[2] = v137 + 1;
    sub_1E1308EC0(&v171, &v42[5 * v137 + 4]);
    (v163)(v135, v92);
  }

  else
  {
    sub_1E1308058(&v171, &unk_1ECEB47F0);
  }

  (*(v156 + 104))(v155, *MEMORY[0x1E69AB970], v158);
  v139 = v154;
  sub_1E1AF163C();
  sub_1E1AF161C();
  (*(v157 + 8))(v139, v159);
  return a2;
}

uint64_t ProductReviewLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v39 = a2;
  v38 = sub_1E1AF1D6C();
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF111C();
  v36 = *(v14 - 8);
  v37 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E1AF745C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm((v6 + 776), *(v6 + 800));
  sub_1E13BC274();
  sub_1E1AF12DC();
  (*(v18 + 8))(v20, v17);
  sub_1E1AF6B0C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [a1 traitCollection];
  v30 = sub_1E1AF698C();

  if (v30)
  {
    sub_1E16B3748(a1, v16);
  }

  else
  {
    sub_1E16B48B8(a1, v16, v22, v24, v26, v28);
  }

  sub_1E1AF10EC();
  sub_1E1AF10EC();
  v40.origin.x = a3;
  v40.origin.y = a4;
  v40.size.width = a5;
  v40.size.height = a6;
  CGRectGetWidth(v40);
  sub_1E1AF109C();
  sub_1E1AF110C();
  sub_1E1AF1D2C();
  v31 = *(v35 + 8);
  v32 = v38;
  v31(v13, v38);
  sub_1E1AF110C();
  sub_1E1AF1CFC();
  v31(v13, v32);
  sub_1E1AF107C();
  return (*(v36 + 8))(v16, v37);
}

uint64_t sub_1E16B3748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a1;
  v103 = a2;
  v99 = sub_1E1AF18BC();
  v97 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1E1AF18DC();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v98 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1E1AF189C();
  v5 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1E1AF184C();
  v119 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1E1AF188C();
  v9 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AE0);
  v112 = *(v5 + 72);
  v90 = v5;
  v13 = *(v5 + 80);
  v14 = (v13 + 32) & ~v13;
  v96 = 2 * v112;
  v94 = v13;
  v95 = v12;
  v15 = swift_allocObject();
  v93 = v15;
  *(v15 + 16) = xmmword_1E1B02CD0;
  v108 = v14;
  v110 = (v15 + v14);
  v16 = v2;
  v17 = v2[3];
  v18 = v16[4];
  v92 = v16;
  v19 = __swift_project_boxed_opaque_existential_1Tm(v16, v17);
  v127 = v17;
  v128 = *(v18 + 8);
  v20 = __swift_allocate_boxed_opaque_existential_0(&v126);
  (*(*(v17 - 8) + 16))(v20, v19, v17);
  v118 = *MEMORY[0x1E69ABA08];
  v111 = *(v9 + 104);
  v111(v11);
  *&v123 = MEMORY[0x1E69E7CC0];
  v117 = sub_1E1425840();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0);
  v115 = sub_1E1383E14();
  v22 = v106;
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v24 = v119 + 8;
  v23 = *(v119 + 8);
  v23(v8, v22);
  v25 = *(v9 + 8);
  v26 = v107;
  v25(v11, v107);
  __swift_destroy_boxed_opaque_existential_1(&v126);
  v113 = v9 + 104;
  (v111)(v11, v118, v26);
  v126 = MEMORY[0x1E69E7CC0];
  v109 = v21;
  v27 = v22;
  v28 = v92;
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v105 = v8;
  v29 = v8;
  v30 = v93;
  v119 = v24;
  v116 = v23;
  v23(v29, v27);
  v31 = v107;
  v114 = v9 + 8;
  v110 = v25;
  (v25)(v11);
  v129 = v30;
  sub_1E134FD1C((v28 + 20), &v123, &qword_1ECEB2AD0);
  if (!v124)
  {
    sub_1E1308058(&v123, &qword_1ECEB2AD0);
    v32 = v31;
    goto LABEL_5;
  }

  sub_1E1308EC0(&v123, &v126);
  __swift_project_boxed_opaque_existential_1Tm(&v126, v127);
  v32 = v31;
  if (sub_1E1AF117C())
  {
    __swift_destroy_boxed_opaque_existential_1(&v126);
LABEL_5:
    v33 = v108;
    goto LABEL_13;
  }

  v34 = v127;
  v35 = v128;
  v36 = __swift_project_boxed_opaque_existential_1Tm(&v126, v127);
  v124 = v34;
  v125 = *(v35 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v123);
  (*(*(v34 - 8) + 16))(boxed_opaque_existential_0, v36, v34);
  sub_1E134FD1C((v28 + 107), &v120, &unk_1ECEB47F0);
  v33 = v108;
  if (v121)
  {
    sub_1E1308EC0(&v120, v122);
    v38 = v89;
  }

  else
  {
    sub_1E1300B24((v28 + 61), v122);
    v38 = v89;
    if (v121)
    {
      sub_1E1308058(&v120, &unk_1ECEB47F0);
    }
  }

  (v111)(v11, v118, v31);
  *&v120 = MEMORY[0x1E69E7CC0];
  v39 = v105;
  v40 = v106;
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v116(v39, v40);
  v110(v11, v32);
  __swift_destroy_boxed_opaque_existential_1(v122);
  __swift_destroy_boxed_opaque_existential_1(&v123);
  v42 = v30[2];
  v41 = v30[3];
  if (v42 >= v41 >> 1)
  {
    v30 = sub_1E172D494(v41 > 1, v42 + 1, 1, v30);
  }

  v30[2] = v42 + 1;
  (*(v90 + 32))(v30 + v33 + v42 * v112, v38, v91);
  v129 = v30;
  __swift_destroy_boxed_opaque_existential_1(&v126);
LABEL_13:
  v43 = swift_allocObject();
  v95 = v43;
  *(v43 + 16) = xmmword_1E1B070F0;
  v108 = v43 + v33;
  v44 = v28[13];
  v45 = v28[14];
  v46 = __swift_project_boxed_opaque_existential_1Tm(v28 + 10, v44);
  v127 = v44;
  v128 = *(v45 + 8);
  v47 = __swift_allocate_boxed_opaque_existential_0(&v126);
  (*(*(v44 - 8) + 16))(v47, v46, v44);
  v48 = v11;
  v49 = v11;
  v50 = v32;
  v51 = v32;
  v52 = v111;
  (v111)(v49, v118, v51);
  *&v123 = MEMORY[0x1E69E7CC0];
  v53 = v105;
  v54 = v106;
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v55 = v48;
  v116(v53, v54);
  v110(v48, v50);
  __swift_destroy_boxed_opaque_existential_1(&v126);
  v56 = v28[18];
  v57 = v28[19];
  v58 = __swift_project_boxed_opaque_existential_1Tm(v28 + 15, v56);
  v127 = v56;
  v128 = *(v57 + 8);
  v59 = __swift_allocate_boxed_opaque_existential_0(&v126);
  (*(*(v56 - 8) + 16))(v59, v58, v56);
  (v52)(v55, v118, v50);
  *&v123 = MEMORY[0x1E69E7CC0];
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v116(v53, v54);
  v110(v55, v50);
  __swift_destroy_boxed_opaque_existential_1(&v126);
  v60 = v28[28];
  v61 = v28[29];
  v62 = __swift_project_boxed_opaque_existential_1Tm(v28 + 25, v60);
  v127 = v60;
  v128 = *(v61 + 8);
  v63 = __swift_allocate_boxed_opaque_existential_0(&v126);
  (*(*(v60 - 8) + 16))(v63, v62, v60);
  v64 = v118;
  v65 = v107;
  (v111)(v55, v118, v107);
  *&v123 = MEMORY[0x1E69E7CC0];
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v116(v53, v54);
  v110(v55, v65);
  __swift_destroy_boxed_opaque_existential_1(&v126);
  v96 = 3 * v112;
  v66 = v28[33];
  v67 = v28[34];
  v68 = v65;
  v69 = __swift_project_boxed_opaque_existential_1Tm(v28 + 30, v66);
  v127 = v66;
  v128 = *(v67 + 8);
  v70 = __swift_allocate_boxed_opaque_existential_0(&v126);
  (*(*(v66 - 8) + 16))(v70, v69, v66);
  v71 = v68;
  v72 = v68;
  v73 = v111;
  (v111)(v55, v64, v72);
  *&v123 = MEMORY[0x1E69E7CC0];
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v116(v53, v54);
  v110(v55, v71);
  __swift_destroy_boxed_opaque_existential_1(&v126);
  v96 = 4 * v112;
  v74 = v28[38];
  v75 = v28[39];
  v76 = __swift_project_boxed_opaque_existential_1Tm(v28 + 35, v74);
  v127 = v74;
  v128 = *(v75 + 8);
  v77 = __swift_allocate_boxed_opaque_existential_0(&v126);
  (*(*(v74 - 8) + 16))(v77, v76, v74);
  v78 = v107;
  (v73)(v55, v118, v107);
  *&v123 = MEMORY[0x1E69E7CC0];
  sub_1E1AF6EEC();
  v79 = v96;
  sub_1E1AF186C();
  v116(v53, v54);
  v80 = v78;
  v81 = v110;
  v110(v55, v78);
  __swift_destroy_boxed_opaque_existential_1(&v126);
  v112 += v79;
  v82 = v28[43];
  v83 = v28[44];
  v84 = __swift_project_boxed_opaque_existential_1Tm(v28 + 40, v82);
  v127 = v82;
  v128 = *(v83 + 8);
  v85 = __swift_allocate_boxed_opaque_existential_0(&v126);
  (*(*(v82 - 8) + 16))(v85, v84, v82);
  (v111)(v55, v118, v80);
  *&v123 = MEMORY[0x1E69E7CC0];
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v116(v53, v54);
  v81(v55, v80);
  __swift_destroy_boxed_opaque_existential_1(&v126);
  sub_1E17284F8(v95);
  (*(v97 + 104))(v100, *MEMORY[0x1E69ABA28], v99);
  v127 = sub_1E1AF140C();
  v128 = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(&v126);
  sub_1E1AF13FC();
  v86 = v98;
  sub_1E1AF18CC();
  sub_1E1AF182C();
  return (*(v101 + 8))(v86, v102);
}

void sub_1E16B48B8(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v230 = a6;
  v221 = COERCE_DOUBLE(sub_1E1AF1D6C());
  v214 = *(*&v221 - 8);
  MEMORY[0x1EEE9AC00](*&v221);
  v218 = &v199 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_1E1AF111C();
  v216 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v204 = &v199 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  *&v227 = &v199 - v16;
  MEMORY[0x1EEE9AC00](v17);
  *&MinX = &v199 - v18;
  MEMORY[0x1EEE9AC00](v19);
  *&v206 = &v199 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v199 - v22;
  v219 = sub_1E1AF1CAC();
  v24 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v201 = &v199 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v212 = &v199 - v27;
  v215 = sub_1E1AF1CBC();
  v213 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v203 = &v199 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v224 = &v199 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v199 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v202 = &v199 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v209 = (&v199 - v37);
  v222 = sub_1E1AF745C();
  v38 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222 - 8);
  v211 = &v199 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v228 = &v199 - v41;
  sub_1E134FD1C(v7 + 160, &v237, &qword_1ECEB2AD0);
  v42 = MEMORY[0x1E69E7048];
  v43 = MEMORY[0x1E69E7040];
  v44 = MEMORY[0x1E69ABB80];
  v223 = a5;
  v207 = a2;
  v226 = *&v38;
  v205 = v24;
  v220 = a1;
  v229 = a4;
  if (!v238)
  {
    sub_1E1308058(&v237, &qword_1ECEB2AD0);
    goto LABEL_5;
  }

  v200 = v23;
  sub_1E1308EC0(&v237, &v240);
  __swift_project_boxed_opaque_existential_1Tm(&v240, v241);
  if (sub_1E1AF117C())
  {
    __swift_destroy_boxed_opaque_existential_1(&v240);
LABEL_5:
    v45 = *(v7 + 24);
    v46 = *(v7 + 32);
    v47 = __swift_project_boxed_opaque_existential_1Tm(v7, v45);
    v241 = v45;
    v242 = *(v46 + 8);
    v48 = __swift_allocate_boxed_opaque_existential_0(&v240);
    (*(*(v45 - 8) + 16))(v48, v47, v45);
    v49 = *(v7 + 104);
    v50 = *(v7 + 112);
    v51 = __swift_project_boxed_opaque_existential_1Tm((v7 + 80), v49);
    v238 = v49;
    v239 = *(v50 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v237);
    (*(*(v49 - 8) + 16))(boxed_opaque_existential_0, v51, v49);
    v53 = *v44;
    v209 = *(v24 + 104);
    v54 = v212;
    v209(v212, v53, v219);
    sub_1E1300B24(v7 + 368, &v234);
    sub_1E1300B24(v7 + 736, v233);
    v208 = v33;
    sub_1E1AF1C7C();
    v55 = MinX;
    sub_1E1AF1C9C();
    sub_1E1AF10EC();
    sub_1E1AF109C();
    v56 = v218;
    sub_1E1AF110C();
    sub_1E1AF1CFC();
    v202 = *(v214 + 8);
    (v202)(v56, *&v221);
    sub_1E1300B24(v7 + 40, &v240);
    v57 = *(v7 + 144);
    v58 = *(v7 + 152);
    v59 = __swift_project_boxed_opaque_existential_1Tm((v7 + 120), v57);
    v238 = v57;
    v239 = *(v58 + 8);
    v60 = __swift_allocate_boxed_opaque_existential_0(&v237);
    (*(*(v57 - 8) + 16))(v60, v59, v57);
    v209(v54, *MEMORY[0x1E69ABB78], v219);
    sub_1E1300B24(v7 + 408, &v234);
    sub_1E1300B24(v7 + 736, v233);
    v61 = v224;
    sub_1E1AF1C7C();
    v62 = v227;
    sub_1E1AF1C9C();
    sub_1E1AF110C();
    sub_1E1AF1D2C();
    v206 = v63;
    v64 = v221;
    v65 = v202;
    (v202)(v56, *&v221);
    sub_1E1AF10EC();
    sub_1E1AF109C();
    sub_1E1AF110C();
    sub_1E1AF1CFC();
    v65(v56, *&v64);
    v66 = *(v216 + 8);
    v67 = v62;
    v68 = v217;
    v66(*&v67, v217);
    v69 = *(v213 + 8);
    v70 = v61;
    v71 = v215;
    v69(v70, v215);
    v66(*&v55, v68);
    v69(v208, v71);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1Tm(v7, *(v7 + 24));
  v72 = v230;
  sub_1E1AF11CC();
  v224 = v73;
  v75 = v74;
  v243.origin.x = a3;
  v243.origin.y = a4;
  v243.size.width = a5;
  v243.size.height = v72;
  MinX = CGRectGetMinX(v243);
  v244.origin.x = a3;
  v244.origin.y = a4;
  v244.size.width = a5;
  v244.size.height = v72;
  CGRectGetMinY(v244);
  __swift_project_boxed_opaque_existential_1Tm((v7 + 368), *(v7 + 392));
  v227 = v75;
  sub_1E1AF12FC();
  __swift_project_boxed_opaque_existential_1Tm(v7, *(v7 + 24));
  sub_1E1AF6B1C();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v84 = *v42;
  v85 = *(v38 + 104);
  v86 = v228;
  v87 = v222;
  v85(v228, v84, v222);
  v88 = *v43;
  v89 = v211;
  v85(v211, v88, v87);
  CGPoint.rounded(_:)(v86, v77, v79);
  CGSize.rounded(_:)(v89, v81, v83);
  v90 = *(v38 + 8);
  v90(v89, v87);
  v90(v86, v87);
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm(v7, *(v7 + 24));
  sub_1E1AF115C();
  CGRectGetMaxY(v245);
  sub_1E1300B24(v7 + 40, &v237);
  v91 = *(v7 + 104);
  v92 = *(v7 + 112);
  v93 = __swift_project_boxed_opaque_existential_1Tm((v7 + 80), v91);
  v235 = v91;
  v236 = *(v92 + 8);
  v94 = __swift_allocate_boxed_opaque_existential_0(&v234);
  (*(*(v91 - 8) + 16))(v94, v93, v91);
  v95 = *MEMORY[0x1E69ABB78];
  v96 = *(v205 + 104);
  v97 = v219;
  v96(v212, v95, v219);
  sub_1E1300B24(v7 + 408, v233);
  sub_1E1300B24(v7 + 736, &v231);
  sub_1E1AF1C7C();
  sub_1E1AF1C9C();
  sub_1E1AF10EC();
  sub_1E1AF109C();
  v98 = v218;
  sub_1E1AF110C();
  sub_1E1AF1CFC();
  v99 = *(v214 + 8);
  v99(v98, *&v221);
  v100 = v241;
  v101 = v242;
  v102 = __swift_project_boxed_opaque_existential_1Tm(&v240, v241);
  v238 = v100;
  v239 = *(v101 + 8);
  v103 = __swift_allocate_boxed_opaque_existential_0(&v237);
  (*(*(v100 - 8) + 16))(v103, v102, v100);
  v104 = *(v7 + 144);
  v105 = *(v7 + 152);
  v106 = __swift_project_boxed_opaque_existential_1Tm((v7 + 120), v104);
  v235 = v104;
  v236 = *(v105 + 8);
  v107 = __swift_allocate_boxed_opaque_existential_0(&v234);
  (*(*(v104 - 8) + 16))(v107, v106, v104);
  v96(v201, v95, v97);
  sub_1E134FD1C(v7 + 856, &v231, &unk_1ECEB47F0);
  if (v232)
  {
    sub_1E1308EC0(&v231, v233);
    v108 = v206;
    v109 = v202;
  }

  else
  {
    sub_1E1300B24(v7 + 488, v233);
    v108 = v206;
    v109 = v202;
    if (v232)
    {
      sub_1E1308058(&v231, &unk_1ECEB47F0);
    }
  }

  sub_1E1300B24(v7 + 736, &v231);
  sub_1E1AF1C7C();
  v110 = v230;
  v111 = a4;
  v112 = v223;
  sub_1E1AF1C9C();
  v246.origin.x = a3;
  v246.origin.y = v111;
  v246.size.width = v112;
  v246.size.height = v110;
  v206 = v227 + CGRectGetMinY(v246);
  sub_1E1AF10EC();
  sub_1E1AF109C();
  v113 = v218;
  sub_1E1AF110C();
  sub_1E1AF1CFC();
  v99(v113, *&v221);
  v114 = *(v216 + 8);
  v115 = v217;
  v114(*&v108, v217);
  v116 = *(v213 + 8);
  v117 = v215;
  v116(v109, v215);
  v114(v200, v115);
  v116(v209, v117);
  __swift_destroy_boxed_opaque_existential_1(&v240);
LABEL_11:
  v209 = *(v7 + 64);
  v227 = *(v7 + 72);
  __swift_project_boxed_opaque_existential_1Tm((v7 + 40), v209);
  __swift_project_boxed_opaque_existential_1Tm((v7 + 40), *(v7 + 64));
  sub_1E1AF115C();
  v119 = v118;
  v121 = v120;
  v123 = v122;
  v125 = v124;
  LODWORD(MinX) = *MEMORY[0x1E69E7048];
  v126 = *&v226;
  v127 = *&v226 + 104;
  v128 = *(*&v226 + 104);
  v129 = v228;
  v130 = v222;
  v128(v228);
  LODWORD(v224) = *MEMORY[0x1E69E7040];
  v131 = v211;
  v128(v211);
  CGPoint.rounded(_:)(v129, v119, v121);
  CGSize.rounded(_:)(v131, v123, v125);
  v132 = *(v126 + 8);
  v132(v131, v130);
  v132(v129, v130);
  sub_1E1AF116C();
  v226 = *(v7 + 144);
  v209 = *(v7 + 152);
  v208 = __swift_project_boxed_opaque_existential_1Tm((v7 + 120), *&v226);
  __swift_project_boxed_opaque_existential_1Tm((v7 + 120), *(v7 + 144));
  sub_1E1AF115C();
  v134 = v133;
  v136 = v135;
  v138 = v137;
  v140 = v139;
  (v128)(v129, LODWORD(MinX), v130);
  (v128)(v131, v224, v130);
  CGPoint.rounded(_:)(v129, v134, v136);
  CGSize.rounded(_:)(v131, v138, v140);
  v141 = v131;
  v142 = v126 + 8;
  v132(v141, v130);
  v227 = *&v132;
  v132(v129, v130);
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm((v7 + 200), *(v7 + 224));
  v143 = v223;
  v144 = v230;
  sub_1E1AF11CC();
  v146 = v145;
  __swift_project_boxed_opaque_existential_1Tm((v7 + 528), *(v7 + 552));
  v226 = *&v146;
  sub_1E1AF12FC();
  v247.origin.x = a3;
  v147 = a3;
  v247.origin.y = v229;
  v247.size.width = v143;
  v247.size.height = v144;
  CGRectGetMinX(v247);
  __swift_project_boxed_opaque_existential_1Tm((v7 + 200), *(v7 + 224));
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm((v7 + 320), *(v7 + 344));
  LOBYTE(v130) = sub_1E1AF117C();
  __swift_project_boxed_opaque_existential_1Tm((v7 + 200), *(v7 + 224));
  sub_1E1AF115C();
  MaxY = CGRectGetMaxY(v248);
  v210 = a3;
  if (v130)
  {
    v149 = v229;
  }

  else
  {
    v150 = *(v7 + 264);
    v151 = *(v7 + 272);
    v152 = __swift_project_boxed_opaque_existential_1Tm((v7 + 240), v150);
    v241 = v150;
    v242 = *(v151 + 8);
    v153 = __swift_allocate_boxed_opaque_existential_0(&v240);
    (*(*(v150 - 8) + 16))(v153, v152, v150);
    v154 = *(v7 + 304);
    v155 = *(v7 + 312);
    v156 = __swift_project_boxed_opaque_existential_1Tm((v7 + 280), v154);
    v238 = v154;
    v239 = *(v155 + 8);
    v157 = __swift_allocate_boxed_opaque_existential_0(&v237);
    (*(*(v154 - 8) + 16))(v157, v156, v154);
    (*(v205 + 104))(v212, *MEMORY[0x1E69ABB80], v219);
    sub_1E1300B24(v7 + 616, &v234);
    sub_1E1300B24(v7 + 736, v233);
    v158 = v203;
    sub_1E1AF1C7C();
    v159 = v229;
    v160 = v204;
    v161 = v223;
    sub_1E1AF1C9C();
    __swift_project_boxed_opaque_existential_1Tm((v7 + 320), *(v7 + 344));
    sub_1E1AF11CC();
    v219 = v162;
    v226 = *&v163;
    v164 = v147;
    v166 = v165;
    sub_1E1AF10EC();
    sub_1E1AF109C();
    v167 = v218;
    sub_1E1AF110C();
    sub_1E1AF1CFC();
    (*(v214 + 8))(v167, COERCE_DOUBLE(*&v221));
    __swift_project_boxed_opaque_existential_1Tm((v7 + 696), *(v7 + 720));
    v226 = *&v166;
    sub_1E1AF12FC();
    v249.origin.x = v164;
    v249.origin.y = v159;
    v249.size.width = v161;
    v249.size.height = v230;
    CGRectGetMinX(v249);
    __swift_project_boxed_opaque_existential_1Tm((v7 + 320), *(v7 + 344));
    v149 = v159;
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_project_boxed_opaque_existential_1Tm((v7 + 320), *(v7 + 344));
    sub_1E1AF115C();
    MaxY = CGRectGetMaxY(v250);
    (*(v216 + 8))(v160, v217);
    v168 = v158;
    v142 = v126 + 8;
    v129 = v228;
    (*(v213 + 8))(v168, v215);
  }

  sub_1E134FD1C(v7 + 896, &v237, &unk_1ECEB47F0);
  v169 = v223;
  v170 = v226;
  if (!v238)
  {
    sub_1E1308058(&v237, &unk_1ECEB47F0);
    v171 = v210;
LABEL_26:
    v254.origin.x = v171;
    v254.origin.y = v149;
    v254.size.width = v169;
    v198 = v230;
    v254.size.height = v230;
    CGRectGetMinY(v254);
    __swift_project_boxed_opaque_existential_1Tm((v7 + 816), *(v7 + 840));
    sub_1E13BC274();
    sub_1E1AF12DC();
    (*&v227)(v129, v222);
    v255.origin.x = v171;
    v255.origin.y = v149;
    v255.size.width = v169;
    v255.size.height = v198;
    CGRectGetWidth(v255);
    sub_1E1AF107C();
    return;
  }

  sub_1E1308EC0(&v237, &v240);
  sub_1E134FD1C(v7 + 936, &v237, &unk_1ECEB47F0);
  v171 = v210;
  if (!v238)
  {
    sub_1E1308058(&v237, &unk_1ECEB47F0);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v237, v238);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v173 = v172;
  (*&v227)(v129, v222);
  __swift_destroy_boxed_opaque_existential_1(&v237);
  v174 = *(v7 + 360);
  if (!v174)
  {
    goto LABEL_25;
  }

  if (!*(v174 + 16))
  {
    goto LABEL_25;
  }

  v251.origin.x = v171;
  v251.origin.y = v149;
  v251.size.width = v169;
  v251.size.height = v230;
  v175 = CGRectGetMinX(v251);
  v176 = *(v174 + 16);
  if (!v176)
  {
    goto LABEL_25;
  }

  v177 = v175;
  v215 = v7;
  v221 = MaxY - v170;
  v217 = v174;
  v178 = v174 + 32;
  v219 = v127;
  v179 = v222;
  v226 = *&v142;
  v218 = v128;
  v216 = v176;
  v180 = v176;
  v181 = v211;
  do
  {
    sub_1E1300B24(v178, &v237);
    __swift_project_boxed_opaque_existential_1Tm(&v237, v238);
    sub_1E1AF11CC();
    v182 = v173;
    v184 = v183;
    v186 = v185;
    __swift_project_boxed_opaque_existential_1Tm(&v240, v241);
    sub_1E1AF12FC();
    v188 = v221 + v187;
    v189 = v228;
    v190 = v218;
    (v218)(v228, LODWORD(MinX), v179);
    v190(v181, v224, v179);
    v191 = CGPoint.rounded(_:)(v189, v177, v188);
    v193 = v192;
    v194 = CGSize.rounded(_:)(v181, v184, v186);
    v196 = v195;
    v197 = v227;
    (*&v227)(v181, v179);
    (*&v197)(v189, v179);
    __swift_project_boxed_opaque_existential_1Tm(&v237, v238);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(&v237);
    v252.origin.x = v191;
    v252.origin.y = v193;
    v252.size.width = v194;
    v173 = v182;
    v252.size.height = v196;
    v177 = floor(v182 + CGRectGetMaxX(v252));
    v178 += 40;
    --v180;
  }

  while (v180);
  v149 = v229;
  if (v216 <= *(v217 + 16))
  {
    sub_1E1300B24(v217 + 40 * v216 - 8, &v237);
    __swift_project_boxed_opaque_existential_1Tm(&v237, v238);
    sub_1E1AF115C();
    CGRectGetMaxY(v253);
    __swift_destroy_boxed_opaque_existential_1(&v237);
    v169 = v223;
    v7 = v215;
    v129 = v228;
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1(&v240);
    goto LABEL_26;
  }

  __break(1u);
}

uint64_t sub_1E16B64D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1E1308EC0(&v12, v10 + 40 * a1 + 32);
}

double _s11AppStoreKit19ProductReviewLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(void *a1, void *a2, double a3)
{
  v34 = sub_1E1AF162C();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1E1AF165C();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF1A1C();
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF745C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1 + 51, a1[54]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v16 = *(v12 + 8);
  v15 = (v12 + 8);
  v16(v14, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E1B04930;
  sub_1E1300B24(a1, v38);
  v18 = MEMORY[0x1E69ABA90];
  *(v17 + 56) = v9;
  *(v17 + 64) = v18;
  __swift_allocate_boxed_opaque_existential_0((v17 + 32));
  sub_1E1AF1A2C();
  sub_1E1300B24((a1 + 5), v38);
  *(v17 + 96) = v9;
  *(v17 + 104) = v18;
  __swift_allocate_boxed_opaque_existential_0((v17 + 72));
  sub_1E1AF1A2C();
  sub_1E1300B24((a1 + 20), v38);
  *(v17 + 136) = v9;
  *(v17 + 144) = v18;
  __swift_allocate_boxed_opaque_existential_0((v17 + 112));
  sub_1E1AF1A2C();
  sub_1E1300B24((a1 + 25), v38);
  if (__OFSUB__(a1[30], 1))
  {
    __break(1u);
LABEL_12:
    v17 = sub_1E172D4BC(0, *(v17 + 16) + 1, 1, v17);
    goto LABEL_6;
  }

  *(v17 + 176) = v9;
  *(v17 + 184) = v18;
  __swift_allocate_boxed_opaque_existential_0((v17 + 152));
  sub_1E1AF1A2C();
  sub_1E1300B24((a1 + 56), v38);
  *(v17 + 216) = v9;
  *(v17 + 224) = v18;
  __swift_allocate_boxed_opaque_existential_0((v17 + 192));
  sub_1E1AF1A2C();
  v39 = v17;
  v19 = [a2 traitCollection];
  v20 = sub_1E1AF698C();

  if (v20)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CD0;
    sub_1E1300B24((a1 + 10), v38);
    *(inited + 56) = v9;
    *(inited + 64) = v18;
    __swift_allocate_boxed_opaque_existential_0((inited + 32));
    sub_1E1AF1A2C();
    sub_1E1300B24((a1 + 15), v38);
    *(inited + 96) = v9;
    *(inited + 104) = v18;
    __swift_allocate_boxed_opaque_existential_0((inited + 72));
    sub_1E1AF1A2C();
    sub_1E172830C(inited);
  }

  sub_1E134FD1C((a1 + 66), &v35, &unk_1ECEB47F0);
  if (!v36)
  {
    sub_1E1308058(&v35, &unk_1ECEB47F0);
    goto LABEL_10;
  }

  sub_1E1308EC0(&v35, v38);
  sub_1E1300B24(v38, &v35);
  v15 = v28;
  sub_1E1AF1A2C();
  v17 = v39;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v22 = v29;
  v24 = *(v17 + 16);
  v23 = *(v17 + 24);
  if (v24 >= v23 >> 1)
  {
    v17 = sub_1E172D4BC((v23 > 1), v24 + 1, 1, v17);
  }

  __swift_destroy_boxed_opaque_existential_1(v38);
  v36 = v9;
  v37 = v18;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v35);
  (*(v22 + 16))(boxed_opaque_existential_0, v15, v9);
  *(v17 + 16) = v24 + 1;
  sub_1E1308EC0(&v35, v17 + 40 * v24 + 32);
  (*(v22 + 8))(v15, v9);
  v39 = v17;
LABEL_10:
  (*(v32 + 104))(v30, *MEMORY[0x1E69AB970], v34);
  sub_1E1AF163C();
  sub_1E1AF161C();
  (*(v31 + 8))(v8, v33);
  return a3;
}

unint64_t sub_1E16B6BCC()
{
  result = qword_1EE1EE968[0];
  if (!qword_1EE1EE968[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1EE968);
  }

  return result;
}

uint64_t sub_1E16B6C28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 976))
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

uint64_t sub_1E16B6C70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 968) = 0;
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
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 976) = 1;
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

    *(result + 976) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E16B6DC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 608))
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

uint64_t sub_1E16B6E10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 600) = 0;
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
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 608) = 1;
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

    *(result + 608) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ArcadeSeeAllGamesPageSegment.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v47 = a2;
  v44 = a3;
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v48 = a1;
  sub_1E1AF381C();
  v17 = sub_1E1AF37CC();
  v18 = *(v8 + 8);
  v19 = v16;
  v20 = v7;
  v22 = v21;
  v18(v19, v20);
  if (!v22)
  {
    v31 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v32 = 0x656C746974;
    v32[1] = 0xE500000000000000;
    v32[2] = &type metadata for ArcadeSeeAllGamesPageSegment;
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x1E69AB690], v31);
    swift_willThrow();
    (*(v5 + 8))(v47, v4);
    return (v18)(v48, v20);
  }

  v41 = v17;
  sub_1E1AF381C();
  v40 = sub_1E1AF37CC();
  v24 = v23;
  v18(v13, v20);
  if (!v24)
  {
    v34 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v35 = 25705;
    v35[1] = 0xE200000000000000;
    v35[2] = &type metadata for ArcadeSeeAllGamesPageSegment;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x1E69AB690], v34);
    swift_willThrow();
    (*(v5 + 8))(v47, v4);
    v18(v48, v20);
  }

  v42 = v24;
  v43 = v20;
  sub_1E1AF381C();
  v25 = v5;
  v26 = *(v5 + 16);
  v27 = v45;
  v28 = v47;
  v26(v45, v47, v4);
  type metadata accessor for ArcadeSeeAllGamesPageSegmentChangeAction();
  swift_allocObject();
  v29 = v46;
  v30 = ArcadeSeeAllGamesPageSegmentChangeAction.init(deserializing:using:)(v10, v27);
  if (v29)
  {
    (*(v25 + 8))(v28, v4);
    v18(v48, v43);
  }

  v36 = v30;
  (*(v25 + 8))(v28, v4);
  result = (v18)(v48, v43);
  v37 = v44;
  v38 = v41;
  v39 = v42;
  *v44 = v40;
  v37[1] = v39;
  v37[2] = v38;
  v37[3] = v22;
  v37[4] = v36;
  return result;
}

uint64_t ArcadeSeeAllGamesPageSegment.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArcadeSeeAllGamesPageSegment.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t makeModernAppStateController(deviceAppFetcher:updateRegistry:dataSources:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11[-v5];
  sub_1E1300B24(a1, v12);
  sub_1E1300B24(a2, v11);
  type metadata accessor for ModernAppStateController();
  v7 = swift_allocObject();

  sub_1E16B76B8(v12, v11);
  v8 = sub_1E1AF649C();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;

  sub_1E154AF74(0, 0, v6, &unk_1E1B27EC0, v9);

  return v7;
}

uint64_t sub_1E16B75F0()
{
  v0 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v0, qword_1ECEB79D0);
  v1 = __swift_project_value_buffer(v0, qword_1ECEB79D0);
  if (qword_1ECEB12A8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ECEBA3D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1E16B76B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v5 = sub_1E1AF2E3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v24 - v13;
  v26 = a2;
  sub_1E1300B24(a2, v28);
  sub_1E1AF2E1C();
  sub_1E1AF2E2C();

  v15 = *(v6 + 8);
  v15(v8, v5);
  if (qword_1EE1ED2A8 != -1)
  {
    swift_once();
  }

  v16 = (qword_1EE1ED2B0 + OBJC_IVAR____TtC11AppStoreKit21HostProcessIdentifier_hostBundleId);
  swift_beginAccess();
  v17 = v16[1];
  if (v17)
  {
    if (*v16 != 0xD000000000000016 || v17 != 0x80000001E1B6FA60)
    {
      sub_1E1AF74AC();
    }
  }

  else
  {
    v25 = v3;
    if (qword_1EE1ED2B8 != -1)
    {
      swift_once();
    }

    v19 = sub_1E1AF591C();
    v24[1] = __swift_project_value_buffer(v19, qword_1EE1ED2C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    v3 = v25;
  }

  sub_1E1AF2E0C();
  v15(v11, v5);
  sub_1E1AF2F2C();
  (*(v6 + 16))(v8, v14, v5);
  *(v3 + 16) = sub_1E1AF2EDC();
  v20 = v27;
  sub_1E1300B24(v27, v3 + 24);
  v21 = sub_1E15A1C18(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7A10);
  v22 = swift_allocObject();
  *(v22 + 24) = 0;

  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v20);
  v15(v14, v5);
  *(v22 + 16) = v21;

  *(v3 + 64) = v22;
  return v3;
}

uint64_t sub_1E16B7AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 80) = a4;
  sub_1E1AF389C();
  *(v4 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E16B7B54, 0, 0);
}

uint64_t sub_1E16B7B54()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E16B7BEC;

  return MEMORY[0x1EEDEC250]();
}

uint64_t sub_1E16B7BEC()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E16B7D28, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E16B7D28()
{
  if (qword_1ECEB12A8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1ECEBA3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  swift_getErrorValue();
  v3 = v0[6];
  v4 = v0[7];
  v0[5] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v3, v4);
  sub_1E1AF384C();
  sub_1E13E44F8((v0 + 2));
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E16B7F4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E130B5D8;

  return sub_1E16B7AC4(a1, v4, v5, v6);
}

uint64_t sub_1E16B8000(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-v6 - 8];
  if (sub_1E1AF2F1C())
  {
    return a1();
  }

  sub_1E1AF2EFC();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7A00);
  sub_1E16BE610();

  sub_1E1AF3CDC();
  sub_1E1AF3CFC();

  __swift_destroy_boxed_opaque_existential_1(v11);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E16B81A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  sub_1E1AF389C();
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E16B8234, 0, 0);
}

uint64_t sub_1E16B8234()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1E16B82D0;

  return MEMORY[0x1EEDEC258](1);
}

uint64_t sub_1E16B82D0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1E16B8458;
  }

  else
  {
    v2 = sub_1E16B83E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E16B83E4()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v1();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E16B8458()
{
  if (qword_1ECEB12A8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1ECEBA3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  swift_getErrorValue();
  v3 = v0[6];
  v4 = v0[7];
  v0[5] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v3, v4);
  sub_1E1AF384C();
  sub_1E13E44F8((v0 + 2));
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();

  v6 = v0[11];
  if (v6)
  {
    v6();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E16B8690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a7;
  v8[26] = a8;
  v8[23] = a5;
  v8[24] = a6;
  v8[22] = a4;
  sub_1E1AF389C();
  v8[27] = swift_task_alloc();
  v9 = sub_1E1AF2FAC();
  v8[28] = v9;
  v8[29] = *(v9 - 8);
  v8[30] = swift_task_alloc();
  sub_1E1AF31DC();
  v8[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E16B87B0, 0, 0);
}

uint64_t sub_1E16B87B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB79F8);
  v16 = sub_1E1AF2FDC();
  v15 = *(v16 - 8);
  v14 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E1B02CC0;
  AdamId.numberValue.getter();
  if (v2)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v4 = v0[23];
    v3 = v0[24];
    sub_1E1AF6FEC();

    MEMORY[0x1E68FECA0](v4, v3);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](0x5B2064496D616441, 0xE800000000000000);

    sub_1E16BE330();
    v5 = swift_allocError();
    *v6 = 0xD000000000000017;
    *(v6 + 8) = 0x80000001E1B6F8F0;
    *(v6 + 16) = 0;
    swift_willThrow();
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v7 = sub_1E1AF591C();
    __swift_project_value_buffer(v7, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v8 = v0[14];
    v9 = v0[15];
    v0[5] = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, v8, v9);
    sub_1E1AF385C();
    sub_1E13E44F8((v0 + 2));
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
  }

  (*(v0[29] + 104))(v0[30], *MEMORY[0x1E698B1A0], v0[28]);
  sub_1E1AF2F8C();
  v11 = sub_1E1498198(v1);
  v0[32] = v11;
  swift_setDeallocating();
  (*(v15 + 8))(v1 + v14, v16);
  swift_deallocClassInstance();
  v12 = swift_task_alloc();
  v0[33] = v12;
  *v12 = v0;
  v12[1] = sub_1E16B8C78;

  return MEMORY[0x1EEDEC218](v11, 0);
}

uint64_t sub_1E16B8C78()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1E16B8E20;
  }

  else
  {

    v2 = sub_1E16B8D94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E16B8D94()
{
  (*(v0 + 200))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E16B8E20()
{

  if (qword_1ECEB12A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = sub_1E1AF591C();
  __swift_project_value_buffer(v4, qword_1ECEBA3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  *(v0 + 72) = &type metadata for AdamId;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;

  sub_1E1AF384C();
  sub_1E13E44F8(v0 + 48);
  sub_1E1AF387C();
  swift_getErrorValue();
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  *(v0 + 104) = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 80));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v5, v6);
  sub_1E1AF384C();
  sub_1E13E44F8(v0 + 80);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();

  (*(v0 + 200))();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E16B90C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  sub_1E1AF389C();
  v6[25] = swift_task_alloc();
  v7 = sub_1E1AF2FAC();
  v6[26] = v7;
  v6[27] = *(v7 - 8);
  v6[28] = swift_task_alloc();
  sub_1E1AF31DC();
  v6[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E16B91E4, 0, 0);
}

uint64_t sub_1E16B91E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB79F8);
  v16 = sub_1E1AF2FDC();
  v15 = *(v16 - 8);
  v14 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E1B02CC0;
  AdamId.numberValue.getter();
  if (v2)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v4 = v0[23];
    v3 = v0[24];
    sub_1E1AF6FEC();

    MEMORY[0x1E68FECA0](v4, v3);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](0x5B2064496D616441, 0xE800000000000000);

    sub_1E16BE330();
    v5 = swift_allocError();
    *v6 = 0xD000000000000017;
    *(v6 + 8) = 0x80000001E1B6F8F0;
    *(v6 + 16) = 0;
    swift_willThrow();
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v7 = sub_1E1AF591C();
    __swift_project_value_buffer(v7, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v8 = v0[14];
    v9 = v0[15];
    v0[5] = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, v8, v9);
    sub_1E1AF385C();
    sub_1E13E44F8((v0 + 2));
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
  }

  (*(v0[27] + 104))(v0[28], *MEMORY[0x1E698B1A0], v0[26]);
  sub_1E1AF2F8C();
  v11 = sub_1E1498198(v1);
  v0[30] = v11;
  swift_setDeallocating();
  (*(v15 + 8))(v1 + v14, v16);
  swift_deallocClassInstance();
  v12 = swift_task_alloc();
  v0[31] = v12;
  *v12 = v0;
  v12[1] = sub_1E16B96AC;

  return MEMORY[0x1EEDEC218](v11, 1);
}

uint64_t sub_1E16B96AC()
{
  v2 = *v1;
  *(v2 + 256) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E16B9804, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E16B9804()
{

  if (qword_1ECEB12A8 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = v0[24];
  v3 = v0[23];
  v4 = sub_1E1AF591C();
  __swift_project_value_buffer(v4, qword_1ECEBA3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[9] = &type metadata for AdamId;
  v0[6] = v3;
  v0[7] = v2;

  sub_1E1AF384C();
  sub_1E13E44F8((v0 + 6));
  sub_1E1AF387C();
  swift_getErrorValue();
  v5 = v0[17];
  v6 = v0[18];
  v0[13] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 10);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v5, v6);
  sub_1E1AF384C();
  sub_1E13E44F8((v0 + 10));
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E16B9A9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E1AF315C();
  v45 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v44 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF2FAC();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v41 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF2FDC();
  v39 = *(v13 - 8);
  v40 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF316C();
  v37 = *(v16 - 8);
  v38 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v19 = a1[1];
  v36 = *(v2 + 16);
  v48 = v20;
  v49 = v19;
  AdamId.numberValue.getter();
  if (v21)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v48 = 0xD000000000000017;
    v49 = 0x80000001E1B6F8F0;
    v51 = 0x5B2064496D616441;
    v52 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v20, v19);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v51, v52);

    v22 = v48;
    v23 = v49;
    sub_1E16BE330();
    v24 = v12;
    v25 = swift_allocError();
    *v26 = v22;
    *(v26 + 8) = v23;
    *(v26 + 16) = 0;
    swift_willThrow();
    v33[1] = v24;
    v34 = v6;
    v35 = a2;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v27 = sub_1E1AF591C();
    __swift_project_value_buffer(v27, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v28 = v46;
    v29 = v47;
    v50 = v47;
    v30 = __swift_allocate_boxed_opaque_existential_0(&v48);
    (*(*(v29 - 8) + 16))(v30, v28, v29);
    sub_1E1AF385C();
    sub_1E13E44F8(&v48);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    a2 = v35;
    v6 = v34;
  }

  (*(v42 + 104))(v41, *MEMORY[0x1E698B1A0], v43);
  sub_1E1AF2F8C();
  v31 = v44;
  sub_1E1AF314C();
  sub_1E1AF2DBC();
  (*(v45 + 8))(v31, v6);
  (*(v39 + 8))(v15, v40);
  sub_1E196BCEC(a2);
  return (*(v37 + 8))(v18, v38);
}

uint64_t sub_1E16BA0EC()
{
  v1 = *(v0 + 64);

  os_unfair_lock_lock((v1 + 24));
  sub_1E16BE384((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

uint64_t sub_1E16BA168@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  if (*(*a1 + 16) && (v11 = sub_1E15A47D8(a2, a3), (v12 & 1) != 0))
  {
    *a5 = *(*(v10 + 56) + 8 * v11);
    a5[1] = &off_1F5C4AE80;
  }

  else
  {
    type metadata accessor for ModernAppStateMachine();
    v14 = swift_allocObject();
    v14[4] = a2;
    v14[5] = a3;
    v14[2] = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB79F0);
    v15 = swift_allocObject();
    *(v15 + 24) = 0;
    *(v15 + 16) = MEMORY[0x1E69E7CC0];
    v14[3] = v15;
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *a1;
    sub_1E159B978(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *a1 = v17;
    *a5 = v14;
    a5[1] = &off_1F5C4AE80;
  }

  return result;
}

uint64_t sub_1E16BA2AC(uint64_t *a1, char *a2)
{
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E1AF30FC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v39 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v40 = v30 - v10;
  v37 = sub_1E1AF2FAC();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v34 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v38 = sub_1E1AF2FDC();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  v17 = *(v2 + 16);
  v32 = *a2;
  v33 = v17;
  v43 = v15;
  v44 = v16;
  AdamId.numberValue.getter();
  if (v18)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v43 = 0xD000000000000017;
    v44 = 0x80000001E1B6F8F0;
    v46 = 0x5B2064496D616441;
    v47 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v15, v16);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v46, v47);

    v19 = v43;
    v20 = v44;
    sub_1E16BE330();
    v21 = swift_allocError();
    *v22 = v19;
    *(v22 + 8) = v20;
    *(v22 + 16) = 0;
    swift_willThrow();
    v31 = v6;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v23 = sub_1E1AF591C();
    v30[1] = __swift_project_value_buffer(v23, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v25 = v41;
    v24 = v42;
    v45 = v42;
    v26 = __swift_allocate_boxed_opaque_existential_0(&v43);
    (*(*(v24 - 8) + 16))(v26, v25, v24);
    sub_1E1AF385C();
    sub_1E13E44F8(&v43);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    v6 = v31;
  }

  (*(v35 + 104))(v34, *MEMORY[0x1E698B1A0], v37);
  sub_1E1AF2F8C();
  v27 = v39;
  (*(v7 + 104))(v39, **(&unk_1E870E708 + v32), v6);
  v28 = v40;
  (*(v7 + 32))(v40, v27, v6);
  sub_1E1AF2DEC();
  (*(v7 + 8))(v28, v6);
  return (*(v36 + 8))(v14, v38);
}

uint64_t sub_1E16BA8B4(uint64_t *a1, int a2)
{
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E1AF2FAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1E1AF2FDC();
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v14 = a1[1];
  v30 = *(v2 + 16);
  v35 = v15;
  v36 = v14;
  AdamId.numberValue.getter();
  if (v16)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v35 = 0xD000000000000017;
    v36 = 0x80000001E1B6F8F0;
    v38 = 0x5B2064496D616441;
    v39 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v15, v14);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v38, v39);

    v17 = v35;
    v18 = v36;
    sub_1E16BE330();
    v19 = swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v18;
    *(v20 + 16) = 0;
    swift_willThrow();
    v26 = v9;
    v27 = v7;
    v28 = v6;
    v29 = a2;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v21 = sub_1E1AF591C();
    __swift_project_value_buffer(v21, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v22 = v33;
    v23 = v34;
    v37 = v34;
    v24 = __swift_allocate_boxed_opaque_existential_0(&v35);
    (*(*(v23 - 8) + 16))(v24, v22, v23);
    sub_1E1AF385C();
    sub_1E13E44F8(&v35);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    v7 = v27;
    v6 = v28;
    v9 = v26;
  }

  (*(v7 + 104))(v9, *MEMORY[0x1E698B1A0], v6);
  sub_1E1AF2F8C();
  sub_1E1AF2DFC();
  return (*(v31 + 8))(v13, v32);
}

uint64_t sub_1E16BADA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  sub_1E1AF389C();
  v5[15] = swift_task_alloc();
  v7 = sub_1E1AF2FAC();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  sub_1E1AF31DC();
  v5[19] = swift_task_alloc();
  v8 = sub_1E1AF2FDC();
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  sub_1E1AF312C();
  v5[23] = swift_task_alloc();
  v9 = sub_1E1AF315C();
  v5[24] = v9;
  v5[25] = *(v9 - 8);
  v10 = swift_task_alloc();
  v11 = *a1;
  v12 = a1[1];
  v5[26] = v10;
  v5[27] = v11;
  v5[28] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1E16BAFAC, 0, 0);
}

uint64_t sub_1E16BAFAC()
{
  v0[9] = v0[11];

  v1 = sub_1E1AF742C();
  MEMORY[0x1E68FECA0](v1);

  sub_1E1AF311C();
  sub_1E1AF313C();
  AdamId.numberValue.getter();
  if (v2)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v4 = v0[27];
    v3 = v0[28];
    sub_1E1AF6FEC();

    MEMORY[0x1E68FECA0](v4, v3);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](0x5B2064496D616441, 0xE800000000000000);

    sub_1E16BE330();
    v5 = swift_allocError();
    *v6 = 0xD000000000000017;
    *(v6 + 8) = 0x80000001E1B6F8F0;
    *(v6 + 16) = 0;
    swift_willThrow();
    v7 = v0 + 2;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v8 = sub_1E1AF591C();
    __swift_project_value_buffer(v8, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v9 = v0[6];
    v10 = v0[7];
    v0[5] = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, v9, v10);
    sub_1E1AF385C();
    sub_1E13E44F8(v7);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
  }

  (*(v0[17] + 104))(v0[18], *MEMORY[0x1E698B1A0], v0[16]);
  sub_1E1AF2F8C();
  v12 = swift_task_alloc();
  v0[29] = v12;
  *v12 = v0;
  v12[1] = sub_1E16BB440;
  v13 = v0[26];
  v14 = v0[22];

  return MEMORY[0x1EEDEC288](v14, v13);
}

uint64_t sub_1E16BB440()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1E16BB598, 0, 0);
}

uint64_t sub_1E16BB598()
{
  (*(v0[25] + 8))(v0[26], v0[24]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E16BB658(uint64_t *a1, int a2)
{
  v3 = v2;
  v6 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1E1AF2FAC();
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v40 = sub_1E1AF2FDC();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = *a1;
  v16 = a1[1];
  v43 = *a1;
  v44 = v16;
  AdamId.numberValue.getter();
  if (v17)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v43 = 0xD000000000000017;
    v44 = 0x80000001E1B6F8F0;
    v46 = 0x5B2064496D616441;
    v47 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v15, v16);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v46, v47);

    v18 = v43;
    v19 = v44;
    sub_1E16BE330();
    v20 = swift_allocError();
    *v21 = v18;
    *(v21 + 8) = v19;
    *(v21 + 16) = 0;
    swift_willThrow();
    v34 = v7;
    v35 = v3;
    v36 = a2;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v22 = sub_1E1AF591C();
    v33 = __swift_project_value_buffer(v22, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v23 = v41;
    v24 = v42;
    v45 = v42;
    v25 = __swift_allocate_boxed_opaque_existential_0(&v43);
    (*(*(v24 - 8) + 16))(v25, v23, v24);
    sub_1E1AF385C();
    sub_1E13E44F8(&v43);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    LOBYTE(a2) = v36;
    v7 = v34;
  }

  v26 = v39;
  v27 = *(v39 + 104);
  v27(v9, *MEMORY[0x1E698B1A0], v7);
  sub_1E1AF2F8C();
  v27(v9, *MEMORY[0x1E698B198], v7);
  v28 = v37;
  sub_1E1AF2FCC();
  (*(v26 + 8))(v9, v7);
  v29 = sub_1E1AF2F0C();
  if (v29 & 1) == 0 && (a2)
  {
    v29 = sub_1E1AF2F0C();
  }

  v30 = *(v38 + 8);
  v31 = v40;
  v30(v28, v40);
  v30(v14, v31);
  return v29 & 1;
}

uint64_t sub_1E16BBBE8(uint64_t *a1, int a2)
{
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E1AF2FAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1E1AF2FDC();
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  v29 = *(v2 + 16);
  v35 = v14;
  v36 = v13;
  AdamId.numberValue.getter();
  if (v15)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v35 = 0xD000000000000017;
    v36 = 0x80000001E1B6F8F0;
    v38 = 0x5B2064496D616441;
    v39 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v14, v13);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v38, v39);

    v16 = v35;
    v17 = v36;
    sub_1E16BE330();
    v18 = swift_allocError();
    *v19 = v16;
    *(v19 + 8) = v17;
    *(v19 + 16) = 0;
    swift_willThrow();
    v26 = v7;
    v27 = v6;
    v28 = a2;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v20 = sub_1E1AF591C();
    __swift_project_value_buffer(v20, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v21 = v33;
    v22 = v34;
    v37 = v34;
    v23 = __swift_allocate_boxed_opaque_existential_0(&v35);
    (*(*(v22 - 8) + 16))(v23, v21, v22);
    sub_1E1AF385C();
    sub_1E13E44F8(&v35);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    v7 = v26;
    v6 = v27;
  }

  (*(v7 + 104))(v32, *MEMORY[0x1E698B1A0], v6);
  sub_1E1AF2F8C();
  v24 = sub_1E1AF2E7C();
  (*(v30 + 8))(v12, v31);
  return v24 & 1;
}

uint64_t sub_1E16BC0EC(uint64_t *a1)
{
  v2[22] = v1;
  sub_1E1AF389C();
  v2[23] = swift_task_alloc();
  v4 = sub_1E1AF2F3C();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v5 = sub_1E1AF2FAC();
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();
  v6 = sub_1E1AF2FDC();
  v2[30] = v6;
  v2[31] = *(v6 - 8);
  v2[32] = swift_task_alloc();
  v7 = sub_1E1AF31DC();
  v2[33] = v7;
  v2[34] = *(v7 - 8);
  v2[35] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a1;
  v10 = a1[1];
  v2[36] = v8;
  v2[37] = v9;
  v2[38] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1E16BC304, 0, 0);
}

uint64_t sub_1E16BC304()
{
  AdamId.numberValue.getter();
  if (v1)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v3 = v0[37];
    v2 = v0[38];
    sub_1E1AF6FEC();

    MEMORY[0x1E68FECA0](v3, v2);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](0x5B2064496D616441, 0xE800000000000000);

    sub_1E16BE330();
    v4 = swift_allocError();
    *v5 = 0xD000000000000017;
    *(v5 + 8) = 0x80000001E1B6F8F0;
    *(v5 + 16) = 0;
    swift_willThrow();
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v6 = sub_1E1AF591C();
    __swift_project_value_buffer(v6, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v7 = v0[14];
    v8 = v0[15];
    v0[5] = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
    sub_1E1AF385C();
    sub_1E13E44F8((v0 + 2));
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
  }

  v10 = v0[36];
  v11 = v0[34];
  v13 = v0[31];
  v12 = v0[32];
  v14 = v0[30];
  v15 = v0[25];
  v26 = v0[33];
  v27 = v0[26];
  v16 = v0[22];
  (*(v0[28] + 104))(v0[29], *MEMORY[0x1E698B1A0], v0[27]);
  sub_1E1AF2F8C();
  sub_1E1AF2F9C();
  (*(v13 + 8))(v12, v14);
  v17 = v16[6];
  v18 = v16[7];
  __swift_project_boxed_opaque_existential_1Tm(v16 + 3, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2520);
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1E1B02CC0;
  (*(v11 + 16))(v20 + v19, v10, v26);
  v21 = sub_1E1497240(v20);
  swift_setDeallocating();
  v22 = *(v11 + 8);
  v0[39] = v22;
  v0[40] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v20 + v19, v26);
  swift_deallocClassInstance();
  *v27 = v21;
  (*(v15 + 104))();
  v23 = swift_task_alloc();
  v0[41] = v23;
  *v23 = v0;
  v23[1] = sub_1E16BC808;
  v24 = v0[26];

  return MEMORY[0x1EEDEC2D0](v24, v17, v18);
}

uint64_t sub_1E16BC808(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[42] = a1;
  v4[43] = v1;

  (*(v3[25] + 8))(v3[26], v3[24]);
  if (v1)
  {
    v5 = sub_1E16BCB5C;
  }

  else
  {
    v5 = sub_1E16BC978;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E16BC978()
{
  v1 = *(v0 + 336);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  result = sub_1E1AF71CC();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E68FFD80](0, *(v0 + 336));
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 336) + 32);
  }

  v4 = [v3 bundleShortVersion];
  if (!v4)
  {
    v12 = [v3 bundleVersion];
    if (v12)
    {
      v13 = v12;
      v9 = sub_1E1AF5DFC();
      v11 = v14;

LABEL_14:
      (*(v0 + 312))(*(v0 + 288), *(v0 + 264));

      goto LABEL_15;
    }

LABEL_13:
    v9 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  v5 = *(v0 + 312);
  v6 = *(v0 + 288);
  v7 = *(v0 + 264);
  v8 = v4;
  v9 = sub_1E1AF5DFC();
  v11 = v10;

  v5(v6, v7);
LABEL_15:

  v15 = *(v0 + 8);

  return v15(v9, v11);
}

uint64_t sub_1E16BCB5C()
{
  if (qword_1ECEB0F88 != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v12 = v0[39];
  v2 = v0[37];
  v3 = v0[38];
  v10 = v0[33];
  v11 = v0[36];
  v4 = sub_1E1AF591C();
  __swift_project_value_buffer(v4, qword_1ECEB79D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[9] = &type metadata for AdamId;
  v0[6] = v2;
  v0[7] = v3;

  sub_1E1AF384C();
  sub_1E13E44F8((v0 + 6));
  sub_1E1AF387C();
  swift_getErrorValue();
  v5 = v0[17];
  v6 = v0[18];
  v0[13] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 10);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v5, v6);
  sub_1E1AF384C();
  sub_1E13E44F8((v0 + 10));
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();

  v12(v11, v10);

  v8 = v0[1];

  return v8(0, 0);
}

uint64_t sub_1E16BCE38(uint64_t *a1)
{
  v3 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1E1AF2FAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1E1AF2FDC();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  v29 = *(v1 + 16);
  v34 = v12;
  v35 = v13;
  AdamId.numberValue.getter();
  if (v14)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v34 = 0xD000000000000017;
    v35 = 0x80000001E1B6F8F0;
    v37 = 0x5B2064496D616441;
    v38 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v12, v13);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v37, v38);

    v15 = v34;
    v16 = v35;
    sub_1E16BE330();
    v17 = swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v16;
    *(v18 + 16) = 0;
    swift_willThrow();
    v26 = v7;
    v27 = v5;
    v28 = v4;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v19 = sub_1E1AF591C();
    __swift_project_value_buffer(v19, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v20 = v32;
    v21 = v33;
    v36 = v33;
    v22 = __swift_allocate_boxed_opaque_existential_0(&v34);
    (*(*(v21 - 8) + 16))(v22, v20, v21);
    sub_1E1AF385C();
    sub_1E13E44F8(&v34);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    v5 = v27;
    v4 = v28;
    v7 = v26;
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E698B1A0], v4);
  sub_1E1AF2F8C();
  v23 = sub_1E1AF2ECC();
  (*(v30 + 8))(v11, v31);
  return v23 & 1;
}

uint64_t sub_1E16BD31C(uint64_t *a1)
{
  v3 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1E1AF2FAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1E1AF2FDC();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  v28 = *(v1 + 16);
  v33 = v12;
  v34 = v13;
  AdamId.numberValue.getter();
  if (v14)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v33 = 0xD000000000000017;
    v34 = 0x80000001E1B6F8F0;
    v36 = 0x5B2064496D616441;
    v37 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v12, v13);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v36, v37);

    v15 = v33;
    v16 = v34;
    sub_1E16BE330();
    v17 = swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v16;
    *(v18 + 16) = 0;
    swift_willThrow();
    v25 = v7;
    v26 = v5;
    v27 = v4;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v19 = sub_1E1AF591C();
    __swift_project_value_buffer(v19, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v20 = v31;
    v21 = v32;
    v35 = v32;
    v22 = __swift_allocate_boxed_opaque_existential_0(&v33);
    (*(*(v21 - 8) + 16))(v22, v20, v21);
    sub_1E1AF385C();
    sub_1E13E44F8(&v33);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    v5 = v26;
    v4 = v27;
    v7 = v25;
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E698B1A0], v4);
  sub_1E1AF2F8C();
  sub_1E1AF2E8C();
  return (*(v29 + 8))(v11, v30);
}

uint64_t sub_1E16BD7F8(uint64_t *a1)
{
  v3 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1E1AF2FAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1E1AF2FDC();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  v28 = *(v1 + 16);
  v33 = v12;
  v34 = v13;
  AdamId.numberValue.getter();
  if (v14)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v33 = 0xD000000000000017;
    v34 = 0x80000001E1B6F8F0;
    v36 = 0x5B2064496D616441;
    v37 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v12, v13);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v36, v37);

    v15 = v33;
    v16 = v34;
    sub_1E16BE330();
    v17 = swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v16;
    *(v18 + 16) = 0;
    swift_willThrow();
    v25 = v7;
    v26 = v5;
    v27 = v4;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v19 = sub_1E1AF591C();
    __swift_project_value_buffer(v19, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v20 = v31;
    v21 = v32;
    v35 = v32;
    v22 = __swift_allocate_boxed_opaque_existential_0(&v33);
    (*(*(v21 - 8) + 16))(v22, v20, v21);
    sub_1E1AF385C();
    sub_1E13E44F8(&v33);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    v5 = v26;
    v4 = v27;
    v7 = v25;
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E698B1A0], v4);
  sub_1E1AF2F8C();
  sub_1E1AF2EAC();
  return (*(v29 + 8))(v11, v30);
}

uint64_t sub_1E16BDCD8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1E16BDD20()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_1E1AF649C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_1E154AF74(0, 0, v3, &unk_1E1B27F98, v5);
}

uint64_t sub_1E16BDE2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v11 = *a1;
  v10 = a1[1];
  v12 = sub_1E1AF649C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v3;
  v13[5] = v11;
  v13[6] = v10;
  v13[7] = a2;
  v13[8] = a3;

  sub_1E154AF74(0, 0, v9, &unk_1E1B27F80, v13);
}

uint64_t sub_1E16BDF6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_1E1AF649C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = a1;
  v10[6] = a2;

  sub_1E1300E34(a1);
  sub_1E154AF74(0, 0, v8, &unk_1E1B27F70, v10);
}

uint64_t sub_1E16BE098(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v7 = *a1;
  v6 = a1[1];
  v8 = sub_1E1AF649C();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;
  v9[5] = v7;
  v9[6] = v6;

  sub_1E154AF74(0, 0, v5, &unk_1E1B27F58, v9);
}

uint64_t sub_1E16BE1CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E130B5DC;

  return sub_1E16BADA0(a1, a2, a3, a4);
}

uint64_t sub_1E16BE290(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E1619E40;

  return sub_1E16BC0EC(a1);
}

unint64_t sub_1E16BE330()
{
  result = qword_1ECEB79E8;
  if (!qword_1ECEB79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB79E8);
  }

  return result;
}

uint64_t sub_1E16BE3A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E130B5DC;

  return sub_1E16B90C8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E16BE46C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E130B5D8;

  return sub_1E16B81A0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E16BE534(uint64_t a1)
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
  v11[1] = sub_1E130B5D8;

  return sub_1E16B8690(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1E16BE610()
{
  result = qword_1ECEB7A08;
  if (!qword_1ECEB7A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB7A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7A08);
  }

  return result;
}

uint64_t sub_1E16BE674()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1EE1F18B8);
  __swift_project_value_buffer(v4, qword_1EE1F18B8);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E16BE7C8()
{
  result = sub_1E1AF5DBC();
  qword_1ECEF4608 = result;
  return result;
}

uint64_t AccountDeviceList.__allocating_init(accountStore:bag:)(void *a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1E16C07FC(a1, a2);

  return v4;
}

uint64_t AccountDeviceList.init(accountStore:bag:)(void *a1, uint64_t a2)
{
  v3 = sub_1E16C07FC(a1, a2);

  return v3;
}

uint64_t sub_1E16BE8A4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  v5 = *(v3 + 40);
  *(v3 + 40) = v2;
  if ((v5 & 1) == 0)
  {
    if (v2)
    {
      return sub_1E16BEA28();
    }
  }

  return result;
}

uint64_t sub_1E16BE8F8(char a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 40);
  *(v1 + 40) = a1;
  if (v4 & 1) == 0 && (a1)
  {
    return sub_1E16BEA28();
  }

  return result;
}

void (*sub_1E16BE948(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 40);
  return sub_1E16BE9D4;
}

void sub_1E16BE9D4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(v2 + 40);
  *(v2 + 40) = v3;
  if ((v4 & 1) == 0 && v3)
  {
    sub_1E16BEA28();
  }

  free(v1);
}

uint64_t sub_1E16BEA28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_1E1AEFE6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1F18B0 != -1)
  {
    swift_once();
  }

  v7 = sub_1E1AF591C();
  v8 = __swift_project_value_buffer(v7, qword_1EE1F18B8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  v15 = v9;
  v10 = swift_allocObject();
  v14 = xmmword_1E1B02CC0;
  *(v10 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  v16 = v8;
  sub_1E1AF548C();

  v11 = [objc_opt_self() standardUserDefaults];
  sub_1E16BEDA0(v2);

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1E1308058(v2, &unk_1ECEBB780);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    sub_1E1AEFDFC();
    if (v12 > -86400.0)
    {
      *(swift_allocObject() + 16) = v14;
      sub_1E1AF382C();
      sub_1E1AF548C();

      return (*(v4 + 8))(v6, v3);
    }

    (*(v4 + 8))(v6, v3);
  }

  return sub_1E16BEF08();
}

uint64_t sub_1E16BEDA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF5DBC();
  v4 = [v1 objectForKey_];

  if (v4)
  {
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    goto LABEL_8;
  }

  sub_1E13006E4(0, &qword_1EE1E31F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 1;
    goto LABEL_9;
  }

  [v8 doubleValue];
  sub_1E1AEFD5C();

  v5 = 0;
LABEL_9:
  v6 = sub_1E1AEFE6C();
  return (*(*(v6 - 8) + 56))(a1, v5, 1, v6);
}

uint64_t sub_1E16BEF08()
{
  v1 = v0;
  v20 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v19 = &v19 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  if (qword_1EE1F18B0 != -1)
  {
    swift_once();
  }

  v8 = sub_1E1AF591C();
  v9 = __swift_project_value_buffer(v8, qword_1EE1F18B8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  v22 = v10;
  v11 = swift_allocObject();
  v21 = xmmword_1E1B02CC0;
  *(v11 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  v23 = v9;
  v24 = v8;
  sub_1E1AF548C();

  if (qword_1EE1E2FA8 != -1)
  {
    swift_once();
  }

  sub_1E1AF52FC();
  sub_1E1AF532C();
  (*(v5 + 8))(v7, v4);
  if (v25 == 1 && (swift_beginAccess(), *(v1 + 40) == 1) && (v12 = v1[4]) != 0)
  {
    v13 = sub_1E1AF649C();
    v14 = v19;
    (*(*(v13 - 8) + 56))(v19, 1, 1, v13);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v16 = v20;
    v15[4] = v12;
    v15[5] = v16;
    v17 = v12;
    sub_1E154AF74(0, 0, v14, &unk_1E1B28018, v15);
  }

  else
  {
    *(swift_allocObject() + 16) = v21;
    sub_1E1AF382C();
    sub_1E1AF548C();
  }
}

uint64_t sub_1E16BF390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[32] = a4;
  sub_1E1AF389C();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  v4[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E16BF464, 0, 0);
}

uint64_t sub_1E16BF464()
{
  if (qword_1EE1F18B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 256);
  v2 = sub_1E1AF591C();
  *(v0 + 288) = v2;
  *(v0 + 296) = __swift_project_value_buffer(v2, qword_1EE1F18B8);
  *(v0 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  v3 = *(sub_1E1AF38EC() - 8);
  *(v0 + 312) = *(v3 + 72);
  *(v0 + 344) = *(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  v4 = [objc_allocWithZone(MEMORY[0x1E698DD68]) init];
  *(v0 + 320) = v4;
  v5 = [v1 ams_altDSID];
  [v4 setAltDSID_];

  v17 = MEMORY[0x1E69E7CC0];
  sub_1E135C088(0, 1, 0);
  v6 = v17;
  v8 = *(v17 + 16);
  v7 = *(v17 + 24);
  if (v8 >= v7 >> 1)
  {
    sub_1E135C088((v7 > 1), v8 + 1, 1);
    v6 = v17;
  }

  *(v6 + 16) = v8 + 1;
  v9 = v6 + 16 * v8;
  *(v9 + 32) = 1397715576;
  *(v9 + 40) = 0xE400000000000000;
  v10 = sub_1E1AF620C();

  [v4 setOperatingSystems_];

  [v4 setIncludeUntrustedDevices_];
  v11 = [objc_allocWithZone(MEMORY[0x1E698DCC0]) init];
  *(v0 + 328) = v11;
  if (v11)
  {
    v12 = v11;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 232;
    *(v0 + 24) = sub_1E16BF8BC;
    v13 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7A18);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1E16BFFC8;
    *(v0 + 104) = &block_descriptor_48;
    *(v0 + 112) = v13;
    [v12 deviceListWithContext:v4 completion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v14 = *(v0 + 320);
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1E16BF8BC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 336) = v1;
  if (v1)
  {
    v2 = sub_1E16BFD34;
  }

  else
  {
    v2 = sub_1E16BF9CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E16BF9CC()
{
  v1 = *(v0 + 232);

  if (v1)
  {
    v2 = [v1 deviceList];
    if (v2)
    {
      v3 = v2;
      sub_1E13006E4(0, &qword_1EE1E3478);
      v4 = sub_1E1AF621C();

      if (v4 >> 62)
      {
        v5 = sub_1E1AF71CC();
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 = *(v0 + 280);
      sub_1E16C0660(v5 != 0);
      v7 = [objc_opt_self() standardUserDefaults];
      sub_1E1AEFE5C();
      v8 = sub_1E1AEFE6C();
      (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
      sub_1E16C0098(v6);

      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      if (v4 >> 62)
      {
        v9 = sub_1E1AF71CC();
      }

      else
      {
        v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = *(v0 + 320);
      v12 = *(v0 + 328);

      *(v0 + 200) = MEMORY[0x1E69E6530];
      *(v0 + 176) = v9;
      sub_1E1AF385C();
      sub_1E1308058(v0 + 176, &qword_1ECEB2DF0);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      sub_1E1AF548C();

      goto LABEL_12;
    }

    v10 = *(v0 + 328);
  }

  else
  {
  }

  v11 = *(v0 + 320);
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF54AC();

LABEL_12:

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1E16BFD34()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  swift_willThrow();

  _s3__C4CodeOMa_0(0);
  *(v0 + 240) = -14002;
  v4 = v1;
  sub_1E16C0A34();
  LOBYTE(v2) = sub_1E1AEF98C();

  if (v2)
  {

    sub_1E16C0660(0);
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();
  }

  else
  {
    v5 = *(v0 + 336);
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v6 = *(v0 + 208);
    v7 = *(v0 + 216);
    *(v0 + 168) = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 144));
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, v6, v7);
    sub_1E1AF385C();
    sub_1E1308058(v0 + 144, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1E16BFFC8(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1E16C0098(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1E1AEFE6C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1380BEC(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E1308058(v6, &unk_1ECEBB780);
    v11 = sub_1E1AF5DBC();
    [v2 removeObjectForKey_];

    return sub_1E1308058(a1, &unk_1ECEBB780);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_1E1AEFD6C();
    v14 = v13;
    v15 = sub_1E1AF5DBC();
    [v2 setDouble:v15 forKey:v14];

    sub_1E1308058(a1, &unk_1ECEBB780);
    return (*(v8 + 8))(v10, v7);
  }
}

void sub_1E16C02D0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v15 = v1;
  v3 = [v2 ams_activeiTunesAccount];
  v4 = *(v0 + 32);
  *(v0 + 32) = v3;
  v5 = v3;

  if (v5)
  {
    v6 = [v5 ams_altDSID];

    if (v6)
    {
      v7 = sub_1E1AF5DFC();
      v5 = v8;

      if (!v1)
      {
LABEL_10:
        v12 = 0;
        if (v5)
        {
          goto LABEL_11;
        }

LABEL_18:
        if (!v12)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v7 = 0;
      v5 = 0;
      if (!v1)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v7 = 0;
    if (!v1)
    {
      goto LABEL_10;
    }
  }

  v9 = [v15 ams_altDSID];
  if (v9)
  {
    v10 = v9;
    v1 = sub_1E1AF5DFC();
    v12 = v11;

    if (v5)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  v1 = 0;
  v12 = 0;
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (!v12)
  {
LABEL_19:

LABEL_20:
    if (qword_1EE1F18B0 != -1)
    {
      swift_once();
    }

    v13 = sub_1E1AF591C();
    __swift_project_value_buffer(v13, qword_1EE1F18B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    sub_1E16BEF08();
    goto LABEL_23;
  }

  if (v7 == v1 && v5 == v12)
  {

    return;
  }

  v14 = sub_1E1AF74AC();

  if ((v14 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_23:
}

uint64_t AccountDeviceList.deinit()
{

  return v0;
}

uint64_t AccountDeviceList.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1E16C0660(char a1)
{
  v1 = a1 & 1;
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = sub_1E1AF5DBC();
  v5 = [v3 BOOLForKey_];

  if (v5 != v1)
  {
    v6 = [v2 standardUserDefaults];
    v7 = sub_1E1AF5DBC();
    [v6 setBool:v1 forKey:v7];

    v8 = [objc_opt_self() defaultCenter];
    v9 = v8;
    if (qword_1ECEB0F98 != -1)
    {
      swift_once();
      v8 = v9;
    }

    [v8 postNotificationName:qword_1ECEF4608 object:0];
  }
}

uint64_t sub_1E16C07FC(void *a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 16) = a1;
  v3 = a1;

  v4 = [v3 ams_activeiTunesAccount];
  v5 = *(v2 + 32);
  *(v2 + 32) = v4;

  v6 = [objc_opt_self() defaultCenter];
  [v6 addObserver:v2 selector:sel_storeAccountDidChange name:*MEMORY[0x1E69597D8] object:v3];

  return v2;
}

uint64_t sub_1E16C0974(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E130B5DC;

  return sub_1E16BF390(a1, v4, v5, v6);
}

unint64_t sub_1E16C0A34()
{
  result = qword_1EE1D24D0;
  if (!qword_1EE1D24D0)
  {
    _s3__C4CodeOMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D24D0);
  }

  return result;
}

uint64_t sub_1E16C0ACC(void *a1)
{
  type metadata accessor for VideoPlaybackCoordinator();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v2 = v20[0];
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3 && a1)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 16);
    v7 = a1;
    v8 = v6(ObjectType, v4);
    v10 = v9;
    v11 = *(v4 + 8);
    v12 = v7;
    sub_1E14105C4(v8, v10, v7, v11);
  }

  v19 = a1;
  sub_1E13E71B4();
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7A20);
  if (swift_dynamicCast())
  {
    sub_1E1308EC0(v17, v20);
    v14 = v21;
    v15 = v22;
    __swift_project_boxed_opaque_existential_1Tm(v20, v21);
    (*(v15 + 8))(v2, v14, v15);

    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {

    v18 = 0;
    memset(v17, 0, sizeof(v17));
    return sub_1E16C0ED4(v17);
  }
}

uint64_t sub_1E16C0C80(void *a1)
{
  type metadata accessor for VideoPlaybackCoordinator();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v2 = v20[0];
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3 && a1)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 16);
    v7 = a1;
    v8 = v6(ObjectType, v4);
    v10 = v9;
    v11 = *(v4 + 8);
    v12 = v7;
    sub_1E1410ADC(v8, v10, v7, v11, 0, 1);
  }

  v19 = a1;
  sub_1E13E71B4();
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7A20);
  if (swift_dynamicCast())
  {
    sub_1E1308EC0(v17, v20);
    v14 = v21;
    v15 = v22;
    __swift_project_boxed_opaque_existential_1Tm(v20, v21);
    (*(v15 + 16))(v2, v14, v15);

    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {

    v18 = 0;
    memset(v17, 0, sizeof(v17));
    return sub_1E16C0ED4(v17);
  }
}

uint64_t sub_1E16C0ED4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7A28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UserNotificationsAuthorizationAction.__allocating_init()()
{
  v0 = sub_1E1AEFEAC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_1E1AF3DFC();
  v5 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v6 = sub_1E1AF46DC();
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  v7 = (v4 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v7 = 0u;
  v7[1] = 0u;
  v8 = v4 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v18, &v15);
  if (*(&v16 + 1))
  {
    v9 = v16;
    *v8 = v15;
    *(v8 + 16) = v9;
    *(v8 + 32) = v17;
  }

  else
  {
    sub_1E1AEFE9C();
    v10 = sub_1E1AEFE7C();
    v12 = v11;
    (*(v1 + 8))(v3, v0);
    v14[1] = v10;
    v14[2] = v12;
    sub_1E1AF6F6C();
    sub_1E1308058(&v15, &unk_1ECEB5670);
  }

  sub_1E1308058(v18, &unk_1ECEB5670);
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  return v4;
}

uint64_t UserNotificationsAuthorizationAction.init()()
{
  v1 = v0;
  v2 = sub_1E1AEFEAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v21 - v7;
  v9 = sub_1E1AF3E1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_1E1AF3DFC();
  v13 = sub_1E1AF46DC();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = (v1 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v14 = 0u;
  v14[1] = 0u;
  sub_1E138853C(v28, &v22);
  if (*(&v23 + 1))
  {
    v25 = v22;
    v26 = v23;
    v27 = v24;
  }

  else
  {
    sub_1E1AEFE9C();
    v15 = sub_1E1AEFE7C();
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    v21[1] = v15;
    v21[2] = v17;
    sub_1E1AF6F6C();
    sub_1E1308058(&v22, &unk_1ECEB5670);
  }

  sub_1E1308058(v28, &unk_1ECEB5670);
  v18 = v1 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v18 + 32) = v27;
  v19 = v26;
  *v18 = v25;
  *(v18 + 16) = v19;
  sub_1E134B7C8(v8, v1 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  (*(v10 + 32))(v1 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v12, v9);
  return v1;
}

uint64_t UserNotificationsAuthorizationAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);
  return v0;
}

uint64_t UserNotificationsAuthorizationAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UserNotificationsAuthorizationAction()
{
  result = qword_1EE1E6C68;
  if (!qword_1EE1E6C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EditorsChoiceLayout.init(metrics:badgeView:titleView:bodyView:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 192);
  v9 = *(a1 + 208);
  v10 = (a5 + 120);
  v11 = *(a1 + 160);
  v10[11] = *(a1 + 176);
  v10[12] = v8;
  v10[13] = v9;
  v12 = *(a1 + 96);
  *(a5 + 232) = *(a1 + 112);
  v13 = *(a1 + 144);
  *(a5 + 248) = *(a1 + 128);
  v10[9] = v13;
  v10[10] = v11;
  v14 = *(a1 + 32);
  *(a5 + 168) = *(a1 + 48);
  v15 = *(a1 + 80);
  *(a5 + 184) = *(a1 + 64);
  *(a5 + 200) = v15;
  *(a5 + 216) = v12;
  v16 = *(a1 + 16);
  *(a5 + 120) = *a1;
  *(a5 + 136) = v16;
  *(a5 + 344) = *(a1 + 224);
  *(a5 + 152) = v14;
  sub_1E1308EC0(a2, a5);
  sub_1E1308EC0(a3, a5 + 40);

  return sub_1E1308EC0(a4, a5 + 80);
}

uint64_t EditorsChoiceLayout.Metrics.init(badgeTopSpace:badgeBottomSpace:titleTopSpace:titleBottomSpace:bodyBottomSpace:marginInsets:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, double *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  sub_1E1308EC0(a1, a6);
  sub_1E1308EC0(a2, (a6 + 5));
  sub_1E1308EC0(a3, (a6 + 10));
  sub_1E1308EC0(a4, (a6 + 15));
  result = sub_1E1308EC0(a5, (a6 + 20));
  a6[25] = a7;
  a6[26] = a8;
  a6[27] = a9;
  a6[28] = a10;
  return result;
}

uint64_t EditorsChoiceLayout.Metrics.badgeTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t EditorsChoiceLayout.Metrics.badgeBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t EditorsChoiceLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_1E1308EC0(a1, v1 + 80);
}

uint64_t EditorsChoiceLayout.Metrics.titleBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 120);

  return sub_1E1308EC0(a1, v1 + 120);
}

uint64_t EditorsChoiceLayout.Metrics.bodyBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 160);

  return sub_1E1308EC0(a1, v1 + 160);
}

void EditorsChoiceLayout.Metrics.marginInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[25] = a1;
  v4[26] = a2;
  v4[27] = a3;
  v4[28] = a4;
}

__n128 EditorsChoiceLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v2;
  *(a2 + 224) = *(a1 + 224);
  v3 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v3;
  v4 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v4;
  v5 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v5;
  v6 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v6;
  v7 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v7;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

__n128 sub_1E16C1C10@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v2;
  *(a2 + 224) = *(a1 + 224);
  v3 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v3;
  v4 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v4;
  v5 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v5;
  v6 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v6;
  v7 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v7;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

double EditorsChoiceLayout.measurements(fitting:in:)(double a1)
{
  v17 = sub_1E1AF745C();
  v3 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF6B5C();
  __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
  v6 = sub_1E1AF117C();
  v7 = 15;
  if (v6)
  {
    v7 = 25;
  }

  v8 = 18;
  if (v6)
  {
    v8 = 28;
  }

  v9 = 160;
  if (v6)
  {
    v9 = 240;
  }

  v16 = v9;
  v10 = 184;
  if (v6)
  {
    v10 = 264;
  }

  v15 = v10;
  __swift_project_boxed_opaque_existential_1Tm(&v1[v7], v1[v8]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v11 = *(v3 + 8);
  v12 = v17;
  v11(v5, v17);
  __swift_project_boxed_opaque_existential_1Tm((v1 + v16), *(v1 + v15));
  sub_1E13BC274();
  sub_1E1AF12DC();
  v11(v5, v12);
  __swift_project_boxed_opaque_existential_1Tm(v1 + 10, v1[13]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v1 + 35, v1[38]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v11(v5, v12);
  return a1;
}

uint64_t EditorsChoiceLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v52 = a1;
  v55 = sub_1E1AF1D6C();
  v51 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v42 - v12;
  v13 = sub_1E1AF745C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a2;
  v54 = a3;
  v49 = a4;
  v50 = a5;
  sub_1E1AF6B0C();
  v18 = v17;
  v20 = v19;
  v56 = v21;
  v23 = v22;
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  v24 = sub_1E1AF117C();
  v25 = (v14 + 8);
  v45 = v20;
  v46 = v18;
  if (v24)
  {
    __swift_project_boxed_opaque_existential_1Tm(v5 + 25, v5[28]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v27 = v26;
    v28 = *v25;
    (*v25)(v16, v13);
    __swift_project_boxed_opaque_existential_1Tm(v5 + 30, v5[33]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v43 = v29;
    v28(v16, v13);
    __swift_project_boxed_opaque_existential_1Tm(v5 + 5, v5[8]);
    v30 = v56;
    sub_1E1AF11CC();
    __swift_project_boxed_opaque_existential_1Tm(v5 + 5, v5[8]);
    v57.origin.x = v18;
    v57.origin.y = v20;
    v57.size.width = v30;
    v31 = v23;
    v57.size.height = v23;
    CGRectGetMinX(v57);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v5 + 15, v5[18]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v27 = v32;
    v28 = *v25;
    (*v25)(v16, v13);
    __swift_project_boxed_opaque_existential_1Tm(v5 + 20, v5[23]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v43 = v33;
    v28(v16, v13);
    __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
    v34 = v56;
    sub_1E1AF11CC();
    v36 = v35;
    v58.origin.x = v18;
    v58.origin.y = v20;
    v58.size.width = v34;
    v31 = v23;
    v58.size.height = v23;
    floor(CGRectGetMidX(v58) + v36 * -0.5);
    __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  }

  sub_1E1AF116C();
  v44 = v27;
  __swift_project_boxed_opaque_existential_1Tm(v5 + 10, v5[13]);
  v37 = v56;
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v5 + 10, v5[13]);
  v59.origin.y = v45;
  v59.origin.x = v46;
  v59.size.width = v37;
  v59.size.height = v31;
  CGRectGetMinX(v59);
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm(v5 + 35, v5[38]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v28(v16, v13);
  v60.origin.x = v53;
  v60.origin.y = v54;
  v60.size.width = v49;
  v60.size.height = v50;
  CGRectGetWidth(v60);
  v38 = v47;
  sub_1E1AF1D4C();
  v39 = v51;
  v40 = v55;
  (*(v51 + 16))(v48, v38, v55);
  sub_1E1AF10CC();
  return (*(v39 + 8))(v38, v40);
}

uint64_t AppPromotionDetailPagePresenter.__allocating_init(objectGraph:appPromotionDetailPage:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1E16C2BC4(a1, a2);

  return v4;
}

uint64_t AppPromotionDetailPagePresenter.init(objectGraph:appPromotionDetailPage:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E16C2BC4(a1, a2);

  return v2;
}

uint64_t sub_1E16C26A0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E16C270C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E1363018;
}

uint64_t sub_1E16C27AC()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = qword_1EE1EC290;

    if (v3 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_1EE1EC298;
    v5 = v2 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime;
    swift_beginAccess();
    *v5 = v4;
    *(v5 + 8) = 0;
    v6 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime);
    swift_beginAccess();
    *(v6 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }
  }

  v7 = v1 + OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(*(v1 + OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_appPromotionDetailPage), ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E16C2950()
{
  type metadata accessor for ContingentOfferDetailPage();
  if (swift_dynamicCastClass())
  {
  }

  type metadata accessor for OfferItemDetailPage();
  result = swift_dynamicCastClass();
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E16C29E0()
{
  v1 = v0 + OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(*(v0 + OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_appPromotionDetailPage), ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E16C2AA8()
{
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_view);
}

uint64_t AppPromotionDetailPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_view);

  return v0;
}

uint64_t AppPromotionDetailPagePresenter.__deallocating_deinit()
{
  BasePresenter.deinit();
  v0 = OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_view;

  sub_1E1337DEC(v1 + v0);

  return swift_deallocClassInstance();
}

uint64_t sub_1E16C2BC4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_appPromotionDetailPage) = a2;

  v5 = sub_1E138C578(a1, 0, 0, 0);
  v7[3] = type metadata accessor for AppPromotionDetailPage();
  v7[4] = &protocol witness table for BasePage;
  v7[5] = sub_1E16C2E6C();
  v7[0] = a2;
  swift_beginAccess();

  sub_1E13891EC(v7, v5 + 40);
  swift_endAccess();
  sub_1E138B568();

  sub_1E14A07C4(v7);
  return v5;
}

uint64_t type metadata accessor for AppPromotionDetailPagePresenter()
{
  result = qword_1ECEB7A38;
  if (!qword_1ECEB7A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E16C2E6C()
{
  result = qword_1ECEB7A48;
  if (!qword_1ECEB7A48)
  {
    type metadata accessor for AppPromotionDetailPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7A48);
  }

  return result;
}

double PaginatedPagePresenterState.nextPage.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_1E136073C(v1, v5);
  if (v7)
  {
    sub_1E1301CF0(v5, a1);
  }

  else
  {

    result = *v5;
    v4 = v5[1];
    *a1 = v5[0];
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_1E16C2F3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E16C2F78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E16C2FC4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t Copyable.copyWithOverrides(in:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00]();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v4);
  (*(a3 + 8))(v10, a2, a3);
  return a1(a4);
}

uint64_t sub_1E16C3118(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1E13006E4(0, &qword_1EE1E32C0);
    v4 = sub_1E1AF621C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t DeviceAppStateDataSource.Store.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

char *DeviceAppStateDataSource.init(for:isBetaAppsDataSource:)(char *a1, char a2)
{
  v3 = v2;
  v6 = sub_1E1AF68DC();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v36 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35[4] = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF68AC();
  v35[1] = *(v10 - 8);
  v35[2] = v10;
  MEMORY[0x1EEE9AC00](v10);
  v35[3] = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF58EC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[0] = sub_1E1AF591C();
  v16 = *(v35[0] - 8);
  MEMORY[0x1EEE9AC00](v35[0]);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  *&v3[OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_expectedAppStates] = MEMORY[0x1E69E7CC8];
  *&v3[OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_previouslyInstalledLibraryItems] = 0;
  v20 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_availableUpdatesCache;
  v21 = MEMORY[0x1E69E7CC0];
  *&v3[v20] = sub_1E15A1C2C(MEMORY[0x1E69E7CC0]);
  v22 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_greenTeaLogger;
  *&v3[v22] = [objc_allocWithZone(ASKGreenTeaLogger) init];
  v23 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_adamIdsByBundleId;
  *&v3[v23] = sub_1E159F67C(v21);
  v24 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_betaAppBundleVersions;
  *&v3[v24] = sub_1E15A1D48(v21);
  v3[OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_store] = v19;
  v3[OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_isBetaAppsDataSource] = a2;
  v25 = objc_opt_self();
  if ((a2 & 1) == 0)
  {
    v29 = [v25 queryForStoreApps];
    *&v3[OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_appQuery] = v29;
    v28 = &enum case for PaginatedPagePresenterState.preparingNextPage(_:);
    v27 = 0xD000000000000018;
    if (qword_1EE1E3588 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v26 = [v25 queryForBetaApps];
  *&v3[OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_appQuery] = v26;
  v27 = 0xD000000000000021;
  v28 = "appPromotionDetailPage";
  if (qword_1EE1E3588 != -1)
  {
LABEL_3:
    swift_once();
  }

LABEL_5:
  v30 = __swift_project_value_buffer(v12, qword_1EE2160F8);
  (*(v13 + 16))(v15, v30, v12);
  sub_1E1AF590C();
  (*(v16 + 32))(&v3[OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_logger], v18, v35[0]);
  sub_1E13006E4(0, &qword_1EE1E3430);
  v40 = v27;
  v41 = v28 | 0x8000000000000000;
  MEMORY[0x1E68FECA0](0x517373656363612ELL, 0xEC00000065756575);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF689C();
  v40 = v31;
  sub_1E1557114(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  sub_1E1AF322C();
  (*(v37 + 104))(v36, *MEMORY[0x1E69E8090], v38);
  *&v3[OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_accessQueue] = sub_1E1AF692C();
  v32 = type metadata accessor for DeviceAppStateDataSource();
  v39.receiver = v3;
  v39.super_class = v32;
  v33 = objc_msgSendSuper2(&v39, sel_init);
  [*&v33[OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_appQuery] setObserver_];
  return v33;
}

uint64_t sub_1E16C3914(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E16C3980(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E16C3A20;
}

uint64_t sub_1E16C3A34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1E16C3AE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1E16C3B9C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v171 = MEMORY[0x1E69E7CD0];
  if (a1 >> 62)
  {
    goto LABEL_114;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v133 = a2;
    if (v5)
    {
      break;
    }

    v92 = MEMORY[0x1E69E7CD0];
LABEL_95:
    v93 = sub_1E16C5004(v92, a4);

    swift_beginAccess();

    sub_1E19B5A4C(v94);
    a1 = swift_endAccess();
    v95 = 0;
    a2 = v93 + 56;
    v96 = 1 << *(v93 + 32);
    v97 = -1;
    if (v96 < 64)
    {
      v97 = ~(-1 << v96);
    }

    v98 = v97 & *(v93 + 56);
    v99 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_availableUpdatesCache;
    v100 = (v96 + 63) >> 6;
    v135 = v93;
    while (v98)
    {
LABEL_105:
      v102 = (*(v93 + 48) + ((v95 << 10) | (16 * __clz(__rbit64(v98)))));
      v103 = *v102;
      v104 = v102[1];
      swift_beginAccess();

      v105 = sub_1E15A47D8(v103, v104);
      if (v106)
      {
        v107 = v105;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v109 = *(v133 + v99);
        *v166 = v109;
        *(v133 + v99) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1E141A338();
          v109 = *v166;
        }

        sub_1E1414BE0(v107, v109);
        *(v133 + v99) = v109;
        v93 = v135;
      }

      v98 &= v98 - 1;
      swift_endAccess();
    }

    while (1)
    {
      v101 = v95 + 1;
      if (__OFADD__(v95, 1))
      {
        break;
      }

      if (v101 >= v100)
      {
      }

      v98 = *(a2 + 8 * v101);
      ++v95;
      if (v98)
      {
        v95 = v101;
        goto LABEL_105;
      }
    }

    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    v111 = a1;
    v112 = a4;
    v113 = sub_1E1AF71CC();
    a4 = v112;
    v5 = v113;
    a1 = v111;
  }

  v116 = a4;
  v120 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_betaAppBundleVersions;
  v128 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_isBetaAppsDataSource;
  v118 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_store;
  v131 = a1 & 0xC000000000000001;
  v132 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_adamIdsByBundleId;
  v6 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_expectedAppStates;
  v7 = a1;
  v124 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_availableUpdatesCache;
  swift_beginAccess();
  v126 = v6;
  a1 = swift_beginAccess();
  v8 = v7;
  v9 = 0;
  v123 = v7 & 0xFFFFFFFFFFFFFF8;
  v10 = &selRef_remoteDownloadIdentifiersDidChange_;
  v11 = &selRef_addPayment_;
  v129 = v5;
  v130 = v7;
  while (1)
  {
    if (v131)
    {
      a1 = MEMORY[0x1E68FFD80](v9, v8);
    }

    else
    {
      if (v9 >= *(v123 + 16))
      {
        goto LABEL_112;
      }

      a1 = *(v8 + 8 * v9 + 32);
    }

    v12 = a1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_110;
    }

    v134 = v9 + 1;
    if ([a1 v10[69]])
    {
      break;
    }

LABEL_36:
    if ([v12 v11[158]] == *(a2 + v128))
    {
      if ([v12 isFamilyShared] && (objc_msgSend(v12, sel_isOpenable) & 1) == 0 && (objc_msgSend(v12, sel_isUpdateAvailable) & 1) == 0)
      {
        v45 = [v12 progress];
        if (!v45)
        {
          goto LABEL_5;
        }
      }

      if ([v12 isInstalled])
      {
        goto LABEL_45;
      }

      v46 = [v12 progress];
      if (v46)
      {

LABEL_45:
        *&v151 = [v12 v10[69]];
        v47 = sub_1E1AF742C();
        v49 = v48;

        sub_1E18943C0(&v151, v47, v49);

        v50 = *(a2 + v124);
        if (*(v50 + 16))
        {

          v51 = sub_1E15A47D8(v47, v49);
          if (v52)
          {
            v53 = *(*(v50 + 56) + 24 * v51);

            v54 = [v12 storeExternalVersionID] < v53;
          }

          else
          {

            v54 = 0;
          }
        }

        else
        {
          v54 = 0;
        }

        sub_1E16C4A64(v12, v54, &v151);
        v168 = v151;
        v169 = v152;
        v170 = v153;
        if ((v154 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
        {
          if (([v12 isUpdateAvailable] & 1) != 0 && (v55 = objc_msgSend(v12, sel_updateBuyParams)) != 0)
          {
            v56 = v55;
            v57 = sub_1E1AF5DFC();
            v59 = v58;

            if ([v12 v11[158]])
            {

              goto LABEL_55;
            }

            v64 = v115 & 0x101 | 0x2000000000000000;
            *v166 = v57;
            *&v166[8] = v59;
            v115 &= 0x101u;
LABEL_64:
            *&v167 = v64;
          }

          else
          {
LABEL_55:
            if ([v12 hasMessagesExtension] && (*(a2 + v118) == 1 || objc_msgSend(v12, sel_isLaunchProhibited)))
            {
              v60 = [v12 storeExternalVersionID];
              v61 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
              *v166 = 1;
              *&v166[8] = v61;
              v119 = v119 & 0x101 | 0x7000000000000000;
              *&v167 = v119;
            }

            else
            {
              if (![v12 isLaunchProhibited])
              {
                v62 = [v12 storeExternalVersionID];
                v63 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
                v64 = v117 & 0x101 | 0x7000000000000000;
                *v166 = 0;
                *&v166[8] = v63;
                v117 &= 0x101u;
                goto LABEL_64;
              }

              *v166 = 1;
              memset(&v166[8], 0, 40);
              v167 = xmmword_1E1B11BA0;
            }
          }
        }

        else
        {
          *v166 = v168;
          *&v166[16] = v169;
          *&v166[32] = v170;
          v167 = v154;
        }

        if (([v12 v11[158]] & 1) == 0 && v167 >> 60 == 7)
        {
          v65 = *(a2 + v124);
          if (*(v65 + 16))
          {

            v66 = sub_1E15A47D8(v47, v49);
            if (v67)
            {
              v68 = (*(v65 + 56) + 24 * v66);
              v70 = *v68;
              v69 = v68[1];
              v71 = v68[2];

              if ([v12 storeExternalVersionID] < v70)
              {
                sub_1E1308058(v166, &unk_1ECEB7B50);
                *&v162 = v69;
                *(&v162 + 1) = v71;
                v114 = v114 & 0x101 | 0x2000000000000000;
                *&v165 = v114;
                goto LABEL_75;
              }

              swift_beginAccess();
              sub_1E1496DE0(v47, v49);
              swift_endAccess();
            }
          }
        }

        v162 = *v166;
        v163 = *&v166[16];
        v164 = *&v166[32];
        v165 = v167;
LABEL_75:
        v72 = *(a2 + v126);
        v127 = v49;
        v125 = v47;
        if (*(v72 + 16))
        {

          v73 = sub_1E15A47D8(v47, v49);
          if (v74)
          {
            v75 = (*(v72 + 56) + (v73 << 6));
            v77 = v75[2];
            v76 = v75[3];
            v78 = v75[1];
            v151 = *v75;
            v152 = v78;
            v153 = v77;
            v154 = v76;
            v80 = *(&v151 + 1);
            v79 = v151;
            v82 = *(&v78 + 1);
            v81 = v78;
            v121 = *(&v77 + 1);
            v83 = v77;
            v85 = *(&v76 + 1);
            v84 = v76;
            sub_1E141CF5C(&v151, &v147);

            v159 = v162;
            v160 = v163;
            v86 = v165;
            v161 = v164;
            if ((v84 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
            {
              v87 = v85;
              v88 = v121;
              goto LABEL_81;
            }

            v151 = __PAIR128__(v80, v79);
            v152 = __PAIR128__(v82, v81);
            v153 = __PAIR128__(v121, v83);
            v154 = __PAIR128__(v85, v84);
            v147 = __PAIR128__(v80, v79);
            v148 = __PAIR128__(v82, v81);
            v149 = __PAIR128__(v121, v83);
            v150 = __PAIR128__(v85, v84);
            v87 = v85;
            if ((v165 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
            {
              v122 = v165;
              v143 = v151;
              v144 = v152;
              v145 = v153;
              v146 = v154;
              sub_1E15572B0(&v162, v142);
              sub_1E15572B0(&v151, v142);
              sub_1E139CEA8(&v143);
              v88 = v121;
              goto LABEL_85;
            }

            v137 = v162;
            v138 = v163;
            v139 = v164;
            v140 = v165;
            sub_1E15572B0(&v162, v136);
            sub_1E15572B0(&v151, v136);
            v91 = _s11AppStoreKit06LegacyA5StateO2eeoiySbAC_ACtFZ_0(&v147, &v137);
            v141[0] = v137;
            v141[1] = v138;
            v141[2] = v139;
            v141[3] = v140;
            sub_1E139CEA8(v141);
            v142[0] = v147;
            v142[1] = v148;
            v142[2] = v149;
            v142[3] = v150;
            sub_1E139CEA8(v142);
            v143 = __PAIR128__(v80, v79);
            v144 = __PAIR128__(v82, v81);
            v145 = __PAIR128__(v121, v83);
            v146 = __PAIR128__(v85, v84);
            sub_1E1308058(&v143, &unk_1ECEB7B50);
            if ((v91 & 1) == 0)
            {
              goto LABEL_86;
            }

            v89 = &v162;
LABEL_83:
            a1 = sub_1E1308058(v89, &unk_1ECEB7B50);
            a2 = v133;
            v10 = &selRef_remoteDownloadIdentifiersDidChange_;
            v11 = &selRef_addPayment_;
            goto LABEL_6;
          }
        }

        v87 = 0;
        v88 = 0;
        v83 = 0;
        v82 = 0;
        v81 = 0;
        v80 = 0;
        v79 = 0;
        v159 = v162;
        v160 = v163;
        v86 = v165;
        v161 = v164;
        v84 = 0x3FFFFFEFELL;
LABEL_81:
        if ((v86 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
        {
          v122 = v86;
          sub_1E15572B0(&v162, &v151);
LABEL_85:
          *&v151 = v79;
          *(&v151 + 1) = v80;
          *&v152 = v81;
          *(&v152 + 1) = v82;
          *&v153 = v83;
          *(&v153 + 1) = v88;
          *&v154 = v84;
          *(&v154 + 1) = v87;
          v155 = v159;
          v156 = v160;
          v157 = v161;
          v158 = v122;
          sub_1E1308058(&v151, &qword_1ECEB5668);
LABEL_86:
          a2 = v133;
          v10 = &selRef_remoteDownloadIdentifiersDidChange_;
          v11 = &selRef_addPayment_;
          swift_beginAccess();
          v172[0] = v162;
          v172[1] = v163;
          v172[2] = v164;
          v172[3] = v165;
          v151 = v162;
          v152 = v163;
          v153 = v164;
          v154 = v165;
          sub_1E141CF5C(&v151, &v147);
          v90 = swift_isUniquelyReferenced_nonNull_native();
          *&v147 = *(v133 + v126);
          *(v133 + v126) = 0x8000000000000000;
          sub_1E159A1B0(v172, v125, v127, v90);
          *(v133 + v126) = v147;
          swift_endAccess();
          swift_beginAccess();
          sub_1E18943C0(&v143, v125, v127);
          swift_endAccess();

          sub_1E1308058(&v162, &unk_1ECEB7B50);

          goto LABEL_6;
        }

        sub_1E15572B0(&v162, &v151);

        sub_1E1308058(&v162, &unk_1ECEB7B50);
        *&v151 = v79;
        *(&v151 + 1) = v80;
        *&v152 = v81;
        *(&v152 + 1) = v82;
        *&v153 = v83;
        *(&v153 + 1) = v88;
        *&v154 = v84;
        *(&v154 + 1) = v87;
        v89 = &v151;
        goto LABEL_83;
      }
    }

LABEL_5:

LABEL_6:
    ++v9;
    v8 = v130;
    if (v134 == v129)
    {
      v92 = v171;
      a4 = v116;
      goto LABEL_95;
    }
  }

  *&v151 = [v12 v10[69]];
  v13 = sub_1E1AF742C();
  v15 = v14;
  v16 = [v12 bundleID];
  v17 = sub_1E1AF5DFC();
  v19 = v18;

  swift_beginAccess();

  v20 = swift_isUniquelyReferenced_nonNull_native();
  *v166 = *(a2 + v132);
  v21 = *v166;
  *(a2 + v132) = 0x8000000000000000;
  a2 = sub_1E13018F8(v17, v19);
  v23 = *(v21 + 16);
  v24 = (v22 & 1) == 0;
  a1 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    goto LABEL_111;
  }

  v25 = v22;
  if (*(v21 + 24) >= a1)
  {
    if (v20)
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      a1 = sub_1E1416CE8();
      if ((v25 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_21;
  }

  sub_1E168A744(a1, v20);
  a1 = sub_1E13018F8(v17, v19);
  if ((v25 & 1) == (v26 & 1))
  {
    a2 = a1;
    if ((v25 & 1) == 0)
    {
LABEL_17:
      v27 = *v166;
      *(*v166 + 8 * (a2 >> 6) + 64) |= 1 << a2;
      v28 = (v27[6] + 16 * a2);
      *v28 = v17;
      v28[1] = v19;
      v29 = (v27[7] + 16 * a2);
      *v29 = v13;
      v29[1] = v15;
      v30 = v27[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_113;
      }

      v27[2] = v32;
LABEL_22:
      a2 = v133;
      *(v133 + v132) = v27;
      swift_endAccess();
      v11 = &selRef_addPayment_;
      if ([v12 isBetaApp])
      {
        v34 = [v12 bundleShortVersion];
        if (v34)
        {
          v35 = v34;
          v36 = sub_1E1AF5DFC();
          v38 = v37;

          v39 = HIBYTE(v38) & 0xF;
          if ((v38 & 0x2000000000000000) == 0)
          {
            v39 = v36 & 0xFFFFFFFFFFFFLL;
          }

          if (v39)
          {
            goto LABEL_32;
          }
        }

        v40 = [v12 bundleVersion];
        if (v40)
        {
          v41 = v40;
          v36 = sub_1E1AF5DFC();
          v38 = v42;

          v43 = HIBYTE(v38) & 0xF;
          if ((v38 & 0x2000000000000000) == 0)
          {
            v43 = v36 & 0xFFFFFFFFFFFFLL;
          }

          if (v43)
          {
LABEL_32:
            swift_beginAccess();
            v44 = swift_isUniquelyReferenced_nonNull_native();
            *v166 = *(v133 + v120);
            *(v133 + v120) = 0x8000000000000000;
            sub_1E159B9B8(v36, v38, v13, v15, v44);

            *(v133 + v120) = *v166;
            swift_endAccess();
LABEL_35:
            v10 = &selRef_remoteDownloadIdentifiersDidChange_;
            goto LABEL_36;
          }
        }
      }

      goto LABEL_35;
    }

LABEL_21:

    v27 = *v166;
    v33 = (*(*v166 + 56) + 16 * a2);
    *v33 = v13;
    v33[1] = v15;

    goto LABEL_22;
  }

  result = sub_1E1AF757C();
  __break(1u);
  return result;
}