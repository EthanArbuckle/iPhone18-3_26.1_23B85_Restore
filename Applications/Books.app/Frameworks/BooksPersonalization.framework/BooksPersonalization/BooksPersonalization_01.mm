void Transport.StoreAssetRequestDetails.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  if (*v2)
  {
    sub_1B5814(1u);
    sub_1B444(a1, v4);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1B5814(0);
    if (v5)
    {
LABEL_3:
      sub_1B5814(1u);
      sub_1B5804(*(v5 + 16));
      v8 = *(v5 + 16);
      if (v8)
      {
        v9 = (v5 + 32);
        do
        {
          v10 = *v9++;
          sub_1B5834(v10);
          --v8;
        }

        while (v8);
      }

      if (v7 == 3)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }
  }

  sub_1B5814(0);
  if (v7 == 3)
  {
LABEL_7:
    sub_1B5814(0);
    return;
  }

LABEL_10:
  sub_1B5814(1u);
  sub_1FE84(v6, v7);
  sub_1B4884();
}

Swift::Int Transport.StoreAssetRequestDetails.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B57F4();
  if (v1)
  {
    sub_1B5814(1u);
    sub_1B444(v9, v1);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1B5814(0);
    goto LABEL_9;
  }

  sub_1B5814(0);
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1B5814(1u);
  sub_1B5804(*(v2 + 16));
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = (v2 + 32);
    do
    {
      v7 = *v6++;
      sub_1B5834(v7);
      --v5;
    }

    while (v5);
  }

LABEL_9:
  if (v4 == 3)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    sub_1FE84(v3, v4);
    sub_1B4884();
  }

  return sub_1B5844();
}

uint64_t Transport.StoreAssetRequestDetails.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_2B0C(&qword_2288A0, &qword_1B66C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1FEB8();
  sub_1B5864();
  if (v2)
  {
    sub_2BF8(a1);

    v16 = 0;
    v17 = 3;
  }

  else
  {
    sub_2B0C(&qword_228888, &qword_1B66B8);
    v19 = 0;
    sub_1FFE4();
    sub_1B5374();
    v12 = v18[0];
    sub_2B0C(&qword_2284B0, &qword_1B6538);
    v19 = 1;
    sub_1CC64();
    sub_1B5374();
    v13 = v18[0];
    v19 = 2;
    sub_20068();
    sub_1B5374();
    (*(v6 + 8))(v9, v5);
    v14 = v18[0];
    v15 = v18[1];
    *a2 = v12;
    a2[1] = v13;
    a2[2] = v14;
    a2[3] = v15;

    sub_1FE84(v14, v15);
    sub_2BF8(a1);

    v16 = v14;
    v17 = v15;
  }

  return sub_1FE94(v16, v17);
}

Swift::Int sub_13118()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B57F4();
  if (v1)
  {
    sub_1B5814(1u);
    sub_1B444(v9, v1);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1B5814(0);
    goto LABEL_9;
  }

  sub_1B5814(0);
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1B5814(1u);
  sub_1B5804(*(v2 + 16));
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = (v2 + 32);
    do
    {
      v7 = *v6++;
      sub_1B5834(v7);
      --v5;
    }

    while (v5);
  }

LABEL_9:
  if (v4 == 3)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    sub_1FE84(v3, v4);
    sub_1B4884();
  }

  return sub_1B5844();
}

uint64_t Transport.BooksRecommendationRequest.assetRequestDetails.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v5;
  a1[3] = v4;

  return sub_1FE84(v5, v4);
}

__n128 Transport.BooksRecommendationRequest.assetRequestDetails.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];

  sub_1FE94(v5, v6);
  result = *a1;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v8;
  return result;
}

__n128 Transport.BooksRecommendationRequest.init(assetRequestDetails:bookDenylist:applyBookDenylistToWorks:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  result = *a1;
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 32) = a2;
  *(a4 + 40) = a3;
  return result;
}

uint64_t Transport.BooksRecommendationRequest.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_20F858;
  v9._object = a2;
  v6 = sub_1B52E4(v5, v9);

  v8 = 3;
  if (v6 < 3)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t Transport.BooksRecommendationRequest.CodingKeys.stringValue.getter()
{
  v1 = 0x796E65446B6F6F62;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_133FC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEC0000007473696CLL;
  v3 = 0x796E65446B6F6F62;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x796E65446B6F6F62;
  }

  else
  {
    v5 = 0xD000000000000018;
  }

  if (v4 == 1)
  {
    v6 = 0xEC0000007473696CLL;
  }

  else
  {
    v6 = 0x80000000001D4500;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000000001D44D0;
  }

  if (*a2 != 1)
  {
    v3 = 0xD000000000000018;
    v2 = 0x80000000001D4500;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000013;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000000001D44D0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B5604();
  }

  return v11 & 1;
}

Swift::Int sub_134E0()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_13590()
{
  *v0;
  *v0;
  sub_1B4884();
}

Swift::Int sub_1362C()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_136E4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000007473696CLL;
  v4 = 0x796E65446B6F6F62;
  if (v2 != 1)
  {
    v4 = 0xD000000000000018;
    v3 = 0x80000000001D4500;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (v5)
  {
    v3 = 0x80000000001D44D0;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_13750@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = Transport.BooksRecommendationRequest.CodingKeys.init(stringValue:)(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t sub_13788(uint64_t a1)
{
  v2 = sub_200BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_137C4(uint64_t a1)
{
  v2 = sub_200BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Transport.BooksRecommendationRequest.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_2288B8, &qword_1B66C8);
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  v7 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v9 = v1[3];
  v22 = v1[4];
  v29 = *(v1 + 40);
  v12 = a1[3];
  v11 = a1[4];
  v13 = a1;
  v15 = v14;
  sub_2698(v13, v12);

  sub_1FE84(v10, v9);
  sub_200BC();
  sub_1B5884();
  v25 = v7;
  v26 = v8;
  v27 = v10;
  v28 = v9;
  v30 = 0;
  sub_20110();
  v16 = v23;
  sub_1B5544();
  v17 = v27;
  v18 = v28;

  sub_1FE94(v17, v18);
  if (v16)
  {
    return (*(v24 + 8))(v6, v15);
  }

  v20 = v24;
  v25 = v22;
  v30 = 1;
  sub_2B0C(&qword_2284B0, &qword_1B6538);
  sub_1CBA0();
  sub_1B54B4();
  LOBYTE(v25) = 2;
  sub_1B5474();
  return (*(v20 + 8))(v6, v15);
}

void Transport.BooksRecommendationRequest.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  if (*v2)
  {
    sub_1B5814(1u);
    sub_1B444(a1, v4);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_1B5814(0);
    if (v7 == 3)
    {
      goto LABEL_7;
    }

LABEL_11:
    sub_1B5814(1u);
    sub_1FE84(v6, v7);
    sub_1B4884();

    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  sub_1B5814(0);
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_3:
  sub_1B5814(1u);
  sub_1B5804(*(v5 + 16));
  v10 = *(v5 + 16);
  if (v10)
  {
    v11 = (v5 + 32);
    do
    {
      v12 = *v11++;
      sub_1B5834(v12);
      --v10;
    }

    while (v10);
  }

  if (v7 != 3)
  {
    goto LABEL_11;
  }

LABEL_7:
  sub_1B5814(0);
  if (!v8)
  {
LABEL_8:
    sub_1B5814(0);
    goto LABEL_15;
  }

LABEL_12:
  sub_1B5814(1u);
  sub_1B5804(*(v8 + 16));
  v13 = *(v8 + 16);
  if (v13)
  {
    v14 = (v8 + 32);
    do
    {
      v15 = *v14++;
      sub_1B5834(v15);
      --v13;
    }

    while (v13);
  }

LABEL_15:
  if (v9 == 2)
  {
    v16 = 0;
  }

  else
  {
    sub_1B5814(1u);
    v16 = v9 & 1;
  }

  sub_1B5814(v16);
}

Swift::Int Transport.BooksRecommendationRequest.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  sub_1B57F4();
  if (v1)
  {
    sub_1B5814(1u);
    sub_1B444(v15, v1);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1B5814(0);
    goto LABEL_9;
  }

  sub_1B5814(0);
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1B5814(1u);
  sub_1B5804(*(v2 + 16));
  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = (v2 + 32);
    do
    {
      v9 = *v8++;
      sub_1B5834(v9);
      --v7;
    }

    while (v7);
  }

LABEL_9:
  if (v4 == 3)
  {
    sub_1B5814(0);
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1B5814(1u);
    sub_1FE84(v3, v4);
    sub_1B4884();

    if (v5)
    {
LABEL_11:
      sub_1B5814(1u);
      sub_1B5804(*(v5 + 16));
      v10 = *(v5 + 16);
      if (v10)
      {
        v11 = (v5 + 32);
        do
        {
          v12 = *v11++;
          sub_1B5834(v12);
          --v10;
        }

        while (v10);
      }

      if (v6 == 2)
      {
        goto LABEL_15;
      }

LABEL_18:
      sub_1B5814(1u);
      v13 = v6 & 1;
      goto LABEL_19;
    }
  }

  sub_1B5814(0);
  if (v6 != 2)
  {
    goto LABEL_18;
  }

LABEL_15:
  v13 = 0;
LABEL_19:
  sub_1B5814(v13);
  return sub_1B5844();
}

uint64_t Transport.BooksRecommendationRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_2288D0, &qword_1B66D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_200BC();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  v26 = 0;
  sub_20164();
  sub_1B5404();
  v11 = v22;
  v19 = v23;
  v20 = v24;
  v21 = v25;
  sub_2B0C(&qword_2284B0, &qword_1B6538);
  v26 = 1;
  sub_1CC64();
  sub_1B5374();
  v12 = v22;
  LOBYTE(v22) = 2;
  v13 = sub_1B5334();
  (*(v6 + 8))(v9, v5);
  v16 = v19;
  v15 = v20;
  *a2 = v11;
  *(a2 + 8) = v16;
  v17 = v21;
  *(a2 + 16) = v15;
  *(a2 + 24) = v17;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;

  sub_1FE84(v15, v17);

  sub_2BF8(a1);

  sub_1FE94(v15, v17);
}

Swift::Int sub_140C0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  sub_1B57F4();
  if (v1)
  {
    sub_1B5814(1u);
    sub_1B444(v15, v1);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1B5814(0);
    goto LABEL_9;
  }

  sub_1B5814(0);
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1B5814(1u);
  sub_1B5804(*(v2 + 16));
  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = (v2 + 32);
    do
    {
      v9 = *v8++;
      sub_1B5834(v9);
      --v7;
    }

    while (v7);
  }

LABEL_9:
  if (v4 == 3)
  {
    sub_1B5814(0);
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1B5814(1u);
    sub_1FE84(v3, v4);
    sub_1B4884();

    if (v5)
    {
LABEL_11:
      sub_1B5814(1u);
      sub_1B5804(*(v5 + 16));
      v10 = *(v5 + 16);
      if (v10)
      {
        v11 = (v5 + 32);
        do
        {
          v12 = *v11++;
          sub_1B5834(v12);
          --v10;
        }

        while (v10);
      }

      if (v6 == 2)
      {
        goto LABEL_15;
      }

LABEL_18:
      sub_1B5814(1u);
      v13 = v6 & 1;
      goto LABEL_19;
    }
  }

  sub_1B5814(0);
  if (v6 != 2)
  {
    goto LABEL_18;
  }

LABEL_15:
  v13 = 0;
LABEL_19:
  sub_1B5814(v13);
  return sub_1B5844();
}

uint64_t Transport.RecommendationBlockRequestV2.userProfile.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Transport.RecommendationBlockRequestV2.userProfile.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(v1 + 8);

  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t Transport.RecommendationBlockRequestV2.booksRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 56);
  return sub_201B8(v2, v3, v4, v5);
}

__n128 Transport.RecommendationBlockRequestV2.booksRequest.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  sub_20228(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = *a1;
  v8 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v8;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  return result;
}

uint64_t Transport.RecommendationBlockRequestV2.methodologies.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

__n128 Transport.RecommendationBlockRequestV2.init(userProfile:booksRequest:methodologies:recommendationCount:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 8);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  *a5 = *a1;
  *(a5 + 8) = v9;
  sub_20228(1, 0, 0, 0);
  result = *a2;
  v13 = *(a2 + 16);
  *(a5 + 16) = *a2;
  *(a5 + 32) = v13;
  *(a5 + 48) = v10;
  *(a5 + 56) = v11;
  *(a5 + 64) = a3;
  *(a5 + 72) = a4;
  return result;
}

