uint64_t Book.Metadata.SeriesMembership.init(seriesID:ordinal:seriesMetadata:mappedSeriesID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  *a6 = a2;
  *(a6 + 8) = result;
  *(a6 + 16) = v6;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t sub_8C840()
{
  v1 = 0x6C616E6964726FLL;
  v2 = 0x654D736569726573;
  if (*v0 != 2)
  {
    v2 = 0x655364657070616DLL;
  }

  if (*v0)
  {
    v1 = 0x4449736569726573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_8C8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_8F280(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_8C8FC(uint64_t a1)
{
  v2 = sub_8E398();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8C938(uint64_t a1)
{
  v2 = sub_8E398();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Book.Metadata.SeriesMembership.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22A858, &qword_1C09C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v13 - v7;
  v9 = *v1;
  v16 = v1[1];
  v15 = *(v1 + 16);
  v14 = v1[3];
  v13[1] = *(v1 + 32);
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_8E398();
  sub_1B5884();
  v21 = 0;
  sub_1B5534();
  if (!v2)
  {
    v12 = v15;
    v20 = 1;
    sub_1B5574();
    v19 = v12;
    v18 = 2;
    sub_8E3EC();
    sub_1B5544();
    v17 = 3;
    sub_1B54E4();
  }

  return (*(v5 + 8))(v8, v4);
}

void Book.Metadata.SeriesMembership.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_1B5804(*v0);
  sub_1B5834(v1);
  sub_1B5814(v2);
  if (v4 == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    sub_1B5834(v3);
  }
}

Swift::Int Book.Metadata.SeriesMembership.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_1B57F4();
  sub_1B5804(v1);
  sub_1B5834(v2);
  sub_1B5814(v3);
  if (v5 == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    sub_1B5834(v4);
  }

  return sub_1B5844();
}

uint64_t Book.Metadata.SeriesMembership.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22A870, &qword_1C09D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_8E398();
  sub_1B5864();
  if (!v2)
  {
    v24 = 0;
    v11 = sub_1B53F4();
    v23 = 1;
    v12 = sub_1B5434();
    v21 = 2;
    sub_8E440();
    sub_1B5404();
    v19 = v22;
    v20 = 3;
    v14 = sub_1B53A4();
    v15 = v9;
    v17 = v16;
    (*(v6 + 8))(v15, v5);
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v19;
    *(a2 + 24) = v14;
    *(a2 + 32) = v17 & 1;
  }

  return sub_2BF8(a1);
}

Swift::Int sub_8CF24()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_1B57F4();
  sub_1B5804(v1);
  sub_1B5834(v2);
  sub_1B5814(v3);
  if (v5 == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    sub_1B5834(v4);
  }

  return sub_1B5844();
}

uint64_t sub_8CFC8()
{
  if (*v0)
  {
    result = 1752457584;
  }

  else
  {
    result = 0x444965726E6567;
  }

  *v0;
  return result;
}

uint64_t sub_8CFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444965726E6567 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_8D0D8(uint64_t a1)
{
  v2 = sub_8E494();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8D114(uint64_t a1)
{
  v2 = sub_8E494();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Book.Metadata.GenreTreeNode.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22A880, &unk_1C09D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[0] = v1[1];
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_8E494();
  sub_1B5884();
  v14 = 0;
  sub_1B5574();
  if (!v2)
  {
    v12[1] = v12[0];
    v13 = 1;
    sub_2B0C(&qword_2292E8, &unk_1BC3A0);
    sub_61BC8(&qword_2298A8);
    sub_1B5544();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t Book.Metadata.GenreTreeNode.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22A890, &qword_1C09E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v14 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_8E494();
  sub_1B5864();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1B5434();
    sub_2B0C(&qword_2292E8, &unk_1BC3A0);
    v15 = 1;
    sub_61BC8(&qword_2298B8);
    sub_1B5404();
    (*(v6 + 8))(v9, v5);
    v12 = v14[1];
    *a2 = v11;
    a2[1] = v12;
  }

  return sub_2BF8(a1);
}

uint64_t sub_8D534(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_80F4(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

__n128 Book.Metadata.seriesMembership.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  result = *(v1 + 40);
  v4 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 Book.Metadata.init(authorIDs:mediaType:leafGenres:mappedAssetID:seriesMembership:editions:)@<Q0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = *a6;
  v9 = *(a6 + 16);
  *(a8 + 40) = *a6;
  v10 = *(a6 + 32);
  *a8 = *a2;
  *(a8 + 8) = a3;
  *(a8 + 16) = a1;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5 & 1;
  *(a8 + 56) = v9;
  *(a8 + 72) = v10;
  *(a8 + 80) = a7;
  return result;
}

uint64_t sub_8D5B0()
{
  v1 = *v0;
  v2 = 0x707954616964656DLL;
  v3 = 0x734164657070616DLL;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0x736E6F6974696465;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x726E65476661656CLL;
  if (v1 != 1)
  {
    v5 = 0x4449726F68747561;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_8D684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_8F3F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_8D6AC(uint64_t a1)
{
  v2 = sub_8E708();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8D6E8(uint64_t a1)
{
  v2 = sub_8E708();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Book.Metadata.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22A898, &qword_1C09F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v25 = *(v1 + 2);
  v26 = v10;
  v24 = *(v1 + 3);
  v30 = v1[32];
  v11 = *(v1 + 40);
  v22 = *(v1 + 56);
  v23 = v11;
  v21 = v1[72];
  v12 = *(v1 + 10);
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1;
  v17 = v16;
  sub_2698(v15, v13);
  sub_8E708();
  sub_1B5884();
  LOBYTE(v27) = v9;
  v31 = 0;
  sub_8E75C();
  sub_1B5544();
  if (!v2)
  {
    v18 = v25;
    *&v27 = v26;
    v31 = 1;
    sub_2B0C(&qword_22A8B0, &unk_1C09F8);
    sub_8E918(&qword_22A8B8, sub_8E7B0);
    sub_1B5544();
    *&v27 = v18;
    v31 = 2;
    sub_2B0C(&qword_2292C8, &unk_1BCB00);
    sub_8E804(&qword_22A8C8);
    sub_1B5544();
    LOBYTE(v27) = 3;
    sub_1B54E4();
    v28 = v22;
    v27 = v23;
    v29 = v21;
    v31 = 4;
    sub_8E870();
    sub_1B54B4();
    *&v27 = v12;
    v31 = 5;
    sub_2B0C(&qword_2292E8, &unk_1BC3A0);
    sub_61BC8(&qword_2298A8);
    sub_1B54B4();
  }

  return (*(v5 + 8))(v8, v17);
}

void Book.Metadata.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v9 = *(v2 + 40);
  v8 = *(v2 + 48);
  v10 = *(v2 + 56);
  v16 = *(v2 + 64);
  v17 = *(v2 + 72);
  v11 = *(v2 + 80);
  v12 = *v2 == 0;
  sub_1B4884();

  sub_1C578(a1, v4);
  sub_8E228(a1, v5);
  if (v7 == 1)
  {
    sub_1B5814(0);
    if (v10 == 2)
    {
LABEL_6:
      sub_1B5814(0);
      if (v11)
      {
        goto LABEL_7;
      }

LABEL_12:
      sub_1B5814(0);
      return;
    }
  }

  else
  {
    sub_1B5814(1u);
    sub_1B5834(v6);
    if (v10 == 2)
    {
      goto LABEL_6;
    }
  }

  sub_1B5814(1u);
  sub_1B5804(v9);
  sub_1B5834(v8);
  sub_1B5814(v10 & 1);
  if (v17)
  {
    goto LABEL_6;
  }

  sub_1B5814(1u);
  sub_1B5834(v16);
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_7:
  sub_1B5814(1u);
  sub_1B5804(*(v11 + 16));
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = (v11 + 32);
    do
    {
      v15 = *v14++;
      sub_1B5834(v15);
      --v13;
    }

    while (v13);
  }
}

Swift::Int Book.Metadata.hashValue.getter()
{
  sub_1B57F4();
  Book.Metadata.hash(into:)(v1);
  return sub_1B5844();
}

uint64_t Book.Metadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22A8D8, &qword_1C0A08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_8E708();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  LOBYTE(v33) = 0;
  sub_8E8C4();
  sub_1B5404();
  v11 = v39;
  sub_2B0C(&qword_22A8B0, &unk_1C09F8);
  LOBYTE(v33) = 1;
  sub_8E918(&qword_22A8E8, sub_8E990);
  sub_1B5404();
  v32 = v39;
  sub_2B0C(&qword_2292C8, &unk_1BCB00);
  LOBYTE(v33) = 2;
  sub_8E804(&qword_22A8F8);
  sub_1B5404();
  v31 = v39;
  LOBYTE(v39) = 3;
  v30 = sub_1B53A4();
  v51 = v12 & 1;
  LOBYTE(v33) = 4;
  sub_8E9E4();
  sub_1B5374();
  v13 = v39;
  v29 = v40;
  v28 = v41;
  v27 = v42;
  v26 = v43;
  sub_2B0C(&qword_2292E8, &unk_1BC3A0);
  v52 = 5;
  sub_61BC8(&qword_2298B8);
  sub_1B5374();
  (*(v6 + 8))(v9, v5);
  v14 = v50;
  LOBYTE(v33) = v11;
  *(&v33 + 1) = v32;
  v25 = v13;
  *&v34 = v31;
  *(&v34 + 1) = v30;
  v24 = v51;
  LOBYTE(v35) = v51;
  v15 = v29;
  *(&v35 + 1) = v13;
  *&v36 = v29;
  v16 = v28;
  v17 = v27;
  *(&v36 + 1) = v28;
  *&v37 = v27;
  v18 = v26;
  BYTE8(v37) = v26;
  v38 = v50;
  *(a2 + 80) = v50;
  v19 = v37;
  v21 = v34;
  v20 = v35;
  *a2 = v33;
  *(a2 + 16) = v21;
  *(a2 + 48) = v36;
  *(a2 + 64) = v19;
  *(a2 + 32) = v20;
  sub_5EDD8(&v33, &v39);
  sub_2BF8(a1);
  LOBYTE(v39) = v11;
  v40 = v32;
  v41 = v31;
  v42 = v30;
  v43 = v24;
  v44 = v25;
  v45 = v15;
  v46 = v16;
  v47 = v17;
  v48 = v18;
  v49 = v14;
  return sub_85554(&v39);
}

Swift::Int sub_8E1EC()
{
  sub_1B57F4();
  Book.Metadata.hash(into:)(v1);
  return sub_1B5844();
}

void sub_8E228(__int128 *a1, uint64_t a2)
{
  v14 = a1[2];
  v15 = a1[3];
  v16 = *(a1 + 8);
  v12 = *a1;
  v13 = a1[1];
  sub_1B5844();
  v3 = 0;
  v4 = 0;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  for (i = (v5 + 63) >> 6; v7; v3 ^= sub_1B57E4())
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(a2 + 48) + ((v9 << 9) | (8 * v10)));
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {
      sub_1B5804(v3);
      return;
    }

    v7 = *(a2 + 56 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t _s20BooksPersonalization4BookV8MetadataV16SeriesMembershipV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 && ((*(a1 + 16) ^ *(a2 + 16)) & 1) == 0)
  {
    v5 = *(a2 + 32);
    if (*(a1 + 32))
    {
      if ((*(a2 + 32) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 24) == *(a2 + 24))
      {
        v6 = *(a2 + 32);
      }

      else
      {
        v6 = 1;
      }

      if (v6)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

unint64_t sub_8E398()
{
  result = qword_22A860;
  if (!qword_22A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A860);
  }

  return result;
}

unint64_t sub_8E3EC()
{
  result = qword_22A868;
  if (!qword_22A868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A868);
  }

  return result;
}

unint64_t sub_8E440()
{
  result = qword_22A878;
  if (!qword_22A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A878);
  }

  return result;
}

unint64_t sub_8E494()
{
  result = qword_22A888;
  if (!qword_22A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A888);
  }

  return result;
}

BOOL _s20BooksPersonalization4BookV8MetadataV2eeoiySbAE_AEtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 32);
  v25 = *(a1 + 40);
  v23 = *(a1 + 48);
  v29 = *(a1 + 24);
  v30 = *(a1 + 56);
  v19 = *(a1 + 64);
  v21 = *(a1 + 72);
  v5 = *a2;
  v7 = *(a2 + 1);
  v6 = *(a2 + 2);
  v27 = *(a1 + 80);
  v28 = *(a2 + 3);
  v8 = a2[32];
  v9 = *a1 == 0;
  v24 = *(a2 + 5);
  v22 = *(a2 + 6);
  if (*a1)
  {
    v10 = 0x6F6F626F69647561;
  }

  else
  {
    v10 = 0x6B6F6F6265;
  }

  v11 = a2[56];
  v18 = *(a2 + 8);
  if (v9)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE90000000000006BLL;
  }

  v20 = a2[72];
  if (*a2)
  {
    v13 = 0x6F6F626F69647561;
  }

  else
  {
    v13 = 0x6B6F6F6265;
  }

  if (*a2)
  {
    v14 = 0xE90000000000006BLL;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  v26 = *(a2 + 10);
  if (v10 == v13 && v12 == v14)
  {
  }

  else
  {
    v15 = sub_1B5604();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_9144(v3, v7) & 1) == 0 || (sub_2E0DC(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (v29 == v28)
    {
      v16 = v8;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  if (v30 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }

    goto LABEL_28;
  }

  if (v11 == 2)
  {
    return 0;
  }

  result = 0;
  if (v25 == v24 && v23 == v22 && ((v30 ^ v11) & 1) == 0)
  {
    if (v21)
    {
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_28;
    }

    result = 0;
    if ((v20 & 1) == 0 && v19 == v18)
    {
LABEL_28:
      if (v27)
      {
        return v26 && (sub_80F4(v27, v26) & 1) != 0;
      }

      return !v26;
    }
  }

  return result;
}

unint64_t sub_8E708()
{
  result = qword_22A8A0;
  if (!qword_22A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A8A0);
  }

  return result;
}

unint64_t sub_8E75C()
{
  result = qword_22A8A8;
  if (!qword_22A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A8A8);
  }

  return result;
}

unint64_t sub_8E7B0()
{
  result = qword_22A8C0;
  if (!qword_22A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A8C0);
  }

  return result;
}

uint64_t sub_8E804(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_2292C8, &unk_1BCB00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_8E870()
{
  result = qword_22A8D0;
  if (!qword_22A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A8D0);
  }

  return result;
}

unint64_t sub_8E8C4()
{
  result = qword_22A8E0;
  if (!qword_22A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A8E0);
  }

  return result;
}

uint64_t sub_8E918(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_22A8B0, &unk_1C09F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_8E990()
{
  result = qword_22A8F0;
  if (!qword_22A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A8F0);
  }

  return result;
}

unint64_t sub_8E9E4()
{
  result = qword_22A900;
  if (!qword_22A900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A900);
  }

  return result;
}

unint64_t sub_8EA3C()
{
  result = qword_22A908;
  if (!qword_22A908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A908);
  }

  return result;
}

unint64_t sub_8EA94()
{
  result = qword_22A910;
  if (!qword_22A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A910);
  }

  return result;
}

unint64_t sub_8EAEC()
{
  result = qword_22A918;
  if (!qword_22A918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A918);
  }

  return result;
}

__n128 sub_8EB40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_8EB64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_8EBAC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 initializeWithCopy for BookHistory.CollectionAddition(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_8EC24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_8EC78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t dispatch thunk of BookMetadataServiceType.fetchMetadataFor(bookIDs:audiobookIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_441B4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of BookMetadataServiceType.fetchMetadataFor(storeIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_7E684;

  return v11(a1, a2, a3);
}

unint64_t sub_8EF6C()
{
  result = qword_22A920;
  if (!qword_22A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A920);
  }

  return result;
}

unint64_t sub_8EFC4()
{
  result = qword_22A928;
  if (!qword_22A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A928);
  }

  return result;
}

unint64_t sub_8F01C()
{
  result = qword_22A930;
  if (!qword_22A930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A930);
  }

  return result;
}

unint64_t sub_8F074()
{
  result = qword_22A938;
  if (!qword_22A938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A938);
  }

  return result;
}

unint64_t sub_8F0CC()
{
  result = qword_22A940;
  if (!qword_22A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A940);
  }

  return result;
}

unint64_t sub_8F124()
{
  result = qword_22A948;
  if (!qword_22A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A948);
  }

  return result;
}

unint64_t sub_8F17C()
{
  result = qword_22A950;
  if (!qword_22A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A950);
  }

  return result;
}

unint64_t sub_8F1D4()
{
  result = qword_22A958;
  if (!qword_22A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A958);
  }

  return result;
}

unint64_t sub_8F22C()
{
  result = qword_22A960;
  if (!qword_22A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A960);
  }

  return result;
}

uint64_t sub_8F280(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E6964726FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449736569726573 && a2 == 0xE800000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654D736569726573 && a2 == 0xEE00617461646174 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x655364657070616DLL && a2 == 0xEE00444973656972)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_8F3F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954616964656DLL && a2 == 0xE900000000000065;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726E65476661656CLL && a2 == 0xEA00000000007365 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449726F68747561 && a2 == 0xE900000000000073 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x734164657070616DLL && a2 == 0xED00004449746573 || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000001D6600 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736E6F6974696465 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

BooksPersonalization::Scorer_optional __swiftcall Scorer.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_212EC8;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t sub_8F690()
{
  result = qword_22A968;
  if (!qword_22A968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A968);
  }

  return result;
}