uint64_t Transport.RecommendationBlockRequestV2.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_20F8C0;
  v9._object = a2;
  v6 = sub_1B52E4(v5, v9);

  v8 = 4;
  if (v6 < 4)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t Transport.RecommendationBlockRequestV2.CodingKeys.stringValue.getter()
{
  v1 = 0x666F725072657375;
  v2 = 0x6C6F646F6874656DLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x716552736B6F6F62;
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

Swift::Int sub_1456C()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_14650()
{
  *v0;
  *v0;
  *v0;
  sub_1B4884();
}

Swift::Int sub_14720()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_1480C(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000656C69;
  v3 = 0x666F725072657375;
  v4 = 0xED0000736569676FLL;
  v5 = 0x6C6F646F6874656DLL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = 0x80000000001D42D0;
  }

  if (*v1)
  {
    v3 = 0x716552736B6F6F62;
    v2 = 0xEC00000074736575;
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

uint64_t sub_148AC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = Transport.RecommendationBlockRequestV2.CodingKeys.init(stringValue:)(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t sub_148E4(uint64_t a1)
{
  v2 = sub_20294();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14920(uint64_t a1)
{
  v2 = sub_20294();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Transport.RecommendationBlockRequestV2.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_2288E0, &qword_1B66D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v21 - v7;
  v9 = *v1;
  v11 = *(v1 + 1);
  v10 = *(v1 + 2);
  v12 = *(v1 + 4);
  v26 = *(v1 + 3);
  v27 = v10;
  v13 = *(v1 + 6);
  v24 = *(v1 + 5);
  v25 = v12;
  v34 = v1[56];
  v22 = *(v1 + 8);
  v23 = v13;
  v21[3] = *(v1 + 18);
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1;
  v18 = v17;
  sub_2698(v16, v14);
  sub_20294();

  sub_1B5884();
  LOBYTE(v28) = v9;
  v29 = v11;
  v35 = 0;
  sub_202E8();
  sub_1B5544();

  if (!v2)
  {
    v19 = v22;
    v28 = v27;
    v29 = v26;
    v30 = v25;
    v31 = v24;
    v32 = v23;
    v33 = v34;
    v35 = 1;
    sub_201B8(v27, v26, v25, v24);
    sub_2033C();
    sub_1B54B4();
    sub_20228(v28, v29, v30, v31);
    v28 = v19;
    v35 = 2;
    sub_2B0C(&qword_2287A8, &qword_1B6640);
    sub_1F770();
    sub_1B5544();
    LOBYTE(v28) = 3;
    sub_1B5554();
  }

  return (*(v5 + 8))(v8, v18);
}

void Transport.RecommendationBlockRequestV2.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v6 = *(v1 + 16);
  *v7 = *(v1 + 32);
  *&v7[9] = *(v1 + 41);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  sub_1B5814(*v1);
  sub_1B7C8(a1, v3);
  sub_1ADB0(a1);
  sub_1B270(a1, v4);
  sub_1B5824(v5);
}

Swift::Int Transport.RecommendationBlockRequestV2.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9[0] = v3;
  *(v9 + 9) = *(v0 + 41);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  sub_1B57F4();
  sub_1B5814(v1);
  sub_1B7C8(v7, v2);
  sub_1ADB0(v7);
  sub_1B270(v7, v4);
  sub_1B5824(v5);
  return sub_1B5844();
}

uint64_t Transport.RecommendationBlockRequestV2.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_2B0C(&qword_228900, &qword_1B66E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_20294();
  sub_1B5864();
  if (v2)
  {
    sub_2BF8(a1);
    return sub_20228(1, 0, 0, 0);
  }

  else
  {
    LOBYTE(v28) = 0;
    sub_20390();
    sub_1B5404();
    v11 = v32;
    v27 = v33;
    LOBYTE(v28) = 1;
    sub_203E4();
    sub_1B5374();
    v22 = v11;
    v12 = v32;
    v13 = v33;
    v26 = v34;
    v24 = v35;
    v25 = v36;
    v42 = v37;
    sub_20228(1, 0, 0, 0);
    sub_2B0C(&qword_2287A8, &qword_1B6640);
    LOBYTE(v28) = 2;
    sub_1F848();
    sub_1B5404();
    v23 = v32;
    v43 = 3;
    v14 = sub_1B5414();
    (*(v6 + 8))(v9, v5);
    LOBYTE(v28) = v22;
    v15 = v27;
    *(&v28 + 1) = v27;
    *&v29 = v12;
    *(&v29 + 1) = v13;
    *&v30 = v26;
    v16 = v24;
    v17 = v25;
    *(&v30 + 1) = v24;
    *v31 = v25;
    v31[8] = v42;
    *&v31[16] = v23;
    *&v31[24] = v14;
    v18 = *v31;
    a2[2] = v30;
    a2[3] = v18;
    *(a2 + 60) = *&v31[12];
    v19 = v29;
    *a2 = v28;
    a2[1] = v19;
    sub_20438(&v28, &v32);
    sub_2BF8(a1);
    LOBYTE(v32) = v22;
    v33 = v15;
    v34 = v12;
    v35 = v13;
    v36 = v26;
    v37 = v16;
    v38 = v17;
    v39 = v42;
    v40 = v23;
    v41 = v14;
    return sub_20470(&v32);
  }
}

Swift::Int sub_151A4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9[0] = v3;
  *(v9 + 9) = *(v0 + 41);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  sub_1B57F4();
  sub_1B5814(v1);
  sub_1B7C8(v7, v2);
  sub_1ADB0(v7);
  sub_1B270(v7, v4);
  sub_1B5824(v5);
  return sub_1B5844();
}

uint64_t Transport.RecommendationBlockResponseV2.CodingKeys.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_20F940;
  v8._object = a2;
  v6 = sub_1B52E4(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t Transport.RecommendationBlockResponseV2.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_20F978;
  v8._object = a2;
  v6 = sub_1B52E4(v5, v8);

  *a3 = v6 != 0;
  return result;
}

Swift::Int sub_15310()
{
  sub_1B57F4();
  sub_1B4884();
  return sub_1B5844();
}

Swift::Int sub_15384()
{
  sub_1B57F4();
  sub_1B4884();
  return sub_1B5844();
}

uint64_t sub_15404@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_20F9E8;
  v8._object = a2;
  v6 = sub_1B52E4(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_1545C(uint64_t a1)
{
  v2 = sub_204A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15498(uint64_t a1)
{
  v2 = sub_204A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static Transport.RecommendationBlockResponseV2.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      v4 = *a2;

      v5 = sub_68C0(v2, v3);

      if (v5)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t Transport.RecommendationBlockResponseV2.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_228918, &qword_1B66E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_2698(a1, a1[3]);
  sub_204A0();

  sub_1B5884();
  v11[1] = v8;
  sub_2B0C(&qword_228928, &qword_1B66F0);
  sub_204F4();
  sub_1B54B4();

  return (*(v4 + 8))(v7, v3);
}

uint64_t Transport.RecommendationBlockResponseV2.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_2B0C(&qword_228940, &qword_1B66F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_204A0();
  sub_1B5864();
  if (!v2)
  {
    sub_2B0C(&qword_228928, &qword_1B66F0);
    sub_205CC();
    sub_1B5374();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_2BF8(a1);
}

uint64_t Transport.RecommendationRequestV2.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_20FA20;
  v9._object = a2;
  v6 = sub_1B52E4(v5, v9);

  v8 = 3;
  if (v6 < 3)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t Transport.RecommendationRequestV2.CodingKeys.stringValue.getter()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 0x6E656D7461657274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F724665726F7473;
  }
}

uint64_t sub_1599C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD00000000000001BLL;
  v4 = 0x80000000001D4340;
  if (v2 == 1)
  {
    v5 = 0x80000000001D4340;
  }

  else
  {
    v3 = 0x6E656D7461657274;
    v5 = 0xEC00000073644974;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6F724665726F7473;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEC0000006449746ELL;
  }

  v8 = 0xD00000000000001BLL;
  if (*a2 != 1)
  {
    v8 = 0x6E656D7461657274;
    v4 = 0xEC00000073644974;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F724665726F7473;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC0000006449746ELL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B5604();
  }

  return v11 & 1;
}

Swift::Int sub_15AAC()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_15B64()
{
  *v0;
  *v0;
  sub_1B4884();
}

Swift::Int sub_15C08()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_15CC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006449746ELL;
  v4 = 0x80000000001D4340;
  v5 = 0xD00000000000001BLL;
  if (v2 != 1)
  {
    v5 = 0x6E656D7461657274;
    v4 = 0xEC00000073644974;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F724665726F7473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_15D3C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = Transport.RecommendationRequestV2.CodingKeys.init(stringValue:)(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t sub_15D74(uint64_t a1)
{
  v2 = sub_206A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15DB0(uint64_t a1)
{
  v2 = sub_206A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Transport.RecommendationRequestV2.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_228958, &qword_1B6700);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15 = v1[3];
  v16 = v10;
  v11 = a1[4];
  sub_2698(a1, a1[3]);
  sub_206A4();
  sub_1B5884();
  LOBYTE(v19) = 0;
  v12 = v17;
  sub_1B54F4();
  if (!v12)
  {
    v13 = v15;
    v19 = v16;
    v18 = 1;
    sub_2B0C(&qword_228968, &qword_1B6708);
    sub_206F8();
    sub_1B5544();
    v19 = v13;
    v18 = 2;
    sub_2B0C(&qword_228590, &qword_1B6590);
    sub_1E474();
    sub_1B54B4();
  }

  return (*(v4 + 8))(v7, v3);
}

void Transport.RecommendationRequestV2.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  sub_1B4884();
  sub_1B528(a1, v5);
  if (v6)
  {
    sub_1B5814(1u);
    sub_1B5804(*(v6 + 16));
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = (v6 + 40);
      do
      {
        v9 = *(v8 - 1);
        v10 = *v8;

        sub_1B4884();

        v8 += 2;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    sub_1B5814(0);
  }
}

Swift::Int Transport.RecommendationRequestV2.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B57F4();
  sub_1B4884();
  sub_1B528(v10, v3);
  if (v4)
  {
    sub_1B5814(1u);
    sub_1B5804(*(v4 + 16));
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = (v4 + 40);
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;

        sub_1B4884();

        v6 += 2;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    sub_1B5814(0);
  }

  return sub_1B5844();
}

uint64_t Transport.RecommendationRequestV2.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_228980, &qword_1B6710);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_206A4();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  LOBYTE(v21) = 0;
  v11 = sub_1B53B4();
  v13 = v12;
  v19 = v11;
  sub_2B0C(&qword_228968, &qword_1B6708);
  v20 = 1;
  sub_207D0();
  sub_1B5404();
  v18 = v21;
  sub_2B0C(&qword_228590, &qword_1B6590);
  v20 = 2;
  sub_1E61C();
  sub_1B5374();
  (*(v6 + 8))(v9, v5);
  v14 = v21;
  v15 = v18;
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v15;
  a2[3] = v14;

  sub_2BF8(a1);
}

Swift::Int sub_1645C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B57F4();
  sub_1B4884();
  sub_1B528(v10, v3);
  if (v4)
  {
    sub_1B5814(1u);
    sub_1B5804(*(v4 + 16));
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = (v4 + 40);
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;

        sub_1B4884();

        v6 += 2;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    sub_1B5814(0);
  }

  return sub_1B5844();
}

uint64_t Transport.Diagnosis.init(type:code:requestId:message:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t Transport.RecommendationResponseV2.CodingKeys.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_20FA88;
  v9._object = a2;
  v6 = sub_1B52E4(v5, v9);

  v8 = 8;
  if (v6 < 8)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t Transport.RecommendationResponseV2.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = Transport.RecommendationResponseV2.CodingKeys.init(rawValue:)(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t sub_165E0()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x687475416B6F6F62;
    v6 = 0x626D45736B6F6F62;
    if (v1 != 6)
    {
      v6 = 0x726E65476B6F6F62;
    }

    if (v1 == 4)
    {
      v5 = 0xD000000000000018;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD00000000000001ELL;
    if (v1 != 2)
    {
      v2 = 0xD000000000000017;
    }

    v3 = 0xD000000000000019;
    if (!*v0)
    {
      v3 = 0xD00000000000001CLL;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

void sub_16738(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xEB0000000073726FLL;
    v9 = 0x687475416B6F6F62;
    v10 = 0xEF73676E69646465;
    v11 = 0x626D45736B6F6F62;
    if (v2 != 6)
    {
      v11 = 0x726E65476B6F6F62;
      v10 = 0xEA00000000007365;
    }

    if (v2 == 4)
    {
      v9 = 0xD000000000000018;
      v8 = 0x80000000001D4570;
    }

    if (*v1 <= 5u)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    if (*v1 > 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x80000000001D4390;
    v4 = 0xD00000000000001ELL;
    if (v2 != 2)
    {
      v4 = 0xD000000000000017;
      v3 = 0x80000000001D43B0;
    }

    v5 = 0x80000000001D4370;
    v6 = 0xD000000000000019;
    if (*v1)
    {
      v5 = 0x80000000001D4550;
    }

    else
    {
      v6 = 0xD00000000000001CLL;
    }

    if (*v1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_16864(uint64_t a1)
{
  v2 = sub_208A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_168A0(uint64_t a1)
{
  v2 = sub_208A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Transport.RecommendationResponseV2.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_228998, &qword_1B6718);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v28 = v1[2];
  v29 = v9;
  v12 = v1[5];
  v26 = v1[4];
  v27 = v11;
  v13 = v1[7];
  v24 = v1[6];
  v25 = v12;
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1;
  v18 = v17;
  sub_2698(v16, v14);
  sub_208A8();

  sub_1B5884();
  v31 = v10;
  v30 = 0;
  sub_2B0C(&qword_2289A8, &qword_1B6720);
  sub_208FC();
  v19 = v8;
  sub_1B5544();
  if (v2)
  {

    return (*(v5 + 8))(v8, v18);
  }

  else
  {
    v22 = v27;
    v21 = v28;

    v31 = v29;
    v30 = 1;
    sub_2B0C(&qword_2289C0, &qword_1B6728);
    sub_209D4();
    sub_1B54B4();
    v31 = v21;
    v30 = 2;
    sub_2B0C(&qword_2285F0, &qword_1B65B0);
    sub_1E7C4();
    sub_1B54B4();
    v31 = v22;
    v30 = 3;
    sub_2B0C(&qword_228608, &qword_1B65B8);
    sub_1E89C();
    sub_1B54B4();
    v31 = v26;
    v30 = 4;
    sub_2B0C(&qword_2289D8, &qword_1B6730);
    sub_20AAC();
    sub_1B54B4();
    v31 = v25;
    v30 = 5;
    sub_2B0C(&qword_228620, &qword_1B65C0);
    sub_1E974();
    sub_1B54B4();
    v31 = v24;
    v30 = 6;
    sub_2B0C(&qword_228638, &qword_1B65C8);
    sub_1EA4C();
    sub_1B54B4();
    v31 = v13;
    v30 = 7;
    sub_2B0C(&qword_228650, &qword_1B65D0);
    sub_1EB24();
    sub_1B54B4();
    return (*(v5 + 8))(v19, v18);
  }
}

void Transport.RecommendationResponseV2.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  v10 = v2[6];
  v9 = v2[7];
  sub_1C01C(a1, *v2);
  if (v4)
  {
    sub_1B5814(1u);
    sub_1BF08(a1, v4);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1B5814(0);
    if (v6)
    {
LABEL_3:
      sub_1B5814(1u);
      sub_1BE44(a1, v6);
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  sub_1B5814(0);
  if (v5)
  {
LABEL_4:
    sub_1B5814(1u);
    sub_1BD2C(a1, v5);
    if (v8)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  sub_1B5814(0);
  if (v8)
  {
LABEL_5:
    sub_1B5814(1u);
    sub_1BBDC(a1, v8);
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_1B5814(0);
  if (v7)
  {
LABEL_6:
    sub_1B5814(1u);
    sub_1C57C(a1, v7);
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_14:
    sub_1B5814(0);
    if (v9)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  sub_1B5814(0);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1B5814(1u);
  sub_1BAE8(a1, v10);
  if (v9)
  {
LABEL_8:
    sub_1B5814(1u);
    sub_1C57C(a1, v9);
    return;
  }

LABEL_15:
  sub_1B5814(0);
}

uint64_t Transport.RecommendationResponseV2.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_2B0C(&qword_2289F0, &qword_1B6738);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_208A8();
  sub_1B5864();
  if (v2)
  {
    sub_2BF8(a1);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    sub_2B0C(&qword_2289A8, &qword_1B6720);
    LOBYTE(v28) = 0;
    sub_20B84();
    sub_1B5404();
    v27 = v32[0];
    sub_2B0C(&qword_2289C0, &qword_1B6728);
    LOBYTE(v28) = 1;
    sub_20C5C();
    sub_1B5374();
    v26 = v32[0];
    sub_2B0C(&qword_2285F0, &qword_1B65B0);
    LOBYTE(v28) = 2;
    sub_1ECD4();
    sub_1B5374();
    v25 = v32[0];
    sub_2B0C(&qword_228608, &qword_1B65B8);
    LOBYTE(v28) = 3;
    sub_1EDAC();
    sub_1B5374();
    v24 = v32[0];
    sub_2B0C(&qword_2289D8, &qword_1B6730);
    LOBYTE(v28) = 4;
    sub_20D34();
    sub_1B5374();
    v11 = v32[0];
    sub_2B0C(&qword_228620, &qword_1B65C0);
    LOBYTE(v28) = 5;
    sub_1EE84();
    sub_1B5374();
    v23 = a2;
    v12 = v32[0];
    sub_2B0C(&qword_228638, &qword_1B65C8);
    LOBYTE(v28) = 6;
    sub_1EF5C();
    sub_1B5374();
    v13 = v32[0];
    sub_2B0C(&qword_228650, &qword_1B65D0);
    v33 = 7;
    sub_1F034();
    sub_1B5374();
    (*(v6 + 8))(v9, v5);
    v22 = v34;
    v15 = v26;
    v14 = v27;
    *&v28 = v27;
    *(&v28 + 1) = v26;
    v16 = v24;
    v17 = v25;
    *&v29 = v25;
    *(&v29 + 1) = v24;
    *&v30 = v11;
    *(&v30 + 1) = v12;
    *&v31 = v13;
    *(&v31 + 1) = v34;
    v18 = v29;
    v19 = v23;
    *v23 = v28;
    v19[1] = v18;
    v20 = v31;
    v19[2] = v30;
    v19[3] = v20;
    sub_20E0C(&v28, v32);
    sub_2BF8(a1);
    v32[0] = v14;
    v32[1] = v15;
    v32[2] = v17;
    v32[3] = v16;
    v32[4] = v11;
    v32[5] = v12;
    v32[6] = v13;
    v32[7] = v22;
    return sub_20E44(v32);
  }
}

uint64_t Transport.MetadataRequest.CodingKeys.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_20FB68;
  v8._object = a2;
  v6 = sub_1B52E4(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t Transport.MetadataRequest.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_20FBA0;
  v8._object = a2;
  v6 = sub_1B52E4(v5, v8);

  *a3 = v6 != 0;
  return result;
}

Swift::Int sub_17568()
{
  sub_1B57F4();
  sub_1B4884();
  return sub_1B5844();
}

Swift::Int sub_175D4()
{
  sub_1B57F4();
  sub_1B4884();
  return sub_1B5844();
}

uint64_t sub_1764C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_20FC10;
  v8._object = a2;
  v6 = sub_1B52E4(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_176A4(uint64_t a1)
{
  v2 = sub_20E74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_176E0(uint64_t a1)
{
  v2 = sub_20E74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static Transport.MetadataRequest.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t Transport.MetadataRequest.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_228A28, &qword_1B6740);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_2698(a1, a1[3]);
  sub_20E74();

  sub_1B5884();
  v11[1] = v8;
  sub_2B0C(&qword_2284B0, &qword_1B6538);
  sub_1CBA0();
  sub_1B5544();

  return (*(v4 + 8))(v7, v3);
}

void Transport.MetadataRequest.hash(into:)()
{
  v1 = *v0;
  sub_1B5804(*(*v0 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      sub_1B5834(v4);
      --v2;
    }

    while (v2);
  }
}

Swift::Int Transport.MetadataRequest.hashValue.getter()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B5804(*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      sub_1B5834(v4);
      --v2;
    }

    while (v2);
  }

  return sub_1B5844();
}

uint64_t Transport.MetadataRequest.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_2B0C(&qword_228A38, &qword_1B6748);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_20E74();
  sub_1B5864();
  if (!v2)
  {
    sub_2B0C(&qword_2284B0, &qword_1B6538);
    sub_1CC64();
    sub_1B5404();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_2BF8(a1);
}

Swift::Int sub_17B90()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B5804(*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      sub_1B5834(v4);
      --v2;
    }

    while (v2);
  }

  return sub_1B5844();
}

uint64_t Transport.MetadataResponse.init(bookIdToMetadataEntries:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
  return result;
}

uint64_t Transport.MetadataResponse.CodingKeys.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_20FC48;
  v8._object = a2;
  v6 = sub_1B52E4(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t Transport.MetadataResponse.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_20FC80;
  v8._object = a2;
  v6 = sub_1B52E4(v5, v8);

  *a3 = v6 != 0;
  return result;
}

Swift::Int sub_17CF8()
{
  sub_1B57F4();
  sub_1B4884();
  return sub_1B5844();
}

Swift::Int sub_17D6C()
{
  sub_1B57F4();
  sub_1B4884();
  return sub_1B5844();
}

uint64_t sub_17DCC@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v4 = a1[1];
  v8._object = v4;
  v6 = sub_1B52E4(a2, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_17E3C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_20FCF0;
  v8._object = a2;
  v6 = sub_1B52E4(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_17E94(uint64_t a1)
{
  v2 = sub_20EC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_17ED0(uint64_t a1)
{
  v2 = sub_20EC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_17F24(void *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v3 = *a2;
  if (*a1)
  {
    if (v3 && (a3() & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t Transport.MetadataResponse.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_228A40, &qword_1B6750);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_2698(a1, a1[3]);
  sub_20EC8();

  sub_1B5884();
  v11[1] = v8;
  sub_2B0C(&qword_228A50, &qword_1B6758);
  sub_20F1C();
  sub_1B54B4();

  return (*(v4 + 8))(v7, v3);
}

void sub_180F4(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = *v2;
  if (*v2)
  {
    sub_1B5814(1u);

    a2(a1, v4);
  }

  else
  {
    sub_1B5814(0);
  }
}

Swift::Int sub_18194(void (*a1)(_BYTE *, uint64_t))
{
  v3 = *v1;
  sub_1B57F4();
  if (v3)
  {
    sub_1B5814(1u);
    a1(v5, v3);
  }

  else
  {
    sub_1B5814(0);
  }

  return sub_1B5844();
}

uint64_t Transport.MetadataResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_2B0C(&qword_228A68, &qword_1B6760);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_20EC8();
  sub_1B5864();
  if (!v2)
  {
    sub_2B0C(&qword_228A50, &qword_1B6758);
    sub_20FF4();
    sub_1B5374();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_2BF8(a1);
}

uint64_t sub_183D0(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *a2;
  if (*a1)
  {
    if (v5 && (a5() & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v5)
  {
    return 1;
  }

  return 0;
}

Swift::Int sub_1842C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *v3;
  sub_1B57F4();
  if (v5)
  {
    sub_1B5814(1u);
    a3(v7, v5);
  }

  else
  {
    sub_1B5814(0);
  }

  return sub_1B5844();
}

void sub_184B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = *v4;
  if (*v4)
  {
    sub_1B5814(1u);

    a4(a1, v6);
  }

  else
  {
    sub_1B5814(0);
  }
}

Swift::Int sub_18558(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1B57F4();
  if (v6)
  {
    sub_1B5814(1u);
    a4(v8, v6);
  }

  else
  {
    sub_1B5814(0);
  }

  return sub_1B5844();
}

uint64_t Transport.BookIdToMetadataEntry.ulyssesEmbedding.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t Transport.BookIdToMetadataEntry.ulyssesEmbedding.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t Transport.Diagnosis.requestId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Transport.Diagnosis.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Transport.BookIdToMetadataEntry.init(bookId:ulyssesEmbedding:bisacCodes:deduplicationId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t Transport.BookIdToMetadataEntry.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_20FD28;
  v9._object = a2;
  v6 = sub_1B52E4(v5, v9);

  v8 = 4;
  if (v6 < 4)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t Transport.BookIdToMetadataEntry.CodingKeys.stringValue.getter()
{
  v1 = 0x64496B6F6F62;
  v2 = 0x646F436361736962;
  if (*v0 != 2)
  {
    v2 = 0x63696C7075646564;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

Swift::Int sub_18758()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_1882C()
{
  *v0;
  *v0;
  *v0;
  sub_1B4884();
}

Swift::Int sub_188EC()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_189C8(unint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x64496B6F6F62;
  v4 = 0xEA00000000007365;
  v5 = 0x646F436361736962;
  if (*v1 != 2)
  {
    v5 = 0x63696C7075646564;
    v4 = 0xEF64496E6F697461;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000000001D45C0;
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

uint64_t sub_18A58@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = Transport.BookIdToMetadataEntry.CodingKeys.init(stringValue:)(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t sub_18A90(uint64_t a1)
{
  v2 = sub_210CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_18ACC(uint64_t a1)
{
  v2 = sub_210CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Transport.BookIdToMetadataEntry.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_228A80, &qword_1B6768);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v16 - v6;
  v9 = *v1;
  v8 = v1[1];
  v21 = *(v1 + 16);
  v10 = v1[4];
  v17 = v1[3];
  v18 = v8;
  v16[1] = v10;
  v11 = v1[5];
  v12 = a1[4];
  sub_2698(a1, a1[3]);
  sub_210CC();
  sub_1B5884();
  v25 = 0;
  v13 = v19;
  sub_1B5564();
  if (!v13)
  {
    v15 = v17;
    v24 = 1;
    sub_1B5484();
    v20 = v15;
    v23 = 2;
    sub_2B0C(&qword_228590, &qword_1B6590);
    sub_1E474();
    sub_1B5544();
    v22 = 3;
    sub_1B5464();
  }

  return (*(v4 + 8))(v7, v3);
}

void Transport.BookIdToMetadataEntry.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  sub_1B5834(*v0);
  if (v2 == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v1;
    }

    else
    {
      v6 = 0;
    }

    sub_1B5834(v6);
  }

  sub_1B5804(*(v4 + 16));
  v7 = *(v4 + 16);
  if (v7)
  {
    v8 = (v4 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      sub_1B4884();

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  if (v5)
  {
    sub_1B5814(1u);

    sub_1B4884();
  }

  else
  {
    sub_1B5814(0);
  }
}

Swift::Int Transport.BookIdToMetadataEntry.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 3);
  v5 = v0[2];
  sub_1B57F4();
  Transport.BookIdToMetadataEntry.hash(into:)();
  return sub_1B5844();
}

uint64_t Transport.BookIdToMetadataEntry.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_228A90, &qword_1B6770);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_210CC();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  v29 = 0;
  v11 = sub_1B5424();
  v28 = 1;
  v12 = sub_1B5344();
  v25 = v13;
  v14 = v12;
  sub_2B0C(&qword_228590, &qword_1B6590);
  v27 = 2;
  sub_1E61C();
  sub_1B5404();
  v23 = v24;
  v26 = 3;
  v15 = sub_1B5324();
  v17 = v16;
  v18 = *(v6 + 8);
  v22 = v15;
  v18(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v14;
  *(a2 + 16) = v25 & 1;
  v19 = v22;
  *(a2 + 24) = v23;
  *(a2 + 32) = v19;
  *(a2 + 40) = v17;

  sub_2BF8(a1);
}

Swift::Int sub_19188()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 3);
  v5 = v0[2];
  sub_1B57F4();
  Transport.BookIdToMetadataEntry.hash(into:)();
  return sub_1B5844();
}

uint64_t Transport.Diagnosis.TypePayload.description.getter(uint64_t a1, unint64_t a2)
{
  v2 = 0x474E494E524157;
  if (a2 != 1)
  {
    v2 = a1;
  }

  if (a2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x524F525245;
  }

  sub_1E04C(a1, a2);
  return v3;
}

uint64_t sub_19270@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21120(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_192A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = 0xE500000000000000;
  v5 = 0x524F525245;
  v6 = 0xE700000000000000;
  v7 = 0x474E494E524157;
  if (v3 != 1)
  {
    v7 = *v1;
    v6 = v1[1];
  }

  if (v3)
  {
    v5 = v7;
    v4 = v6;
  }

  *a1 = v5;
  a1[1] = v4;
  return sub_1E04C(v2, v3);
}

uint64_t sub_19398(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = 0xE700000000000000;
  v7 = 0x474E494E524157;
  if (v3 != 1)
  {
    v7 = *a1;
    v6 = a1[1];
  }

  if (v3)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x524F525245;
  }

  if (v3)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v10 = 0xE700000000000000;
  v11 = 0x474E494E524157;
  if (v5 != 1)
  {
    v11 = *a2;
    v10 = a2[1];
  }

  if (v5)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x524F525245;
  }

  if (v5)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  if (v8 == v12 && v9 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1B5604();
  }

  sub_1E04C(v2, v3);
  sub_1E04C(v4, v5);

  return v14 & 1;
}

Swift::Int sub_19494()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B57F4();
  sub_1E04C(v1, v2);
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_19538()
{
  v1 = v0[1];
  if (v1 != 1)
  {
    v2 = *v0;
    v3 = v0[1];
  }

  sub_1E04C(*v0, v1);
  sub_1B4884();
}

Swift::Int sub_195C8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B57F4();
  sub_1E04C(v1, v2);
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_19668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_21120(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_196A0()
{
  v1 = v0[1];
  v2 = 0x474E494E524157;
  if (v1 != 1)
  {
    v2 = *v0;
    v3 = v0[1];
  }

  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x524F525245;
  }

  sub_1E04C(*v0, v1);
  return v4;
}

uint64_t sub_19710(uint64_t a1, int64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = 0x455F524556524553;
      goto LABEL_11;
    }

    if (a2 == 3)
    {
      v2 = 0x4E554F465F544F4ELL;
      goto LABEL_11;
    }

LABEL_8:
    v2 = a1;
    goto LABEL_11;
  }

  if (!a2)
  {
    v2 = 0x5F44494C41564E49;
    goto LABEL_11;
  }

  if (a2 != 1)
  {
    goto LABEL_8;
  }

  v2 = 0x485455415F544F4ELL;
LABEL_11:
  sub_21360(a1, a2);
  return v2;
}

uint64_t sub_197F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s20BooksPersonalization9TransportO9DiagnosisV11CodePayloadOyAGSgSScfC_0(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_19824@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      strcpy(a1, "SERVER_ERROR");
      *(a1 + 13) = 0;
      *(a1 + 14) = -5120;
      return sub_21360(v2, v3);
    }

    if (v3 == 3)
    {
      *a1 = 0x4E554F465F544F4ELL;
      *(a1 + 8) = 0xE900000000000044;
      return sub_21360(v2, v3);
    }

LABEL_9:
    v5 = *v1;
    v6 = v1[1];
    *a1 = v2;
    *(a1 + 8) = v3;
    return sub_21360(v2, v3);
  }

  if (!v3)
  {
    *a1 = 0x5F44494C41564E49;
    *(a1 + 8) = 0xEF54534555514552;
    return sub_21360(v2, v3);
  }

  if (v3 != 1)
  {
    goto LABEL_9;
  }

  strcpy(a1, "NOT_AUTHORIZED");
  *(a1 + 15) = -18;
  return sub_21360(v2, v3);
}

uint64_t sub_199A0(uint64_t *a1, uint64_t *a2)
{
  v2 = 0xEF54534555514552;
  v3 = 0x5F44494C41564E49;
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        v8 = 0x4E554F465F544F4ELL;
        v9 = 0xE900000000000044;
        if (v7 <= 1)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

LABEL_10:
      v8 = *a1;
      v9 = v5;
      if (v7 <= 1)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    v8 = 0x455F524556524553;
    v9 = 0xEC000000524F5252;
    if (v7 > 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v8 = 0x485455415F544F4ELL;
        v9 = 0xEE0044455A49524FLL;
        if (v7 <= 1)
        {
          goto LABEL_18;
        }

LABEL_13:
        if (v7 == 2)
        {
          v2 = 0xEC000000524F5252;
          if (v8 != 0x455F524556524553)
          {
            goto LABEL_27;
          }

          goto LABEL_24;
        }

        if (v7 == 3)
        {
          v2 = 0xE900000000000044;
          if (v8 != 0x4E554F465F544F4ELL)
          {
            goto LABEL_27;
          }

          goto LABEL_24;
        }

        goto LABEL_22;
      }

      goto LABEL_10;
    }

    v8 = 0x5F44494C41564E49;
    v9 = 0xEF54534555514552;
    if (v7 > 1)
    {
      goto LABEL_13;
    }
  }

LABEL_18:
  if (!v7)
  {
    goto LABEL_23;
  }

  if (v7 == 1)
  {
    v2 = 0xEE0044455A49524FLL;
    if (v8 != 0x485455415F544F4ELL)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

LABEL_22:
  v3 = *a2;
  v2 = a2[1];
LABEL_23:
  if (v8 != v3)
  {
LABEL_27:
    v10 = sub_1B5604();
    goto LABEL_28;
  }

LABEL_24:
  if (v9 != v2)
  {
    goto LABEL_27;
  }

  v10 = 1;
LABEL_28:
  sub_21360(v4, v5);
  sub_21360(v6, v7);

  return v10 & 1;
}

Swift::Int sub_19BA8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B57F4();
  sub_21360(v1, v2);
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_19CC0()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 <= 1)
  {
    if (v2 <= 1)
    {
      goto LABEL_7;
    }

LABEL_6:
    v3 = *v0;
    v4 = v0[1];
    goto LABEL_7;
  }

  if (v2 != 2 && v2 != 3)
  {
    goto LABEL_6;
  }

LABEL_7:
  sub_21360(v1, v2);
  sub_1B4884();
}

Swift::Int sub_19DC4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B57F4();
  sub_21360(v1, v2);
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_19ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _s20BooksPersonalization9TransportO9DiagnosisV11CodePayloadOyAGSgSScfC_0(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_19F10()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 0x455F524556524553;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 0x4E554F465F544F4ELL;
      goto LABEL_11;
    }

LABEL_8:
    v3 = *v0;
    goto LABEL_11;
  }

  if (!v2)
  {
    v3 = 0x5F44494C41564E49;
    goto LABEL_11;
  }

  if (v2 != 1)
  {
    goto LABEL_8;
  }

  v3 = 0x485455415F544F4ELL;
LABEL_11:
  sub_21360(v1, v2);
  return v3;
}

uint64_t Transport.Diagnosis.type.getter()
{
  v1 = *v0;
  sub_1E04C(*v0, *(v0 + 8));
  return v1;
}

uint64_t Transport.Diagnosis.type.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1E080(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t Transport.Diagnosis.code.getter()
{
  v1 = *(v0 + 16);
  sub_21360(v1, *(v0 + 24));
  return v1;
}

uint64_t Transport.Diagnosis.code.setter(uint64_t a1, uint64_t a2)
{
  result = sub_21374(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Transport.Diagnosis.message.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t Transport.Diagnosis.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t Transport.Diagnosis.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_20FEE8;
  v9._object = a2;
  v6 = sub_1B52E4(v5, v9);

  v8 = 4;
  if (v6 < 4)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t Transport.Diagnosis.CodingKeys.stringValue.getter()
{
  v1 = 1701869940;
  v2 = 0x4974736575716572;
  if (*v0 != 2)
  {
    v2 = 0x6567617373656DLL;
  }

  if (*v0)
  {
    v1 = 1701080931;
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

Swift::Int sub_1A204()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_1A2BC()
{
  *v0;
  *v0;
  *v0;
  sub_1B4884();
}

Swift::Int sub_1A360()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_1A420(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701869940;
  v4 = 0xE900000000000064;
  v5 = 0x4974736575716572;
  if (*v1 != 2)
  {
    v5 = 0x6567617373656DLL;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 1701080931;
    v2 = 0xE400000000000000;
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

uint64_t sub_1A494@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = Transport.Diagnosis.CodingKeys.init(stringValue:)(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t sub_1A4CC(uint64_t a1)
{
  v2 = sub_21388();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A508(uint64_t a1)
{
  v2 = sub_21388();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Transport.Diagnosis.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_228A98, &qword_1B6778);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v20 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v21 = v1[3];
  v22 = v11;
  v12 = v1[4];
  v20[2] = v1[5];
  v20[3] = v12;
  v13 = v1[6];
  v20[0] = v1[7];
  v20[1] = v13;
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1;
  v18 = v17;
  sub_2698(v16, v14);
  sub_1E04C(v10, v9);
  sub_21388();
  sub_1B5884();
  v23 = v10;
  v24 = v9;
  v25 = 0;
  sub_213DC();
  sub_1B5544();
  sub_1E080(v10, v9);
  if (!v2)
  {
    v23 = v22;
    v24 = v21;
    v25 = 1;
    sub_21430();
    sub_1B5544();
    LOBYTE(v23) = 2;
    sub_1B5464();
    LOBYTE(v23) = 3;
    sub_1B54F4();
  }

  return (*(v5 + 8))(v8, v18);
}

uint64_t Transport.Diagnosis.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  if (v1 != 1)
  {
    v8 = *v0;
    v9 = v0[1];
  }

  sub_1E04C(*v0, v1);
  sub_1B4884();

  sub_21360(v2, v3);
  sub_1B4884();

  if (v5)
  {
    sub_1B5814(1u);
    sub_1B4884();
  }

  else
  {
    sub_1B5814(0);
  }

  return sub_1B4884();
}

Swift::Int sub_1A954(void (*a1)(_BYTE *))
{
  sub_1B57F4();
  a1(v3);
  return sub_1B5844();
}

uint64_t Transport.Diagnosis.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_2B0C(&qword_228AB8, &qword_1B6780);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_21388();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  LOBYTE(v28) = 0;
  sub_21484();
  sub_1B5404();
  v26 = v33;
  v27 = v32;
  LOBYTE(v28) = 1;
  sub_214D8();
  sub_1B5404();
  v24 = v33;
  v25 = v32;
  LOBYTE(v32) = 2;
  v11 = sub_1B5324();
  v13 = v12;
  v23 = v11;
  v40 = 3;
  v14 = sub_1B53B4();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  v17 = v26;
  *&v28 = v27;
  *(&v28 + 1) = v26;
  v19 = v24;
  v18 = v25;
  *&v29 = v25;
  *(&v29 + 1) = v24;
  *&v30 = v23;
  *(&v30 + 1) = v13;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  v21 = v31;
  a2[2] = v30;
  a2[3] = v21;
  sub_2152C(&v28, &v32);
  sub_2BF8(a1);
  v32 = v27;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v36 = v23;
  v37 = v13;
  v38 = v14;
  v39 = v16;
  return sub_21564(&v32);
}

Swift::Int sub_1AD08(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1B57F4();
  a3(v5);
  return sub_1B5844();
}

Swift::Int sub_1AD6C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1B57F4();
  a4(v6);
  return sub_1B5844();
}

void sub_1ADB0(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if (*v2 == 1)
  {
    goto LABEL_17;
  }

  v6 = *(v2 + 8);
  v5 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  sub_1B5814(1u);
  if (v4)
  {
    sub_1B5814(1u);
    sub_1B444(a1, v4);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_11:
    sub_1B5814(0);
    if (v7 == 3)
    {
      goto LABEL_8;
    }

LABEL_12:
    sub_1B5814(1u);
    sub_1FE84(v5, v7);
    sub_1B4884();

    if (!v8)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  sub_1B5814(0);
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_4:
  sub_1B5814(1u);
  v10 = *(v6 + 16);
  sub_1B5804(v10);
  if (v10)
  {
    v11 = (v6 + 32);
    do
    {
      v12 = *v11++;
      sub_1B5834(v12);
      --v10;
    }

    while (v10);
  }

  if (v7 != 3)
  {
    goto LABEL_12;
  }

LABEL_8:
  sub_1B5814(0);
  if (!v8)
  {
LABEL_9:
    sub_1B5814(0);
    goto LABEL_16;
  }

LABEL_13:
  sub_1B5814(1u);
  v13 = *(v8 + 16);
  sub_1B5804(v13);
  if (v13)
  {
    v14 = (v8 + 32);
    do
    {
      v15 = *v14++;
      sub_1B5834(v15);
      --v13;
    }

    while (v13);
  }

LABEL_16:
  if (v9 != 2)
  {
    sub_1B5814(1u);
    v16 = v9 & 1;
    goto LABEL_19;
  }

LABEL_17:
  v16 = 0;
LABEL_19:
  sub_1B5814(v16);
}

void sub_1AF54(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_1B5804(v4);
  if (v4)
  {
    v5 = (a2 + 88);
    do
    {
      v6 = *(v5 - 5);
      v22 = *(v5 - 4);
      v7 = *(v5 - 24);
      v8 = *(v5 - 5);
      v9 = *(v5 - 16);
      v10 = *(v5 - 3);
      v11 = *(v5 - 8);
      v12 = *v5;
      if (*(v5 - 48) == 1)
      {
        sub_1B5814(0);
      }

      else
      {
        v21 = *v5;
        v13 = *(v5 - 16);
        v14 = *(v5 - 5);
        v15 = *(v5 - 8);
        v16 = *(v5 - 3);
        v17 = *(v5 - 7);
        sub_1B5814(1u);
        v18 = v17;
        v10 = v16;
        v11 = v15;
        v8 = v14;
        v9 = v13;
        v12 = v21;
        sub_1B5834(v18);
      }

      sub_1B5834(v6);
      if (v7)
      {
        sub_1B5814(0);
        if (v9)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1B5814(1u);
        sub_1B5834(v22);
        if (v9)
        {
LABEL_10:
          sub_1B5814(0);
          if (!v11)
          {
            goto LABEL_17;
          }

          goto LABEL_3;
        }
      }

      sub_1B5814(1u);
      if ((v8 & 0x7FFFFFFF) != 0)
      {
        v19 = v8;
      }

      else
      {
        v19 = 0;
      }

      sub_1B5824(v19);
      if (!v11)
      {
LABEL_17:
        sub_1B5814(1u);
        if ((v10 & 0x7FFFFFFF) != 0)
        {
          v20 = v10;
        }

        else
        {
          v20 = 0;
        }

        sub_1B5824(v20);
        goto LABEL_4;
      }

LABEL_3:
      sub_1B5814(0);
LABEL_4:

      sub_1B0C8(a1, v12);

      v5 += 8;
      --v4;
    }

    while (v4);
  }
}

void sub_1B0C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1B5804(v3);
  if (v3)
  {
    v4 = 0;
    v5 = a2 + 32;
    v15 = v3;
    do
    {
      v6 = v5 + 24 * v4;
      v7 = *(v6 + 16);
      if (*(v6 + 8) == 1)
      {
        sub_1B5814(0);
        if (v7)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v8 = *(v6 + 16);
        v9 = *v6;
        sub_1B5814(1u);
        v10 = v9;
        v7 = v8;
        sub_1B5834(v10);
        if (v8)
        {
LABEL_9:
          sub_1B5814(1u);
          sub_1B5804(*(v7 + 16));
          v11 = *(v7 + 16);
          if (v11)
          {

            v12 = (v7 + 40);
            do
            {
              v13 = *(v12 - 1);
              v14 = *v12;
              v12 += 2;
              sub_1E04C(v13, v14);
              sub_1E04C(v13, v14);
              sub_1B4884();

              sub_1E080(v13, v14);
              --v11;
            }

            while (v11);

            v5 = a2 + 32;
            v3 = v15;
          }

          goto LABEL_4;
        }
      }

      sub_1B5814(0);
LABEL_4:
      ++v4;
    }

    while (v4 != v3);
  }
}

void sub_1B270(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1B5804(v3);
  if (v3)
  {
    v4 = (a2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v4 += 2;
      sub_1E04C(v5, v6);
      sub_1E04C(v5, v6);
      sub_1B4884();

      sub_1E080(v5, v6);
      --v3;
    }

    while (v3);
  }
}

void sub_1B35C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1B5804(v3);
  if (v3)
  {
    v4 = 0;
    v5 = a2 + 32;
    do
    {
      v6 = v5 + 24 * v4;
      v7 = *(v6 + 8);
      v8 = *(v6 + 12);
      v9 = *(v6 + 16);
      sub_1B5834(*v6);
      if (v8 == 1)
      {
        sub_1B5814(0);
        if (v9)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_1B5814(1u);
        if ((v7 & 0x7FFFFFFF) != 0)
        {
          v10 = v7;
        }

        else
        {
          v10 = 0;
        }

        sub_1B5824(v10);
        if (v9)
        {
LABEL_12:
          sub_1B5814(1u);
          sub_1B5804(*(v9 + 16));
          v11 = *(v9 + 16);
          if (v11)
          {
            v12 = (v9 + 32);
            do
            {
              v13 = *v12++;
              sub_1B5834(v13);
              --v11;
            }

            while (v11);
          }

          goto LABEL_4;
        }
      }

      sub_1B5814(0);
LABEL_4:
      ++v4;
    }

    while (v4 != v3);
  }
}

void sub_1B444(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1B5804(v3);
  if (v3)
  {
    v4 = (a2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v4 += 2;
      sub_1E04C(v5, v6);
      sub_1E04C(v5, v6);
      sub_1B4884();

      sub_1E080(v5, v6);
      --v3;
    }

    while (v3);
  }
}

void sub_1B528(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_1B5804(v4);
  if (v4)
  {
    v5 = 0;
    do
    {
      v22 = v5;
      v6 = a2 + 32 + 80 * v5;
      v7 = *(v6 + 8);
      v8 = *(v6 + 16);
      v26 = *(v6 + 32);
      v27 = *(v6 + 24);
      v24 = *(v6 + 48);
      v25 = *(v6 + 40);
      v23 = *(v6 + 56);
      v9 = *(v6 + 64);
      v20 = *(v6 + 72);
      sub_1B5814(*v6);
      sub_1B5804(*(v7 + 16));
      v10 = *(v7 + 16);
      if (v10)
      {
        v11 = (v7 + 56);
        do
        {
          v12 = *(v11 - 4);
          v13 = *(v11 - 1);
          v14 = *v11;
          sub_1B5834(*(v11 - 3));
          if (v12 == 0.0)
          {
            v15 = 0.0;
          }

          else
          {
            v15 = v12;
          }

          sub_1B5824(LODWORD(v15));
          if (v14 == 1)
          {
            sub_1B5814(0);
          }

          else
          {
            sub_1B5814(1u);
            sub_1B5834(v13);
          }

          v11 += 8;
          --v10;
        }

        while (v10);
      }

      v21 = v8;
      sub_201B8(v8, v27, v26, v25);

      sub_1ADB0(a1);
      sub_1B5804(*(v9 + 16));
      v16 = *(v9 + 16);
      if (v16)
      {
        v17 = (v9 + 40);
        do
        {
          v18 = *(v17 - 1);
          v19 = *v17;
          v17 += 2;
          sub_1E04C(v18, v19);
          sub_1E04C(v18, v19);
          sub_1B4884();

          sub_1E080(v18, v19);
          --v16;
        }

        while (v16);
      }

      v5 = v22 + 1;
      sub_1B5824(v20);

      sub_20228(v21, v27, v26, v25);
    }

    while (v22 + 1 != v4);
  }
}

void sub_1B7C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1B5804(v3);
  if (v3)
  {
    v4 = (a2 + 56);
    do
    {
      v5 = *(v4 - 4);
      v6 = *(v4 - 1);
      v7 = *v4;
      sub_1B5834(*(v4 - 3));
      if (v5 == 0.0)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = v5;
      }

      sub_1B5824(LODWORD(v8));
      if (v7 == 1)
      {
        sub_1B5814(0);
      }

      else
      {
        sub_1B5814(1u);
        sub_1B5834(v6);
      }

      v4 += 8;
      --v3;
    }

    while (v3);
  }
}

void sub_1B874(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1B5804(v3);
  if (v3)
  {
    v4 = 0;
    v16 = a2 + 32;
    do
    {
      v5 = v16 + 48 * v4;
      v6 = *(v5 + 8);
      v7 = *(v5 + 16);
      v8 = *(v5 + 24);
      v9 = *(v5 + 32);
      v10 = *(v5 + 40);
      sub_1B5834(*v5);
      if (v7 == 1)
      {
        sub_1B5814(0);
      }

      else
      {
        sub_1B5814(1u);
        if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v11 = v6;
        }

        else
        {
          v11 = 0;
        }

        sub_1B5834(v11);
      }

      sub_1B5804(*(v8 + 16));
      v12 = *(v8 + 16);
      if (v12)
      {

        v13 = (v8 + 40);
        do
        {
          v14 = *(v13 - 1);
          v15 = *v13;

          sub_1B4884();

          v13 += 2;
          --v12;
        }

        while (v12);
        if (!v10)
        {
LABEL_17:
          sub_1B5814(0);
          goto LABEL_4;
        }
      }

      else
      {

        if (!v10)
        {
          goto LABEL_17;
        }
      }

      sub_1B5814(1u);
      sub_1B4884();
LABEL_4:

      ++v4;
    }

    while (v4 != v3);
  }
}

void sub_1B9DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1B5804(v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 == 0.0)
      {
        v6 = 0.0;
      }

      sub_1B5834(*&v6);
      --v3;
    }

    while (v3);
  }
}

void sub_1BA44(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1B5804(v3);
  if (v3)
  {
    v4 = (a2 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;

      sub_1B4884();
      sub_1B4884();

      v4 += 4;
      --v3;
    }

    while (v3);
  }
}

void sub_1BAE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1B5804(v3);
  if (v3)
  {
    v4 = 0;
    v5 = a2 + 32;
    do
    {
      v6 = v5 + 24 * v4;
      v7 = *(v6 + 16);
      if (*(v6 + 8) == 1)
      {
        sub_1B5814(0);
        if (v7)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v8 = *v6;
        sub_1B5814(1u);
        sub_1B5834(v8);
        if (v7)
        {
LABEL_9:
          sub_1B5814(1u);
          sub_1B5804(*(v7 + 16));
          v9 = *(v7 + 16);
          if (v9)
          {
            v10 = (v7 + 32);
            do
            {
              v11 = *v10++;
              v12 = v11;
              if (v11 == 0.0)
              {
                v12 = 0.0;
              }

              sub_1B5834(*&v12);
              --v9;
            }

            while (v9);
          }

          goto LABEL_4;
        }
      }

      sub_1B5814(0);
LABEL_4:
      ++v4;
    }

    while (v4 != v3);
  }
}