unint64_t sub_8F6F4()
{
  result = qword_22A970;
  if (!qword_22A970)
  {
    sub_1CC1C(&qword_22A978, &qword_1C1110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A970);
  }

  return result;
}

unint64_t sub_8F76C()
{
  result = qword_22A980;
  if (!qword_22A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A980);
  }

  return result;
}

uint64_t sub_8F880(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 1256) = v3;
  *(v4 + 1248) = a2;
  *(v4 + 1240) = a1;
  *(v4 + 1288) = *a3;
  return _swift_task_switch(sub_8F8B0, 0, 0);
}

uint64_t sub_8F8B0()
{
  v1 = *(v0 + 1256);
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (*(v2 + 16) && (v3 = sub_3AD4C(*(v0 + 1288)), (v4 & 1) != 0))
  {
    v5 = *(v0 + 1240);
    sub_404C4(*(v2 + 56) + 40 * v3, v0 + 1176);
    sub_43178((v0 + 1176), v0 + 1136);
    swift_endAccess();
    v6 = (v5 + 64);
    v7 = *(v5 + 16) + 1;
    while (--v7)
    {
      v8 = *v6;
      v6 += 8;
      if (*(v8 + 16))
      {
        if (*(v0 + 1288) == 2)
        {
          sub_8FD88();
          swift_allocError();
          *v9 = 3;
          swift_willThrow();
          sub_2BF8((v0 + 1136));
          goto LABEL_9;
        }

        break;
      }
    }

    v14 = *(v0 + 1248);
    v15 = *(v0 + 1160);
    v16 = *(v0 + 1168);
    sub_2698((v0 + 1136), v15);
    memcpy((v0 + 16), v14, 0x460uLL);
    v17 = *(v16 + 8);
    v21 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    *(v0 + 1264) = v19;
    *v19 = v0;
    v19[1] = sub_8FB38;
    v20 = *(v0 + 1240);

    return v21(v20, v0 + 16, v15, v16);
  }

  else
  {
    v10 = *(v0 + 1288);
    swift_endAccess();
    sub_8FD88();
    swift_allocError();
    *v11 = v10;
    swift_willThrow();
LABEL_9:
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_8FB38(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1264);
  v6 = *v2;
  *(*v2 + 1272) = v1;

  if (v1)
  {
    v7 = sub_8FCC8;
  }

  else
  {
    *(v4 + 1280) = a1;
    v7 = sub_8FC60;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_8FC60()
{
  sub_2BF8(v0 + 142);
  v1 = v0[1];
  v2 = v0[160];

  return v1(v2);
}

uint64_t sub_8FCC8()
{
  sub_2BF8(v0 + 142);
  v1 = v0[159];
  v2 = v0[1];

  return v2();
}

uint64_t AggregateFlattener.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_8FD88()
{
  result = qword_22AA28;
  if (!qword_22AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AA28);
  }

  return result;
}

unint64_t sub_8FDDC()
{
  result = qword_22AA30;
  if (!qword_22AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AA30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DelegatingBookScorer.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DelegatingBookScorer.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_8FF84(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_8FF98(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t ScoredGenre.copyWith(score:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 8);
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  *a1 = *v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = a2;
}

uint64_t sub_90024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B6F6F4264656573 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B5604();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_900B4(uint64_t a1)
{
  v2 = sub_90BC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_900F0(uint64_t a1)
{
  v2 = sub_90BC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Genre.Rationale.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22AA38, &unk_1C12B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_2698(a1, a1[3]);
  sub_90BC0();

  sub_1B5884();
  v11[1] = v8;
  sub_2B0C(&qword_22AA48, &qword_1CD280);
  sub_90C68(&qword_22AA50, sub_90C14);
  sub_1B5544();

  return (*(v4 + 8))(v7, v3);
}

uint64_t Genre.Rationale.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22AA60, &qword_1C12C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_90BC0();
  sub_1B5864();
  if (!v2)
  {
    sub_2B0C(&qword_22AA48, &qword_1CD280);
    sub_90C68(&qword_22AA68, sub_90CE0);
    sub_1B5404();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_2BF8(a1);
}

uint64_t sub_904D4()
{
  v1 = 0x444965726F7473;
  v2 = 0x73656372756F73;
  if (*v0 != 2)
  {
    v2 = 0x6C616E6F69746172;
  }

  if (*v0)
  {
    v1 = 0x707954616964656DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_90550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_92860(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_90578(uint64_t a1)
{
  v2 = sub_90D34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_905B4(uint64_t a1)
{
  v2 = sub_90D34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Genre.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22AA78, &qword_1C12C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  v9 = *v1;
  v19 = *(v1 + 8);
  v10 = v1[2];
  v16 = v1[3];
  v17 = v10;
  v11 = a1[4];
  sub_2698(a1, a1[3]);
  sub_90D34();
  sub_1B5884();
  LOBYTE(v18) = 0;
  sub_1B5574();
  if (!v2)
  {
    v12 = v16;
    v13 = v17;
    LOBYTE(v18) = v19;
    v20 = 1;
    sub_8E75C();
    sub_1B5544();
    v18 = v13;
    v20 = 2;
    sub_2B0C(&qword_22AA88, &qword_1C12D0);
    sub_90D88(&qword_22AA90, sub_90E00);
    sub_1B5544();
    v18 = v12;
    v20 = 3;
    sub_90E54();

    sub_1B54B4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t Genre.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22AAA8, &qword_1C12D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_90D34();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  LOBYTE(v17) = 0;
  v11 = sub_1B5434();
  v19 = 1;
  sub_8E8C4();
  sub_1B5404();
  v12 = v17;
  sub_2B0C(&qword_22AA88, &qword_1C12D0);
  v19 = 2;
  sub_90D88(&qword_22AAB0, sub_90EA8);
  sub_1B5404();
  v18 = v12;
  v13 = v17;
  v19 = 3;
  sub_90EFC();
  sub_1B5374();
  (*(v6 + 8))(v9, v5);
  v14 = v17;
  *a2 = v11;
  *(a2 + 8) = v18;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;

  sub_2BF8(a1);
}

uint64_t ScoredGenre.genre.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
}

uint64_t ScoredGenre.init(genre:score:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(result + 24);
  *a2 = *result;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = a3;
  return result;
}

unint64_t sub_90BC0()
{
  result = qword_22AA40;
  if (!qword_22AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AA40);
  }

  return result;
}

unint64_t sub_90C14()
{
  result = qword_22AA58;
  if (!qword_22AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AA58);
  }

  return result;
}

uint64_t sub_90C68(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_22AA48, &qword_1CD280);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_90CE0()
{
  result = qword_22AA70;
  if (!qword_22AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AA70);
  }

  return result;
}

unint64_t sub_90D34()
{
  result = qword_22AA80;
  if (!qword_22AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AA80);
  }

  return result;
}

uint64_t sub_90D88(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_22AA88, &qword_1C12D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_90E00()
{
  result = qword_22AA98;
  if (!qword_22AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AA98);
  }

  return result;
}

unint64_t sub_90E54()
{
  result = qword_22AAA0;
  if (!qword_22AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AAA0);
  }

  return result;
}

unint64_t sub_90EA8()
{
  result = qword_22AAB8;
  if (!qword_22AAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AAB8);
  }

  return result;
}

unint64_t sub_90EFC()
{
  result = qword_22AAC0;
  if (!qword_22AAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AAC0);
  }

  return result;
}

uint64_t sub_90F50()
{
  if (*v0)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x65726E6567;
  }
}

uint64_t sub_90F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65726E6567 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_91050(uint64_t a1)
{
  v2 = sub_91294();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9108C(uint64_t a1)
{
  v2 = sub_91294();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ScoredGenre.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22AAC8, &qword_1C12E0);
  v16 = *(v3 - 8);
  v4 = *(v16 + 64);
  __chkstk_darwin(v3);
  v6 = &v14 - v5;
  v7 = *v1;
  HIDWORD(v14) = *(v1 + 8);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = a1[4];
  sub_2698(a1, a1[3]);
  sub_91294();

  sub_1B5884();
  v18 = v7;
  v19 = BYTE4(v14);
  v20 = v8;
  v21 = v9;
  v17 = 0;
  sub_912E8();
  v12 = v15;
  sub_1B5544();

  if (!v12)
  {
    LOBYTE(v18) = 1;
    sub_1B5514();
  }

  return (*(v16 + 8))(v6, v3);
}

unint64_t sub_91294()
{
  result = qword_22AAD0;
  if (!qword_22AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AAD0);
  }

  return result;
}

unint64_t sub_912E8()
{
  result = qword_22AAD8;
  if (!qword_22AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AAD8);
  }

  return result;
}

uint64_t ScoredGenre.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22AAE0, &qword_1C12E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_91294();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  v19 = 0;
  sub_9157C();
  sub_1B5404();
  v18 = v20;
  v17 = v21;
  v11 = v22;
  v12 = v23;
  LOBYTE(v20) = 1;
  sub_1B53D4();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v18;
  *(a2 + 8) = v17;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;

  sub_2BF8(a1);
}

unint64_t sub_9157C()
{
  result = qword_22AAE8;
  if (!qword_22AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AAE8);
  }

  return result;
}

BooksPersonalization::GenreRecommendationSource_optional __swiftcall GenreRecommendationSource.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_212F58;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t GenreRecommendationSource.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x747369486B6F6F62;
  v3 = 0xD000000000000021;
  if (v1 != 3)
  {
    v3 = 1768055156;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000017;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Swift::Int sub_9171C()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_9180C()
{
  *v0;
  *v0;
  sub_1B4884();
}

Swift::Int sub_918E8()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_919E0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000079726FLL;
  v4 = 0x747369486B6F6F62;
  v5 = 0x80000000001D4640;
  v6 = 0x80000000001D4610;
  v7 = 0xD000000000000021;
  if (v2 != 3)
  {
    v7 = 1768055156;
    v6 = 0xE400000000000000;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000017;
  }

  else
  {
    v5 = v6;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000000001D45F0;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_91AAC(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_91B58;

  return GenreRecommendationServiceType.fetchRecommendedGenres(request:)(a1, a2, a3);
}

uint64_t sub_91B58(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t GenreRecommendationServiceType.fetchRecommendedGenres(request:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  *(v3 + 32) = *a1;
  *(v3 + 33) = v6;
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_91D90;

  return v11(v3 + 32, a2, a3);
}

uint64_t sub_91D90(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  *(v5 + 24) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_91ECC, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

unint64_t sub_91EE8()
{
  result = qword_22AAF0;
  if (!qword_22AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AAF0);
  }

  return result;
}

unint64_t sub_91F40()
{
  result = qword_22AAF8;
  if (!qword_22AAF8)
  {
    sub_1CC1C(&qword_22AB00, &qword_1C14F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AAF8);
  }

  return result;
}

unint64_t sub_91FA8()
{
  result = qword_22AB08;
  if (!qword_22AB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB08);
  }

  return result;
}

uint64_t sub_91FFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_92044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_920A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_920EC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for GenreRecommendationRequest(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for GenreRecommendationRequest(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of GenreRecommendationServiceType.fetchRecommendedGenres(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_441B4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of GenreRecommendationSubserviceType.fetchRecommendedGenres(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_7E684;

  return v11(a1, a2, a3);
}

unint64_t sub_9254C()
{
  result = qword_22AB10;
  if (!qword_22AB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB10);
  }

  return result;
}

unint64_t sub_925A4()
{
  result = qword_22AB18;
  if (!qword_22AB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB18);
  }

  return result;
}

unint64_t sub_925FC()
{
  result = qword_22AB20;
  if (!qword_22AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB20);
  }

  return result;
}

unint64_t sub_92654()
{
  result = qword_22AB28;
  if (!qword_22AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB28);
  }

  return result;
}

unint64_t sub_926AC()
{
  result = qword_22AB30;
  if (!qword_22AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB30);
  }

  return result;
}

unint64_t sub_92704()
{
  result = qword_22AB38;
  if (!qword_22AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB38);
  }

  return result;
}

unint64_t sub_9275C()
{
  result = qword_22AB40;
  if (!qword_22AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB40);
  }

  return result;
}

unint64_t sub_927B4()
{
  result = qword_22AB48;
  if (!qword_22AB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB48);
  }

  return result;
}

unint64_t sub_9280C()
{
  result = qword_22AB50;
  if (!qword_22AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB50);
  }

  return result;
}

uint64_t sub_92860(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965726F7473 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656372756F73 && a2 == 0xE700000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616E6F69746172 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t URLSessionTransport.Error.errorDescription.getter()
{
  v1 = *v0;
  sub_1B5084(41);

  swift_getObjectType();
  sub_2B0C(&qword_22AB58, &qword_1C1A70);
  v3._countAndFlagsBits = sub_1B4834();
  sub_1B48D4(v3);

  return 0xD000000000000027;
}

uint64_t URLSessionTransport.makeCall(with:operationId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 288) = a3;
  *(v5 + 296) = a4;
  *(v5 + 272) = a1;
  *(v5 + 280) = a2;
  v6 = sub_1B3F34();
  *(v5 + 304) = v6;
  v7 = *(v6 - 8);
  *(v5 + 312) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 320) = swift_task_alloc();
  v9 = sub_1B3B64();
  *(v5 + 328) = v9;
  v10 = *(v9 - 8);
  *(v5 + 336) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = *v4;

  return _swift_task_switch(sub_92C04, 0, 0);
}

uint64_t sub_92C04()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(v1 + 16);
  if (v4)
  {
    v6 = *(v0 + 288);
    v5 = *(v0 + 296);
    v7 = v4 - 1;
    sub_404C4(v1 + 40 * v4 - 8, v0 + 88);
    sub_264B8((v0 + 88), v0 + 128);
    v8 = swift_allocObject();
    sub_264B8((v0 + 128), (v8 + 2));
    v8[7] = v6;
    v8[8] = v5;
    v8[9] = &unk_1C1A88;
    v8[10] = v3;
    if (v4 != 1)
    {
      v9 = *(v0 + 296);
      v10 = *(v1 + 16);

      if (v4 - 2 >= v10)
      {
LABEL_7:
        __break(1u);
      }

      else
      {
        v11 = v1 + 40 * v4 - 48;
        while (1)
        {
          v12 = v8;
          v13 = *(v0 + 288);
          sub_404C4(v11, v0 + 88);
          sub_264B8((v0 + 88), v0 + 128);
          v8 = swift_allocObject();
          sub_264B8((v0 + 128), (v8 + 2));
          v8[7] = v13;
          v8[8] = v9;
          v8[9] = &unk_1C1A98;
          v8[10] = v12;
          if (!--v7)
          {
            break;
          }

          v9 = *(v0 + 296);
          v14 = *(v1 + 16);

          v11 -= 40;
          if (v7 > v14)
          {
            goto LABEL_7;
          }
        }
      }
    }

    v15 = *(v0 + 296);

    v2 = *(v0 + 352);
    v16 = *(v0 + 360);
    v39 = &unk_1C1A98;
    v3 = v8;
  }

  else
  {
    v39 = &unk_1C1A88;
  }

  *(v0 + 368) = v3;
  v17 = *(v0 + 344);
  v18 = *(v0 + 280);
  (*(*(v0 + 312) + 16))(*(v0 + 320), v18, *(v0 + 304));
  v19 = v2;

  sub_1B3B14();
  v20 = type metadata accessor for ClientCurrency.Request();
  v21 = (v18 + v20[5]);
  v22 = *v21;
  v23 = v21[1];

  sub_1B3B04();
  v24 = *(v18 + v20[6]);
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = (v24 + 56);
    do
    {
      v27 = *(v0 + 344);
      v28 = *(v26 - 3);
      v29 = *(v26 - 2);
      v30 = *(v26 - 1);
      v31 = *v26;

      v41._countAndFlagsBits = v30;
      v41._object = v31;
      v42._countAndFlagsBits = v28;
      v42._object = v29;
      sub_1B3B24(v41, v42);

      v26 += 4;
      --v25;
    }

    while (v25);
  }

  v32 = *(v0 + 280) + v20[7];
  if (*(v32 + 8) >> 60 != 15)
  {
    v33 = *(v0 + 344);
    sub_4161C(*v32, *(v32 + 8));
    sub_1B3B44();
  }

  v38 = (v39 + *v39);
  v34 = v39[1];
  v35 = swift_task_alloc();
  *(v0 + 376) = v35;
  *v35 = v0;
  v35[1] = sub_92FB0;
  v36 = *(v0 + 344);

  return v38(v36);
}