void sub_1BBDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1B5804(v3);
  if (v3)
  {
    v4 = (a2 + 56);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      if (*(v4 - 16) == 1)
      {
        sub_1B5814(0);
        if (v6 != 2)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v7 = *(v4 - 3);
        sub_1B5814(1u);
        sub_1B5834(v7);
        if (v6 != 2)
        {
LABEL_9:
          sub_1B5814(1u);
          sub_1E060(v5, v6);
          sub_1E060(v5, v6);
          sub_1E060(v5, v6);
          sub_1B4884();

          sub_1E070(v5, v6);
          sub_1E070(v5, v6);
          goto LABEL_4;
        }
      }

      sub_1B5814(0);
LABEL_4:
      v4 += 4;
      --v3;
    }

    while (v3);
  }
}

void sub_1BD2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1B5804(v3);
  if (v3)
  {
    v4 = (a2 + 72);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 16);
      v7 = *(v4 - 15);
      v8 = *(v4 - 1);
      v9 = *v4;
      if (*(v4 - 32) == 1)
      {
        sub_1B5814(0);
        if (v6)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v10 = *(v4 - 5);
        sub_1B5814(1u);
        sub_1B5834(v10);
        if (v6)
        {
LABEL_7:
          sub_1B5814(0);
          if (v7 == 2)
          {
            goto LABEL_8;
          }

          goto LABEL_12;
        }
      }

      sub_1B5814(1u);
      sub_1B5834(v5);
      if (v7 == 2)
      {
LABEL_8:
        sub_1B5814(0);
        if (!v9)
        {
          goto LABEL_13;
        }

        goto LABEL_3;
      }

LABEL_12:
      sub_1B5814(1u);
      sub_1B5814(v7 & 1);
      if (!v9)
      {
LABEL_13:
        sub_1B5814(1u);
        if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v11 = v8;
        }

        else
        {
          v11 = 0;
        }

        sub_1B5834(v11);
        goto LABEL_4;
      }

LABEL_3:
      sub_1B5814(0);
LABEL_4:
      v4 += 48;
      --v3;
    }

    while (v3);
  }
}

void sub_1BE44(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1B5804(v3);
  if (v3)
  {
    v4 = (a2 + 56);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      if (*(v4 - 16) == 1)
      {
        sub_1B5814(0);
        if (!v5)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v7 = *(v4 - 3);
        sub_1B5814(1u);
        sub_1B5834(v7);
        if (!v5)
        {
LABEL_9:
          sub_1B5814(0);
          goto LABEL_4;
        }
      }

      sub_1B5814(1u);

      sub_1B4884();

LABEL_4:
      v4 += 4;
      --v3;
    }

    while (v3);
  }
}

void sub_1BF08(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1B5804(v3);
  if (v3)
  {
    v4 = 0;
    v5 = a2 + 32;
    do
    {
      v6 = v5 + 24 * v4;
      v7 = *(v6 + 16);
      if (*(v6 + 8) == 1)
      {
        sub_1B5814(0);
        if (v7)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v8 = *v6;
        sub_1B5814(1u);
        sub_1B5834(v8);
        if (v7)
        {
LABEL_9:
          sub_1B5814(1u);
          sub_1B5804(*(v7 + 16));
          v9 = *(v7 + 16);
          if (v9)
          {

            v10 = (v7 + 40);
            do
            {
              v11 = *(v10 - 1);
              v12 = *v10;

              sub_1B4884();

              v10 += 2;
              --v9;
            }

            while (v9);
          }

          goto LABEL_4;
        }
      }

      sub_1B5814(0);
LABEL_4:
      ++v4;
    }

    while (v4 != v3);
  }
}

void sub_1C01C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1B5804(v3);
  v31 = v3;
  if (v3)
  {
    v4 = 0;
    v30 = a2 + 32;
    do
    {
      v32 = v4;
      v5 = *(v30 + 8 * v4);
      if (v5)
      {
        sub_1B5814(1u);
        v6 = *(v5 + 16);
        sub_1B5804(v6);
        v34 = v6;
        if (v6)
        {
          v33 = v5 + 32;

          v7 = 0;
          while (1)
          {
            v35 = v7;
            v8 = v33 + (v7 << 6);
            v10 = *(v8 + 16);
            v9 = *(v8 + 24);
            v11 = *(v8 + 32);
            v12 = *(v8 + 36);
            v13 = *(v8 + 40);
            v14 = *(v8 + 44);
            v15 = *(v8 + 48);
            v16 = *(v8 + 56);
            if (*(v8 + 8) == 1)
            {
              sub_1B5814(0);
            }

            else
            {
              v17 = *v8;
              sub_1B5814(1u);
              sub_1B5834(v17);
            }

            sub_1B5834(v10);
            if (v11)
            {
              sub_1B5814(0);
              if (v13)
              {
                goto LABEL_24;
              }
            }

            else
            {
              sub_1B5814(1u);
              sub_1B5834(v9);
              if (v13)
              {
LABEL_24:
                sub_1B5814(0);
                if (v15)
                {
                  goto LABEL_25;
                }

                goto LABEL_19;
              }
            }

            sub_1B5814(1u);
            if ((v12 & 0x7FFFFFFF) != 0)
            {
              v18 = v12;
            }

            else
            {
              v18 = 0;
            }

            sub_1B5824(v18);
            if (v15)
            {
LABEL_25:
              sub_1B5814(0);
              goto LABEL_26;
            }

LABEL_19:
            sub_1B5814(1u);
            if ((v14 & 0x7FFFFFFF) != 0)
            {
              v19 = v14;
            }

            else
            {
              v19 = 0;
            }

            sub_1B5824(v19);
LABEL_26:
            v20 = *(v16 + 16);
            sub_1B5804(v20);
            if (v20)
            {
              v21 = v16 + 32;

              v22 = 0;
              v36 = v20;
              while (1)
              {
                v23 = v21 + 24 * v22;
                v24 = *(v23 + 16);
                if (*(v23 + 8) == 1)
                {
                  sub_1B5814(0);
                  if (v24)
                  {
                    goto LABEL_34;
                  }
                }

                else
                {
                  v25 = *v23;
                  sub_1B5814(1u);
                  sub_1B5834(v25);
                  if (v24)
                  {
LABEL_34:
                    sub_1B5814(1u);
                    sub_1B5804(*(v24 + 16));
                    v26 = *(v24 + 16);
                    if (v26)
                    {

                      v27 = (v24 + 40);
                      do
                      {
                        v28 = *(v27 - 1);
                        v29 = *v27;
                        v27 += 2;
                        sub_1E04C(v28, v29);
                        sub_1E04C(v28, v29);
                        sub_1B4884();

                        sub_1E080(v28, v29);
                        --v26;
                      }

                      while (v26);

                      v20 = v36;
                      v21 = v16 + 32;
                    }

                    goto LABEL_29;
                  }
                }

                sub_1B5814(0);
LABEL_29:
                if (++v22 == v20)
                {

                  break;
                }
              }
            }

            v7 = v35 + 1;
            if (v35 + 1 == v34)
            {
              goto LABEL_3;
            }
          }
        }
      }

      else
      {
        sub_1B5814(0);
LABEL_3:
      }

      v4 = v32 + 1;
    }

    while (v32 + 1 != v31);
  }
}

void sub_1C340(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1B5804(v3);
  if (v3)
  {
    v4 = 0;
    v17 = a2 + 32;
    do
    {
      v5 = *(v17 + 8 * v4);
      if (v5)
      {
        sub_1B5814(1u);
        sub_1B5804(*(v5 + 16));
        v6 = *(v5 + 16);
        if (v6)
        {
          v7 = 0;
          v8 = v5 + 32;
          do
          {
            v9 = v8 + 24 * v7;
            v10 = *(v9 + 8);
            v11 = *(v9 + 12);
            v12 = *(v9 + 16);
            sub_1B5834(*v9);
            if (v11 == 1)
            {
              sub_1B5814(0);
              if (v12)
              {
                goto LABEL_17;
              }
            }

            else
            {
              sub_1B5814(1u);
              if ((v10 & 0x7FFFFFFF) != 0)
              {
                v13 = v10;
              }

              else
              {
                v13 = 0;
              }

              sub_1B5824(v13);
              if (v12)
              {
LABEL_17:
                sub_1B5814(1u);
                sub_1B5804(*(v12 + 16));
                v14 = *(v12 + 16);
                if (v14)
                {
                  v15 = (v12 + 32);
                  do
                  {
                    v16 = *v15++;
                    sub_1B5834(v16);
                    --v14;
                  }

                  while (v14);
                }

                goto LABEL_9;
              }
            }

            sub_1B5814(0);
LABEL_9:
            ++v7;
          }

          while (v7 != v6);
        }
      }

      else
      {
        sub_1B5814(0);
      }

      ++v4;
    }

    while (v4 != v3);
  }
}

void sub_1C480(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1B5804(v3);
  if (v3)
  {
    v4 = (a2 + 80);
    do
    {
      v6 = *(v4 - 6);
      v5 = *(v4 - 5);
      v7 = *(v4 - 4);
      v8 = *(v4 - 3);
      v10 = *(v4 - 2);
      v9 = *(v4 - 1);
      v11 = *v4;

      sub_1B4884();
      if (v7 == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = v7;
      }

      sub_1B5834(*&v12);
      if (v8 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v8;
      }

      sub_1B5834(*&v13);
      if (v11 == 1)
      {
        sub_1B5814(0);
      }

      else
      {
        sub_1B5814(1u);
        if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v14 = v10;
        }

        else
        {
          v14 = 0;
        }

        sub_1B5834(v14);
        if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v15 = v9;
        }

        else
        {
          v15 = 0;
        }

        sub_1B5834(v15);
      }

      v4 += 56;
      --v3;
    }

    while (v3);
  }
}

void sub_1C57C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1B5804(v3);
  if (v3)
  {
    v4 = 0;
    v5 = a2 + 32;
    do
    {
      v6 = (v5 + 16 * v4);
      v7 = v6[1];
      sub_1B5834(*v6);
      sub_1B5804(*(v7 + 16));
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = (v7 + 32);
        do
        {
          v10 = *v9++;
          sub_1B5834(v10);
          --v8;
        }

        while (v8);
      }

      ++v4;
    }

    while (v4 != v3);
  }
}

uint64_t _s20BooksPersonalization9TransportO014BookIdToSeriesE5EntryV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 25);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a2 + 8);
  v6 = *(a2 + 25);
  v7 = *(a2 + 40);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (v2 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v6 == 2 || ((v6 ^ v2) & 1) != 0)
    {
      return result;
    }
  }

  if (v4)
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v3 != *(a2 + 32))
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  return 1;
}

BOOL _s20BooksPersonalization9TransportO021BookIdToDeduplicationE5EntryV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v8 = *(a2 + 8);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (v6)
  {
    return v7 && (v5 == *(a2 + 16) && v6 == v7 || (sub_1B5604() & 1) != 0);
  }

  return !v7;
}

BOOL _s20BooksPersonalization9TransportO24StoreAssetRequestDetailsV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    v10 = *a2;

    v11 = sub_7F30(v3, v7);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v2)
  {
    if (!v6 || (sub_80F8(v2, v6) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v4 == 3)
  {
    return v8 == 3;
  }

  if (v8 == 3)
  {
    return 0;
  }

  v13 = 1162170950;
  if (v4)
  {
    if (v4 == 1)
    {
      v14 = 0xE400000000000000;
      v15 = 1145651536;
    }

    else if (v4 == 2)
    {
      v14 = 0xE300000000000000;
      v15 = 5852737;
    }

    else
    {
      v15 = v5;
      v14 = v4;
    }
  }

  else
  {
    v14 = 0xE400000000000000;
    v15 = 1162170950;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      v16 = 0xE400000000000000;
      v13 = 1145651536;
    }

    else
    {
      if (v8 == 2)
      {
        v13 = 5852737;
      }

      else
      {
        v13 = v9;
      }

      if (v8 == 2)
      {
        v16 = 0xE300000000000000;
      }

      else
      {
        v16 = v8;
      }
    }
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  if (v15 == v13 && v14 == v16)
  {
    sub_1FE84(v5, v4);
    sub_1FE84(v9, v8);
    sub_1FE84(v5, v4);
    sub_1FE84(v9, v8);

    sub_1FE94(v9, v8);
    sub_1FE94(v5, v4);
  }

  else
  {
    v17 = sub_1B5604();
    sub_1FE84(v5, v4);
    sub_1FE84(v9, v8);
    sub_1FE84(v5, v4);
    sub_1FE84(v9, v8);

    sub_1FE94(v9, v8);
    sub_1FE94(v5, v4);
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _s20BooksPersonalization9TransportO0A21RecommendationRequestV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v18 = *(a1 + 40);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v22[0] = *a1;
  v22[1] = v2;
  v23 = v3;
  v24 = v4;
  v19[0] = v6;
  v19[1] = v7;
  v20 = v8;
  v21 = v9;

  sub_1FE84(v3, v4);

  sub_1FE84(v8, v9);
  v12 = _s20BooksPersonalization9TransportO24StoreAssetRequestDetailsV2eeoiySbAE_AEtFZ_0(v22, v19);
  v13 = v20;
  v14 = v21;

  sub_1FE94(v13, v14);
  v15 = v23;
  v16 = v24;

  sub_1FE94(v15, v16);
  if (!v12)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10 || (sub_80F8(v5, v10) & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    if (v18 == 2)
    {
      if (v11 != 2)
      {
        return 0;
      }
    }

    else if (v11 == 2 || ((v11 ^ v18) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v10)
  {
    goto LABEL_7;
  }

  return 0;
}

BOOL _s20BooksPersonalization9TransportO12BookAffinityV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 12);
  v6 = *(a2 + 16);
  if (*(a1 + 12))
  {
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) == *(a2 + 8))
    {
      v7 = v5;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  if (v4)
  {
    return v6 && (sub_80F8(v4, v6) & 1) != 0;
  }

  return !v6;
}

unint64_t sub_1CB4C()
{
  result = qword_2284A8;
  if (!qword_2284A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2284A8);
  }

  return result;
}

unint64_t sub_1CBA0()
{
  result = qword_2284B8;
  if (!qword_2284B8)
  {
    sub_1CC1C(&qword_2284B0, &qword_1B6538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2284B8);
  }

  return result;
}

uint64_t sub_1CC1C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1CC64()
{
  result = qword_2284C8;
  if (!qword_2284C8)
  {
    sub_1CC1C(&qword_2284B0, &qword_1B6538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2284C8);
  }

  return result;
}

unint64_t sub_1CCE0()
{
  result = qword_2284D8;
  if (!qword_2284D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2284D8);
  }

  return result;
}