uint64_t sub_92FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 376);
  v9 = *v4;
  v5[48] = a1;
  v5[49] = a2;
  v5[50] = a3;
  v5[51] = v3;

  if (v3)
  {
    v7 = sub_93494;
  }

  else
  {
    v7 = sub_930C8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_930C8()
{
  v1 = v0[50];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v34 = v0[49];
    v35 = v0[50];
    v36 = v0[48];
    v37 = v0[46];
    sub_93C5C();
    swift_allocError();
    *v38 = v35;
    swift_willThrow();
    v39 = v35;

    sub_41670(v36, v34);

    v40 = v0[40];
    (*(v0[42] + 8))(v0[43], v0[41]);

    v33 = v0[1];
LABEL_22:

    return v33();
  }

  v3 = v2;
  v4 = [v2 allHeaderFields];
  v5 = &type metadata for AnyHashable;
  v6 = sub_1B46A4();

  v7 = -1;
  v8 = -1 << *(v6 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v6 + 64);
  v10 = (63 - v8) >> 6;

  v12 = 0;
  v45 = _swiftEmptyArrayStorage;
  while (v9)
  {
LABEL_12:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    sub_42E44(*(v6 + 48) + 40 * v15, (v0 + 2));
    sub_430C8(*(v6 + 56) + 32 * v15, (v0 + 7));
    sub_42E44((v0 + 2), (v0 + 21));
    if (swift_dynamicCast())
    {
      v16 = v5;
      v17 = v0[30];
      v18 = v0[31];
      sub_430C8((v0 + 7), (v0 + 26));
      if ((swift_dynamicCast() & 1) == 0)
      {

        v5 = v16;
        goto LABEL_6;
      }

      v43 = v0[33];
      v44 = v0[32];
      sub_93CB0((v0 + 2));
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_3324C(0, *(v45 + 2) + 1, 1, v45);
        v45 = result;
      }

      v20 = *(v45 + 2);
      v19 = *(v45 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v41 = *(v45 + 2);
        v42 = v20 + 1;
        result = sub_3324C((v19 > 1), v20 + 1, 1, v45);
        v20 = v41;
        v21 = v42;
        v45 = result;
      }

      *(v45 + 2) = v21;
      v22 = &v45[32 * v20];
      *(v22 + 4) = v17;
      *(v22 + 5) = v18;
      *(v22 + 6) = v44;
      *(v22 + 7) = v43;
      v5 = v16;
    }

    else
    {
LABEL_6:
      result = sub_93CB0((v0 + 2));
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_12;
    }
  }

  v23 = v0[50];
  v24 = v0[46];
  v26 = v0[42];
  v25 = v0[43];
  v27 = v0[41];

  v28 = [v3 statusCode];

  result = (*(v26 + 8))(v25, v27);
  if ((v28 & 0x8000000000000000) == 0)
  {
    v29 = v0[43];
    v30 = v0[40];
    v31 = v0[34];
    v32 = *(v0 + 24);
    *v31 = v28;
    *(v31 + 8) = v45;
    *(v31 + 16) = v32;

    v33 = v0[1];
    goto LABEL_22;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_93494()
{
  v1 = v0[46];

  v2 = v0[51];
  v3 = v0[40];
  (*(v0[42] + 8))(v0[43], v0[41]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_9352C(uint64_t a1)
{
  v3 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_935CC;

  return NSURLSession.data(for:delegate:)(a1, 0);
}

uint64_t sub_935CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 16);
  v14 = *v4;

  v12 = *(v14 + 8);
  if (!v3)
  {
    v9 = a1;
    v10 = a2;
    v11 = a3;
  }

  return v12(v9, v10, v11);
}

uint64_t sub_936E4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_93724(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_93FD8;

  return sub_9352C(a1);
}

uint64_t sub_937CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_937F4, 0, 0);
}

uint64_t sub_937F4()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  sub_2698(v1, v2);
  v4 = *(v3 + 8);
  v13 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_93928;
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0[2];

  return v13(v11, v9, v10, v7, v8, v2, v3);
}

uint64_t sub_93928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 64);
  v14 = *v4;

  v12 = *(v14 + 8);
  if (!v3)
  {
    v9 = a1;
    v10 = a2;
    v11 = a3;
  }

  return v12(v9, v10, v11);
}

uint64_t sub_93A40()
{
  sub_2BF8(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_93A88(uint64_t a1)
{
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_93B48;

  return sub_937CC(a1, (v1 + 2), v4, v5, v6, v7);
}

uint64_t sub_93B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

unint64_t sub_93C5C()
{
  result = qword_22AB60;
  if (!qword_22AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB60);
  }

  return result;
}

uint64_t sub_93CB0(uint64_t a1)
{
  v2 = sub_2B0C(&qword_22AB68, &qword_1C1AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_93D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_226C;

  return URLSessionTransport.makeCall(with:operationId:)(a1, a2, a3, a4);
}

uint64_t sub_93DDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_93E24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of URLSessionTransportMiddleware.interceptCall(with:operationId:next:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 8);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_93FD8;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_93FDC()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x74754F65726F6373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74754F65726E6567;
  }
}

uint64_t sub_94044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_946CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_9406C(uint64_t a1)
{
  v2 = sub_942A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_940A8(uint64_t a1)
{
  v2 = sub_942A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WorkServiceConfiguration.GenreRecommendationConfiguration.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22AB70, &qword_1C1C30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  sub_2698(a1, a1[3]);
  sub_942A8();
  sub_1B5884();
  v18 = 0;
  v13 = v15[5];
  sub_1B54F4();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_1B54F4();
  v16 = 2;
  sub_1B54F4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_942A8()
{
  result = qword_22AB78;
  if (!qword_22AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB78);
  }

  return result;
}

uint64_t WorkServiceConfiguration.GenreRecommendationConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22AB80, &qword_1C1C38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_942A8();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  v27 = 0;
  v11 = sub_1B53B4();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_1B53B4();
  v23 = v14;
  v25 = 2;
  v15 = sub_1B53B4();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  sub_2BF8(a1);
}

unint64_t sub_945C8()
{
  result = qword_22AB88;
  if (!qword_22AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB88);
  }

  return result;
}

unint64_t sub_94620()
{
  result = qword_22AB90;
  if (!qword_22AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB90);
  }

  return result;
}

unint64_t sub_94678()
{
  result = qword_22AB98;
  if (!qword_22AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB98);
  }

  return result;
}

uint64_t sub_946CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74754F65726E6567 && a2 == 0xEF656D614E747570;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000000001D6690 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74754F65726F6373 && a2 == 0xEF656D614E747570)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *sub_947FC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 16) <= a1)
  {

    return v2;
  }

  sub_97098();
  v7 = sub_43174(a1, a2);
  if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v9 = v6;
  v10 = v5;
  v11 = v4;
  sub_1B5744();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = _swiftEmptyArrayStorage;
  }

  v13 = v12[2];

  if (__OFSUB__(v9 >> 1, v10))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v13 != (v9 >> 1) - v10)
  {
LABEL_13:
    swift_unknownObjectRelease();
    v6 = v9;
    v5 = v10;
    v4 = v11;
LABEL_3:
    sub_51294(v7, v4, v5, v6);
    v2 = v8;
    swift_unknownObjectRelease();
    return v2;
  }

  v2 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return _swiftEmptyArrayStorage;
  }

  return v2;
}

uint64_t sub_94934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v280 = a3;
  v262 = a2;
  v277 = a5;
  v7 = sub_1B4594();
  v270 = *(v7 - 8);
  v8 = *(v270 + 64);
  __chkstk_darwin(v7);
  v275 = &v239 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B45D4();
  v257 = *(v10 - 8);
  v258 = v10;
  v11 = *(v257 + 64);
  __chkstk_darwin(v10);
  v282 = &v239 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2B0C(&qword_22A518, &qword_1C0220);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v274 = &v239 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v239 - v18;
  v20 = __chkstk_darwin(v17);
  v260 = (&v239 - v21);
  v22 = __chkstk_darwin(v20);
  v255 = (&v239 - v23);
  v24 = __chkstk_darwin(v22);
  v259 = (&v239 - v25);
  v26 = __chkstk_darwin(v24);
  v254 = (&v239 - v27);
  __chkstk_darwin(v26);
  v253 = &v239 - v28;
  v29 = sub_1B4414();
  v281 = *(v29 - 8);
  v30 = *(v281 + 64);
  v31 = __chkstk_darwin(v29);
  v273 = &v239 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v250 = &v239 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = (&v239 - v36);
  v38 = __chkstk_darwin(v35);
  v40 = &v239 - v39;
  v41 = __chkstk_darwin(v38);
  v279 = (&v239 - v42);
  v43 = __chkstk_darwin(v41);
  v272 = (&v239 - v44);
  __chkstk_darwin(v43);
  v261 = &v239 - v45;
  v46 = sub_1B40C4();
  v47 = *(v46 - 8);
  v267 = v46;
  v268 = v47;
  v48 = *(v47 + 64);
  v49 = __chkstk_darwin(v46);
  v265 = &v239 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v269 = &v239 - v52;
  __chkstk_darwin(v51);
  v252 = &v239 - v53;
  *&v251 = type metadata accessor for Event();
  v54 = *(v251 - 8);
  v55 = *(v54 + 8);
  v56 = __chkstk_darwin(v251);
  v249 = &v239 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v59 = &v239 - v58;
  v60 = *(a4 + 8);
  v285 = *a4;
  v263 = *(a4 + 16);
  v264 = v60;
  v61 = *(a4 + 104);
  v62 = *(a4 + 136);
  v305 = *(a4 + 120);
  v306 = v62;
  v307 = *(a4 + 152);
  v63 = *(a4 + 40);
  v64 = *(a4 + 72);
  v301 = *(a4 + 56);
  v302 = v64;
  v303 = *(a4 + 88);
  v304 = v61;
  v300[0] = *(a4 + 24);
  v300[1] = v63;
  v299 = _swiftEmptyArrayStorage;
  if (qword_228308 != -1)
  {
LABEL_126:
    swift_once();
  }

  v271 = v40;
  v266 = v37;
  v256 = v29;
  v283 = v19;
  v65 = qword_22E350;
  sub_1B4DB4();
  v276 = v65;
  sub_1B4614();
  v29 = *(a1 + 16);
  v284 = v7;
  if (!v29)
  {
    v286 = _swiftEmptyArrayStorage;
    v66 = 0;
    v278 = 0;
    goto LABEL_44;
  }

  v40 = 0;
  v66 = 0;
  v278 = 0;
  v286 = _swiftEmptyArrayStorage;
  v248 = (v268 + 8);
LABEL_4:
  v7 = v66;
  v19 = v40;
  while (1)
  {
    if (v19 >= v29)
    {
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    v40 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      goto LABEL_124;
    }

    sub_7A1B4(a1 + ((v54[80] + 32) & ~v54[80]) + *(v54 + 9) * v19, v59);
    if (*(v286 + 2) >= v285)
    {
      break;
    }

    v67 = Event.assetID.getter();
    v69 = sub_CC298(v67, v68);
    if ((v70 & 1) == 0)
    {
      if (*(v280 + 2))
      {
        v37 = v69;
        result = sub_43124(v69);
        if (v72)
        {
          v73 = *(v280 + 7) + 88 * result;
          v74 = *(v73 + 16);
          v293 = *v73;
          v294 = v74;
          v76 = *(v73 + 48);
          v75 = *(v73 + 64);
          v77 = *(v73 + 32);
          v298 = *(v73 + 80);
          v296 = v76;
          v297 = v75;
          v295 = v77;
          v66 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_130;
          }

          sub_5EDD8(&v293, &v287);
          v78 = sub_97494(v59, v300);
          v79 = v248;
          if (v78)
          {
            v244 = v66;
            v80 = Event.eventType.getter();
            v242 = v81;
            v243 = v80;
            v245 = COERCE_DOUBLE(Event.endProgress.getter());
            LODWORD(v246) = v82;
            v83 = Event.isSample.getter();
            v241 = v83 != 2 && (v83 & 1) != 0;
            v84 = v249;
            v85 = v267;
            sub_7A1B4(v59, v249);
            if (swift_getEnumCaseMultiPayload() == 10)
            {
              v86 = *(v84 + 8);

              v87 = sub_2B0C(&qword_22A138, &qword_1C59F0);
              v88 = *(v84 + *(v87 + 64));
              (*v79)(v84 + *(v87 + 48), v85);
              v89 = v88;
            }

            else
            {
              sub_7A218(v84);
              v89 = 0.0;
            }

            v90 = v252;
            Event.timestamp.getter(v252);
            sub_1B4064();
            v92 = v91;
            (*v248)(v90, v85);
            if (v293 == 1)
            {

              v93 = 1;
            }

            else
            {
              v94 = sub_1B5604();

              v93 = v94 & 1;
            }

            v247 = v93;
            if (v246)
            {
              v96 = 0.0;
            }

            else
            {
              v95 = v245;
              v96 = v95;
            }

            v289 = v295;
            v290 = v296;
            v291 = v297;
            v292 = v298;
            v287 = v293;
            v288 = v294;
            v97 = Book.Metadata.genreIDs.getter();
            v98 = v278;
            v99 = sub_7EC1C(v97);

            v246 = sub_7EC1C(v100);
            v278 = v98;
            sub_85554(&v293);

            *&v287 = v37;
            v245 = COERCE_DOUBLE(sub_1B5594());
            v240 = v101;
            v102 = v264;
            v37 = sub_947FC(v264, v99);

            v103 = v37[2];
            if (v103 != v102)
            {
              if (__OFSUB__(v102, v103))
              {
                goto LABEL_131;
              }

              v104 = sub_972C8(0, 0xE000000000000000, v102 - v103);
              *&v287 = v37;
              sub_5FC38(v104);
              v37 = v287;
            }

            v105 = v263;
            v106 = sub_947FC(v263, v246);

            v107 = v106[2];
            if (v107 != v105)
            {
              if (__OFSUB__(v105, v107))
              {
                goto LABEL_132;
              }

              v108 = sub_972C8(0, 0xE000000000000000, v105 - v107);
              *&v287 = v106;
              sub_5FC38(v108);
              v106 = v287;
            }

            v109 = v247;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v247 = v109;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v286 = sub_338B0(0, *(v286 + 2) + 1, 1, v286);
            }

            v112 = *(v286 + 2);
            v111 = *(v286 + 3);
            if (v112 >= v111 >> 1)
            {
              v286 = sub_338B0((v111 > 1), v112 + 1, 1, v286);
            }

            v113 = v92;
            sub_7A218(v59);
            v114 = v286;
            *(v286 + 2) = v112 + 1;
            v115 = &v114[72 * v112];
            v116 = v242;
            *(v115 + 4) = v243;
            *(v115 + 5) = v116;
            *(v115 + 12) = v96;
            *(v115 + 13) = v241;
            *(v115 + 14) = v89;
            *(v115 + 15) = v113;
            v66 = v244;
            v117 = v240;
            *(v115 + 8) = v245;
            *(v115 + 9) = v117;
            *(v115 + 20) = v247;
            *(v115 + 11) = v37;
            *(v115 + 12) = v106;
            v299 = v114;
          }

          else
          {
            sub_7A218(v59);
            sub_85554(&v293);
          }

          if (v40 == v29)
          {
            goto LABEL_44;
          }

          goto LABEL_4;
        }
      }
    }

    sub_7A218(v59);
    ++v19;
    if (v40 == v29)
    {
      goto LABEL_43;
    }
  }

  sub_7A218(v59);
LABEL_43:
  v66 = v7;
LABEL_44:
  v252 = sub_2B0C(&qword_22A048, &unk_1BFC60);
  v118 = swift_allocObject();
  v251 = xmmword_1BCA80;
  *(v118 + 16) = xmmword_1BCA80;
  *(v118 + 56) = &type metadata for Int;
  *(v118 + 64) = &protocol witness table for Int;
  *(v118 + 32) = v66;
  sub_1B4DB4();
  sub_1B4614();

  sub_1B4DB4();
  sub_1B4614();
  sub_1B40B4();
  a1 = *(v262 + 16);
  if (a1)
  {
    v40 = 0;
    v19 = 0;
    v248 = (v268 + 8);
    v59 = (v262 + 216);
    v29 = v279;
    v54 = v280;
    v7 = v284;
    while (1)
    {
      if (*v59)
      {
        goto LABEL_48;
      }

      if (!*(v54 + 2))
      {
        goto LABEL_48;
      }

      v37 = *(v59 - 23);
      v119 = *(v59 - 1);
      v120 = sub_43124(v37);
      if ((v121 & 1) == 0)
      {
        goto LABEL_48;
      }

      v122 = *(v54 + 7) + 88 * v120;
      v123 = *(v122 + 16);
      v293 = *v122;
      v294 = v123;
      v125 = *(v122 + 48);
      v124 = *(v122 + 64);
      v126 = *(v122 + 32);
      v298 = *(v122 + 80);
      v296 = v125;
      v297 = v124;
      v295 = v126;
      v40 = (v19 + 1);
      if (__OFADD__(v19, 1))
      {
        goto LABEL_125;
      }

      v127 = *&v301;
      if (*&v301 <= 0.0)
      {
        goto LABEL_47;
      }

      v128 = sub_5EDD8(&v293, &v287);
      sub_97224(v128, 0.0, 1.0);
      if (v129 >= v127)
      {
        sub_85554(&v293);
LABEL_47:
        ++v19;
        goto LABEL_48;
      }

      sub_1B4044();
      sub_1B4064();
      v131 = v130;
      if (v293 == 1)
      {
        break;
      }

      v134 = sub_1B5604();

      v135 = 0;
      v132 = v263;
      v133 = v278;
      if (v134)
      {
        goto LABEL_58;
      }

LABEL_59:
      LODWORD(v262) = v135;
      v289 = v295;
      v290 = v296;
      v291 = v297;
      v292 = v298;
      v287 = v293;
      v288 = v294;
      v136 = Book.Metadata.genreIDs.getter();
      v137 = sub_7EC1C(v136);

      v139 = sub_7EC1C(v138);
      v278 = v133;
      sub_85554(&v293);

      *&v287 = v37;
      v140 = sub_1B5594();
      v249 = v141;
      v142 = v264;
      v143 = sub_947FC(v264, v137);

      v144 = v143[2];
      if (v144 == v142)
      {
        v145 = v286;
      }

      else
      {
        v145 = v286;
        if (__OFSUB__(v142, v144))
        {
          goto LABEL_128;
        }

        v146 = sub_972C8(0, 0xE000000000000000, v142 - v144);
        *&v287 = v143;
        sub_5FC38(v146);
        v143 = v287;
      }

      v147 = sub_947FC(v132, v139);

      v148 = v147[2];
      if (v148 == v132)
      {
        v54 = v280;
      }

      else
      {
        v54 = v280;
        if (__OFSUB__(v132, v148))
        {
          goto LABEL_129;
        }

        v149 = sub_972C8(0, 0xE000000000000000, v132 - v148);
        *&v287 = v147;
        sub_5FC38(v149);
        v147 = v287;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v145 = sub_338B0(0, *(v145 + 2) + 1, 1, v145);
      }

      v151 = *(v145 + 2);
      v150 = *(v145 + 3);
      v286 = v145;
      if (v151 >= v150 >> 1)
      {
        v286 = sub_338B0((v150 > 1), v151 + 1, 1, v286);
      }

      v152 = v131;
      (*v248)(v265, v267);
      v153 = v286;
      *(v286 + 2) = v151 + 1;
      v154 = &v153[72 * v151];
      strcpy(v154 + 32, "bookPurchased");
      *(v154 + 23) = -4864;
      *(v154 + 6) = 0;
      *(v154 + 14) = 0;
      *(v154 + 15) = v152;
      v155 = v249;
      *(v154 + 8) = v140;
      *(v154 + 9) = v155;
      *(v154 + 20) = v262;
      *(v154 + 11) = v143;
      *(v154 + 12) = v147;
      v299 = v153;
      v19 = v40;
      v7 = v284;
      v29 = v279;
LABEL_48:
      v59 += 384;
      if (!--a1)
      {
        goto LABEL_73;
      }
    }

    v132 = v263;
    v133 = v278;
LABEL_58:
    v135 = 1;
    goto LABEL_59;
  }

  v40 = 0;
  v7 = v284;