unint64_t sub_1CD34()
{
  result = qword_2284E8;
  if (!qword_2284E8)
  {
    sub_1CC1C(&qword_2284E0, &qword_1B6550);
    sub_1CDB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2284E8);
  }

  return result;
}

unint64_t sub_1CDB8()
{
  result = qword_2284F0;
  if (!qword_2284F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2284F0);
  }

  return result;
}

unint64_t sub_1CE0C()
{
  result = qword_228500;
  if (!qword_228500)
  {
    sub_1CC1C(&qword_2284E0, &qword_1B6550);
    sub_1CE90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228500);
  }

  return result;
}

unint64_t sub_1CE90()
{
  result = qword_228508;
  if (!qword_228508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228508);
  }

  return result;
}

uint64_t _s20BooksPersonalization9TransportO15RecommendedItemV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 36);
  v9 = *(a1 + 40);
  v10 = *(a1 + 44);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 36);
  v18 = *(a2 + 40);
  v19 = *(a2 + 44);
  v20 = *(a2 + 48);
  v21 = *(a2 + 56);
  if (v4)
  {
    if (v5 == v14)
    {
      v22 = v13;
    }

    else
    {
      v22 = 0;
    }

    if (v22 != 1)
    {
      return 0;
    }
  }

  else if ((v13 & 1) != 0 || *a1 != *a2 || v5 != v14)
  {
    return 0;
  }

  if (v7)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == v15)
    {
      v23 = v16;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  if (v9)
  {
    if (!v18)
    {
      return 0;
    }
  }

  else
  {
    if (v8 == v17)
    {
      v24 = v18;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  if (v11)
  {
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == v19)
    {
      v26 = v20;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  return sub_7BEC(v12, v21);
}

BOOL _s20BooksPersonalization9TransportO16InferredFromInfoV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (v2)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *(a2 + 16);

    v6 = sub_6A38(v2, v4);

    return (v6 & 1) != 0;
  }

  return !v4;
}

BOOL _s20BooksPersonalization9TransportO21BookIdToMetadataEntryV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (*(a1 + 16))
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) == *(a2 + 8))
    {
      v12 = v7;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (sub_76FC(v4, v8))
  {
    if (v6)
    {
      return v9 && (v5 == v10 && v6 == v9 || (sub_1B5604() & 1) != 0);
    }

    if (!v9)
    {
      return 1;
    }
  }

  return 0;
}

BOOL _s20BooksPersonalization9TransportO26RecommendationBlockRequestV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 44);
  v8 = *(a1 + 48);
  v10 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 44);
  v15 = *(a2 + 48);
  if (v3 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == 2)
    {
      return 0;
    }

    v40 = *(a2 + 24);
    v41 = *(a1 + 24);
    v42 = *(a2 + 40);
    v43 = *(a1 + 44);
    v47 = *(a2 + 44);
    v44 = *(a1 + 40);
    v45 = *(a2 + 48);
    v46 = *(a1 + 48);
    v23 = *a1;
    v24 = *a2;
    v25 = 0x4F4F424F49445541;
    v26 = 0xE90000000000004BLL;
    if (v3 != 1)
    {
      v25 = *a1;
      v26 = *(a1 + 8);
    }

    if (v3)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0x4B4F4F4245;
    }

    if (v3)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xE500000000000000;
    }

    v29 = 0x4F4F424F49445541;
    v30 = 0xE90000000000004BLL;
    if (v10 != 1)
    {
      v29 = *a2;
      v30 = *(a2 + 8);
    }

    if (v10)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0x4B4F4F4245;
    }

    if (v10)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0xE500000000000000;
    }

    if (v27 == v31 && v28 == v32)
    {
      sub_1E060(v23, v3);
      sub_1E060(v24, v10);
      sub_1E060(v23, v3);
      sub_1E060(v24, v10);

      sub_1E070(v24, v10);
      sub_1E070(v23, v3);
      v15 = v45;
      v8 = v46;
      v7 = v43;
      v6 = v44;
      v14 = v47;
      v13 = v42;
      v11 = v40;
      v4 = v41;
      if (v2)
      {
        goto LABEL_4;
      }

LABEL_27:
      if (v9)
      {
        return 0;
      }

      goto LABEL_28;
    }

    v39 = sub_1B5604();
    sub_1E060(v23, v3);
    sub_1E060(v24, v10);
    sub_1E060(v23, v3);
    sub_1E060(v24, v10);

    sub_1E070(v24, v10);
    sub_1E070(v23, v3);
    v15 = v45;
    v8 = v46;
    v7 = v43;
    v6 = v44;
    v14 = v47;
    v13 = v42;
    v11 = v40;
    v4 = v41;
    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

  if (!v2)
  {
    goto LABEL_27;
  }

LABEL_4:
  if (!v9)
  {
    return 0;
  }

  v16 = v2;
  v17 = v9;
  v18 = v14;
  v19 = v13;
  v20 = v4;
  v21 = v11;
  v22 = sub_80F8(v16, v17);
  v11 = v21;
  v4 = v20;
  v13 = v19;
  v14 = v18;
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_28:
  v33 = v7;
  if (v5 == 3)
  {
    if (v12 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v12 == 3)
    {
      return 0;
    }

    v48 = v14;
    v34 = v13;
    v35 = v4;
    v36 = v11;
    sub_1FE84(v11, v12);
    sub_1FE84(v35, v5);
    v37 = sub_26BA0(v35, v5, v36, v12);
    sub_1FE94(v36, v12);
    sub_1FE94(v35, v5);
    v13 = v34;
    v14 = v48;
    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

  if (v33)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (v6 != v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (v8)
  {
    return v15 && (sub_80F8(v8, v15) & 1) != 0;
  }

  return !v15;
}

BOOL _s20BooksPersonalization9TransportO21RecommendationRequestV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v6)
    {
      return 0;
    }

LABEL_7:
    if (v4)
    {
      if (!v8 || (sub_6CA4(v4, v8) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v8)
    {
      return 0;
    }

    if (sub_7914(v3, v7))
    {
      if (v5)
      {
        return v9 && (sub_76FC(v5, v9) & 1) != 0;
      }

      if (!v9)
      {
        return 1;
      }
    }

    return 0;
  }

  v10 = sub_1B5604();
  result = 0;
  if ((v10 & 1) != 0 && ((v2 ^ v6) & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

BOOL _s20BooksPersonalization9TransportO22BookIdToMediaTypeEntryV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (v2 == 2)
  {
    return v5 == 2;
  }

  if (v5 == 2)
  {
    return 0;
  }

  v8 = 0x4F4F424F49445541;
  v9 = 0xE90000000000004BLL;
  if (v2 != 1)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
  }

  if (v2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x4B4F4F4245;
  }

  if (v2)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v12 = 0x4F4F424F49445541;
  v13 = 0xE90000000000004BLL;
  if (v5 != 1)
  {
    v12 = *(a2 + 16);
    v13 = *(a2 + 24);
  }

  if (v5)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0x4B4F4F4245;
  }

  if (v5)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  if (v10 == v14 && v11 == v15)
  {
    sub_1E060(v3, v2);
    sub_1E060(v6, v5);
    sub_1E060(v3, v2);
    sub_1E060(v6, v5);

    sub_1E070(v6, v5);
    sub_1E070(v3, v2);
  }

  else
  {
    v16 = sub_1B5604();
    sub_1E060(v3, v2);
    sub_1E060(v6, v5);
    sub_1E060(v3, v2);
    sub_1E060(v6, v5);

    sub_1E070(v6, v5);
    sub_1E070(v3, v2);
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _s20BooksPersonalization9TransportO22RecommendationResponseV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  if ((sub_778C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v7 || (sub_7118(v2, v7) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v4)
  {
    if (!v9 || (sub_71E0(v4, v9) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8 || (sub_9148(v3, v8) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (sub_74B8(v6, v11) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v5)
  {
    if (v10 && (sub_9148(v5, v10) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v10)
  {
    return 1;
  }

  return 0;
}

BOOL sub_1D7F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  if (v5)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v9 = v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if (v6)
  {
    return v8 && (a3(v6, v8) & 1) != 0;
  }

  return !v8;
}

uint64_t _s20BooksPersonalization9TransportO28RecommendationBlockRequestV2V2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v44 = v2;
  v45 = v3;
  v6 = *(a1 + 3);
  v5 = *(a1 + 4);
  v8 = *(a1 + 5);
  v7 = *(a1 + 6);
  v9 = a1[56];
  v30 = *(a1 + 8);
  v31 = *(a1 + 18);
  v10 = *(a2 + 3);
  v11 = *(a2 + 4);
  v12 = *(a2 + 5);
  v32 = *(a2 + 6);
  v33 = a2[56];
  v28 = *(a2 + 8);
  v29 = *(a2 + 18);
  v13 = *(a2 + 2);
  v14 = *(a1 + 2);
  if ((sub_6C14(*(a1 + 1), *(a2 + 1)) & 1) == 0)
  {
    return 0;
  }

  v15 = v14;
  if (v14 == 1)
  {
    sub_201B8(1, v6, v5, v8);
    v16 = v10;
    if (v13 == 1)
    {
      sub_201B8(1, v10, v11, v12);
      sub_20228(1, v6, v5, v8);
      return sub_6A38(v30, v28) & (v31 == v29);
    }

    v20 = v13;
    v27 = v16;
    sub_201B8(v13, v16, v11, v12);
    v19 = 1;
    goto LABEL_10;
  }

  v39[0] = v14;
  v39[1] = v6;
  v40 = v5;
  v41 = v8;
  v42 = v7;
  v43 = v9;
  v17 = v10;
  v27 = v10;
  if (v13 == 1)
  {
    v18 = v15;
    sub_201B8(v15, v6, v5, v8);
    sub_201B8(1, v17, v11, v12);
    sub_201B8(v18, v6, v5, v8);

    sub_1FE94(v5, v8);

    v19 = v18;
    v20 = 1;
LABEL_10:
    sub_20228(v19, v6, v5, v8);
    sub_20228(v20, v27, v11, v12);
    return 0;
  }

  v34[0] = v13;
  v34[1] = v10;
  v35 = v11;
  v36 = v12;
  v37 = v32;
  v38 = v33;
  v26 = v15;
  sub_201B8(v15, v6, v5, v8);
  sub_201B8(v13, v10, v11, v12);
  sub_201B8(v26, v6, v5, v8);
  v21 = _s20BooksPersonalization9TransportO0A21RecommendationRequestV2eeoiySbAE_AEtFZ_0(v39, v34);
  v22 = v35;
  v23 = v36;

  sub_1FE94(v22, v23);

  v24 = v40;
  v25 = v41;

  sub_1FE94(v24, v25);

  sub_20228(v26, v6, v5, v8);
  if (v21)
  {
    return sub_6A38(v30, v28) & (v31 == v29);
  }

  return 0;
}

uint64_t _s20BooksPersonalization9TransportO23RecommendationRequestV2V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_1B5604()) && (sub_75A8(v2, v5))
  {
    if (v3)
    {
      if (v4 && (sub_76FC(v3, v4) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s20BooksPersonalization9TransportO24RecommendationResponseV2V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v15 = a1[7];
  v16 = a1[6];
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  v17 = a2[6];
  v14 = a2[7];
  if ((sub_6DA4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v7 || (sub_6FEC(v2, v7) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8 || (sub_7118(v3, v8) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v4)
  {
    if (!v9 || (sub_71E0(v4, v9) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = sub_72D8(v6, v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10 || (sub_9148(v5, v10) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v16)
  {
    if (!v17 || (sub_74B8(v16, v17) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v15)
  {
    if (v14 && (sub_9148(v15, v14) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v14)
  {
    return 1;
  }

  return 0;
}

BOOL _s20BooksPersonalization9TransportO8SeedBookV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0;
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    return (v4 & 1) == 0;
  }
}

uint64_t _s20BooksPersonalization9TransportO9DiagnosisV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[3];
  v26 = a1[5];
  v27 = a1[2];
  v20 = a1[4];
  v21 = a1[6];
  v23 = a1[7];
  v5 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v19 = a2[4];
  v24 = a2[6];
  v25 = a2[5];
  v22 = a2[7];
  v9 = 0xE700000000000000;
  v10 = 0x474E494E524157;
  if (v2 != 1)
  {
    v10 = *a1;
    v9 = a1[1];
  }

  if (v2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x524F525245;
  }

  if (v2)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  v13 = 0xE700000000000000;
  v14 = 0x474E494E524157;
  if (v6 != 1)
  {
    v14 = *a2;
    v13 = a2[1];
  }

  if (v6)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x524F525245;
  }

  if (v6)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  if (v11 == v15 && v12 == v16)
  {
    sub_1E04C(v3, v2);
    sub_1E04C(v5, v6);
  }

  else
  {
    v17 = sub_1B5604();
    sub_1E04C(v3, v2);
    sub_1E04C(v5, v6);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_266F4(v27, v4, v8, v7) & 1) == 0)
  {
    return 0;
  }

  if (v26)
  {
    if (v25 && (v20 == v19 && v26 == v25 || (sub_1B5604() & 1) != 0))
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (v25)
  {
    return 0;
  }

LABEL_27:
  if (v21 == v24 && v23 == v22)
  {
    return 1;
  }

  return sub_1B5604();
}

uint64_t sub_1E04C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1E060(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1E04C(a1, a2);
  }

  return a1;
}

uint64_t sub_1E070(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1E080(a1, a2);
  }

  return a1;
}

uint64_t sub_1E080(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_1E094()
{
  result = qword_228518;
  if (!qword_228518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228518);
  }

  return result;
}

unint64_t sub_1E0E8()
{
  result = qword_228520;
  if (!qword_228520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228520);
  }

  return result;
}

unint64_t sub_1E13C()
{
  result = qword_228528;
  if (!qword_228528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228528);
  }

  return result;
}

unint64_t sub_1E1C0()
{
  result = qword_228538;
  if (!qword_228538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228538);
  }

  return result;
}

unint64_t sub_1E214()
{
  result = qword_228540;
  if (!qword_228540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228540);
  }

  return result;
}

unint64_t sub_1E2A0()
{
  result = qword_228550;
  if (!qword_228550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228550);
  }

  return result;
}

unint64_t sub_1E2F4()
{
  result = qword_228568;
  if (!qword_228568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228568);
  }

  return result;
}

unint64_t sub_1E348()
{
  result = qword_228570;
  if (!qword_228570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228570);
  }

  return result;
}

unint64_t sub_1E39C()
{
  result = qword_228580;
  if (!qword_228580)
  {
    sub_1CC1C(&qword_228578, &qword_1B6588);
    sub_1E420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228580);
  }

  return result;
}

unint64_t sub_1E420()
{
  result = qword_228588;
  if (!qword_228588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228588);
  }

  return result;
}

unint64_t sub_1E474()
{
  result = qword_228598;
  if (!qword_228598)
  {
    sub_1CC1C(&qword_228590, &qword_1B6590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228598);
  }

  return result;
}

unint64_t sub_1E4F0()
{
  result = qword_2285A8;
  if (!qword_2285A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2285A8);
  }

  return result;
}

unint64_t sub_1E544()
{
  result = qword_2285B0;
  if (!qword_2285B0)
  {
    sub_1CC1C(&qword_228578, &qword_1B6588);
    sub_1E5C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2285B0);
  }

  return result;
}

unint64_t sub_1E5C8()
{
  result = qword_2285B8;
  if (!qword_2285B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2285B8);
  }

  return result;
}

unint64_t sub_1E61C()
{
  result = qword_2285C0;
  if (!qword_2285C0)
  {
    sub_1CC1C(&qword_228590, &qword_1B6590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2285C0);
  }

  return result;
}

unint64_t sub_1E698()
{
  result = qword_2285D0;
  if (!qword_2285D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2285D0);
  }

  return result;
}

unint64_t sub_1E6EC()
{
  result = qword_2285E0;
  if (!qword_2285E0)
  {
    sub_1CC1C(&qword_2285D8, &qword_1B65A8);
    sub_1E770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2285E0);
  }

  return result;
}