LABEL_73:
  v156 = swift_allocObject();
  *(v156 + 16) = v251;
  *(v156 + 56) = &type metadata for Int;
  *(v156 + 64) = &protocol witness table for Int;
  *(v156 + 32) = v40;
  sub_1B4DB4();
  sub_1B4614();

  if (v40 >= 1)
  {
    sub_9631C(&v299);
  }

  v157 = v299;
  v158 = *(v299 + 2);
  v159 = v285 - v158;
  if (v285 >= v158)
  {
    v160 = v283;
    if (v285 > v158)
    {
      v161 = sub_972C8(0, 0xE000000000000000, v264);
      v162 = sub_972C8(0, 0xE000000000000000, v263);
      *&v293 = 0;
      *(&v293 + 1) = 0xE000000000000000;
      v294 = 0uLL;
      *&v295 = 0;
      *(&v295 + 1) = 0xE000000000000000;
      v7 = v284;
      LODWORD(v296) = 0;
      *(&v296 + 1) = v161;
      *&v297 = v162;
      v163 = sub_97364(&v293, v159);
      sub_97440(&v293);
      v164 = v163;
      v160 = v283;
      sub_5FD2C(v164);
      v157 = v299;
    }

    goto LABEL_80;
  }

  result = v158 - v285;
  v160 = v283;
  if (!__OFSUB__(v158, v285))
  {
    v157 = sub_964B0(result, v299);
    v299 = v157;
LABEL_80:
    v165 = v7;
    sub_1B45C4();
    sub_1B43F4();
    v166 = *(v157 + 2);
    v280 = v157;
    v286 = v166;
    if (v166)
    {
      *&v287 = _swiftEmptyArrayStorage;
      sub_3747C(0, v166, 0);
      v167 = v287;
      v168 = (v157 + 40);
      do
      {
        v170 = *(v168 - 1);
        v169 = *v168;
        *&v287 = v167;
        v171 = *(v167 + 16);
        v172 = *(v167 + 24);

        if (v171 >= v172 >> 1)
        {
          sub_3747C((v172 > 1), v171 + 1, 1);
          v167 = v287;
        }

        *(v167 + 16) = v171 + 1;
        v173 = v167 + 16 * v171;
        *(v173 + 32) = v170;
        *(v173 + 40) = v169;
        v168 += 9;
        --v166;
      }

      while (v166);
      v160 = v283;
      v174 = v284;
      v157 = v280;
    }

    else
    {
      v174 = v165;
    }

    v175 = v253;
    sub_1B4574();
    v176 = *(v270 + 56);
    v276 = v270 + 56;
    v278 = v176;
    v176(v175, 0, 1, v174);
    sub_1B45F4();
    sub_1B43F4();
    v177 = _swiftEmptyArrayStorage;
    v178 = v174;
    v179 = v286;
    if (v286)
    {
      *&v287 = _swiftEmptyArrayStorage;
      sub_3780C(0, v286, 0);
      v177 = v287;
      v180 = *(v287 + 16);
      v181 = (v157 + 48);
      do
      {
        v182 = *v181;
        *&v287 = v177;
        v183 = v177[3];
        if (v180 >= v183 >> 1)
        {
          sub_3780C((v183 > 1), v180 + 1, 1);
          v177 = v287;
        }

        v177[2] = v180 + 1;
        *(v177 + v180 + 8) = v182;
        v181 += 18;
        ++v180;
        --v179;
      }

      while (v179);
      v160 = v283;
      v178 = v284;
    }

    v184 = v254;
    *v254 = v177;
    v185 = *(v270 + 104);
    LODWORD(v265) = enum case for Feature.floatList(_:);
    v285 = v185;
    v185(v184);
    v278(v184, 0, 1, v178);
    sub_1B45F4();
    sub_1B43F4();
    v186 = v286;
    if (v286)
    {
      *&v287 = _swiftEmptyArrayStorage;
      sub_377EC(0, v286, 0);
      v187 = v287;
      v188 = *(v287 + 16);
      v189 = v280;
      v190 = (v280 + 52);
      v191 = v285;
      do
      {
        v193 = *v190;
        v190 += 18;
        v192 = v193;
        *&v287 = v187;
        v194 = *(v187 + 24);
        if (v188 >= v194 >> 1)
        {
          sub_377EC((v194 > 1), v188 + 1, 1);
          v187 = v287;
        }

        *(v187 + 16) = v188 + 1;
        *(v187 + 4 * v188++ + 32) = v192;
        --v186;
      }

      while (v186);
      v195 = v259;
      *v259 = v187;
      v196 = v284;
      v191(v195, enum case for Feature.int32List(_:), v284);
      v278(v195, 0, 1, v196);
      sub_1B45F4();
      sub_1B43F4();
      *&v287 = _swiftEmptyArrayStorage;
      v197 = v286;
      sub_3780C(0, v286, 0);
      v198 = v287;
      v199 = *(v287 + 16);
      v200 = (v189 + 56);
      do
      {
        v201 = *v200;
        *&v287 = v198;
        v202 = v198[3];
        if (v199 >= v202 >> 1)
        {
          sub_3780C((v202 > 1), v199 + 1, 1);
          v198 = v287;
        }

        v198[2] = v199 + 1;
        *(v198 + v199 + 8) = v201;
        v200 += 18;
        ++v199;
        --v197;
      }

      while (v197);
      v160 = v283;
      v178 = v284;
    }

    else
    {
      v203 = v259;
      *v259 = _swiftEmptyArrayStorage;
      (v285)(v203, enum case for Feature.int32List(_:), v178);
      v278(v203, 0, 1, v178);
      sub_1B45F4();
      sub_1B43F4();
      v198 = _swiftEmptyArrayStorage;
    }

    v204 = v255;
    *v255 = v198;
    v205 = v265;
    (v285)(v204, v265, v178);
    v278(v204, 0, 1, v178);
    sub_1B45F4();
    sub_1B43F4();
    v206 = v286;
    if (v286)
    {
      *&v287 = _swiftEmptyArrayStorage;
      sub_3780C(0, v286, 0);
      v207 = v287;
      v208 = *(v287 + 16);
      v209 = 60;
      v210 = v280;
      v211 = v285;
      do
      {
        v212 = *&v210[v209];
        *&v287 = v207;
        v213 = *(v207 + 24);
        if (v208 >= v213 >> 1)
        {
          sub_3780C((v213 > 1), v208 + 1, 1);
          v205 = v265;
          v207 = v287;
        }

        *(v207 + 16) = v208 + 1;
        *(v207 + 4 * v208 + 32) = v212;
        v209 += 72;
        ++v208;
        --v206;
      }

      while (v206);
      v214 = v260;
      *v260 = v207;
      v215 = v284;
      v211(v214, v205, v284);
      v278(v214, 0, 1, v215);
      sub_1B45F4();
      *&v287 = _swiftEmptyArrayStorage;
      v216 = v286;
      sub_3782C(0, v286, 0);
      v217 = v287;
      v218 = v210 + 96;
      do
      {
        v286 = v216;
        v219 = *(v218 - 4);
        v220 = *(v218 - 3);
        LODWORD(v285) = *(v218 - 4);
        v221 = *(v218 - 1);
        v222 = *v218;
        *&v287 = v217;
        v224 = v217[2];
        v223 = v217[3];

        if (v224 >= v223 >> 1)
        {
          sub_3782C((v223 > 1), v224 + 1, 1);
          v217 = v287;
        }

        v217[2] = v224 + 1;
        v225 = &v217[5 * v224];
        v225[4] = v219;
        v225[5] = v220;
        *(v225 + 12) = v285;
        v225[7] = v221;
        v225[8] = v222;
        v218 += 9;
        v216 = v286 - 1;
      }

      while (v286 != &dword_0 + 1);

      v160 = v283;
      v226 = v217;
    }

    else
    {
      v227 = v260;
      v226 = _swiftEmptyArrayStorage;
      *v260 = _swiftEmptyArrayStorage;
      (v285)(v227, v205, v178);
      v278(v227, 0, 1, v178);
      sub_1B45F4();
    }

    sub_156010(v226, 0xD000000000000011, 0x80000000001D67D0, v282);

    v228 = sub_1B45B4();
    v229 = *(v228 + 16);
    v230 = v256;
    if (v229)
    {
      v231 = *(v281 + 16);
      v232 = (*(v281 + 80) + 32) & ~*(v281 + 80);
      v266 = v228;
      v233 = v228 + v232;
      v285 = *(v281 + 72);
      v286 = (v270 + 48);
      v271 = (v270 + 16);
      v272 = (v270 + 32);
      v270 += 8;
      v279 = (v281 + 8);
      v280 = v231;
      v281 += 16;
      v234 = v250;
      v235 = v284;
      (v231)(v250, v228 + v232, v256);
      while (1)
      {
        sub_1B45E4();
        if ((*v286)(v160, 1, v235) == 1)
        {
          (*v279)(v234, v230);
          sub_967AC(v160);
        }

        else
        {
          v236 = v275;
          (*v272)(v275, v283, v235);
          (v280)(v273, v234, v230);
          v237 = v274;
          (*v271)(v274, v236, v235);
          v278(v237, 0, 1, v235);
          v231 = v280;
          sub_1B45F4();
          v238 = v236;
          v160 = v283;
          (*v270)(v238, v235);
          (*v279)(v234, v230);
        }

        v233 += v285;
        if (!--v229)
        {
          break;
        }

        (v231)(v234, v233, v230);
      }
    }

    (*(v257 + 8))(v282, v258);
    return (*(v268 + 8))(v269, v267);
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

Swift::Int sub_9631C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56AB8(v2);
  }

  v3 = *(v2 + 2);
  v29[0] = (v2 + 32);
  v29[1] = v3;
  result = sub_1B5584(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 104;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 - 11) >= *(v12 + 7))
          {
            break;
          }

          v13 = v12 - 72;
          v24 = *v12;
          v14 = *(v12 + 1);
          v15 = *(v12 + 2);
          v16 = *(v12 + 3);
          v28 = *(v12 + 8);
          v26 = v15;
          v27 = v16;
          v25 = v14;
          *(v12 + 8) = *(v12 - 1);
          v17 = *(v12 - 24);
          *(v12 + 2) = *(v12 - 40);
          *(v12 + 3) = v17;
          v18 = *(v12 - 56);
          *v12 = *(v12 - 72);
          *(v12 + 1) = v18;
          *v13 = v24;
          v19 = v28;
          v20 = v27;
          v21 = v25;
          *(v13 + 2) = v26;
          *(v13 + 3) = v20;
          *(v13 + 8) = v19;
          *(v13 + 1) = v21;
          v12 = v13;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 72;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B4B34();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v24 = v7 + 4;
    *(&v24 + 1) = v6;
    sub_96814(&v24, v23, v29, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_964B0(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = a2;
    v3 = result;
    if (result)
    {
      v4 = *(a2 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = 0;
        v7 = a2 + 32;
        v8 = _swiftEmptyArrayStorage;
        v41 = _swiftEmptyArrayStorage;
        v39 = a2 + 32;
        while (1)
        {
          v40 = v6;
          v9 = (v7 + 72 * v5);
          v10 = v5;
          while (1)
          {
            if (v10 >= *(v2 + 16))
            {
              __break(1u);
              goto LABEL_31;
            }

            v53 = *(v9 + 8);
            v11 = v9[3];
            v51 = v9[2];
            v52 = v11;
            v12 = v9[1];
            v49 = *v9;
            v50 = v12;
            v5 = v10 + 1;
            v13 = v8[2];
            if (v13 >= v3)
            {
              break;
            }

            sub_97860(&v49, &v44);
            result = swift_isUniquelyReferenced_nonNull_native();
            v54 = v8;
            if ((result & 1) == 0)
            {
              result = sub_3784C(0, v13 + 1, 1);
              v8 = v54;
            }

            v15 = v8[2];
            v14 = v8[3];
            if (v15 >= v14 >> 1)
            {
              result = sub_3784C((v14 > 1), v15 + 1, 1);
              v8 = v54;
            }

            v8[2] = v15 + 1;
            v16 = &v8[9 * v15];
            *(v16 + 2) = v49;
            v17 = v50;
            v18 = v51;
            v19 = v52;
            v16[12] = v53;
            *(v16 + 4) = v18;
            *(v16 + 5) = v19;
            *(v16 + 3) = v17;
            v9 = (v9 + 72);
            v10 = v5;
            if (v4 == v5)
            {
              goto LABEL_28;
            }
          }

          if (v40 >= v13)
          {
            goto LABEL_32;
          }

          v20 = &v8[9 * v40];
          v44 = *(v20 + 2);
          v21 = *(v20 + 3);
          v22 = *(v20 + 4);
          v23 = *(v20 + 5);
          v48 = v20[12];
          v46 = v22;
          v47 = v23;
          v45 = v21;
          sub_97860(&v49, v42);
          sub_97860(&v44, v42);
          v24 = v41;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = v41;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_3784C(0, v41[2] + 1, 1);
            v24 = v55;
          }

          v27 = v24[2];
          v26 = v24[3];
          if (v27 >= v26 >> 1)
          {
            sub_3784C((v26 > 1), v27 + 1, 1);
            v24 = v55;
          }

          v24[2] = v27 + 1;
          v41 = v24;
          v28 = &v24[9 * v27];
          *(v28 + 2) = v44;
          v29 = v45;
          v30 = v46;
          v31 = v47;
          v28[12] = v48;
          *(v28 + 4) = v30;
          *(v28 + 5) = v31;
          *(v28 + 3) = v29;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_56BBC(v8);
            v8 = result;
          }

          if (v40 >= v8[2])
          {
            goto LABEL_33;
          }

          v32 = &v8[9 * v40];
          v42[0] = *(v32 + 2);
          v33 = *(v32 + 3);
          v34 = *(v32 + 4);
          v35 = *(v32 + 5);
          v43 = v32[12];
          v42[2] = v34;
          v42[3] = v35;
          v42[1] = v33;
          v37 = v51;
          v36 = v52;
          v38 = v50;
          v32[12] = v53;
          *(v32 + 4) = v37;
          *(v32 + 5) = v36;
          *(v32 + 3) = v38;
          *(v32 + 2) = v49;
          result = sub_97440(v42);
          if ((v40 + 1) < v3)
          {
            v6 = v40 + 1;
          }

          else
          {
            v6 = 0;
          }

          v7 = v39;
          if (v4 - 1 == v10)
          {
            goto LABEL_28;
          }
        }
      }

      v41 = _swiftEmptyArrayStorage;
LABEL_28:

      return v41;
    }

    return v2;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_967AC(uint64_t a1)
{
  v2 = sub_2B0C(&qword_22A518, &qword_1C0220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_96814(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_52E40(v7);
      v7 = result;
    }

    v80 = v7 + 2;
    v81 = v7[2];
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = &v7[2 * v81];
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_96E20((*a3 + 72 * *v82), (*a3 + 72 * *v84), (*a3 + 72 * v85), v89);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_114;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_115;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_116;
        }

        v81 = *v80 - 1;
        result = memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 72 * v6 + 28);
      v10 = 72 * v8;
      v11 = *a3 + 72 * v8;
      v12 = *(v11 + 28);
      v13 = v8 + 2;
      v14 = (v11 + 172);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 18;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v9) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 72 * v6 - 72;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = v22 + v18;
            v94 = *(v22 + v10 + 32);
            v96 = *(v22 + v10 + 48);
            v98 = *(v22 + v10 + 64);
            v90 = *(v22 + v10);
            v92 = *(v22 + v10 + 16);
            result = memmove((v22 + v10), (v22 + v18), 0x48uLL);
            *(v21 + 32) = v94;
            *(v21 + 48) = v96;
            *(v21 + 64) = v98;
            *v21 = v90;
            *(v21 + 16) = v92;
          }

          ++v20;
          v18 -= 72;
          v10 += 72;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_32F04(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v33 = v7[2];
    v32 = v7[3];
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      result = sub_32F04((v32 > 1), v33 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v34;
    v35 = v7 + 4;
    v36 = &v7[2 * v33 + 4];
    *v36 = v8;
    v36[1] = v6;
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_127;
    }

    if (v33)
    {
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v38 = v7[4];
          v39 = v7[5];
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_57:
          if (v41)
          {
            goto LABEL_104;
          }

          v54 = &v7[2 * v34];
          v56 = *v54;
          v55 = v54[1];
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_106;
          }

          v60 = &v35[2 * v37];
          v62 = *v60;
          v61 = v60[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_111;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v64 = &v7[2 * v34];
        v66 = *v64;
        v65 = v64[1];
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_72:
        if (v59)
        {
          goto LABEL_108;
        }

        v67 = &v35[2 * v37];
        v69 = *v67;
        v68 = v67[1];
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_110;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v37 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v75 = &v35[2 * v37 - 2];
        v76 = *v75;
        v77 = &v35[2 * v37];
        v78 = v77[1];
        sub_96E20((*a3 + 72 * *v75), (*a3 + 72 * *v77), (*a3 + 72 * v78), v89);
        if (v4)
        {
        }

        if (v78 < v76)
        {
          goto LABEL_99;
        }

        if (v37 > v7[2])
        {
          goto LABEL_100;
        }

        *v75 = v76;
        v75[1] = v78;
        v79 = v7[2];
        if (v37 >= v79)
        {
          goto LABEL_101;
        }

        v34 = v79 - 1;
        result = memmove(&v35[2 * v37], v77 + 2, 16 * (v79 - 1 - v37));
        v7[2] = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = &v35[2 * v34];
      v43 = *(v42 - 8);
      v44 = *(v42 - 7);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_102;
      }

      v47 = *(v42 - 6);
      v46 = *(v42 - 5);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_103;
      }

      v49 = &v7[2 * v34];
      v51 = *v49;
      v50 = v49[1];
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_105;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_107;
      }

      if (v53 >= v45)
      {
        v71 = &v35[2 * v37];
        v73 = *v71;
        v72 = v71[1];
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 72 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 - 44) >= *(v27 + 28))
    {
LABEL_29:
      ++v6;
      v24 += 72;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = v27 - 72;
    v95 = *(v27 + 32);
    v97 = *(v27 + 48);
    v99 = *(v27 + 64);
    v91 = *v27;
    v93 = *(v27 + 16);
    v29 = *(v27 - 24);
    *(v27 + 32) = *(v27 - 40);
    *(v27 + 48) = v29;
    *(v27 + 64) = *(v27 - 8);
    v30 = *(v27 - 56);
    *v27 = *(v27 - 72);
    *(v27 + 16) = v30;
    *(v28 + 64) = v99;
    *(v28 + 32) = v95;
    *(v28 + 48) = v97;
    v27 -= 72;
    *v28 = v91;
    *(v28 + 16) = v93;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_96E20(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 72;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 72;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[18 * v9] <= a4)
    {
      memmove(a4, __dst, 72 * v9);
    }

    v12 = &v4[18 * v9];
    if (v8 < 72)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[7] < v6[7])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 18;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 18;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 18;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x48uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[18 * v11] <= a4)
  {
    memmove(a4, __src, 72 * v11);
  }

  v12 = &v4[18 * v11];
  if (v10 >= 72 && v6 > v7)
  {
LABEL_20:
    v5 -= 18;
    do
    {
      v15 = v5 + 18;
      if (*(v6 - 11) < *(v12 - 11))
      {
        v17 = v6 - 18;
        if (v15 != v6)
        {
          memmove(v5, v6 - 18, 0x48uLL);
        }

        if (v12 <= v4 || (v6 -= 18, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 18);
      if (v15 != v12)
      {
        memmove(v5, v12 - 18, 0x48uLL);
      }

      v5 -= 18;
      v12 -= 18;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 72;
  if (v6 != v4 || v6 >= &v4[18 * v18])
  {
    memmove(v6, v4, 72 * v18);
  }

  return 1;
}

void sub_97098()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      swift_stdlib_random();
      v6 = (0 * v2) >> 64;
      if (v2)
      {
        if (-v2 % v2)
        {
          while (1)
          {
            swift_stdlib_random();
          }
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_18;
        }

        if (v8 >= v9)
        {
          goto LABEL_19;
        }

        v10 = &v1[16 * v4 + 32];
        v12 = *v10;
        v11 = *(v10 + 1);
        v13 = &v1[16 * v8 + 32];
        v15 = *v13;
        v14 = *(v13 + 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_56B08(v1);
        }

        if (v4 >= *(v1 + 2))
        {
          goto LABEL_20;
        }

        v16 = &v1[16 * v4 + 32];
        v17 = *(v16 + 1);
        *v16 = v15;
        *(v16 + 1) = v14;

        if (v8 >= *(v1 + 2))
        {
          goto LABEL_21;
        }

        v18 = &v1[16 * v8 + 32];
        v19 = *(v18 + 1);
        *v18 = v12;
        *(v18 + 1) = v11;

        *v20 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

uint64_t sub_97224(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  result = swift_stdlib_random();
  if (v5 * vcvtd_n_f64_u64(0, 0x35uLL) + a2 == a3)
  {
    return sub_97224(v6, a2, a3);
  }

  return result;
}

void *sub_972C8(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return _swiftEmptyArrayStorage;
    }

    v4 = result;
    v6 = sub_1B4B34();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

void *sub_97364(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v2 = result;
    v4 = sub_1B4B34();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = *v2;
    v7 = *(v2 + 32);
    v6 = *(v2 + 48);
    v8 = *(v2 + 16);
    *(v4 + 96) = *(v2 + 64);
    *(v4 + 64) = v7;
    *(v4 + 80) = v6;
    *(v4 + 48) = v8;
    v9 = a2 - 1;
    if (v9)
    {
      v10 = v4 + 104;
      do
      {
        sub_97860(v2, v14);
        *v10 = *v2;
        v11 = *(v2 + 16);
        v12 = *(v2 + 32);
        v13 = *(v2 + 48);
        *(v10 + 64) = *(v2 + 64);
        *(v10 + 32) = v12;
        *(v10 + 48) = v13;
        *(v10 + 16) = v11;
        v10 += 72;
        --v9;
      }

      while (v9);
    }

    sub_97860(v2, v14);
    return v5;
  }

  return result;
}

BOOL sub_97494(uint64_t a1, double *a2)
{
  v4 = type metadata accessor for Event();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7A1B4(a1, v7);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  v8 = *(v7 + 1);

  switch(a1)
  {
    case 1:
      v9 = &v7[*(sub_2B0C(&qword_22A130, &unk_1BFD50) + 48)];
      ++a2;
      break;
    case 2:
      v9 = &v7[*(sub_2B0C(&qword_22A150, &qword_1BFD70) + 48)];
      a2 += 2;
      break;
    case 3:
      v9 = &v7[*(sub_2B0C(&qword_22A150, &qword_1BFD70) + 48)];
      a2 += 3;
      break;
    case 4:
      v9 = &v7[*(sub_2B0C(&qword_22A130, &unk_1BFD50) + 48)];
      a2 += 5;
      break;
    case 5:
      v9 = &v7[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      a2 += 6;
      break;
    case 6:
      v9 = &v7[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      a2 += 7;
      break;
    case 7:
      v9 = &v7[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      a2 += 8;
      break;
    case 8:
      v9 = &v7[*(sub_2B0C(&qword_22A148, &qword_1BFD68) + 48)];
      a2 += 9;
      break;
    case 9:
      v9 = &v7[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      a2 += 10;
      break;
    case 10:
      v9 = &v7[*(sub_2B0C(&qword_22A138, &qword_1C59F0) + 48)];
      a2 += 11;
      break;
    case 11:
      v9 = &v7[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      a2 += 12;
      break;
    case 12:
      v9 = &v7[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      a2 += 13;
      break;
    case 13:
      v9 = &v7[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      a2 += 14;
      break;
    case 14:
      v9 = &v7[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      a2 += 15;
      break;
    case 15:
      v9 = &v7[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      a2 += 16;
      break;
    case 16:
      v9 = &v7[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      a2 += 17;
      break;
    default:
      v9 = &v7[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      break;
  }

  v10 = *a2;
  v11 = sub_1B40C4();
  v12 = (*(*(v11 - 8) + 8))(v9, v11);
  if (v10 <= 0.0)
  {
    return 0;
  }

  sub_97224(v12, 0.0, 1.0);
  return v13 < v10;
}

unint64_t AccessRequirementUnsatisfiedReason.description.getter()
{
  v1 = 0xD00000000000005ALL;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000016;
  }

  v2 = 0xD000000000000021;
  if (!*v0)
  {
    v2 = 0xD00000000000002FLL;
  }

  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

unint64_t sub_97934()
{
  result = qword_22ABA0;
  if (!qword_22ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ABA0);
  }

  return result;
}

BooksPersonalization::Environment_optional __swiftcall Environment.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_213040;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t Environment.rawValue.getter()
{
  v1 = 0x6C65766564;
  v2 = 0x676E6967617473;
  if (*v0 != 2)
  {
    v2 = 0x69746375646F7270;
  }

  if (*v0)
  {
    v1 = 24945;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_97A80()
{
  result = qword_22ABA8;
  if (!qword_22ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ABA8);
  }

  return result;
}

Swift::Int sub_97AD4()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_97B8C()
{
  *v0;
  *v0;
  *v0;
  sub_1B4884();
}

Swift::Int sub_97C30()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_97CF0(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6C65766564;
  v4 = 0xE700000000000000;
  v5 = 0x676E6967617473;
  if (*v1 != 2)
  {
    v5 = 0x69746375646F7270;
    v4 = 0xEA00000000006E6FLL;
  }

  if (*v1)
  {
    v3 = 24945;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_97D68()
{
  result = qword_22ABB0;
  if (!qword_22ABB0)
  {
    sub_1CC1C(&qword_22ABB8, &qword_1C1F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ABB0);
  }

  return result;
}

uint64_t sub_97E18(uint64_t a1, unsigned int a2)
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

uint64_t sub_97E60(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_97EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000000001D6860 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B5604();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_97F7C(uint64_t a1)
{
  v2 = sub_98140();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_97FB8(uint64_t a1)
{
  v2 = sub_98140();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GenreCollectionRecommendationRequest.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22ABC0, &qword_1C20C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_2698(a1, a1[3]);
  sub_98140();
  sub_1B5884();
  v12 = v8;
  sub_98194();
  sub_1B5544();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_98140()
{
  result = qword_22ABC8;
  if (!qword_22ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ABC8);
  }

  return result;
}

unint64_t sub_98194()
{
  result = qword_22ABD0;
  if (!qword_22ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ABD0);
  }

  return result;
}

uint64_t GenreCollectionRecommendationRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22ABD8, &qword_1C20C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_98140();
  sub_1B5864();
  if (!v2)
  {
    sub_98354();
    sub_1B5404();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_2BF8(a1);
}

unint64_t sub_98354()
{
  result = qword_22ABE0;
  if (!qword_22ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ABE0);
  }

  return result;
}

uint64_t sub_983D8(uint64_t a1)
{
  *(v2 + 2264) = v1;
  *(v2 + 2256) = a1;
  return _swift_task_switch(sub_983FC, 0, 0);
}

uint64_t sub_983FC()
{
  v1 = *(v0 + 2264);
  v2 = v1[5];
  v3 = v1[6];
  sub_2698(v1 + 2, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 2272) = v6;
  *v6 = v0;
  v6[1] = sub_9852C;

  return v8(v0 + 16, v2, v3);
}

uint64_t sub_9852C()
{
  v2 = *(*v1 + 2272);
  v5 = *v1;
  *(*v1 + 2280) = v0;

  if (v0)
  {
    v3 = sub_98B54;
  }

  else
  {
    v3 = sub_98640;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_98640()
{
  v1 = *(v0 + 2264);
  memcpy((v0 + 1136), (v0 + 16), 0x460uLL);
  v2 = v1[10];
  v3 = v1[11];
  sub_2698(v1 + 7, v2);
  *(v0 + 2312) = 1280;
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 2288) = v6;
  *v6 = v0;
  v6[1] = sub_98788;

  return v8(v0 + 2312, v2, v3);
}

uint64_t sub_98788(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2288);
  v7 = *v2;
  *(v3 + 2296) = a1;
  *(v3 + 2304) = v1;

  if (v1)
  {
    sub_2B54(v3 + 1136);
    v5 = sub_98B6C;
  }

  else
  {
    v5 = sub_988A8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_988A8()
{
  v29 = v0;
  v1 = *(*(v0 + 2256) + 16);

  if (v1)
  {
    v23 = v1;
    v3 = 0;
    v25 = result + 32;
    v26 = *(v0 + 2296);
    v4 = v26 + 56;
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      v22 = v5;
      v6 = (v4 + 40 * v3);
      v7 = v3;
      v8 = v23;
      while (1)
      {
        if (v7 >= v8)
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }

        v3 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_26;
        }

        v9 = *(v26 + 16);
        if (v7 == v9)
        {
LABEL_20:
          v5 = v22;
          goto LABEL_22;
        }

        if (v7 >= v9)
        {
          goto LABEL_27;
        }

        v10 = *(v25 + v7);
        v11 = *(v6 - 3);
        v24 = *(v6 - 16);
        v13 = *(v6 - 1);
        v12 = *v6;
        memcpy(__dst, (v0 + 1136), sizeof(__dst));

        Configuration.mediaType(for:)(v11);
        if (v28[0] != 2)
        {
          break;
        }

LABEL_5:
        ++v7;
        v6 += 5;
        if (v3 == v8)
        {
          goto LABEL_20;
        }
      }

      memcpy(__dst, (v0 + 1136), sizeof(__dst));
      v28[0] &= 1u;
      v14 = sub_98C44(v28);
      v15 = sub_2ADF8(v10, v14);

      if ((v15 & 1) != 0 && *(v0 + 1160) == 1)
      {
        break;
      }

      v5 = v22;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_33B00(0, *(v22 + 2) + 1, 1, v22);
        v5 = result;
      }

      v4 = v26 + 56;
      v17 = *(v5 + 2);
      v16 = *(v5 + 3);
      if (v17 >= v16 >> 1)
      {
        result = sub_33B00((v16 > 1), v17 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 2) = v17 + 1;
      v18 = &v5[40 * v17];
      *(v18 + 4) = v11;
      v18[40] = v24;
      *(v18 + 6) = v13;
      *(v18 + 7) = v12;
      v18[64] = v10;
      if (v3 == v23)
      {
        goto LABEL_22;
      }
    }

    v8 = v23;
    goto LABEL_5;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_22:
  v19 = *(v0 + 2296);
  v20 = *(v0 + 2256);
  sub_2B54(v0 + 1136);

  v21 = *(v0 + 8);

  return v21(v5);
}

BooksPersonalization::Book::MediaType_optional __swiftcall Configuration.mediaType(for:)(Swift::UInt64 a1)
{
  v4 = v1;
  v5 = *(v2 + 632);
  v6 = *(v2 + 648);
  v7 = 0;

  v9 = *(v8 + 16);
  v10 = 32;
  while (v9)
  {
    v11 = *(v8 + v10);
    v10 += 8;
    --v9;
    if (v11 == a1)
    {
LABEL_8:

      goto LABEL_10;
    }
  }

  v7 = 1;

  v13 = *(v12 + 16);
  v14 = 32;
  while (v13)
  {
    v15 = *(v12 + v14);
    v14 += 8;
    --v13;
    if (v15 == a1)
    {
      goto LABEL_8;
    }
  }

  v7 = 2;
LABEL_10:
  *v4 = v7;
  return result;
}

void *sub_98C44(_BYTE *a1)
{
  v2 = (v1 + 640);
  if (*a1)
  {
    v3 = (v1 + 648);
  }

  else
  {
    v3 = (v1 + 632);
  }

  v4 = *v3;
  if (*a1)
  {
    v2 = (v1 + 656);
  }

  v5 = *v2;
  if (*a1)
  {
    v6 = (v1 + 657);
  }

  else
  {
    v6 = (v1 + 641);
  }

  v7 = *v6;
  if (v5 == 1)
  {
    v8 = _swiftEmptySetSingleton[5];
    sub_1B57F4();

    sub_1B4884();
    v9 = sub_1B5844();
    v10 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
    v11 = v9 & ~v10;
    if ((*(&_swiftEmptySetSingleton[7] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      v12 = ~v10;
      v13 = _swiftEmptySetSingleton[6];
      while (*(v13 + v11) == 1 && (sub_1B5604() & 1) == 0)
      {
        v11 = (v11 + 1) & v12;
        if (((*(&_swiftEmptySetSingleton[7] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_116A7C(0, v11, isUniquelyReferenced_nonNull_native);
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {

    if ((v7 & 1) == 0)
    {
LABEL_25:

      return _swiftEmptySetSingleton;
    }
  }

  v15 = _swiftEmptySetSingleton[5];
  sub_1B57F4();
  sub_1B4884();
  v16 = sub_1B5844();
  v17 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
  v18 = v16 & ~v17;
  if ((*(&_swiftEmptySetSingleton[7] + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    v20 = _swiftEmptySetSingleton[6];
    while (*(v20 + v18) != 1 && (sub_1B5604() & 1) == 0)
    {
      v18 = (v18 + 1) & v19;
      if (((*(&_swiftEmptySetSingleton[7] + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_116A7C(1, v18, v21);

  return _swiftEmptySetSingleton;
}

uint64_t BookHistoryServiceStressTest.__deallocating_deinit()
{
  sub_2BF8((v0 + 16));
  sub_2BF8((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_98ED0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_91B58;

  return sub_983D8(a1);
}

uint64_t sub_98F68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_98FB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of GenreCollectionRecommendationServiceType.fetchRecommendedGenreCollections(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_441B4;

  return v11(a1, a2, a3);
}

unint64_t sub_99174()
{
  result = qword_22AC90;
  if (!qword_22AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AC90);
  }

  return result;
}

unint64_t sub_991CC()
{
  result = qword_22AC98;
  if (!qword_22AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AC98);
  }

  return result;
}

unint64_t sub_99224()
{
  result = qword_22ACA0;
  if (!qword_22ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ACA0);
  }

  return result;
}

void *sub_99278(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  sub_3744C(0, v6, 0);
  v7 = v6;
  result = _swiftEmptyArrayStorage;
  v31 = v4;
  v29 = a1;
  v30 = a2;
  if (v6)
  {
    v9 = (a1 + 32);
    v10 = (a2 + 32);
    v11 = v7;
    v12 = v5;
    v13 = v5;
    while (v4)
    {
      if (!v12)
      {
        goto LABEL_23;
      }

      v14 = *v9;
      v15 = *v10;
      v32 = result;
      v17 = result[2];
      v16 = result[3];
      if (v17 >= v16 >> 1)
      {
        v26 = v13;
        v27 = v7;
        sub_3744C((v16 > 1), v17 + 1, 1);
        v13 = v26;
        v7 = v27;
        result = v32;
      }

      result[2] = v17 + 1;
      v18 = &result[2 * v17];
      --v12;
      v18[4] = v14;
      v18[5] = v15;
      --v4;
      ++v10;
      ++v9;
      if (!--v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = v5;
LABEL_13:
  if (v31 > v13)
  {
    while (v7 < v31)
    {
      v19 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_25;
      }

      if (v13 != v7)
      {
        if (v7 >= v13)
        {
          goto LABEL_26;
        }

        v20 = *(v29 + 32 + 8 * v7);
        v21 = *(v30 + 32 + 8 * v7);
        v33 = result;
        v23 = result[2];
        v22 = result[3];
        if (v23 >= v22 >> 1)
        {
          v28 = v7;
          v25 = v13;
          sub_3744C((v22 > 1), v23 + 1, 1);
          v7 = v28;
          v13 = v25;
          result = v33;
        }

        result[2] = v23 + 1;
        v24 = &result[2 * v23];
        v24[4] = v20;
        v24[5] = v21;
        ++v7;
        if (v19 != v31)
        {
          continue;
        }
      }

      return result;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t WorkServiceSuggestionsService.fetchBooks(with:configuration:)(uint64_t a1)
{
  *(v2 + 88) = v1;
  v4 = sub_2B0C(&qword_22A4D8, &unk_1C5FC0);
  *(v2 + 96) = v4;
  v5 = *(v4 - 8);
  *(v2 + 104) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  v7 = sub_1B40F4();
  *(v2 + 120) = v7;
  v8 = *(v7 - 8);
  *(v2 + 128) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v10 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v10;
  *(v2 + 80) = *(a1 + 64);
  v11 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v11;

  return _swift_task_switch(sub_995A4, 0, 0);
}

uint64_t sub_995A4()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  sub_1B40E4();
  v4 = *(v0 + 48);
  v5 = *(v3 + OBJC_IVAR____TtC20BooksPersonalization29WorkServiceSuggestionsService_computeService);
  v6 = swift_task_alloc();
  *(v6 + 16) = v1;
  *(v6 + 24) = v0 + 16;
  sub_1B4444();
  v7 = *(v0 + 112);

  v8 = sub_9A580(v7);
  v9 = v8[2];
  if (v9)
  {
    v27 = v8;
    sub_375F8(0, v9, 0);
    result = v27;
    if (!v27[2])
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v11 = 0;
    v12 = _swiftEmptyArrayStorage[2];
    v13 = (v12 << 6) + 88;
    v14 = v27 + 5;
    while (1)
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      v28 = *v30;
      HIBYTE(v28) = v30[3];
      v29 = *v31;
      HIBYTE(v29) = v31[3];
      v17 = _swiftEmptyArrayStorage[3];
      if (v12 >= v17 >> 1)
      {
        sub_375F8((v17 > 1), v12 + 1, 1);
        result = v27;
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      v18 = (_swiftEmptyArrayStorage + v13);
      *(v18 - 7) = v15;
      *(v18 - 48) = v4;
      *(v18 - 47) = v28;
      *(v18 - 11) = *&v30[3];
      *(v18 - 5) = 0;
      *(v18 - 32) = -1;
      *(v18 - 7) = *&v31[3];
      *(v18 - 31) = v29;
      *(v18 - 1) = 0;
      *(v18 - 3) = _swiftEmptyArrayStorage;
      *(v18 - 2) = 0;
      *v18 = v16;
      if (v9 - 1 == v11)
      {
        break;
      }

      ++v11;
      v13 += 64;
      v14 += 2;
      ++v12;
      if (v11 >= *(result + 16))
      {
        goto LABEL_14;
      }
    }

    v20 = *(v0 + 104);
    v19 = *(v0 + 112);
    v21 = *(v0 + 96);

    (*(v20 + 8))(v19, v21);
  }

  else
  {
    v23 = *(v0 + 104);
    v22 = *(v0 + 112);
    v24 = *(v0 + 96);

    (*(v23 + 8))(v22, v24);
  }

  v25 = *(v0 + 112);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

  v26 = *(v0 + 8);

  return v26(_swiftEmptyArrayStorage);
}

uint64_t sub_998E8@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_1B45D4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B4414();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  __chkstk_darwin(v14);
  if (a1[38])
  {
    v45 = a2;
    v46 = a3;
    v52 = v10;
    v47 = v3;
    v18 = a1[39];
    v17 = a1[40];
    v19 = a1[37];
    v20 = v16;
    v21 = &v42 - v15;

    v49 = v21;
    sub_1B43F4();

    v48 = v20;
    sub_1B43F4();
    if (qword_228310 != -1)
    {
      swift_once();
    }

    v44 = qword_22E358;
    LODWORD(v43) = sub_1B4D84();
    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1C00E0;
    sub_1B40F4();
    sub_85D3C();
    v23 = sub_1B5594();
    v25 = v24;
    *(v22 + 56) = &type metadata for String;
    v26 = sub_76888();
    *(v22 + 64) = v26;
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1B51F4();
    v27 = v50;
    v28 = v51;
    *(v22 + 96) = &type metadata for String;
    *(v22 + 104) = v26;
    *(v22 + 72) = v27;
    *(v22 + 80) = v28;
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1B51F4();
    v29 = v50;
    v30 = v51;
    *(v22 + 136) = &type metadata for String;
    *(v22 + 144) = v26;
    *(v22 + 112) = v29;
    *(v22 + 120) = v30;
    sub_1B4614();

    sub_99D20(v45, v52);
    v31 = sub_1B40D4();
    v44 = v32;
    v45 = v31;
    v42 = off_22EE30;
    v43 = qword_22EE28;
    sub_2B0C(&qword_229440, &qword_1BC4E0);
    v33 = *(v12 + 72);
    v34 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1BFC80;
    v36 = v35 + v34;
    v37 = *(v12 + 16);
    v38 = v48;
    v37(v36, v48, v11);
    v39 = v49;
    v37(v36 + v33, v49, v11);

    sub_40F30(v35);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1B45A4();
    v40 = *(v12 + 8);
    v40(v38, v11);
    return (v40)(v39, v11);
  }

  else
  {
    sub_9AE08();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_99D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4824();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v64[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2B0C(&qword_22A518, &qword_1C0220);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v69 = &v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v70 = &v64[-v14];
  v15 = __chkstk_darwin(v13);
  v77 = &v64[-v16];
  v17 = __chkstk_darwin(v15);
  v74 = &v64[-v18];
  __chkstk_darwin(v17);
  v20 = &v64[-v19];
  v21 = sub_1B4414();
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v67 = &v64[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __chkstk_darwin(v23);
  v84 = &v64[-v26];
  v27 = __chkstk_darwin(v25);
  v75 = &v64[-v28];
  v29 = __chkstk_darwin(v27);
  v80 = &v64[-v30];
  __chkstk_darwin(v29);
  v32 = *(a1 + 16);
  v31 = *(a1 + 24);
  v79 = *(a1 + 32);
  v73 = *(a1 + 33);
  v76 = *(a1 + 40);
  v65 = *(a1 + 48);
  v33 = *(a1 + 64);
  v66 = *(a1 + 56);
  v68 = v33;
  v85 = a2;
  sub_1B45C4();
  sub_1B43F4();
  sub_2B0C(&qword_22ACE8, &qword_1C23D8);
  v34 = swift_allocObject();
  v86 = xmmword_1BCA80;
  *(v34 + 16) = xmmword_1BCA80;
  sub_1B4804();
  v35 = sub_1B47D4();
  v37 = v36;
  v38 = *(v5 + 8);
  v81 = v5 + 8;
  v82 = v4;
  v78 = v38;
  result = v38(v8, v4);
  if (v37 >> 60 == 15)
  {
    goto LABEL_12;
  }

  *(v34 + 32) = v35;
  *(v34 + 40) = v37;
  *v20 = v34;
  v40 = enum case for Feature.bytesList(_:);
  v41 = sub_1B4594();
  v42 = *(v41 - 8);
  v44 = (v42 + 104);
  v43 = *(v42 + 104);
  v71 = v40;
  v83 = v43;
  v43(v20, v40, v41);
  v46 = *(v42 + 56);
  v45 = v42 + 56;
  v72 = v46;
  v46(v20, 0, 1, v41);
  sub_1B45F4();
  sub_1B43F4();
  v47 = swift_allocObject();
  *(v47 + 16) = v86;
  sub_1B4804();
  v48 = sub_1B47D4();
  v50 = v49;

  result = v78(v8, v82);
  if (v50 >> 60 != 15)
  {
    *(v47 + 32) = v48;
    *(v47 + 40) = v50;
    v51 = v74;
    *v74 = v47;
    v52 = v83;
    v83(v51, v71, v41);
    v53 = v72;
    v72(v51, 0, 1, v41);
    sub_1B45F4();
    sub_1B43F4();
    v54 = v44;
    v55 = sub_2B0C(&qword_229460, &qword_1C23E0);
    v56 = swift_allocObject();
    *(v56 + 16) = v86;
    *(v56 + 32) = v73;
    v57 = v77;
    *v77 = v56;
    v58 = enum case for Feature.int32List(_:);
    v52(v57, enum case for Feature.int32List(_:), v41);
    v81 = v45;
    v53(v57, 0, 1, v41);
    sub_1B45F4();
    sub_1B43F4();
    v82 = v55;
    result = swift_allocObject();
    *(result + 16) = v86;
    if (v76 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v76 <= 0x7FFFFFFF)
    {
      v59 = v52;
      *(result + 32) = v76;
      v60 = v70;
      *v70 = result;
      v59(v60, v58, v41);
      v53(v60, 0, 1, v41);
      sub_1B45F4();
      sub_1B43F4();
      v61 = swift_allocObject();
      *(v61 + 16) = v86;
      *(v61 + 32) = v65;
      v62 = v59;
      v63 = v69;
      *v69 = v61;
      v79 = v58;
      v80 = v54;
      v62(v63, v58, v41);
      v53(v63, 0, 1, v41);
      sub_1B45F4();
      sub_1B43F4();
      sub_7EC1C(v66);
      sub_1B4574();
      v53(v60, 0, 1, v41);
      sub_1B45F4();
      sub_1B43F4();
      result = swift_allocObject();
      *(result + 16) = v86;
      if (v68 >= 0xFFFFFFFF80000000)
      {
        if (v68 <= 0x7FFFFFFF)
        {
          *(result + 32) = v68;
          *v60 = result;
          v83(v60, v79, v41);
          v53(v60, 0, 1, v41);
          return sub_1B45F4();
        }

        goto LABEL_11;
      }

LABEL_10:
      __break(1u);
LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_9A580(uint64_t a1)
{
  v2 = sub_1B4414();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  v42 = sub_2B0C(&qword_22A4D8, &unk_1C5FC0);
  v43 = a1;
  sub_1B4454();
  memcpy(v45, v44, 0x1B0uLL);
  v9 = v45[35];
  v10 = v45[36];
  v11 = v45[37];
  v12 = v45[38];
  sub_9ADC4(v45[35], v45[36], v45[37], v45[38]);
  sub_726C8(v45);
  if (v12)
  {

    v38 = v8;
    sub_1B43F4();

    sub_1B43F4();
    sub_9AE5C(v9, v10, v11, v12);
    v13 = sub_9AEA0();
    v14 = v41;
    v15 = sub_1B4514();
    v16 = v14;
    if (v14)
    {
      if (qword_228310 == -1)
      {
LABEL_4:
        sub_1B4D94();
        v9 = _swiftEmptyArrayStorage;
        sub_1B4614();

        v17 = v38;
LABEL_30:
        v32 = v40;
        v33 = *(v39 + 8);
        v33(v6, v40);
        v33(v17, v32);
        return v9;
      }
    }

    else
    {
      v18 = v15;
      v41 = v13;
      v19 = *(v15 + 16);
      if (!v19)
      {

        v21 = _swiftEmptyArrayStorage;
LABEL_14:
        v17 = v38;
        v24 = sub_1B4504();
        if (v16)
        {

          if (qword_228310 != -1)
          {
            swift_once();
          }

          sub_1B4D94();
          v9 = _swiftEmptyArrayStorage;
          sub_1B4614();
        }

        else
        {
          v25 = *(v24 + 16);
          if (v25)
          {
            v37 = v6;
            v43 = v24;
            v44[0] = _swiftEmptyArrayStorage;
            sub_37708(0, v25, 0);
            v26 = v43;
            v27 = v44[0];
            v28 = *(v44[0] + 16);
            v29 = 32;
            do
            {
              v30 = *(v26 + v29);
              v44[0] = v27;
              v31 = v27[3];
              if (v28 >= v31 >> 1)
              {
                sub_37708((v31 > 1), v28 + 1, 1);
                v26 = v43;
                v27 = v44[0];
              }

              v27[2] = v28 + 1;
              *&v27[v28 + 4] = v30;
              v29 += 4;
              ++v28;
              --v25;
            }

            while (v25);

            v6 = v37;
            v17 = v38;
          }

          else
          {

            v27 = _swiftEmptyArrayStorage;
          }

          if (v27[2] == v21[2])
          {
            v9 = sub_99278(v21, v27);
          }

          else
          {

            if (qword_228310 != -1)
            {
              swift_once();
            }

            sub_1B4D94();
            v9 = _swiftEmptyArrayStorage;
            sub_1B4614();
          }
        }

        goto LABEL_30;
      }

      v36 = 0;
      v37 = v6;
      v44[0] = _swiftEmptyArrayStorage;
      sub_3741C(0, v19, 0);
      v20 = 32;
      v21 = v44[0];
      while (1)
      {
        v22 = *(v18 + v20);
        if (v22 < 0)
        {
          break;
        }

        v44[0] = v21;
        v6 = v21[2];
        v23 = v21[3];
        if (v6 >= v23 >> 1)
        {
          sub_3741C((v23 > 1), v6 + 1, 1);
          v21 = v44[0];
        }

        v21[2] = v6 + 1;
        v21[v6 + 4] = v22;
        v20 += 8;
        if (!--v19)
        {

          v16 = v36;
          v6 = v37;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  sub_9AE08();
  swift_allocError();
  swift_willThrow();
  return v9;
}

id FrameworkAssembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FrameworkAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_9AC14(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_91B58;

  return WorkServiceSuggestionsService.fetchBooks(with:configuration:)(a1);
}

uint64_t sub_9ACDC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {
    if (*(v4 + 16) > a1)
    {
      v6 = *(v4 + 16);
    }

    return a2();
  }

  return result;
}

uint64_t sub_9ADC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

unint64_t sub_9AE08()
{
  result = qword_22ACE0;
  if (!qword_22ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ACE0);
  }

  return result;
}

uint64_t sub_9AE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

unint64_t sub_9AEA0()
{
  result = qword_22A4F8;
  if (!qword_22A4F8)
  {
    sub_1CC1C(&qword_22A4D8, &unk_1C5FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A4F8);
  }

  return result;
}

unint64_t sub_9AF18()
{
  result = qword_22ACF0;
  if (!qword_22ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ACF0);
  }

  return result;
}

uint64_t sub_9AF6C(uint64_t a1, uint64_t (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v7 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = *(*(a4 + 48) + (__clz(__rbit64(v10)) | (v14 << 6)));
      result = a2(&v16, &v15);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;
      v13 = v14;
      if (!v10)
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
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v16;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_9B098@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_9B0C8(uint64_t a1)
{
  v2 = sub_9E638();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9B104(uint64_t a1)
{
  v2 = sub_9E638();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_9B140(uint64_t a1)
{
  v2 = sub_9E68C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9B17C(uint64_t a1)
{
  v2 = sub_9E68C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_9B1B8()
{
  v1 = *v0;
  v2 = 0x726F68747561;
  v3 = 0x6B6F6F4264656573;
  if (v1 != 5)
  {
    v3 = 0xD000000000000018;
  }

  v4 = 0x707954616964656DLL;
  if (v1 == 3)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x65726E6567;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_9B298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_9F08C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_9B2CC(uint64_t a1)
{
  v2 = sub_9E440();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9B308(uint64_t a1)
{
  v2 = sub_9E440();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_9B354(uint64_t a1)
{
  v2 = sub_9E590();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9B390(uint64_t a1)
{
  v2 = sub_9E590();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_9B3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B5604();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_9B44C(uint64_t a1)
{
  v2 = sub_9E5E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9B488(uint64_t a1)
{
  v2 = sub_9E5E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_9B4C4(uint64_t a1)
{
  v2 = sub_9E53C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9B500(uint64_t a1)
{
  v2 = sub_9E53C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_9B53C(uint64_t a1)
{
  v2 = sub_9E494();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9B578(uint64_t a1)
{
  v2 = sub_9E494();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_9B5B4(uint64_t a1)
{
  v2 = sub_9E4E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9B5F0(uint64_t a1)
{
  v2 = sub_9E4E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ScorableAttributeType.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22ACF8, &qword_1C24A0);
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = *(v63 + 64);
  __chkstk_darwin(v3);
  v62 = &v47 - v5;
  v6 = sub_2B0C(&qword_22AD00, &qword_1C24A8);
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  __chkstk_darwin(v6);
  v54 = &v47 - v8;
  v9 = sub_2B0C(&qword_22AD08, &qword_1C24B0);
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  __chkstk_darwin(v9);
  v51 = &v47 - v11;
  v12 = sub_2B0C(&qword_22AD10, &qword_1C24B8);
  v60 = *(v12 - 8);
  v61 = v12;
  v13 = *(v60 + 64);
  __chkstk_darwin(v12);
  v59 = &v47 - v14;
  v15 = sub_2B0C(&qword_22AD18, &qword_1C24C0);
  v57 = *(v15 - 8);
  v58 = v15;
  v16 = *(v57 + 64);
  __chkstk_darwin(v15);
  v18 = &v47 - v17;
  v19 = sub_2B0C(&qword_22AD20, &qword_1C24C8);
  v49 = *(v19 - 8);
  v50 = v19;
  v20 = *(v49 + 64);
  __chkstk_darwin(v19);
  v48 = &v47 - v21;
  v22 = sub_2B0C(&qword_22AD28, &qword_1C24D0);
  v47 = *(v22 - 8);
  v23 = *(v47 + 64);
  __chkstk_darwin(v22);
  v25 = &v47 - v24;
  v65 = sub_2B0C(&qword_22AD30, &qword_1C24D8);
  v26 = *(v65 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v65);
  v28 = *v1;
  v29 = a1[3];
  v30 = a1[4];
  v31 = a1;
  v33 = &v47 - v32;
  sub_2698(v31, v29);
  sub_9E440();
  sub_1B5884();
  v34 = v28 >> 6;
  if (v28 >> 6 > 1)
  {
    if (v34 == 3)
    {
      v74 = 6;
      sub_9E494();
      v38 = v62;
      v39 = v65;
      sub_1B5454();
      (*(v63 + 8))(v38, v64);
      return (*(v26 + 8))(v33, v39);
    }

    v41 = (v26 + 8);
    if (v28 > 129)
    {
      if (v28 == 130)
      {
        v72 = 4;
        sub_9E53C();
        v43 = v51;
        v44 = v65;
        sub_1B5454();
        v46 = v52;
        v45 = v53;
      }

      else
      {
        v73 = 5;
        sub_9E4E8();
        v43 = v54;
        v44 = v65;
        sub_1B5454();
        v46 = v55;
        v45 = v56;
      }
    }

    else
    {
      if (v28 == 128)
      {
        v66 = 0;
        sub_9E68C();
        v42 = v65;
        sub_1B5454();
        (*(v47 + 8))(v25, v22);
        return (*v41)(v33, v42);
      }

      v67 = 1;
      sub_9E638();
      v43 = v48;
      v44 = v65;
      sub_1B5454();
      v46 = v49;
      v45 = v50;
    }

    (*(v46 + 8))(v43, v45);
    return (*v41)(v33, v44);
  }

  else
  {
    if (v34)
    {
      v71 = 3;
      sub_9E590();
      v18 = v59;
      v35 = v65;
      sub_1B5454();
      v70 = v28 & 0x3F;
      sub_63284();
      v36 = v61;
      sub_1B5544();
      v37 = v60;
    }

    else
    {
      v69 = 2;
      sub_9E5E4();
      v35 = v65;
      sub_1B5454();
      v68 = v28;
      sub_63284();
      v36 = v58;
      sub_1B5544();
      v37 = v57;
    }

    (*(v37 + 8))(v18, v36);
    return (*(v26 + 8))(v33, v35);
  }
}

void ScorableAttributeType.hash(into:)()
{
  v1 = *v0;
  v2 = v1 >> 6;
  if (v1 >> 6 > 1)
  {
    if (v2 == 3)
    {
      v4 = 6;
    }

    else if (*v0 > 0x81u)
    {
      if (v1 == 130)
      {
        v4 = 4;
      }

      else
      {
        v4 = 5;
      }
    }

    else
    {
      v4 = v1 != 128;
    }

    sub_1B5804(v4);
  }

  else
  {
    if (v2)
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    sub_1B5804(v3);
    sub_1B4884();
  }
}

Swift::Int ScorableAttributeType.hashValue.getter()
{
  v2 = *v0;
  sub_1B57F4();
  ScorableAttributeType.hash(into:)();
  return sub_1B5844();
}

uint64_t ScorableAttributeType.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v75 = a2;
  v3 = sub_2B0C(&qword_22AD78, &qword_1C24E0);
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = *(v68 + 64);
  __chkstk_darwin(v3);
  v74 = &v54 - v5;
  v6 = sub_2B0C(&qword_22AD80, &qword_1C24E8);
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = *(v66 + 64);
  __chkstk_darwin(v6);
  v71 = &v54 - v8;
  v65 = sub_2B0C(&qword_22AD88, &qword_1C24F0);
  v63 = *(v65 - 8);
  v9 = *(v63 + 64);
  __chkstk_darwin(v65);
  v70 = &v54 - v10;
  v60 = sub_2B0C(&qword_22AD90, &qword_1C24F8);
  v64 = *(v60 - 8);
  v11 = *(v64 + 64);
  __chkstk_darwin(v60);
  v73 = &v54 - v12;
  v13 = sub_2B0C(&qword_22AD98, &qword_1C2500);
  v61 = *(v13 - 8);
  v62 = v13;
  v14 = *(v61 + 64);
  __chkstk_darwin(v13);
  v72 = &v54 - v15;
  v16 = sub_2B0C(&qword_22ADA0, &qword_1C2508);
  v17 = *(v16 - 8);
  v58 = v16;
  v59 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v54 - v19;
  v21 = sub_2B0C(&qword_22ADA8, &qword_1C2510);
  v57 = *(v21 - 8);
  v22 = *(v57 + 64);
  __chkstk_darwin(v21);
  v24 = &v54 - v23;
  v25 = sub_2B0C(&qword_22ADB0, &qword_1C2518);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v54 - v28;
  v30 = a1[3];
  v31 = a1[4];
  v76 = a1;
  sub_2698(a1, v30);
  sub_9E440();
  v32 = v77;
  sub_1B5864();
  if (v32)
  {
    goto LABEL_9;
  }

  v55 = v21;
  v56 = v20;
  v33 = v72;
  v34 = v73;
  v77 = v26;
  v35 = v74;
  v36 = v75;
  v37 = sub_1B5444();
  if (*(v37 + 16) != 1 || (v38 = *(v37 + 32), v38 == 7))
  {
    v39 = sub_1B5114();
    swift_allocError();
    v40 = v25;
    v42 = v41;
    v43 = *(sub_2B0C(&qword_22ADB8, &qword_1C2520) + 48);
    *v42 = &type metadata for ScorableAttributeType;
    sub_1B5314();
    sub_1B50E4();
    (*(*(v39 - 8) + 104))(v42, enum case for DecodingError.typeMismatch(_:), v39);
    swift_willThrow();
    (*(v77 + 8))(v29, v40);
    swift_unknownObjectRelease();
LABEL_9:
    v53 = v76;
    return sub_2BF8(v53);
  }

  if (*(v37 + 32) <= 2u)
  {
    if (*(v37 + 32))
    {
      if (v38 == 1)
      {
        v79 = 1;
        sub_9E638();
        v45 = v56;
        sub_1B5304();
        (*(v59 + 8))(v45, v58);
        (*(v77 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v52 = -127;
      }

      else
      {
        v81 = 2;
        sub_9E5E4();
        v47 = v33;
        sub_1B5304();
        sub_62FFC();
        v49 = v62;
        sub_1B5404();
        v50 = v77;
        (*(v61 + 8))(v47, v49);
        (*(v50 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v52 = v80;
      }

      v53 = v76;
    }

    else
    {
      v78 = 0;
      sub_9E68C();
      sub_1B5304();
      (*(v57 + 8))(v24, v55);
      (*(v77 + 8))(v29, v25);
      swift_unknownObjectRelease();
      v52 = 0x80;
      v53 = v76;
    }
  }

  else if (*(v37 + 32) > 4u)
  {
    if (v38 == 5)
    {
      v85 = 5;
      sub_9E4E8();
      v46 = v71;
      sub_1B5304();
      (*(v66 + 8))(v46, v67);
      (*(v77 + 8))(v29, v25);
      swift_unknownObjectRelease();
      v52 = -125;
    }

    else
    {
      v86 = 6;
      sub_9E494();
      sub_1B5304();
      (*(v68 + 8))(v35, v69);
      (*(v77 + 8))(v29, v25);
      swift_unknownObjectRelease();
      v52 = -64;
    }

    v53 = v76;
  }

  else if (v38 == 3)
  {
    v83 = 3;
    sub_9E590();
    sub_1B5304();
    sub_62FFC();
    v51 = v60;
    sub_1B5404();
    (*(v64 + 8))(v34, v51);
    (*(v77 + 8))(v29, v25);
    swift_unknownObjectRelease();
    v52 = v82 | 0x40;
    v36 = v75;
    v53 = v76;
  }

  else
  {
    v84 = 4;
    sub_9E53C();
    v48 = v70;
    sub_1B5304();
    (*(v63 + 8))(v48, v65);
    (*(v77 + 8))(v29, v25);
    swift_unknownObjectRelease();
    v52 = -126;
    v53 = v76;
  }

  *v36 = v52;
  return sub_2BF8(v53);
}

uint64_t sub_9CA4C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_9CA80()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 18;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_9CAB4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 13;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_9CAE8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_9CB1C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_9CB50()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_9CB88()
{
  v2 = *v0;
  sub_1B57F4();
  ScorableAttributeType.hash(into:)();
  return sub_1B5844();
}

uint64_t sub_9CC20()
{
  v1 = *(v0 + 8);
  sub_1B5834(*v0);
  sub_1B4884();
}

Swift::Int sub_9CCB0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B57F4();
  sub_1B5834(v1);
  sub_1B4884();

  return sub_1B5844();
}

Swift::Int sub_9CD50()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B57F4();
  sub_1B5834(v1);
  sub_1B4884();

  return sub_1B5844();
}

void ScorableAttribute.hash(into:)(__int128 *a1)
{
  memcpy(__dst, v1, 0x231uLL);
  v3 = sub_9E6E0(__dst);
  v4 = sub_9E6EC(__dst);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = *v4;
      v11 = v4[8];
      v9 = 3;
    }

    else
    {
      if (v3 != 4)
      {
        v12 = *v4;
        sub_1B5804(5uLL);
        goto LABEL_14;
      }

      v7 = *v4;
      v8 = v4[8];
      v9 = 4;
    }

    sub_1B5804(v9);
    sub_1B5834(v7);
LABEL_14:
    sub_1B4884();

    return;
  }

  if (v3)
  {
    v5 = *v4;
    if (v3 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    sub_1B5804(v6);
    sub_1B5834(v5);
  }

  else
  {
    v10 = v4;
    sub_1B5804(0);
    memcpy(v13, v10, sizeof(v13));
    SeedBook.hash(into:)(a1);
  }
}

Swift::Int ScorableAttribute.hashValue.getter()
{
  sub_1B57F4();
  ScorableAttribute.hash(into:)(v1);
  return sub_1B5844();
}

Swift::Int sub_9CF94()
{
  sub_1B57F4();
  ScorableAttribute.hash(into:)(v1);
  return sub_1B5844();
}

void *sub_9CFD0(unsigned __int8 *a1)
{
  v2 = *a1;
  memcpy(__dst, v1, sizeof(__dst));
  v3 = v2 >> 6;
  if (v2 >> 6 <= 1)
  {
    if (v3)
    {
      *&v84[32] = *(v1 + 40);
      *&v84[48] = *(v1 + 56);
      *&v84[64] = *(v1 + 72);
      *&v84[80] = *(v1 + 88);
      *v84 = *(v1 + 8);
      *&v84[16] = *(v1 + 24);
      v86[2] = *(v1 + 40);
      v86[3] = *(v1 + 56);
      v86[4] = *(v1 + 72);
      *&v86[5] = *(v1 + 88);
      v86[0] = *(v1 + 8);
      v86[1] = *(v1 + 24);
      LOBYTE(v82[0]) = v2 & 0x3F;
      sub_5EDD8(v84, __src);
      v43 = Book.Metadata.genreIDs(at:)(v82);
      __src[2] = v86[2];
      __src[3] = v86[3];
      __src[4] = v86[4];
      *&__src[5] = *&v86[5];
      __src[0] = v86[0];
      __src[1] = v86[1];
      sub_85554(__src);
      sub_4299C(__dst, v86);
      v44 = sub_15C748(v43, __dst);
      sub_2601C(__dst);
      goto LABEL_78;
    }

    v89 = *(v1 + 40);
    v90 = *(v1 + 56);
    v91 = *(v1 + 72);
    v92 = *(v1 + 88);
    v87 = *(v1 + 8);
    v88 = *(v1 + 24);
    v86[2] = *(v1 + 40);
    v86[3] = *(v1 + 56);
    v86[4] = *(v1 + 72);
    *&v86[5] = *(v1 + 88);
    v86[0] = *(v1 + 8);
    v86[1] = *(v1 + 24);
    LOBYTE(__src[0]) = v2;
    sub_5EDD8(&v87, v84);
    v4 = Book.Metadata.genreIDs(at:)(__src);
    v78 = v86[2];
    v79 = v86[3];
    v80 = v86[4];
    v81 = *&v86[5];
    v76 = v86[0];
    v77 = v86[1];
    sub_85554(&v76);
    v5 = 1 << *(v4 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & v4[7];
    v8 = (v5 + 63) >> 6;

    for (i = 0; v7; result = sub_5EE90(v84))
    {
      v11 = i;
LABEL_11:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *&__src[0] = *(v4[6] + ((v11 << 9) | (8 * v12)));
      sub_A1064(__src);
      memcpy(v86, __src, 0x231uLL);
      sub_1127B0(v82, v86);
      memcpy(v84, v82, sizeof(v84));
    }

    while (1)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return _swiftEmptySetSingleton;
      }

      v7 = v4[v11 + 7];
      ++i;
      if (v7)
      {
        i = v11;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  if (v3 != 3)
  {
    if (v2 > 129)
    {
      sub_2B0C(&qword_2294E8, &unk_1BC570);
      if (v2 == 130)
      {
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_1BCA80;
        LOBYTE(v86[0]) = __dst[8] & 1;
        sub_A1094(v86);
        memcpy((v58 + 32), v86, 0x231uLL);
        v44 = sub_9F2DC(v58);
        swift_setDeallocating();
        sub_5EE90(v58 + 32);
      }

      else
      {
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_1BCA80;
        memcpy(v86, v1, 0x231uLL);
        sub_A10C8(v86);
        memcpy((v60 + 32), v86, 0x231uLL);
        sub_4299C(__dst, v84);
        v44 = sub_9F2DC(v60);
        swift_setDeallocating();
        sub_5EE90(v60 + 32);
      }

      swift_deallocClassInstance();
      return v44;
    }

    if (v2 != 128)
    {
      v59 = *&__dst[24];
      sub_4299C(__dst, v86);
      v44 = sub_15C700(v59, __dst);
      sub_2601C(__dst);
      return v44;
    }

    v45 = *&__dst[24];
    *&v87 = _swiftEmptySetSingleton;
    v46 = 1 << *(*&__dst[24] + 32);
    v47 = -1;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    v48 = v47 & *(*&__dst[24] + 56);
    v49 = (v46 + 63) >> 6;

    for (j = 0; v48; result = sub_5EE90(v84))
    {
      v51 = j;
LABEL_65:
      v52 = __clz(__rbit64(v48));
      v48 &= v48 - 1;
      *&__src[0] = *(*(v45 + 48) + ((v51 << 9) | (8 * v52)));
      sub_A1034(__src);
      memcpy(v86, __src, 0x231uLL);
      sub_1127B0(v82, v86);
      memcpy(v84, v82, sizeof(v84));
    }

    while (1)
    {
      v51 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (v51 >= v49)
      {

        return v87;
      }

      v48 = *(v45 + 56 + 8 * v51);
      ++j;
      if (v48)
      {
        j = v51;
        goto LABEL_65;
      }
    }

LABEL_85:
    __break(1u);
    return result;
  }

  v13 = 0;
  v14 = 0;
  v15 = *(v1 + 8);
  v16 = *(v1 + 56);
  v82[2] = *(v1 + 40);
  v82[3] = v16;
  v82[4] = *(v1 + 72);
  v17 = *(v1 + 24);
  v82[0] = v15;
  if (v15)
  {
    v18 = 0x6F6F626F69647561;
  }

  else
  {
    v18 = 0x6B6F6F6265;
  }

  if (LOBYTE(v82[0]))
  {
    v19 = 0xE90000000000006BLL;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  v62 = v15;
  v61 = v15 ^ 1;
  v20 = _swiftEmptyArrayStorage;
  *&v82[5] = *(v1 + 88);
  v82[1] = v17;
  v63 = v19;
  v64 = v18;
  while (1)
  {
    if (*(&off_213160 + v14 + 32))
    {
      v21 = 0x6F6F626F69647561;
    }

    else
    {
      v21 = 0x6B6F6F6265;
    }

    if (*(&off_213160 + v14 + 32))
    {
      v22 = 0xE90000000000006BLL;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    if (v18 == v21 && v19 == v22)
    {

LABEL_36:
      v32 = __dst[560];
      v70 = *&__dst[552];
      v71 = v13;
      memcpy(__src, &__dst[168], 0x179uLL);
      v78 = *&__dst[128];
      v79 = *&__dst[144];
      *&v80 = *&__dst[160];
      v76 = *&__dst[96];
      v77 = *&__dst[112];
      v69 = *__dst;
      v30 = *&v82[5];
      v68 = *(&v82[3] + 8);
      v67 = BYTE8(v82[4]);
      v28 = *(&v82[1] + 1);
      v29 = v82[2];
      v65 = *(v82 + 8);
      v66 = *(&v82[2] + 8);
      sub_4299C(__dst, v86);
      v31 = v62;
      goto LABEL_37;
    }

    v24 = sub_1B5604();

    if (v24)
    {
      goto LABEL_36;
    }

    if (v82[2])
    {
      goto LABEL_42;
    }

    v69 = *(&v82[1] + 1);
    v88 = *&__dst[112];
    v89 = *&__dst[128];
    v90 = *&__dst[144];
    *&v91 = *&__dst[160];
    v87 = *&__dst[96];
    v25 = *__dst;
    v26 = *&__dst[552];
    v27 = sub_1B5604();
    sub_43050(&v87, v86, &qword_22A4E0, &unk_1C01D0);
    v70 = v26;

    v71 = v13;
    if (v27)
    {
      v28 = *(&v82[1] + 1);
      v29 = v82[2];
      LOBYTE(v75[0]) = v82[2];
      v68 = *(&v82[3] + 8);
      v65 = *(v82 + 8);
      v66 = *(&v82[2] + 8);
      v67 = BYTE8(v82[4]);
      v30 = *&v82[5];
      v31 = v82[0];
      sub_5EDD8(v82, v86);
    }

    else
    {
      if (BYTE8(v82[3]) == 2)
      {
        v66 = *(&v82[2] + 8);
        v67 = BYTE8(v82[4]);
        v68 = *(&v82[3] + 8);
        v28 = v25;
      }

      else
      {
        v28 = v25;
        v67 = 0;
        if (BYTE8(v82[4]))
        {
          v66 = 0u;
          v68 = xmmword_1BCA90;
        }

        else
        {
          *&v41 = *(&v82[2] + 1);
          *(&v41 + 1) = *&v82[4];
          *(&v42 + 1) = *&v82[3];
          *&v42 = BYTE8(v82[3]) & 1;
          v68 = v42;
          v66 = v41;
        }
      }

      v65 = *(v82 + 8);
      v94[0] = *(v82 + 8);
      v30 = *&v82[5];
      v93 = *&v82[5];
      LOBYTE(v75[0]) = 0;
      sub_43050(v94 + 8, v86, &qword_2292C8, &unk_1BCB00);
      sub_43050(v94, v86, &qword_22A8B0, &unk_1C09F8);
      sub_43050(&v93, v86, &qword_22AEC0, &qword_1C30E0);
      v29 = v75[0];
      v31 = v61;
    }

    memcpy(v86, &__dst[168], 0x179uLL);
    *&v84[16] = v88;
    *&v84[32] = v89;
    *&v84[48] = v90;
    *&v84[64] = v91;
    *v84 = v87;
    if (v90 >> 1 == 0xFFFFFFFF)
    {
      v32 = 12;
    }

    else
    {
      v72 = v87;
      sub_12700C(v74);
      v32 = v74[0];
    }

    v78 = *&v84[32];
    v79 = *&v84[48];
    *&v80 = *&v84[64];
    v76 = *v84;
    v77 = *&v84[16];
    memcpy(__src, v86, 0x179uLL);
LABEL_37:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_33128(0, *(v20 + 2) + 1, 1, v20);
    }

    v34 = *(v20 + 2);
    v33 = *(v20 + 3);
    if (v34 >= v33 >> 1)
    {
      v20 = sub_33128((v33 > 1), v34 + 1, 1, v20);
    }

    *&v84[16] = v77;
    *&v84[32] = v78;
    *&v84[48] = v79;
    *&v84[64] = v80;
    *v84 = v76;
    memcpy(v86, __src, 0x179uLL);
    *(v20 + 2) = v34 + 1;
    v35 = &v20[568 * v34];
    *(v35 + 4) = v69;
    v35[40] = v31 & 1;
    *(v35 + 41) = v72;
    *(v35 + 11) = *(&v72 + 3);
    *(v35 + 3) = v65;
    *(v35 + 8) = v28;
    v35[72] = v29 & 1;
    v36 = *(v75 + 3);
    *(v35 + 73) = v75[0];
    *(v35 + 19) = v36;
    *(v35 + 5) = v66;
    *(v35 + 6) = v68;
    v35[112] = v67;
    v37 = *&v74[3];
    *(v35 + 113) = *v74;
    *(v35 + 29) = v37;
    *(v35 + 15) = v30;
    *(v35 + 8) = *v84;
    v38 = *&v84[16];
    v39 = *&v84[32];
    v40 = *&v84[48];
    *(v35 + 24) = *&v84[64];
    *(v35 + 10) = v39;
    *(v35 + 11) = v40;
    *(v35 + 9) = v38;
    memcpy(v35 + 200, v86, 0x179uLL);
    *(v35 + 577) = *v73;
    *(v35 + 145) = *&v73[3];
    v13 = v71;
    *(v35 + 73) = v70;
    v35[592] = v32;
    v19 = v63;
    v18 = v64;
LABEL_42:
    if (v13)
    {
      break;
    }

    v13 = 1;
    v14 = 1;
  }

  v53 = *(v20 + 2);
  if (v53)
  {
    sub_378CC(0, v53, 0);
    v54 = v53 - 1;
    for (k = 32; ; k += 568)
    {
      memcpy(v86, &v20[k], 0x231uLL);
      sub_4299C(v86, v84);
      v57 = _swiftEmptyArrayStorage[2];
      v56 = _swiftEmptyArrayStorage[3];
      if (v57 >= v56 >> 1)
      {
        sub_378CC((v56 > 1), v57 + 1, 1);
      }

      memcpy(v84, v86, sizeof(v84));
      sub_A10C8(v84);
      _swiftEmptyArrayStorage[2] = v57 + 1;
      memcpy(&_swiftEmptyArrayStorage[71 * v57 + 4], v84, 0x231uLL);
      if (!v54)
      {
        break;
      }

      --v54;
    }
  }

  v44 = sub_9DBC4(_swiftEmptyArrayStorage);
LABEL_78:

  return v44;
}

void *sub_9DBC4(uint64_t a1)
{
  result = _swiftEmptySetSingleton;
  v7 = _swiftEmptySetSingleton;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, 0x231uLL);
      sub_5EE34(__dst, v6);
      sub_1127B0(v5, __dst);
      memcpy(v6, v5, 0x231uLL);
      sub_5EE90(v6);
      v4 += 568;
      --v3;
    }

    while (v3);
    return v7;
  }

  return result;
}

uint64_t AttributeScorerType.score(attributeTypes:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[2] = a1;
  v7 = *(a4 + 8);
  v8 = sub_9E770();
  return v7(sub_9E6FC, v10, a2, &type metadata for ScorableAttribute, v8, a3, a4);
}

uint64_t AttributeScorerType.score(attributeType:of:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  sub_2B0C(&qword_22ADC8, &qword_1C2528);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BCA80;
  *(inited + 32) = v7;
  v9 = sub_9FADC(inited);
  swift_setDeallocating();
  v15 = v9;
  v10 = *(a4 + 8);
  v11 = sub_9E770();
  v12 = v10(sub_9E6FC, v14, a2, &type metadata for ScorableAttribute, v11, a3, a4);

  return v12;
}

uint64_t sub_9DDD4(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 8);
    v3 = *(a1 + 8) == 0;
    if (*(a1 + 8))
    {
      v4 = 0x6F6F626F69647561;
    }

    else
    {
      v4 = 0x6B6F6F6265;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE90000000000006BLL;
    }

    if (*(a2 + 8))
    {
      v6 = 0x6F6F626F69647561;
    }

    else
    {
      v6 = 0x6B6F6F6265;
    }

    if (*(a2 + 8))
    {
      v7 = 0xE90000000000006BLL;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    if (v4 == v6 && v5 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_1B5604();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

BOOL _s20BooksPersonalization17ScorableAttributeO2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  memcpy(__dst, v1, 0x231uLL);
  memcpy(__src, v3, 0x231uLL);
  memcpy(v30, v4, 0x231uLL);
  memcpy(v31, v3, sizeof(v31));
  memcpy(v32, v4, 0x231uLL);
  v5 = sub_9E6E0(v32);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v12 = sub_9E6EC(v32);
      v8 = *v12;
      v9 = *(v12 + 8);
      memcpy(v27, __src, 0x231uLL);
      if (sub_9E6E0(v27) != 3)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v5 != 4)
      {
        v9 = *sub_9E6EC(v32);
        memcpy(v27, __src, 0x231uLL);
        if (sub_9E6E0(v27) != 5)
        {
          goto LABEL_34;
        }

        v14 = *sub_9E6EC(v27);
LABEL_19:
        if (v9)
        {
          v17 = 0x6F6F626F69647561;
        }

        else
        {
          v17 = 0x6B6F6F6265;
        }

        if (v9)
        {
          v18 = 0xE90000000000006BLL;
        }

        else
        {
          v18 = 0xE500000000000000;
        }

        if (v14)
        {
          v19 = 0x6F6F626F69647561;
        }

        else
        {
          v19 = 0x6B6F6F6265;
        }

        if (v14)
        {
          v20 = 0xE90000000000006BLL;
        }

        else
        {
          v20 = 0xE500000000000000;
        }

        if (v17 == v19 && v18 == v20)
        {

          sub_A10F4(v30);
        }

        else
        {
          v22 = sub_1B5604();

          sub_A10F4(v30);
          if ((v22 & 1) == 0)
          {
            return 0;
          }
        }

        return 1;
      }

      v7 = sub_9E6EC(v32);
      v8 = *v7;
      v9 = *(v7 + 8);
      memcpy(v27, __src, 0x231uLL);
      if (sub_9E6E0(v27) != 4)
      {
        goto LABEL_34;
      }
    }

    v13 = sub_9E6EC(v27);
    if (v8 != *v13)
    {
LABEL_35:
      sub_A10F4(v30);
      return 0;
    }

    v14 = *(v13 + 8);
    goto LABEL_19;
  }

  if (!v5)
  {
    v10 = sub_9E6EC(v32);
    memcpy(v27, __src, 0x231uLL);
    if (!sub_9E6E0(v27))
    {
      v23 = sub_9E6EC(v27);
      memcpy(v26, v10, 0x231uLL);
      memcpy(v25, v23, 0x231uLL);
      sub_5EE34(__src, v24);
      sub_5EE34(__dst, v24);
      sub_5EE34(__dst, v24);
      sub_5EE34(__src, v24);
      v16 = _s20BooksPersonalization8SeedBookV2eeoiySbAC_ACtFZ_0(v26, v25);
      sub_A10F4(v30);
      sub_5EE90(__src);
      sub_5EE90(__dst);
      return v16;
    }

    memcpy(v26, __dst, 0x231uLL);
    v11 = sub_9E6EC(v26);
    sub_4299C(v11, v25);
    goto LABEL_34;
  }

  if (v5 != 1)
  {
    v6 = *sub_9E6EC(v32);
    memcpy(v27, __src, 0x231uLL);
    if (sub_9E6E0(v27) == 2)
    {
      goto LABEL_16;
    }

LABEL_34:
    sub_5EE34(__src, v27);
    goto LABEL_35;
  }

  v6 = *sub_9E6EC(v32);
  memcpy(v27, __src, 0x231uLL);
  if (sub_9E6E0(v27) != 1)
  {
    goto LABEL_34;
  }

LABEL_16:
  v15 = *sub_9E6EC(v27);
  sub_A10F4(v30);
  return v6 == v15;
}

uint64_t _s20BooksPersonalization21ScorableAttributeTypeO2eeoiySbAC_ACtFZ_0(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 6;
  if (v2 >> 6 > 1)
  {
    if (v4 == 3)
    {
      if (v3 != 192)
      {
        return 0;
      }
    }

    else if (*a1 > 0x81u)
    {
      if (v2 == 130)
      {
        if (v3 != 130)
        {
          return 0;
        }
      }

      else if (v3 != 131)
      {
        return 0;
      }
    }

    else if (v2 == 128)
    {
      if (v3 != 128)
      {
        return 0;
      }
    }

    else if (v3 != 129)
    {
      return 0;
    }

    return 1;
  }

  if (!v4)
  {
    if (v3 <= 0x3F)
    {
      v5 = 0x656E4F6C6576656CLL;
      if (v2 != 1)
      {
        v5 = 0x6F77546C6576656CLL;
      }

      if (*a1)
      {
        v6 = v5;
      }

      else
      {
        v6 = 0x73657661656CLL;
      }

      if (v2)
      {
        v7 = 0xE800000000000000;
      }

      else
      {
        v7 = 0xE600000000000000;
      }

      goto LABEL_33;
    }

    return 0;
  }

  if ((v3 & 0xC0) != 0x40)
  {
    return 0;
  }

  v3 &= 0x3Fu;
  v9 = v2 & 0x3F;
  if (v9)
  {
    if (v9 == 1)
    {
      v6 = 0x656E4F6C6576656CLL;
    }

    else
    {
      v6 = 0x6F77546C6576656CLL;
    }

    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
    v6 = 0x73657661656CLL;
  }

LABEL_33:
  v10 = 0x656E4F6C6576656CLL;
  if (v3 != 1)
  {
    v10 = 0x6F77546C6576656CLL;
  }

  if (v3)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x73657661656CLL;
  }

  if (v3)
  {
    v12 = 0xE800000000000000;
  }

  else
  {
    v12 = 0xE600000000000000;
  }

  if (v6 == v11 && v7 == v12)
  {

    return 1;
  }

  else
  {
    v13 = sub_1B5604();

    return v13 & 1;
  }
}

unint64_t sub_9E440()
{
  result = qword_22AD38;
  if (!qword_22AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AD38);
  }

  return result;
}

unint64_t sub_9E494()
{
  result = qword_22AD40;
  if (!qword_22AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AD40);
  }

  return result;
}

unint64_t sub_9E4E8()
{
  result = qword_22AD48;
  if (!qword_22AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AD48);
  }

  return result;
}

unint64_t sub_9E53C()
{
  result = qword_22AD50;
  if (!qword_22AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AD50);
  }

  return result;
}

unint64_t sub_9E590()
{
  result = qword_22AD58;
  if (!qword_22AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AD58);
  }

  return result;
}

unint64_t sub_9E5E4()
{
  result = qword_22AD60;
  if (!qword_22AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AD60);
  }

  return result;
}

unint64_t sub_9E638()
{
  result = qword_22AD68;
  if (!qword_22AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AD68);
  }

  return result;
}

unint64_t sub_9E68C()
{
  result = qword_22AD70;
  if (!qword_22AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AD70);
  }

  return result;
}

uint64_t sub_9E6FC(void *__src)
{
  v2 = *(v1 + 16);
  memcpy(__dst, __src, 0x231uLL);
  v4[2] = __dst;
  return sub_9AF6C(_swiftEmptySetSingleton, sub_A0FE8, v4, v2);
}

unint64_t sub_9E770()
{
  result = qword_22ADC0;
  if (!qword_22ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ADC0);
  }

  return result;
}

void *sub_9E7C4(uint64_t a1)
{
  v2 = sub_1B41C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_2B0C(&qword_22AEA0, &qword_1C30D0);
    v10 = sub_1B5054();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_A0FA4(&qword_22AEA8);
      v18 = sub_1B4744();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_A0FA4(&qword_22AEB0);
          v25 = sub_1B4784();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

Swift::Int sub_9EABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2B0C(&qword_22AE98, &qword_1C30C8);
    v3 = sub_1B5054();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    while (1)
    {
      v6 = *(v26 + v4);
      v7 = *(v3 + 40);
      sub_1B57F4();
      if (v6)
      {
        v8 = 0x6F6F626F69647561;
      }

      else
      {
        v8 = 0x6B6F6F6265;
      }

      if (v6)
      {
        v9 = 0xE90000000000006BLL;
      }

      else
      {
        v9 = 0xE500000000000000;
      }

      sub_1B4884();

      result = sub_1B5844();
      v11 = -1 << *(v3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) != 0)
      {
        v24 = v6;
        v16 = ~v11;
        do
        {
          if (*(*(v3 + 48) + v12))
          {
            v17 = 0x6F6F626F69647561;
          }

          else
          {
            v17 = 0x6B6F6F6265;
          }

          if (*(*(v3 + 48) + v12))
          {
            v18 = 0xE90000000000006BLL;
          }

          else
          {
            v18 = 0xE500000000000000;
          }

          if (v17 == v8 && v18 == v9)
          {

            goto LABEL_4;
          }

          v20 = sub_1B5604();

          if (v20)
          {
            goto LABEL_4;
          }

          v12 = (v12 + 1) & v16;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
        }

        while ((v14 & (1 << v12)) != 0);
        LOBYTE(v6) = v24;
      }

      *(v5 + 8 * v13) = v14 | v15;
      *(*(v3 + 48) + v12) = v6;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      *(v3 + 16) = v23;
LABEL_4:
      if (++v4 == v25)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}