unint64_t sub_1E770()
{
  result = qword_2285E8;
  if (!qword_2285E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2285E8);
  }

  return result;
}

unint64_t sub_1E7C4()
{
  result = qword_2285F8;
  if (!qword_2285F8)
  {
    sub_1CC1C(&qword_2285F0, &qword_1B65B0);
    sub_1E848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2285F8);
  }

  return result;
}

unint64_t sub_1E848()
{
  result = qword_228600;
  if (!qword_228600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228600);
  }

  return result;
}

unint64_t sub_1E89C()
{
  result = qword_228610;
  if (!qword_228610)
  {
    sub_1CC1C(&qword_228608, &qword_1B65B8);
    sub_1E920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228610);
  }

  return result;
}

unint64_t sub_1E920()
{
  result = qword_228618;
  if (!qword_228618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228618);
  }

  return result;
}

unint64_t sub_1E974()
{
  result = qword_228628;
  if (!qword_228628)
  {
    sub_1CC1C(&qword_228620, &qword_1B65C0);
    sub_1E9F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228628);
  }

  return result;
}

unint64_t sub_1E9F8()
{
  result = qword_228630;
  if (!qword_228630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228630);
  }

  return result;
}

unint64_t sub_1EA4C()
{
  result = qword_228640;
  if (!qword_228640)
  {
    sub_1CC1C(&qword_228638, &qword_1B65C8);
    sub_1EAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228640);
  }

  return result;
}

unint64_t sub_1EAD0()
{
  result = qword_228648;
  if (!qword_228648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228648);
  }

  return result;
}

unint64_t sub_1EB24()
{
  result = qword_228658;
  if (!qword_228658)
  {
    sub_1CC1C(&qword_228650, &qword_1B65D0);
    sub_1EBA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228658);
  }

  return result;
}

unint64_t sub_1EBA8()
{
  result = qword_228660;
  if (!qword_228660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228660);
  }

  return result;
}

unint64_t sub_1EBFC()
{
  result = qword_228670;
  if (!qword_228670)
  {
    sub_1CC1C(&qword_2285D8, &qword_1B65A8);
    sub_1EC80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228670);
  }

  return result;
}

unint64_t sub_1EC80()
{
  result = qword_228678;
  if (!qword_228678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228678);
  }

  return result;
}

unint64_t sub_1ECD4()
{
  result = qword_228680;
  if (!qword_228680)
  {
    sub_1CC1C(&qword_2285F0, &qword_1B65B0);
    sub_1ED58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228680);
  }

  return result;
}

unint64_t sub_1ED58()
{
  result = qword_228688;
  if (!qword_228688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228688);
  }

  return result;
}

unint64_t sub_1EDAC()
{
  result = qword_228690;
  if (!qword_228690)
  {
    sub_1CC1C(&qword_228608, &qword_1B65B8);
    sub_1EE30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228690);
  }

  return result;
}

unint64_t sub_1EE30()
{
  result = qword_228698;
  if (!qword_228698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228698);
  }

  return result;
}

unint64_t sub_1EE84()
{
  result = qword_2286A0;
  if (!qword_2286A0)
  {
    sub_1CC1C(&qword_228620, &qword_1B65C0);
    sub_1EF08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2286A0);
  }

  return result;
}

unint64_t sub_1EF08()
{
  result = qword_2286A8;
  if (!qword_2286A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2286A8);
  }

  return result;
}

unint64_t sub_1EF5C()
{
  result = qword_2286B0;
  if (!qword_2286B0)
  {
    sub_1CC1C(&qword_228638, &qword_1B65C8);
    sub_1EFE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2286B0);
  }

  return result;
}

unint64_t sub_1EFE0()
{
  result = qword_2286B8;
  if (!qword_2286B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2286B8);
  }

  return result;
}

unint64_t sub_1F034()
{
  result = qword_2286C0;
  if (!qword_2286C0)
  {
    sub_1CC1C(&qword_228650, &qword_1B65D0);
    sub_1F0B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2286C0);
  }

  return result;
}

unint64_t sub_1F0B8()
{
  result = qword_2286C8;
  if (!qword_2286C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2286C8);
  }

  return result;
}

unint64_t sub_1F10C()
{
  result = qword_2286D8;
  if (!qword_2286D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2286D8);
  }

  return result;
}

unint64_t sub_1F160()
{
  result = qword_2286F0;
  if (!qword_2286F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2286F0);
  }

  return result;
}

unint64_t sub_1F1B4()
{
  result = qword_228700;
  if (!qword_228700)
  {
    sub_1CC1C(&qword_2286F8, &qword_1B65F8);
    sub_1F238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228700);
  }

  return result;
}

unint64_t sub_1F238()
{
  result = qword_228708;
  if (!qword_228708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228708);
  }

  return result;
}

unint64_t sub_1F28C()
{
  result = qword_228718;
  if (!qword_228718)
  {
    sub_1CC1C(&qword_2286F8, &qword_1B65F8);
    sub_1F310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228718);
  }

  return result;
}

unint64_t sub_1F310()
{
  result = qword_228720;
  if (!qword_228720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228720);
  }

  return result;
}

unint64_t sub_1F3CC()
{
  result = qword_228730;
  if (!qword_228730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228730);
  }

  return result;
}

unint64_t sub_1F420()
{
  result = qword_228740;
  if (!qword_228740)
  {
    sub_1CC1C(&qword_228738, &qword_1B6610);
    sub_1F4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228740);
  }

  return result;
}

unint64_t sub_1F4A4()
{
  result = qword_228748;
  if (!qword_228748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228748);
  }

  return result;
}

unint64_t sub_1F4F8()
{
  result = qword_228758;
  if (!qword_228758)
  {
    sub_1CC1C(&qword_228738, &qword_1B6610);
    sub_1F57C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228758);
  }

  return result;
}

unint64_t sub_1F57C()
{
  result = qword_228760;
  if (!qword_228760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228760);
  }

  return result;
}

unint64_t sub_1F5D0()
{
  result = qword_228770;
  if (!qword_228770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228770);
  }

  return result;
}

unint64_t sub_1F624()
{
  result = qword_228780;
  if (!qword_228780)
  {
    sub_1CC1C(&qword_228778, &qword_1B6628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228780);
  }

  return result;
}

unint64_t sub_1F6A0()
{
  result = qword_228790;
  if (!qword_228790)
  {
    sub_1CC1C(&qword_228778, &qword_1B6628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228790);
  }

  return result;
}

unint64_t sub_1F71C()
{
  result = qword_2287A0;
  if (!qword_2287A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2287A0);
  }

  return result;
}

unint64_t sub_1F770()
{
  result = qword_2287B0;
  if (!qword_2287B0)
  {
    sub_1CC1C(&qword_2287A8, &qword_1B6640);
    sub_1F7F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2287B0);
  }

  return result;
}

unint64_t sub_1F7F4()
{
  result = qword_2287B8;
  if (!qword_2287B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2287B8);
  }

  return result;
}

unint64_t sub_1F848()
{
  result = qword_2287C8;
  if (!qword_2287C8)
  {
    sub_1CC1C(&qword_2287A8, &qword_1B6640);
    sub_1F8CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2287C8);
  }

  return result;
}

unint64_t sub_1F8CC()
{
  result = qword_2287D0;
  if (!qword_2287D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2287D0);
  }

  return result;
}

unint64_t sub_1F920()
{
  result = qword_2287E0;
  if (!qword_2287E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2287E0);
  }

  return result;
}

unint64_t sub_1F974()
{
  result = qword_2287F8;
  if (!qword_2287F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2287F8);
  }

  return result;
}

unint64_t sub_1F9C8()
{
  result = qword_228810;
  if (!qword_228810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228810);
  }

  return result;
}

unint64_t sub_1FA1C()
{
  result = qword_228828;
  if (!qword_228828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228828);
  }

  return result;
}

unint64_t sub_1FA70()
{
  result = qword_228840;
  if (!qword_228840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228840);
  }

  return result;
}

unint64_t sub_1FAC4()
{
  result = qword_228858;
  if (!qword_228858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228858);
  }

  return result;
}

unint64_t sub_1FB18()
{
  result = qword_228860;
  if (!qword_228860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228860);
  }

  return result;
}

unint64_t sub_1FB6C()
{
  result = qword_228870;
  if (!qword_228870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228870);
  }

  return result;
}

uint64_t sub_1FBC0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 == 0x4148435255504F43 && a2 == 0xEA00000000004553;
  if (v4 || (sub_1B5604() & 1) != 0 || v3 == 0xD000000000000012 && 0x80000000001D54F0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  return v3;
}

uint64_t sub_1FC94(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 == 0x4B4F4F4245 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B5604() & 1) != 0 || v3 == 0x4F4F424F49445541 && a2 == 0xE90000000000004BLL || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  return v3;
}

uint64_t sub_1FD5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1162170950 && a2 == 0xE400000000000000;
  if (v3 || (v4 = a1, (sub_1B5604() & 1) != 0) || v4 == 1145651536 && a2 == 0xE400000000000000 || (sub_1B5604() & 1) != 0 || v4 == 5852737 && a2 == 0xE300000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  return v4;
}

uint64_t sub_1FE70(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_1FE84(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return sub_1FE70(a1, a2);
  }

  return a1;
}

uint64_t sub_1FE94(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return sub_1FEA4(a1, a2);
  }

  return a1;
}

uint64_t sub_1FEA4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

unint64_t sub_1FEB8()
{
  result = qword_228880;
  if (!qword_228880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228880);
  }

  return result;
}

unint64_t sub_1FF0C()
{
  result = qword_228890;
  if (!qword_228890)
  {
    sub_1CC1C(&qword_228888, &qword_1B66B8);
    sub_1FB18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228890);
  }

  return result;
}

unint64_t sub_1FF90()
{
  result = qword_228898;
  if (!qword_228898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228898);
  }

  return result;
}

unint64_t sub_1FFE4()
{
  result = qword_2288A8;
  if (!qword_2288A8)
  {
    sub_1CC1C(&qword_228888, &qword_1B66B8);
    sub_1FB6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2288A8);
  }

  return result;
}

unint64_t sub_20068()
{
  result = qword_2288B0;
  if (!qword_2288B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2288B0);
  }

  return result;
}

unint64_t sub_200BC()
{
  result = qword_2288C0;
  if (!qword_2288C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2288C0);
  }

  return result;
}

unint64_t sub_20110()
{
  result = qword_2288C8;
  if (!qword_2288C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2288C8);
  }

  return result;
}

unint64_t sub_20164()
{
  result = qword_2288D8;
  if (!qword_2288D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2288D8);
  }

  return result;
}

uint64_t sub_201B8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result != 1)
  {

    sub_1FE84(a3, a4);
  }

  return result;
}

uint64_t sub_20228(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result != 1)
  {

    sub_1FE94(a3, a4);
  }

  return result;
}

unint64_t sub_20294()
{
  result = qword_2288E8;
  if (!qword_2288E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2288E8);
  }

  return result;
}

unint64_t sub_202E8()
{
  result = qword_2288F0;
  if (!qword_2288F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2288F0);
  }

  return result;
}

unint64_t sub_2033C()
{
  result = qword_2288F8;
  if (!qword_2288F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2288F8);
  }

  return result;
}

unint64_t sub_20390()
{
  result = qword_228908;
  if (!qword_228908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228908);
  }

  return result;
}

unint64_t sub_203E4()
{
  result = qword_228910;
  if (!qword_228910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228910);
  }

  return result;
}

unint64_t sub_204A0()
{
  result = qword_228920;
  if (!qword_228920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228920);
  }

  return result;
}

unint64_t sub_204F4()
{
  result = qword_228930;
  if (!qword_228930)
  {
    sub_1CC1C(&qword_228928, &qword_1B66F0);
    sub_20578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228930);
  }

  return result;
}

unint64_t sub_20578()
{
  result = qword_228938;
  if (!qword_228938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228938);
  }

  return result;
}

unint64_t sub_205CC()
{
  result = qword_228948;
  if (!qword_228948)
  {
    sub_1CC1C(&qword_228928, &qword_1B66F0);
    sub_20650();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228948);
  }

  return result;
}

unint64_t sub_20650()
{
  result = qword_228950;
  if (!qword_228950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228950);
  }

  return result;
}

unint64_t sub_206A4()
{
  result = qword_228960;
  if (!qword_228960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228960);
  }

  return result;
}

unint64_t sub_206F8()
{
  result = qword_228970;
  if (!qword_228970)
  {
    sub_1CC1C(&qword_228968, &qword_1B6708);
    sub_2077C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228970);
  }

  return result;
}

unint64_t sub_2077C()
{
  result = qword_228978;
  if (!qword_228978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228978);
  }

  return result;
}

unint64_t sub_207D0()
{
  result = qword_228988;
  if (!qword_228988)
  {
    sub_1CC1C(&qword_228968, &qword_1B6708);
    sub_20854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228988);
  }

  return result;
}

unint64_t sub_20854()
{
  result = qword_228990;
  if (!qword_228990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228990);
  }

  return result;
}

unint64_t sub_208A8()
{
  result = qword_2289A0;
  if (!qword_2289A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2289A0);
  }

  return result;
}

unint64_t sub_208FC()
{
  result = qword_2289B0;
  if (!qword_2289B0)
  {
    sub_1CC1C(&qword_2289A8, &qword_1B6720);
    sub_20980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2289B0);
  }

  return result;
}

unint64_t sub_20980()
{
  result = qword_2289B8;
  if (!qword_2289B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2289B8);
  }

  return result;
}

unint64_t sub_209D4()
{
  result = qword_2289C8;
  if (!qword_2289C8)
  {
    sub_1CC1C(&qword_2289C0, &qword_1B6728);
    sub_20A58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2289C8);
  }

  return result;
}

unint64_t sub_20A58()
{
  result = qword_2289D0;
  if (!qword_2289D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2289D0);
  }

  return result;
}

unint64_t sub_20AAC()
{
  result = qword_2289E0;
  if (!qword_2289E0)
  {
    sub_1CC1C(&qword_2289D8, &qword_1B6730);
    sub_20B30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2289E0);
  }

  return result;
}

unint64_t sub_20B30()
{
  result = qword_2289E8;
  if (!qword_2289E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2289E8);
  }

  return result;
}

unint64_t sub_20B84()
{
  result = qword_2289F8;
  if (!qword_2289F8)
  {
    sub_1CC1C(&qword_2289A8, &qword_1B6720);
    sub_20C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2289F8);
  }

  return result;
}

unint64_t sub_20C08()
{
  result = qword_228A00;
  if (!qword_228A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228A00);
  }

  return result;
}

unint64_t sub_20C5C()
{
  result = qword_228A08;
  if (!qword_228A08)
  {
    sub_1CC1C(&qword_2289C0, &qword_1B6728);
    sub_20CE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228A08);
  }

  return result;
}

unint64_t sub_20CE0()
{
  result = qword_228A10;
  if (!qword_228A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228A10);
  }

  return result;
}

unint64_t sub_20D34()
{
  result = qword_228A18;
  if (!qword_228A18)
  {
    sub_1CC1C(&qword_2289D8, &qword_1B6730);
    sub_20DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228A18);
  }

  return result;
}

unint64_t sub_20DB8()
{
  result = qword_228A20;
  if (!qword_228A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228A20);
  }

  return result;
}

unint64_t sub_20E74()
{
  result = qword_228A30;
  if (!qword_228A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228A30);
  }

  return result;
}

unint64_t sub_20EC8()
{
  result = qword_228A48;
  if (!qword_228A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228A48);
  }

  return result;
}

unint64_t sub_20F1C()
{
  result = qword_228A58;
  if (!qword_228A58)
  {
    sub_1CC1C(&qword_228A50, &qword_1B6758);
    sub_20FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228A58);
  }

  return result;
}

unint64_t sub_20FA0()
{
  result = qword_228A60;
  if (!qword_228A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228A60);
  }

  return result;
}

unint64_t sub_20FF4()
{
  result = qword_228A70;
  if (!qword_228A70)
  {
    sub_1CC1C(&qword_228A50, &qword_1B6758);
    sub_21078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228A70);
  }

  return result;
}

unint64_t sub_21078()
{
  result = qword_228A78;
  if (!qword_228A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228A78);
  }

  return result;
}

unint64_t sub_210CC()
{
  result = qword_228A88;
  if (!qword_228A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228A88);
  }

  return result;
}

uint64_t sub_21120(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 == 0x524F525245 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B5604() & 1) != 0 || v3 == 0x474E494E524157 && a2 == 0xE700000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  return v3;
}

uint64_t _s20BooksPersonalization9TransportO9DiagnosisV11CodePayloadOyAGSgSScfC_0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 == 0x5F44494C41564E49 && a2 == 0xEF54534555514552;
  if (v4 || (sub_1B5604() & 1) != 0 || v3 == 0x485455415F544F4ELL && a2 == 0xEE0044455A49524FLL || (sub_1B5604() & 1) != 0 || v3 == 0x455F524556524553 && a2 == 0xEC000000524F5252 || (sub_1B5604() & 1) != 0 || v3 == 0x4E554F465F544F4ELL && a2 == 0xE900000000000044 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  return v3;
}

uint64_t sub_21360(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_21374(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

unint64_t sub_21388()
{
  result = qword_228AA0;
  if (!qword_228AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228AA0);
  }

  return result;
}

unint64_t sub_213DC()
{
  result = qword_228AA8;
  if (!qword_228AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228AA8);
  }

  return result;
}

unint64_t sub_21430()
{
  result = qword_228AB0;
  if (!qword_228AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228AB0);
  }

  return result;
}

unint64_t sub_21484()
{
  result = qword_228AC0;
  if (!qword_228AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228AC0);
  }

  return result;
}

unint64_t sub_214D8()
{
  result = qword_228AC8;
  if (!qword_228AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228AC8);
  }

  return result;
}

unint64_t sub_21598()
{
  result = qword_228AD0;
  if (!qword_228AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228AD0);
  }

  return result;
}

unint64_t sub_215F0()
{
  result = qword_228AD8;
  if (!qword_228AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228AD8);
  }

  return result;
}

unint64_t sub_21648()
{
  result = qword_228AE0;
  if (!qword_228AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228AE0);
  }

  return result;
}

unint64_t sub_216A0()
{
  result = qword_228AE8;
  if (!qword_228AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228AE8);
  }

  return result;
}

unint64_t sub_216F8()
{
  result = qword_228AF0;
  if (!qword_228AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228AF0);
  }

  return result;
}

unint64_t sub_21750()
{
  result = qword_228AF8;
  if (!qword_228AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228AF8);
  }

  return result;
}

unint64_t sub_217A8()
{
  result = qword_228B00;
  if (!qword_228B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228B00);
  }

  return result;
}

unint64_t sub_21800()
{
  result = qword_228B08;
  if (!qword_228B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228B08);
  }

  return result;
}

unint64_t sub_21858()
{
  result = qword_228B10;
  if (!qword_228B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228B10);
  }

  return result;
}

unint64_t sub_218B0()
{
  result = qword_228B18;
  if (!qword_228B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228B18);
  }

  return result;
}

unint64_t sub_21938()
{
  result = qword_228B30;
  if (!qword_228B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228B30);
  }

  return result;
}

unint64_t sub_21990()
{
  result = qword_228B38;
  if (!qword_228B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228B38);
  }

  return result;
}

unint64_t sub_21A18()
{
  result = qword_228B50;
  if (!qword_228B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228B50);
  }

  return result;
}

unint64_t sub_21A70()
{
  result = qword_228B58;
  if (!qword_228B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228B58);
  }

  return result;
}

unint64_t sub_21AC8()
{
  result = qword_228B60;
  if (!qword_228B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228B60);
  }

  return result;
}

unint64_t sub_21B20()
{
  result = qword_228B68;
  if (!qword_228B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228B68);
  }

  return result;
}

unint64_t sub_21B78()
{
  result = qword_228B70;
  if (!qword_228B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228B70);
  }

  return result;
}

unint64_t sub_21BD0()
{
  result = qword_228B78;
  if (!qword_228B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228B78);
  }

  return result;
}

unint64_t sub_21C28()
{
  result = qword_228B80;
  if (!qword_228B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228B80);
  }

  return result;
}

unint64_t sub_21C80()
{
  result = qword_228B88;
  if (!qword_228B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228B88);
  }

  return result;
}

unint64_t sub_21CD8()
{
  result = qword_228B90;
  if (!qword_228B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228B90);
  }

  return result;
}

unint64_t sub_21D30()
{
  result = qword_228B98;
  if (!qword_228B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228B98);
  }

  return result;
}

unint64_t sub_21D88()
{
  result = qword_228BA0;
  if (!qword_228BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228BA0);
  }

  return result;
}

unint64_t sub_21DE0()
{
  result = qword_228BA8;
  if (!qword_228BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228BA8);
  }

  return result;
}

unint64_t sub_21E38()
{
  result = qword_228BB0;
  if (!qword_228BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228BB0);
  }

  return result;
}

unint64_t sub_21E90()
{
  result = qword_228BB8;
  if (!qword_228BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228BB8);
  }

  return result;
}

unint64_t sub_21EE8()
{
  result = qword_228BC0;
  if (!qword_228BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228BC0);
  }

  return result;
}

unint64_t sub_21F40()
{
  result = qword_228BC8;
  if (!qword_228BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228BC8);
  }

  return result;
}

unint64_t sub_21F98()
{
  result = qword_228BD0;
  if (!qword_228BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228BD0);
  }

  return result;
}

unint64_t sub_21FF0()
{
  result = qword_228BD8;
  if (!qword_228BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228BD8);
  }

  return result;
}

unint64_t sub_22048()
{
  result = qword_228BE0;
  if (!qword_228BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228BE0);
  }

  return result;
}

unint64_t sub_220A0()
{
  result = qword_228BE8;
  if (!qword_228BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228BE8);
  }

  return result;
}

unint64_t sub_220F8()
{
  result = qword_228BF0;
  if (!qword_228BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228BF0);
  }

  return result;
}

unint64_t sub_22150()
{
  result = qword_228BF8;
  if (!qword_228BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228BF8);
  }

  return result;
}

unint64_t sub_221A8()
{
  result = qword_228C00;
  if (!qword_228C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228C00);
  }

  return result;
}

unint64_t sub_22200()
{
  result = qword_228C08;
  if (!qword_228C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228C08);
  }

  return result;
}

unint64_t sub_22258()
{
  result = qword_228C10;
  if (!qword_228C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228C10);
  }

  return result;
}

unint64_t sub_222B0()
{
  result = qword_228C18;
  if (!qword_228C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228C18);
  }

  return result;
}

unint64_t sub_22308()
{
  result = qword_228C20;
  if (!qword_228C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228C20);
  }

  return result;
}

unint64_t sub_22360()
{
  result = qword_228C28;
  if (!qword_228C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228C28);
  }

  return result;
}

unint64_t sub_223B8()
{
  result = qword_228C30;
  if (!qword_228C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228C30);
  }

  return result;
}

unint64_t sub_22410()
{
  result = qword_228C38;
  if (!qword_228C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228C38);
  }

  return result;
}

unint64_t sub_22468()
{
  result = qword_228C40;
  if (!qword_228C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228C40);
  }

  return result;
}

unint64_t sub_224C0()
{
  result = qword_228C48;
  if (!qword_228C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228C48);
  }

  return result;
}

unint64_t sub_22518()
{
  result = qword_228C50;
  if (!qword_228C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228C50);
  }

  return result;
}

unint64_t sub_22570()
{
  result = qword_228C58;
  if (!qword_228C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228C58);
  }

  return result;
}

unint64_t sub_225C8()
{
  result = qword_228C60;
  if (!qword_228C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228C60);
  }

  return result;
}

unint64_t sub_22620()
{
  result = qword_228C68;
  if (!qword_228C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228C68);
  }

  return result;
}

unint64_t sub_22678()
{
  result = qword_228C70;
  if (!qword_228C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228C70);
  }

  return result;
}

unint64_t sub_226D0()
{
  result = qword_228C78;
  if (!qword_228C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228C78);
  }

  return result;
}

unint64_t sub_22728()
{
  result = qword_228C80;
  if (!qword_228C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228C80);
  }

  return result;
}

unint64_t sub_22780()
{
  result = qword_228C88;
  if (!qword_228C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228C88);
  }

  return result;
}

unint64_t sub_227D8()
{
  result = qword_228C90;
  if (!qword_228C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228C90);
  }

  return result;
}

unint64_t sub_22830()
{
  result = qword_228C98;
  if (!qword_228C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228C98);
  }

  return result;
}

unint64_t sub_22888()
{
  result = qword_228CA0;
  if (!qword_228CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228CA0);
  }

  return result;
}

unint64_t sub_228E0()
{
  result = qword_228CA8;
  if (!qword_228CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228CA8);
  }

  return result;
}

unint64_t sub_22938()
{
  result = qword_228CB0;
  if (!qword_228CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228CB0);
  }

  return result;
}

unint64_t sub_22990()
{
  result = qword_228CB8;
  if (!qword_228CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228CB8);
  }

  return result;
}

unint64_t sub_229E8()
{
  result = qword_228CC0;
  if (!qword_228CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228CC0);
  }

  return result;
}

unint64_t sub_22A40()
{
  result = qword_228CC8;
  if (!qword_228CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228CC8);
  }

  return result;
}

unint64_t sub_22A98()
{
  result = qword_228CD0;
  if (!qword_228CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228CD0);
  }

  return result;
}

unint64_t sub_22AF0()
{
  result = qword_228CD8;
  if (!qword_228CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228CD8);
  }

  return result;
}

unint64_t sub_22B48()
{
  result = qword_228CE0;
  if (!qword_228CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228CE0);
  }

  return result;
}

unint64_t sub_22BA0()
{
  result = qword_228CE8;
  if (!qword_228CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228CE8);
  }

  return result;
}

unint64_t sub_22BF8()
{
  result = qword_228CF0;
  if (!qword_228CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228CF0);
  }

  return result;
}

unint64_t sub_22C50()
{
  result = qword_228CF8;
  if (!qword_228CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228CF8);
  }

  return result;
}

unint64_t sub_22CA8()
{
  result = qword_228D00;
  if (!qword_228D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228D00);
  }

  return result;
}

unint64_t sub_22D00()
{
  result = qword_228D08;
  if (!qword_228D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228D08);
  }

  return result;
}

unint64_t sub_22D58()
{
  result = qword_228D10;
  if (!qword_228D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228D10);
  }

  return result;
}

unint64_t sub_22DB0()
{
  result = qword_228D18;
  if (!qword_228D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228D18);
  }

  return result;
}

unint64_t sub_22E08()
{
  result = qword_228D20;
  if (!qword_228D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228D20);
  }

  return result;
}

unint64_t sub_22E60()
{
  result = qword_228D28;
  if (!qword_228D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228D28);
  }

  return result;
}

unint64_t sub_22EB8()
{
  result = qword_228D30;
  if (!qword_228D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228D30);
  }

  return result;
}

unint64_t sub_22F10()
{
  result = qword_228D38;
  if (!qword_228D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228D38);
  }

  return result;
}

unint64_t sub_22F98()
{
  result = qword_228D48;
  if (!qword_228D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228D48);
  }

  return result;
}

unint64_t sub_22FF0()
{
  result = qword_228D50;
  if (!qword_228D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228D50);
  }

  return result;
}

unint64_t sub_23078()
{
  result = qword_228D60;
  if (!qword_228D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228D60);
  }

  return result;
}

unint64_t sub_230D0()
{
  result = qword_228D68;
  if (!qword_228D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228D68);
  }

  return result;
}

unint64_t sub_23158()
{
  result = qword_228D80;
  if (!qword_228D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228D80);
  }

  return result;
}

unint64_t sub_231B0()
{
  result = qword_228D88;
  if (!qword_228D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228D88);
  }

  return result;
}

unint64_t sub_23208()
{
  result = qword_228D90;
  if (!qword_228D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228D90);
  }

  return result;
}

unint64_t sub_23260()
{
  result = qword_228D98;
  if (!qword_228D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228D98);
  }

  return result;
}

unint64_t sub_232B8()
{
  result = qword_228DA0;
  if (!qword_228DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228DA0);
  }

  return result;
}

unint64_t sub_23310()
{
  result = qword_228DA8;
  if (!qword_228DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228DA8);
  }

  return result;
}

unint64_t sub_23368()
{
  result = qword_228DB0;
  if (!qword_228DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228DB0);
  }

  return result;
}

unint64_t sub_233C0()
{
  result = qword_228DB8;
  if (!qword_228DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228DB8);
  }

  return result;
}

unint64_t sub_23418()
{
  result = qword_228DC0;
  if (!qword_228DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228DC0);
  }

  return result;
}

unint64_t sub_23470()
{
  result = qword_228DC8;
  if (!qword_228DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228DC8);
  }

  return result;
}

unint64_t sub_234C8()
{
  result = qword_228DD0;
  if (!qword_228DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228DD0);
  }

  return result;
}

unint64_t sub_23520()
{
  result = qword_228DD8;
  if (!qword_228DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228DD8);
  }

  return result;
}

unint64_t sub_23578()
{
  result = qword_228DE0;
  if (!qword_228DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228DE0);
  }

  return result;
}

unint64_t sub_235D0()
{
  result = qword_228DE8;
  if (!qword_228DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228DE8);
  }

  return result;
}

unint64_t sub_23628()
{
  result = qword_228DF0;
  if (!qword_228DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228DF0);
  }

  return result;
}

unint64_t sub_23680()
{
  result = qword_228DF8;
  if (!qword_228DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228DF8);
  }

  return result;
}

unint64_t sub_236D8()
{
  result = qword_228E00;
  if (!qword_228E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228E00);
  }

  return result;
}

unint64_t sub_23730()
{
  result = qword_228E08;
  if (!qword_228E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228E08);
  }

  return result;
}

unint64_t sub_23788()
{
  result = qword_228E10;
  if (!qword_228E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228E10);
  }

  return result;
}

unint64_t sub_237E0()
{
  result = qword_228E18;
  if (!qword_228E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228E18);
  }

  return result;
}

unint64_t sub_23838()
{
  result = qword_228E20;
  if (!qword_228E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228E20);
  }

  return result;
}

unint64_t sub_23890()
{
  result = qword_228E28;
  if (!qword_228E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228E28);
  }

  return result;
}