uint64_t sub_207310(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_30BCF8();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v18, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    v19 = v44;
    (*(v15 + 16))(v10, v44, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v18);
    swift_endAccess();
    v20 = *(sub_307788() + 20);
    v21 = sub_30B858();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v7, v19 + v20, v21);
    (*(v22 + 56))(v7, 0, 1, v21);

    sub_308E98();
  }

  else
  {
    v39 = v7;
    v40 = v2;
    (*(v15 + 32))(v17, v13, v14);
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      return (*(v15 + 8))(v17, v14);
    }

    else
    {
      v38 = v17;
      __chkstk_darwin(v25);
      v26 = sub_3099E8();
      v37[-2] = v26;
      v27 = sub_218910(&qword_409060, &type metadata accessor for ChannelListPresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v15 + 16))(v10, v24, v14);
        (*(v15 + 56))(v10, 0, 1, v14);
        swift_beginAccess();
        sub_218B18(v10, v29 + v18);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_409068, &type metadata accessor for ChannelListPresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20DC88();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      return (*(v15 + 8))(v38, v14);
    }
  }
}

uint64_t sub_207A88(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_30BCF8();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v49 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v41 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v21, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v21);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

    sub_30BF68();
    v22 = sub_30B858();
    (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
    sub_308E98();
  }

  else
  {
    v46 = v21;
    v47 = v10;
    v48 = v7;
    (*(v15 + 32))(v20, v13, v14);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v25 = sub_30C018();
    v26 = v14;
    v27 = *(v15 + 8);
    v28 = v27(v17, v26);
    if (v25)
    {
      return v27(v20, v26);
    }

    else
    {
      v42 = v20;
      v43 = v27;
      v44 = v15 + 8;
      __chkstk_darwin(v28);
      v29 = sub_308B68();
      v41[-2] = v29;
      v30 = sub_218910(&qword_409050, &type metadata accessor for ChannelPresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v2;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v15 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_409058, &type metadata accessor for ChannelPresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20E20C();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      return v43(v39, v40);
    }
  }
}

uint64_t sub_2082F8(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_30BCF8();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v18, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    v19 = v44;
    (*(v15 + 16))(v10, v44, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v18);
    swift_endAccess();
    v20 = *(sub_307788() + 20);
    v21 = sub_30B858();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v7, v19 + v20, v21);
    (*(v22 + 56))(v7, 0, 1, v21);

    sub_308E98();
  }

  else
  {
    v39 = v7;
    v40 = v2;
    (*(v15 + 32))(v17, v13, v14);
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      return (*(v15 + 8))(v17, v14);
    }

    else
    {
      v38 = v17;
      __chkstk_darwin(v25);
      v26 = sub_308B68();
      v37[-2] = v26;
      v27 = sub_218910(&qword_409050, &type metadata accessor for ChannelPresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v15 + 16))(v10, v24, v14);
        (*(v15 + 56))(v10, 0, 1, v14);
        swift_beginAccess();
        sub_218B18(v10, v29 + v18);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_409058, &type metadata accessor for ChannelPresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20E20C();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      return (*(v15 + 8))(v38, v14);
    }
  }
}

uint64_t sub_208A70(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_30BCF8();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v49 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v41 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v21, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v21);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

    sub_30BF68();
    v22 = sub_30B858();
    (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
    sub_308E98();
  }

  else
  {
    v46 = v21;
    v47 = v10;
    v48 = v7;
    (*(v15 + 32))(v20, v13, v14);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v25 = sub_30C018();
    v26 = v14;
    v27 = *(v15 + 8);
    v28 = v27(v17, v26);
    if (v25)
    {
      return v27(v20, v26);
    }

    else
    {
      v42 = v20;
      v43 = v27;
      v44 = v15 + 8;
      __chkstk_darwin(v28);
      v29 = sub_309CE8();
      v41[-2] = v29;
      v30 = sub_218910(&unk_408F70, &type metadata accessor for CategoryPagePresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v2;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v15 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_409028, &type metadata accessor for CategoryPagePresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20E790();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      return v43(v39, v40);
    }
  }
}

uint64_t sub_2092E0(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_30BCF8();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v18, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    v19 = v44;
    (*(v15 + 16))(v10, v44, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v18);
    swift_endAccess();
    v20 = *(sub_307788() + 20);
    v21 = sub_30B858();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v7, v19 + v20, v21);
    (*(v22 + 56))(v7, 0, 1, v21);

    sub_308E98();
  }

  else
  {
    v39 = v7;
    v40 = v2;
    (*(v15 + 32))(v17, v13, v14);
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      return (*(v15 + 8))(v17, v14);
    }

    else
    {
      v38 = v17;
      __chkstk_darwin(v25);
      v26 = sub_309CE8();
      v37[-2] = v26;
      v27 = sub_218910(&unk_408F70, &type metadata accessor for CategoryPagePresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v15 + 16))(v10, v24, v14);
        (*(v15 + 56))(v10, 0, 1, v14);
        swift_beginAccess();
        sub_218B18(v10, v29 + v18);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_409028, &type metadata accessor for CategoryPagePresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20E790();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      return (*(v15 + 8))(v38, v14);
    }
  }
}

id sub_209A58()
{
  v1 = v0;
  v16 = sub_30BC58();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_30BD28();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_400D90;
  sub_302448();
  swift_allocObject();

  v18 = sub_302438();
  sub_30B908();

  sub_30B948();

  sub_30BD18();
  sub_30B928();

  (*(v6 + 8))(v8, v5);
  sub_30BC48();
  sub_30B938();

  (*(v2 + 8))(v4, v16);
  sub_303958();
  v18 = sub_303948();

  sub_30B908();

  sub_30B948();

  sub_302548();
  v18 = sub_302538();
  sub_30B908();

  sub_30B948();

  sub_308EE8();
  v9 = sub_30B8F8();
  v10 = v17;

  *&v1[v10] = v9;

  sub_302818();
  sub_30B8E8();

  *&v1[qword_400E68] = v18;

  result = [v1 collectionView];
  if (result)
  {
    v12 = result;
    [result bounds];

    sub_3027C8();

    sub_30B8E8();

    *&v1[qword_400E00] = v18;

    v13 = qword_400D58;
    swift_beginAccess();
    if (*&v1[v13])
    {

      sub_9CA20(v14);
    }

    ShelvesDelegate.dependenciesDidChange(_:)(v15);

    *(*&v1[qword_400DA0] + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_objectGraph) = *&v1[v10];

    sub_30AD18();
    sub_218910(&qword_409140, &type metadata accessor for ModernStationDetailPresenter);

    sub_309628();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_209FDC()
{
  v1 = v0;
  v16 = sub_30BC58();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_30BD28();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_400D90;
  sub_302448();
  swift_allocObject();

  v18 = sub_302438();
  sub_30B908();

  sub_30B948();

  sub_30BD18();
  sub_30B928();

  (*(v6 + 8))(v8, v5);
  sub_30BC48();
  sub_30B938();

  (*(v2 + 8))(v4, v16);
  sub_303958();
  v18 = sub_303948();

  sub_30B908();

  sub_30B948();

  sub_302548();
  v18 = sub_302538();
  sub_30B908();

  sub_30B948();

  sub_308EE8();
  v9 = sub_30B8F8();
  v10 = v17;

  *&v1[v10] = v9;

  sub_302818();
  sub_30B8E8();

  *&v1[qword_400E68] = v18;

  result = [v1 collectionView];
  if (result)
  {
    v12 = result;
    [result bounds];

    sub_3027C8();

    sub_30B8E8();

    *&v1[qword_400E00] = v18;

    v13 = qword_400D58;
    swift_beginAccess();
    if (*&v1[v13])
    {

      sub_9CA20(v14);
    }

    ShelvesDelegate.dependenciesDidChange(_:)(v15);

    *(*&v1[qword_400DA0] + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_objectGraph) = *&v1[v10];

    sub_30A5D8();
    sub_218910(&qword_409120, &type metadata accessor for SeeAllEpisodesPresenter);

    sub_309628();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20A560()
{
  v1 = v0;
  v16 = sub_30BC58();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_30BD28();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_400D90;
  sub_302448();
  swift_allocObject();

  v18 = sub_302438();
  sub_30B908();

  sub_30B948();

  sub_30BD18();
  sub_30B928();

  (*(v6 + 8))(v8, v5);
  sub_30BC48();
  sub_30B938();

  (*(v2 + 8))(v4, v16);
  sub_303958();
  v18 = sub_303948();

  sub_30B908();

  sub_30B948();

  sub_302548();
  v18 = sub_302538();
  sub_30B908();

  sub_30B948();

  sub_308EE8();
  v9 = sub_30B8F8();
  v10 = v17;

  *&v1[v10] = v9;

  sub_302818();
  sub_30B8E8();

  *&v1[qword_400E68] = v18;

  result = [v1 collectionView];
  if (result)
  {
    v12 = result;
    [result bounds];

    sub_3027C8();

    sub_30B8E8();

    *&v1[qword_400E00] = v18;

    v13 = qword_400D58;
    swift_beginAccess();
    if (*&v1[v13])
    {

      sub_9CA20(v14);
    }

    ShelvesDelegate.dependenciesDidChange(_:)(v15);

    *(*&v1[qword_400DA0] + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_objectGraph) = *&v1[v10];

    sub_3089B8();
    sub_218910(&qword_409110, &type metadata accessor for SearchPresenter);

    sub_309628();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20AAE4()
{
  v1 = v0;
  v16 = sub_30BC58();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_30BD28();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_400D90;
  sub_302448();
  swift_allocObject();

  v18 = sub_302438();
  sub_30B908();

  sub_30B948();

  sub_30BD18();
  sub_30B928();

  (*(v6 + 8))(v8, v5);
  sub_30BC48();
  sub_30B938();

  (*(v2 + 8))(v4, v16);
  sub_303958();
  v18 = sub_303948();

  sub_30B908();

  sub_30B948();

  sub_302548();
  v18 = sub_302538();
  sub_30B908();

  sub_30B948();

  sub_308EE8();
  v9 = sub_30B8F8();
  v10 = v17;

  *&v1[v10] = v9;

  sub_302818();
  sub_30B8E8();

  *&v1[qword_400E68] = v18;

  result = [v1 collectionView];
  if (result)
  {
    v12 = result;
    [result bounds];

    sub_3027C8();

    sub_30B8E8();

    *&v1[qword_400E00] = v18;

    v13 = qword_400D58;
    swift_beginAccess();
    if (*&v1[v13])
    {

      sub_9CA20(v14);
    }

    ShelvesDelegate.dependenciesDidChange(_:)(v15);

    *(*&v1[qword_400DA0] + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_objectGraph) = *&v1[v10];

    sub_308FB8();
    sub_218910(&qword_409130, &type metadata accessor for ShowListPresenter);

    sub_309628();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20B068()
{
  v1 = v0;
  v16 = sub_30BC58();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_30BD28();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_400D90;
  sub_302448();
  swift_allocObject();

  v18 = sub_302438();
  sub_30B908();

  sub_30B948();

  sub_30BD18();
  sub_30B928();

  (*(v6 + 8))(v8, v5);
  sub_30BC48();
  sub_30B938();

  (*(v2 + 8))(v4, v16);
  sub_303958();
  v18 = sub_303948();

  sub_30B908();

  sub_30B948();

  sub_302548();
  v18 = sub_302538();
  sub_30B908();

  sub_30B948();

  sub_308EE8();
  v9 = sub_30B8F8();
  v10 = v17;

  *&v1[v10] = v9;

  sub_302818();
  sub_30B8E8();

  *&v1[qword_400E68] = v18;

  result = [v1 collectionView];
  if (result)
  {
    v12 = result;
    [result bounds];

    sub_3027C8();

    sub_30B8E8();

    *&v1[qword_400E00] = v18;

    v13 = qword_400D58;
    swift_beginAccess();
    if (*&v1[v13])
    {

      sub_9CA20(v14);
    }

    ShelvesDelegate.dependenciesDidChange(_:)(v15);

    *(*&v1[qword_400DA0] + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_objectGraph) = *&v1[v10];

    sub_309AA8();
    sub_218910(&qword_4090F0, &type metadata accessor for LibraryShowPresenter);

    sub_309628();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20B5EC()
{
  v1 = v0;
  v16 = sub_30BC58();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_30BD28();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_400D90;
  sub_302448();
  swift_allocObject();

  v18 = sub_302438();
  sub_30B908();

  sub_30B948();

  sub_30BD18();
  sub_30B928();

  (*(v6 + 8))(v8, v5);
  sub_30BC48();
  sub_30B938();

  (*(v2 + 8))(v4, v16);
  sub_303958();
  v18 = sub_303948();

  sub_30B908();

  sub_30B948();

  sub_302548();
  v18 = sub_302538();
  sub_30B908();

  sub_30B948();

  sub_308EE8();
  v9 = sub_30B8F8();
  v10 = v17;

  *&v1[v10] = v9;

  sub_302818();
  sub_30B8E8();

  *&v1[qword_400E68] = v18;

  result = [v1 collectionView];
  if (result)
  {
    v12 = result;
    [result bounds];

    sub_3027C8();

    sub_30B8E8();

    *&v1[qword_400E00] = v18;

    v13 = qword_400D58;
    swift_beginAccess();
    if (*&v1[v13])
    {

      sub_9CA20(v14);
    }

    ShelvesDelegate.dependenciesDidChange(_:)(v15);

    *(*&v1[qword_400DA0] + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_objectGraph) = *&v1[v10];

    sub_309358();
    sub_218910(&qword_409100, &type metadata accessor for StorePagePresenter);

    sub_309628();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20BB70()
{
  v1 = v0;
  v16 = sub_30BC58();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_30BD28();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_400D90;
  sub_302448();
  swift_allocObject();

  v18 = sub_302438();
  sub_30B908();

  sub_30B948();

  sub_30BD18();
  sub_30B928();

  (*(v6 + 8))(v8, v5);
  sub_30BC48();
  sub_30B938();

  (*(v2 + 8))(v4, v16);
  sub_303958();
  v18 = sub_303948();

  sub_30B908();

  sub_30B948();

  sub_302548();
  v18 = sub_302538();
  sub_30B908();

  sub_30B948();

  sub_308EE8();
  v9 = sub_30B8F8();
  v10 = v17;

  *&v1[v10] = v9;

  sub_302818();
  sub_30B8E8();

  *&v1[qword_400E68] = v18;

  result = [v1 collectionView];
  if (result)
  {
    v12 = result;
    [result bounds];

    sub_3027C8();

    sub_30B8E8();

    *&v1[qword_400E00] = v18;

    v13 = qword_400D58;
    swift_beginAccess();
    if (*&v1[v13])
    {

      sub_9CA20(v14);
    }

    ShelvesDelegate.dependenciesDidChange(_:)(v15);

    *(*&v1[qword_400DA0] + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_objectGraph) = *&v1[v10];

    sub_30A738();
    sub_218910(&qword_4090B0, &type metadata accessor for LongDescriptionPresenter);

    sub_309628();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20C0F4()
{
  v1 = v0;
  v16 = sub_30BC58();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_30BD28();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_400D90;
  sub_302448();
  swift_allocObject();

  v18 = sub_302438();
  sub_30B908();

  sub_30B948();

  sub_30BD18();
  sub_30B928();

  (*(v6 + 8))(v8, v5);
  sub_30BC48();
  sub_30B938();

  (*(v2 + 8))(v4, v16);
  sub_303958();
  v18 = sub_303948();

  sub_30B908();

  sub_30B948();

  sub_302548();
  v18 = sub_302538();
  sub_30B908();

  sub_30B948();

  sub_308EE8();
  v9 = sub_30B8F8();
  v10 = v17;

  *&v1[v10] = v9;

  sub_302818();
  sub_30B8E8();

  *&v1[qword_400E68] = v18;

  result = [v1 collectionView];
  if (result)
  {
    v12 = result;
    [result bounds];

    sub_3027C8();

    sub_30B8E8();

    *&v1[qword_400E00] = v18;

    v13 = qword_400D58;
    swift_beginAccess();
    if (*&v1[v13])
    {

      sub_9CA20(v14);
    }

    ShelvesDelegate.dependenciesDidChange(_:)(v15);

    *(*&v1[qword_400DA0] + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_objectGraph) = *&v1[v10];

    sub_308E08();
    sub_218910(&qword_4090A0, &type metadata accessor for HomePagePresenter);

    sub_309628();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20C678()
{
  v1 = v0;
  v16 = sub_30BC58();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_30BD28();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_400D90;
  sub_302448();
  swift_allocObject();

  v18 = sub_302438();
  sub_30B908();

  sub_30B948();

  sub_30BD18();
  sub_30B928();

  (*(v6 + 8))(v8, v5);
  sub_30BC48();
  sub_30B938();

  (*(v2 + 8))(v4, v16);
  sub_303958();
  v18 = sub_303948();

  sub_30B908();

  sub_30B948();

  sub_302548();
  v18 = sub_302538();
  sub_30B908();

  sub_30B948();

  sub_308EE8();
  v9 = sub_30B8F8();
  v10 = v17;

  *&v1[v10] = v9;

  sub_302818();
  sub_30B8E8();

  *&v1[qword_400E68] = v18;

  result = [v1 collectionView];
  if (result)
  {
    v12 = result;
    [result bounds];

    sub_3027C8();

    sub_30B8E8();

    *&v1[qword_400E00] = v18;

    v13 = qword_400D58;
    swift_beginAccess();
    if (*&v1[v13])
    {

      sub_9CA20(v14);
    }

    ShelvesDelegate.dependenciesDidChange(_:)(v15);

    *(*&v1[qword_400DA0] + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_objectGraph) = *&v1[v10];

    sub_308BE8();
    sub_218910(&qword_409090, &type metadata accessor for LibraryPresenter);

    sub_309628();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20CBFC()
{
  v1 = v0;
  v16 = sub_30BC58();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_30BD28();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_400D90;
  sub_302448();
  swift_allocObject();

  v18 = sub_302438();
  sub_30B908();

  sub_30B948();

  sub_30BD18();
  sub_30B928();

  (*(v6 + 8))(v8, v5);
  sub_30BC48();
  sub_30B938();

  (*(v2 + 8))(v4, v16);
  sub_303958();
  v18 = sub_303948();

  sub_30B908();

  sub_30B948();

  sub_302548();
  v18 = sub_302538();
  sub_30B908();

  sub_30B948();

  sub_308EE8();
  v9 = sub_30B8F8();
  v10 = v17;

  *&v1[v10] = v9;

  sub_302818();
  sub_30B8E8();

  *&v1[qword_400E68] = v18;

  result = [v1 collectionView];
  if (result)
  {
    v12 = result;
    [result bounds];

    sub_3027C8();

    sub_30B8E8();

    *&v1[qword_400E00] = v18;

    v13 = qword_400D58;
    swift_beginAccess();
    if (*&v1[v13])
    {

      sub_9CA20(v14);
    }

    ShelvesDelegate.dependenciesDidChange(_:)(v15);

    *(*&v1[qword_400DA0] + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_objectGraph) = *&v1[v10];

    sub_309408();
    sub_218910(&qword_409080, &type metadata accessor for HighlightsPresenter);

    sub_309628();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20D180()
{
  v1 = v0;
  v16 = sub_30BC58();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_30BD28();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_400D90;
  sub_302448();
  swift_allocObject();

  v18 = sub_302438();
  sub_30B908();

  sub_30B948();

  sub_30BD18();
  sub_30B928();

  (*(v6 + 8))(v8, v5);
  sub_30BC48();
  sub_30B938();

  (*(v2 + 8))(v4, v16);
  sub_303958();
  v18 = sub_303948();

  sub_30B908();

  sub_30B948();

  sub_302548();
  v18 = sub_302538();
  sub_30B908();

  sub_30B948();

  sub_308EE8();
  v9 = sub_30B8F8();
  v10 = v17;

  *&v1[v10] = v9;

  sub_302818();
  sub_30B8E8();

  *&v1[qword_400E68] = v18;

  result = [v1 collectionView];
  if (result)
  {
    v12 = result;
    [result bounds];

    sub_3027C8();

    sub_30B8E8();

    *&v1[qword_400E00] = v18;

    v13 = qword_400D58;
    swift_beginAccess();
    if (*&v1[v13])
    {

      sub_9CA20(v14);
    }

    ShelvesDelegate.dependenciesDidChange(_:)(v15);

    *(*&v1[qword_400DA0] + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_objectGraph) = *&v1[v10];

    sub_30A558();
    sub_218910(&qword_409150, &type metadata accessor for ModernEpisodesPresenter);

    sub_309628();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20D704()
{
  v1 = v0;
  v16 = sub_30BC58();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_30BD28();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_400D90;
  sub_302448();
  swift_allocObject();

  v18 = sub_302438();
  sub_30B908();

  sub_30B948();

  sub_30BD18();
  sub_30B928();

  (*(v6 + 8))(v8, v5);
  sub_30BC48();
  sub_30B938();

  (*(v2 + 8))(v4, v16);
  sub_303958();
  v18 = sub_303948();

  sub_30B908();

  sub_30B948();

  sub_302548();
  v18 = sub_302538();
  sub_30B908();

  sub_30B948();

  sub_308EE8();
  v9 = sub_30B8F8();
  v10 = v17;

  *&v1[v10] = v9;

  sub_302818();
  sub_30B8E8();

  *&v1[qword_400E68] = v18;

  result = [v1 collectionView];
  if (result)
  {
    v12 = result;
    [result bounds];

    sub_3027C8();

    sub_30B8E8();

    *&v1[qword_400E00] = v18;

    v13 = qword_400D58;
    swift_beginAccess();
    if (*&v1[v13])
    {

      sub_9CA20(v14);
    }

    ShelvesDelegate.dependenciesDidChange(_:)(v15);

    *(*&v1[qword_400DA0] + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_objectGraph) = *&v1[v10];

    sub_309CB8();
    sub_218910(&qword_409070, &type metadata accessor for CategoryListPresenter);

    sub_309628();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20DC88()
{
  v1 = v0;
  v16 = sub_30BC58();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_30BD28();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_400D90;
  sub_302448();
  swift_allocObject();

  v18 = sub_302438();
  sub_30B908();

  sub_30B948();

  sub_30BD18();
  sub_30B928();

  (*(v6 + 8))(v8, v5);
  sub_30BC48();
  sub_30B938();

  (*(v2 + 8))(v4, v16);
  sub_303958();
  v18 = sub_303948();

  sub_30B908();

  sub_30B948();

  sub_302548();
  v18 = sub_302538();
  sub_30B908();

  sub_30B948();

  sub_308EE8();
  v9 = sub_30B8F8();
  v10 = v17;

  *&v1[v10] = v9;

  sub_302818();
  sub_30B8E8();

  *&v1[qword_400E68] = v18;

  result = [v1 collectionView];
  if (result)
  {
    v12 = result;
    [result bounds];

    sub_3027C8();

    sub_30B8E8();

    *&v1[qword_400E00] = v18;

    v13 = qword_400D58;
    swift_beginAccess();
    if (*&v1[v13])
    {

      sub_9CA20(v14);
    }

    ShelvesDelegate.dependenciesDidChange(_:)(v15);

    *(*&v1[qword_400DA0] + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_objectGraph) = *&v1[v10];

    sub_3099E8();
    sub_218910(&qword_409060, &type metadata accessor for ChannelListPresenter);

    sub_309628();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20E20C()
{
  v1 = v0;
  v16 = sub_30BC58();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_30BD28();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_400D90;
  sub_302448();
  swift_allocObject();

  v18 = sub_302438();
  sub_30B908();

  sub_30B948();

  sub_30BD18();
  sub_30B928();

  (*(v6 + 8))(v8, v5);
  sub_30BC48();
  sub_30B938();

  (*(v2 + 8))(v4, v16);
  sub_303958();
  v18 = sub_303948();

  sub_30B908();

  sub_30B948();

  sub_302548();
  v18 = sub_302538();
  sub_30B908();

  sub_30B948();

  sub_308EE8();
  v9 = sub_30B8F8();
  v10 = v17;

  *&v1[v10] = v9;

  sub_302818();
  sub_30B8E8();

  *&v1[qword_400E68] = v18;

  result = [v1 collectionView];
  if (result)
  {
    v12 = result;
    [result bounds];

    sub_3027C8();

    sub_30B8E8();

    *&v1[qword_400E00] = v18;

    v13 = qword_400D58;
    swift_beginAccess();
    if (*&v1[v13])
    {

      sub_9CA20(v14);
    }

    ShelvesDelegate.dependenciesDidChange(_:)(v15);

    *(*&v1[qword_400DA0] + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_objectGraph) = *&v1[v10];

    sub_308B68();
    sub_218910(&qword_409050, &type metadata accessor for ChannelPresenter);

    sub_309628();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20E790()
{
  v1 = v0;
  v16 = sub_30BC58();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_30BD28();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_400D90;
  sub_302448();
  swift_allocObject();

  v18 = sub_302438();
  sub_30B908();

  sub_30B948();

  sub_30BD18();
  sub_30B928();

  (*(v6 + 8))(v8, v5);
  sub_30BC48();
  sub_30B938();

  (*(v2 + 8))(v4, v16);
  sub_303958();
  v18 = sub_303948();

  sub_30B908();

  sub_30B948();

  sub_302548();
  v18 = sub_302538();
  sub_30B908();

  sub_30B948();

  sub_308EE8();
  v9 = sub_30B8F8();
  v10 = v17;

  *&v1[v10] = v9;

  sub_302818();
  sub_30B8E8();

  *&v1[qword_400E68] = v18;

  result = [v1 collectionView];
  if (result)
  {
    v12 = result;
    [result bounds];

    sub_3027C8();

    sub_30B8E8();

    *&v1[qword_400E00] = v18;

    v13 = qword_400D58;
    swift_beginAccess();
    if (*&v1[v13])
    {

      sub_9CA20(v14);
    }

    ShelvesDelegate.dependenciesDidChange(_:)(v15);

    *(*&v1[qword_400DA0] + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_objectGraph) = *&v1[v10];

    sub_309CE8();
    sub_218910(&unk_408F70, &type metadata accessor for CategoryPagePresenter);

    sub_309628();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20ED14(uint64_t a1, void *a2)
{
  v3 = sub_301F38();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v17[-v8];
  sub_307C08();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = sub_30CE88();
  if (!v12)
  {
LABEL_9:

    return 0;
  }

  v13 = v12;
  v14 = [a2 indexPathForCell:v12];
  if (!v14)
  {

    goto LABEL_9;
  }

  v15 = v14;
  sub_301EB8();

  (*(v4 + 32))(v9, v6, v3);
  if (sub_301F18() > 1)
  {
    v16 = sub_301ED8();
    sub_301F08();

    (*(v4 + 8))(v9, v3);
    return v16;
  }

  else
  {
    if (sub_301F18() < 1)
    {
      (*(v4 + 8))(v9, v3);
    }

    else
    {
      sub_301F08();

      (*(v4 + 8))(v9, v3);
    }

    return 0;
  }
}

uint64_t sub_20F004@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews18BaseFlowController_metricsPipeline;
  swift_beginAccess();
  v5 = sub_30B9D8();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_20F090(uint64_t a1, uint64_t *a2)
{
  v4 = sub_30B9D8();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews18BaseFlowController_metricsPipeline;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_20F1A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews18BaseFlowController_metricsPipeline;
  swift_beginAccess();
  v4 = sub_30B9D8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_20F230(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews18BaseFlowController_metricsPipeline;
  swift_beginAccess();
  v4 = sub_30B9D8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

int *sub_20F320()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = [Strong nextResponder];

  if (!v2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_315430;
  *(inited + 32) = v0;
  v4 = sub_24543C(inited);
  swift_setDeallocating();
  v5 = sub_240B20(v4);

  return v5;
}

objc_class *sub_20F3F0(uint64_t a1, void *a2)
{
  v322 = a2;
  v323 = a1;
  v2 = type metadata accessor for ManageCategoriesView();
  __chkstk_darwin(v2 - 8);
  v298 = &v275 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = sub_307728();
  v318 = *(v319 - 8);
  __chkstk_darwin(v319);
  v316 = &v275 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v317 = &v275 - v6;
  v321 = sub_301CB8();
  v320 = *(v321 - 8);
  __chkstk_darwin(v321);
  v324 = &v275 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v275 - v9;
  v11 = sub_308F18();
  __chkstk_darwin(v11 - 8);
  v308 = &v275 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_30AD08();
  __chkstk_darwin(v13 - 8);
  v309 = &v275 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_30A5C8();
  __chkstk_darwin(v15 - 8);
  v311 = &v275 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_308FA8();
  __chkstk_darwin(v17 - 8);
  v300 = &v275 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_309A98();
  __chkstk_darwin(v19 - 8);
  v307 = &v275 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = type metadata accessor for MultipleSubscriptionConfirmationView();
  __chkstk_darwin(v296);
  v297 = (&v275 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v290 = sub_30BC58();
  v289 = *(v290 - 8);
  __chkstk_darwin(v290);
  v288 = &v275 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = sub_30BD28();
  v286 = *(v287 - 8);
  __chkstk_darwin(v287);
  v283 = &v275 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_309348();
  __chkstk_darwin(v24 - 8);
  v314 = &v275 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = sub_30B9D8();
  __chkstk_darwin(v312);
  v313 = &v275 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_30A728();
  __chkstk_darwin(v27 - 8);
  v306 = &v275 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_30A548();
  __chkstk_darwin(v29 - 8);
  v310 = &v275 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD48);
  __chkstk_darwin(v31 - 8);
  v305 = &v275 - v32;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E50);
  v294 = *(v295 - 8);
  __chkstk_darwin(v295);
  v293 = &v275 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408430);
  v292 = *(v34 - 8);
  __chkstk_darwin(v34);
  v291 = &v275 - v35;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080D0);
  v284 = *(v285 - 8);
  __chkstk_darwin(v285);
  v282 = &v275 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408028);
  __chkstk_darwin(v37 - 8);
  v302 = &v275 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408E60);
  __chkstk_darwin(v39 - 8);
  v299 = &v275 - v40;
  v304 = sub_303CD8();
  v303 = *(v304 - 8);
  __chkstk_darwin(v304);
  v301 = &v275 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408E68);
  __chkstk_darwin(v279);
  v280 = (&v275 - v42);
  v43 = sub_3099D8();
  __chkstk_darwin(v43 - 8);
  v281 = &v275 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_308B58();
  __chkstk_darwin(v45 - 8);
  v47 = &v275 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_309CD8();
  __chkstk_darwin(v48 - 8);
  v50 = &v275 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = sub_30B3F8();
  v277 = *(v278 - 8);
  __chkstk_darwin(v278);
  v52 = &v275 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v276 = &v275 - v54;
  v55 = sub_308778();
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v58 = &v275 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v59 - 8);
  v61 = &v275 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v315 = &v275 - v63;
  v65 = __chkstk_darwin(v64);
  v67 = &v275 - v66;
  (*(v56 + 16))(v58, v323, v55, v65);
  v68 = (*(v56 + 88))(v58, v55);
  if (v68 == enum case for FlowDestination.unknown(_:))
  {
    (*(v56 + 96))(v58, v55);
    v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408E80) + 48);
    v70 = v320;
    v71 = v321;
    (*(v320 + 32))(v10, v58, v321);
    v72 = v318;
    v73 = &v58[v69];
    v74 = v317;
    v75 = v319;
    (*(v318 + 32))(v317, v73, v319);
    v76 = v324;
    (*(v70 + 16))(v324, v10, v71);
    v77 = v316;
    (*(v72 + 16))(v316, v74, v75);
    v78 = objc_allocWithZone(type metadata accessor for LoadingPageViewController());

    v80 = sub_272CB8(v79, v76, v77);

    (*(v72 + 8))(v74, v75);
    (*(v70 + 8))(v10, v71);
    return v80;
  }

  v323 = v34;
  v81 = v324;
  if (v68 == enum case for FlowDestination.searchResults(_:))
  {
    (*(v56 + 96))(v58, v55);
    v82 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408EA8));

    v80 = sub_1DE168(v83, sub_219B68, sub_219B64, sub_219B6C, &type metadata accessor for SearchPresenter, &qword_409110, &type metadata accessor for SearchPresenter, &protocol conformance descriptor for SearchPresenter, &protocol witness table for SearchPresenter, &unk_3BFE58, sub_21997C, sub_2193A8, sub_219B70, sub_2193D8, sub_219408, sub_219438, sub_219B74, sub_219B78, sub_219B7C);
    sub_EB68(v58, &qword_3FB8E0);
    return v80;
  }

  if (v68 == enum case for FlowDestination.video(_:))
  {
    (*(v56 + 96))(v58, v55);
    v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E70) + 48);
    v85 = v320;
    v86 = v10;
    v87 = v10;
    v88 = v321;
    (*(v320 + 32))(v87, v58, v321);
    (*(v85 + 16))(v81, v86, v88);
    v89 = objc_allocWithZone(AVPlayer);
    sub_301C08(v90);
    v92 = v91;
    v93 = [v89 initWithURL:v91];

    v80 = [objc_allocWithZone(type metadata accessor for PlayerViewController()) init];
    [v80 setPlayer:v93];

    v94 = *(v85 + 8);
    v94(v81, v88);
    *(v80 + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_autoplay) = 1;

    [v80 setAllowsPictureInPicturePlayback:0];
    [v80 setUpdatesNowPlayingInfoCenter:0];

    v94(v86, v88);
    sub_EB68(&v58[v84], &unk_402FF0);
    return v80;
  }

  if (v68 == enum case for FlowDestination.page(_:) || v68 == enum case for FlowDestination.topLevelPage(_:) || v68 == enum case for FlowDestination.modernTopCharts(_:))
  {
    (*(v56 + 96))(v58, v55);
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E10);
    sub_218514(&v58[*(v95 + 48)], v67);
    sub_30B8E8();
    sub_302528();
    swift_allocObject();
    *&v327 = sub_302508();
    v96 = sub_30B908();
    sub_218514(v67, v315);
    v97 = v314;
    sub_309338();
    v98 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408EB0));
    v80 = sub_1DFD68(v96, v97, &type metadata accessor for StorePagePresenter.Configuration, sub_219B68, sub_219B64, sub_219B6C, &type metadata accessor for StorePagePresenter, &qword_409100, &type metadata accessor for StorePagePresenter, &protocol conformance descriptor for StorePagePresenter, &protocol witness table for StorePagePresenter, &unk_3BFD18, sub_21997C, sub_219310, sub_219B70, sub_219340, sub_219370, sub_2193A0, sub_219B74, sub_219B78, sub_219B7C);
LABEL_13:

    return v80;
  }

  if (v68 == enum case for FlowDestination.viewController(_:))
  {
    (*(v56 + 96))(v58, v55);
    return *v58;
  }

  if (v68 == enum case for FlowDestination.seeAllEpisodes(_:))
  {
    (*(v56 + 96))(v58, v55);
    v100 = *(v58 + 4);
    v101 = v322[25];
    v102 = v58[40];

    sub_2186F8(v100, v102);
    sub_303098();
    v103 = v311;
    sub_30A5B8();
    v104 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408EA0));
    v80 = sub_1DFD68(v101, v103, &type metadata accessor for SeeAllEpisodesPresenter.Configuration, sub_219B68, sub_219B64, sub_219B6C, &type metadata accessor for SeeAllEpisodesPresenter, &qword_409120, &type metadata accessor for SeeAllEpisodesPresenter, &protocol conformance descriptor for SeeAllEpisodesPresenter, &protocol witness table for SeeAllEpisodesPresenter, &unk_3BFF98, sub_21997C, sub_219440, sub_219B70, sub_219470, sub_2194A0, sub_2194D0, sub_219B74, sub_219B78, sub_219B7C);
    sub_21869C(v100, v102);
    return v80;
  }

  if (v68 == enum case for FlowDestination.episodeList(_:))
  {
    (*(v56 + 96))(v58, v55);
    v105 = *(v58 + 3);
    v329 = *(v58 + 2);
    v330 = v105;
    v331 = v58[64];
    v106 = *(v58 + 1);
    v327 = *v58;
    v328 = v106;
    v107 = v322[25];

    sub_218730(&v327, v326);
    sub_303098();
    v108 = v310;
    sub_30A538();
    v109 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408E88));
    v80 = sub_1DFD68(v107, v108, &type metadata accessor for ModernEpisodesPresenter.Configuration, sub_219B68, sub_219B64, sub_219B6C, &type metadata accessor for ModernEpisodesPresenter, &qword_409150, &type metadata accessor for ModernEpisodesPresenter, &protocol conformance descriptor for ModernEpisodesPresenter, &protocol witness table for ModernEpisodesPresenter, &unk_3C0358, sub_21997C, sub_219608, sub_219B70, sub_219638, sub_219668, sub_219698, sub_219B74, sub_219B78, sub_219B7C);
    sub_21878C(&v327);
    return v80;
  }

  if (v68 == enum case for FlowDestination.episodeDetails(_:))
  {
    (*(v56 + 96))(v58, v55);
    v324 = *v58;
    __swift_project_boxed_opaque_existential_1Tm(v322 + 20, v322[23]);
    v80 = sub_30A838();

    return v80;
  }

  if (v68 == enum case for FlowDestination.channel(_:))
  {
    (*(v56 + 96))(v58, v55);
    v110 = v322[25];

    sub_308B48();
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408F18));
    v274 = sub_218D50;
    v273 = sub_218D20;
    v272 = sub_218CF0;
    v271 = sub_218CC0;
    v270 = &unk_3BF2A0;
    v268 = &protocol conformance descriptor for ChannelPresenter;
    v269 = &protocol witness table for ChannelPresenter;
    v267 = &type metadata accessor for ChannelPresenter;
    v111 = &qword_409050;
    v112 = &type metadata accessor for ChannelPresenter.Configuration;
    v113 = &type metadata accessor for ChannelPresenter;
    v114 = v110;
    v115 = v47;
LABEL_23:
    v116 = sub_1DFD68(v114, v115, v112, sub_219B68, sub_219B64, sub_219B6C, v113, v111, v267, v268, v269, v270, sub_21997C, v271, sub_219B70, v272, v273, v274, sub_219B74, sub_219B78, sub_219B7C);
LABEL_24:
    v80 = v116;
    goto LABEL_13;
  }

  if (v68 == enum case for FlowDestination.podcastSettings(_:))
  {
    (*(v56 + 96))(v58, v55);
    v117 = *v58;
    v118 = *(v58 + 1);
    v119 = v322[11];
    v120 = v322[12];
    __swift_project_boxed_opaque_existential_1Tm(v322 + 8, v119);
    v121 = (*(v120 + 8))(v117, v118, v119, v120);
LABEL_29:
    v80 = v121;

    return v80;
  }

  v122 = v322;
  if (v68 == enum case for FlowDestination.notificationSettings(_:))
  {
    (*(v56 + 96))(v58, v55);
    v123 = *v58;
    v124 = *(v58 + 1);
    v125 = v122[11];
    v126 = v122[12];
    __swift_project_boxed_opaque_existential_1Tm(v122 + 8, v125);
    v121 = (*(v126 + 24))(v123, v124, v125, v126);
    goto LABEL_29;
  }

  if (v68 == enum case for FlowDestination.station(_:))
  {
    (*(v56 + 96))(v58, v55);
    v127 = v122[25];

    v128 = v309;
    sub_30ACF8();
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408E90));
    v274 = sub_219600;
    v273 = sub_2195D0;
    v272 = sub_2195A0;
    v271 = sub_219570;
    v270 = &unk_3C0218;
    v268 = &protocol conformance descriptor for ModernStationDetailPresenter;
    v269 = &protocol witness table for ModernStationDetailPresenter;
    v267 = &type metadata accessor for ModernStationDetailPresenter;
    v111 = &qword_409140;
    v112 = &type metadata accessor for ModernStationDetailPresenter.Configuration;
    v113 = &type metadata accessor for ModernStationDetailPresenter;
LABEL_32:
    v114 = v127;
    v115 = v128;
    goto LABEL_23;
  }

  if (v68 == enum case for FlowDestination.stationSettings(_:))
  {
    (*(v56 + 96))(v58, v55);
    v129 = *v58;
    v130 = *(v58 + 1);
    v131 = v122[11];
    v132 = v122[12];
    __swift_project_boxed_opaque_existential_1Tm(v122 + 8, v131);
    v133 = *(v132 + 32);

    v133(v129, v130, v131, v132);

    sub_303308();
    sub_303528();
    sub_308F08();
    v134 = objc_allocWithZone(sub_30AAE8());
    return sub_30AAD8();
  }

  if (v68 == enum case for FlowDestination.stationShowEpisodes(_:))
  {
    (*(v56 + 96))(v58, v55);
    v135 = *(v58 + 2);
    v136 = *(v58 + 3);
    v137 = *(v58 + 6);
    v138 = *(v58 + 7);
    v139 = v122[25];
    v327 = *v58;
    *&v328 = v135;
    *(&v328 + 1) = v136;
    v329 = *(v58 + 2);
    *&v330 = v137;
    *(&v330 + 1) = v138;
    v331 = 5;

    sub_303098();
    v140 = v310;
    sub_30A538();
    v141 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408E88));
    return sub_1DFD68(v139, v140, &type metadata accessor for ModernEpisodesPresenter.Configuration, sub_219B68, sub_219B64, sub_219B6C, &type metadata accessor for ModernEpisodesPresenter, &qword_409150, &type metadata accessor for ModernEpisodesPresenter, &protocol conformance descriptor for ModernEpisodesPresenter, &protocol witness table for ModernEpisodesPresenter, &unk_3C0358, sub_21997C, sub_219608, sub_219B70, sub_219638, sub_219668, sub_219698, sub_219B74, sub_219B78, sub_219B7C);
  }

  if (v68 == enum case for FlowDestination.podcast(_:))
  {
    (*(v56 + 96))(v58, v55);
    v143 = v322[25];

    sub_30B298();

    v144 = v307;
    sub_309A88();
    v145 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408EB8));
    v116 = sub_1DFD68(v143, v144, &type metadata accessor for LibraryShowPresenter.Configuration, sub_219B68, sub_219B64, sub_219B6C, &type metadata accessor for LibraryShowPresenter, &qword_4090F0, &type metadata accessor for LibraryShowPresenter, &protocol conformance descriptor for LibraryShowPresenter, &protocol witness table for LibraryShowPresenter, &unk_3BFBD8, sub_21997C, sub_219278, sub_219B70, sub_2192A8, sub_2192D8, sub_219308, sub_219B74, sub_219B78, sub_219B7C);
    goto LABEL_24;
  }

  if (v68 == enum case for FlowDestination.podcastUUID(_:))
  {
    (*(v56 + 96))(v58, v55);
    v146 = v322[25];

    v147 = v307;
    sub_309A88();
    v148 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408EB8));
    return sub_1DFD68(v146, v147, &type metadata accessor for LibraryShowPresenter.Configuration, sub_219B68, sub_219B64, sub_219B6C, &type metadata accessor for LibraryShowPresenter, &qword_4090F0, &type metadata accessor for LibraryShowPresenter, &protocol conformance descriptor for LibraryShowPresenter, &protocol witness table for LibraryShowPresenter, &unk_3BFBD8, sub_21997C, sub_219278, sub_219B70, sub_2192A8, sub_2192D8, sub_219308, sub_219B74, sub_219B78, sub_219B7C);
  }

  if (v68 == enum case for FlowDestination.writeReview(_:))
  {
    return 0;
  }

  if (v68 == enum case for FlowDestination.reviews(_:))
  {
    (*(v56 + 96))(v58, v55);
    v127 = v322[25];
    (*(v320 + 56))(v315, 1, 1, v321);

    v128 = v314;
    sub_309338();
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408EB0));
    v274 = sub_2193A0;
    v273 = sub_219370;
    v272 = sub_219340;
    v271 = sub_219310;
    v270 = &unk_3BFD18;
    v268 = &protocol conformance descriptor for StorePagePresenter;
    v269 = &protocol witness table for StorePagePresenter;
    v267 = &type metadata accessor for StorePagePresenter;
    v111 = &qword_409100;
    v112 = &type metadata accessor for StorePagePresenter.Configuration;
    v113 = &type metadata accessor for StorePagePresenter;
    goto LABEL_32;
  }

  if (v68 == enum case for FlowDestination.upsell(_:))
  {
LABEL_48:
    (*(v56 + 96))(v58, v55);
    v149 = *v58;
    v150 = v322[25];
    v151 = objc_allocWithZone(type metadata accessor for UpsellViewController());

    v152 = v149;
    v153 = sub_2F4178(v150, v152);
    v80 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v153];

    return v80;
  }

  if (v68 == enum case for FlowDestination.longDescription(_:))
  {
    (*(v56 + 96))(v58, v55);
    v127 = v322[25];

    v128 = v306;
    sub_30A718();
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408EC0));
    v274 = sub_219260;
    v273 = sub_219230;
    v272 = sub_219200;
    v271 = sub_2191D0;
    v270 = &unk_3BFA20;
    v268 = &protocol conformance descriptor for LongDescriptionPresenter;
    v269 = &protocol witness table for LongDescriptionPresenter;
    v267 = &type metadata accessor for LongDescriptionPresenter;
    v111 = &qword_4090B0;
    v112 = &type metadata accessor for LongDescriptionPresenter.Configuration;
    v113 = &type metadata accessor for LongDescriptionPresenter;
    goto LABEL_32;
  }

  if (v68 == enum case for FlowDestination.finance(_:))
  {
    (*(v56 + 96))(v58, v55);
    v154 = v58;
    v155 = v315;
    sub_218514(v154, v315);
    sub_EB00(v155, v61, &qword_3FB8E0);
    v156 = objc_allocWithZone(type metadata accessor for WebViewController());
    v157 = sub_2FECB4(v61);
    v80 = [objc_allocWithZone(type metadata accessor for WebNavigationController()) initWithRootViewController:v157];

LABEL_55:
    sub_EB68(v155, &qword_3FB8E0);
    return v80;
  }

  if (v68 == enum case for FlowDestination.financeSubscriptions(_:))
  {
    (*(v56 + 96))(v58, v55);
    v158 = v58;
    v155 = v315;
    sub_218514(v158, v315);
    sub_EB00(v155, v61, &qword_3FB8E0);
    v159 = objc_allocWithZone(type metadata accessor for WebViewController());
    v80 = sub_2FECB4(v61);
    goto LABEL_55;
  }

  if (v68 == enum case for FlowDestination.contextMenuPreview(_:))
  {
    (*(v56 + 96))(v58, v55);
    v160 = *v58;
    v161 = v322[25];
    objc_allocWithZone(type metadata accessor for ContextMenuPreviewViewController());

    return ContextMenuPreviewViewController.init(preview:asPartOf:)(v160, v161);
  }

  if (v68 == enum case for FlowDestination.singleSubscriptionConfirmation(_:))
  {
    goto LABEL_48;
  }

  if (v68 == enum case for FlowDestination.multipleSubscriptionConfirmation(_:))
  {
    (*(v56 + 96))(v58, v55);
    v162 = *v58;
    v163 = v283;
    sub_30BD18();
    sub_30B928();
    (*(v286 + 8))(v163, v287);
    v164 = v288;
    sub_30BC48();
    sub_30B938();

    (*(v289 + 8))(v164, v290);
    sub_303958();
    *&v327 = sub_303948();

    sub_30B908();

    sub_30B948();

    sub_308EE8();
    v165 = sub_30B8F8();

    sub_30B8E8();
    v166 = v327;
    v167 = swift_allocObject();
    *(v167 + 16) = 0;
    v168 = swift_allocObject();
    *(v168 + 16) = v167;
    *(v168 + 24) = v165;
    v169 = swift_allocObject();
    *(v169 + 16) = v166;
    *(v169 + 24) = v167;
    v170 = swift_allocObject();
    *(v170 + 16) = v167;
    *(v170 + 24) = v165;
    v171 = v297;
    *v297 = v162;
    *(v171 + 8) = sub_218710;
    *(v171 + 16) = v168;
    *(v171 + 24) = sub_218718;
    *(v171 + 32) = v169;
    *(v171 + 40) = sub_218720;
    *(v171 + 48) = v170;
    LOBYTE(v326[0]) = 1;
    swift_retain_n();
    swift_retain_n();

    sub_306A08();
    v172 = *(&v327 + 1);
    *(v171 + 56) = v327;
    *(v171 + 64) = v172;
    type metadata accessor for CGSize(0);
    v326[0] = 0;
    v326[1] = 0;
    sub_306A08();
    v173 = v328;
    *(v171 + 72) = v327;
    *(v171 + 88) = v173;
    *(v171 + 96) = swift_getKeyPath();
    *(v171 + 104) = 0;
    v174 = v296;
    v175 = objc_opt_self();
    v176 = [v175 defaultCenter];
    sub_30CA58();

    v177 = [v175 defaultCenter];
    sub_30CA58();

    v178 = v171 + *(v174 + 52);
    LOBYTE(v326[0]) = 0;
    sub_306A08();
    v179 = *(&v327 + 1);
    *v178 = v327;
    *(v178 + 8) = v179;
    v80 = sub_1B9884(v165, 0);

    sub_218C60(v171, type metadata accessor for MultipleSubscriptionConfirmationView);
    swift_beginAccess();
    v180 = *(v167 + 16);
    *(v167 + 16) = v80;
    v181 = v80;

    return v80;
  }

  if (v68 == enum case for FlowDestination.episodeDetailTranscript(_:))
  {
    (*(v56 + 96))(v58, v55);
    sub_308C78();
    v182 = v322[25];

    sub_303C98();
    v324 = sub_303D68();

    v319 = sub_303CA8();
    v318 = v191;
    v317 = sub_303CB8();
    v316 = v192;
    LODWORD(v315) = v193;
    v322 = sub_308C58();
    if (v194)
    {
      v322 = sub_308C28();
      LODWORD(v321) = v195;
    }

    else
    {
      LODWORD(v321) = 0;
    }

    v196 = v299;
    sub_303CC8();
    v314 = sub_308C48();
    sub_308C38();
    sub_124C4(0, &qword_3FBF20);
    v320 = sub_30C8B8();
    _s9ViewModelCMa(0);
    v197 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v197 + 56) = 0;
    *(v197 + 64) = 0;
    *(v197 + 72) = 1;
    *(v197 + 80) = 0;
    *(v197 + 88) = 1;
    *(v197 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_transcriptObserver) = 0;
    *(v197 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeLinksObserver) = 0;
    v198 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_networkObserver;
    sub_308828();
    *(v197 + v198) = sub_308818();
    *(v197 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_isNetworkReachable) = 1;
    *(v197 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_subscriptions) = &_swiftEmptySetSingleton;
    v199 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel__state;
    *&v327 = 0;
    BYTE8(v327) = 2;
    v200 = v282;
    sub_304DF8();
    (*(v284 + 32))(v197 + v199, v200, v285);
    v201 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_transcriptModel;
    v202 = sub_3036A8();
    (*(*(v202 - 8) + 56))(v197 + v201, 1, 1, v202);
    *(v197 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeLinks) = 0;
    *(v197 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_chapters) = 0;
    v203 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeOffer;
    v204 = sub_307CF8();
    (*(*(v204 - 8) + 56))(v197 + v203, 1, 1, v204);
    v205 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel__margin;
    v206 = *&UIEdgeInsetsZero.bottom;
    v327 = *&UIEdgeInsetsZero.top;
    v328 = v206;
    type metadata accessor for UIEdgeInsets(0);
    v207 = v291;
    sub_304DF8();
    (*(v292 + 32))(v197 + v205, v207, v323);
    v208 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel__episodeLockup;
    *&v327 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408218);
    v209 = v293;
    sub_304DF8();
    v210 = v294;
    v211 = v295;
    (*(v294 + 32))(v197 + v208, v209, v295);
    v212 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeData;
    v213 = _s9ViewModelC11EpisodeDataOMa(0);
    (*(*(v213 - 8) + 56))(v197 + v212, 1, 1, v213);
    v214 = v324;
    *(v197 + 24) = v182;
    *(v197 + 32) = v214;
    v215 = v318;
    *(v197 + 40) = v319;
    *(v197 + 48) = v215;
    v216 = v316;
    *(v197 + 56) = v317;
    *(v197 + 64) = v216;
    *(v197 + 72) = v315 & 1;
    sub_EB00(v196, v197 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_transcriptSource, &qword_408E60);
    swift_beginAccess();
    v217 = *(v210 + 8);

    v218 = v314;

    v217(v197 + v208, v211);
    v326[0] = v218;
    sub_304DF8();
    swift_endAccess();
    swift_beginAccess();
    v219 = v197 + v203;
    v220 = v302;
    sub_1D2800(v302, v219, &qword_408028);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408EE0);
    sub_30B8E8();
    sub_12658(&v327, v197 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_transcriptProvider);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640);
    sub_30B8E8();
    sub_12658(&v327, v197 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeController);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405F78);
    sub_30B8E8();
    *(v197 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_libraryDataProvider) = v327;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E20);
    sub_30B8E8();
    sub_12658(&v327, v197 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_storeDataProvider);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401068);
    sub_30B998();
    *(v197 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_menuBarProvider) = v327;
    *(v197 + 80) = v322;
    *(v197 + 88) = v321 & 1;
    v221 = sub_304008();

    v222 = sub_303FF8();
    v223 = (v197 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_alignmentCoordinator);
    *(v197 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_alignmentCoordinator + 24) = v221;
    v223[4] = sub_218910(&unk_408EF0, &type metadata accessor for ScoutingAlignmentCoordinator);
    *v223 = v222;
    v224 = v320;
    *(v197 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_workQueue) = v320;
    v225 = v224;
    sub_1CB3B8();
    sub_1CB704();
    sub_1CBF10();
    v226 = sub_30C468();
    v227 = v305;
    (*(*(v226 - 8) + 56))(v305, 1, 1, v226);
    v228 = swift_allocObject();
    swift_weakInit();
    sub_30C438();

    v229 = sub_30C428();
    v230 = swift_allocObject();
    v230[2] = v229;
    v230[3] = &protocol witness table for MainActor;
    v230[4] = v228;

    sub_270768(0, 0, v227, &unk_32C4F0, v230);

    sub_1C8E50();

    sub_EB68(v220, &qword_408028);
    sub_EB68(v299, &qword_408E60);
    v231 = objc_allocWithZone(type metadata accessor for EpisodeDetailTranscriptViewController());
    v80 = sub_1BD200(v182, v197);

    (*(v303 + 8))(v301, v304);
    return v80;
  }

  if (v68 == enum case for FlowDestination.manageCategories(_:))
  {
    (*(v56 + 96))(v58, v55);
    v183 = *v58;
    v184 = v283;
    sub_30BD18();
    sub_30B928();
    (*(v286 + 8))(v184, v287);
    v185 = v288;
    sub_30BC48();
    sub_30B938();

    (*(v289 + 8))(v185, v290);
    sub_303958();
    *&v327 = sub_303948();

    sub_30B908();

    sub_30B948();

    sub_308EE8();
    v186 = sub_30B8F8();

    v187 = swift_allocObject();
    *(v187 + 16) = 0;

    v188 = v298;
    sub_27C400(v186, v183, sub_2186F0, v187, v298);
    v80 = sub_1B9A24(v186, 0);

    sub_218C60(v188, type metadata accessor for ManageCategoriesView);
    swift_beginAccess();
    v189 = *(v187 + 16);
    *(v187 + 16) = v80;
    v190 = v80;

    return v80;
  }

  if (v68 == enum case for FlowDestination.inAppProductPage(_:))
  {
LABEL_66:
    (*(v56 + 8))(v58, v55);
    return 0;
  }

  if (v68 == enum case for FlowDestination.category(_:))
  {
    (*(v56 + 96))(v58, v55);
    v232 = v277;
    v233 = v276;
    v234 = v278;
    (*(v277 + 32))(v276, v58, v278);
    v235 = v322[25];
    (*(v232 + 16))(v52, v233, v234);

    sub_309CC8();
    v236 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F20));
    v80 = sub_1E1A38(v235, v50);
    (*(v232 + 8))(v233, v234);
    return v80;
  }

  if (v68 == enum case for FlowDestination.debugSettings(_:))
  {
    KeyPath = swift_getKeyPath();
    v238 = v280;
    *v280 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC6A8);
    swift_storeEnumTagMultiPayload();
    v239 = swift_getKeyPath();
    v240 = v322[25];
    v241 = (v238 + *(v279 + 36));
    *v241 = v239;
    v241[1] = v240;
    v242 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408F00));

    return sub_305C58();
  }

  if (v68 == enum case for FlowDestination.listen(_:))
  {
    v243 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408EC8));

    return sub_1DE168(v244, sub_219B68, sub_219B64, sub_219B6C, &type metadata accessor for HomePagePresenter, &qword_4090A0, &type metadata accessor for HomePagePresenter, &protocol conformance descriptor for HomePagePresenter, &protocol witness table for HomePagePresenter, &unk_3BF8E0, sub_21904C, sub_219068, sub_219098, sub_2190B4, sub_2190E4, sub_219114, sub_21911C, sub_219138, sub_219154);
  }

  if (v68 == enum case for FlowDestination.library(_:))
  {
    v246 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408ED0));

    return sub_1DE168(v247, sub_219B68, sub_219B64, sub_219B6C, &type metadata accessor for LibraryPresenter, &qword_409090, &type metadata accessor for LibraryPresenter, &protocol conformance descriptor for LibraryPresenter, &protocol witness table for LibraryPresenter, &unk_3BF7A0, sub_21997C, sub_218FB4, sub_219B70, sub_218FE4, sub_219014, sub_219044, sub_219B74, sub_219B78, sub_219B7C);
  }

  v80 = 0;
  if (v68 != enum case for FlowDestination.libraryTab(_:) && v68 != enum case for FlowDestination.sharedWithYou(_:))
  {
    if (v68 == enum case for FlowDestination.highlights(_:))
    {
      v248 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408ED8));

      return sub_1DE168(v249, sub_219B68, sub_219B64, sub_219B6C, &type metadata accessor for HighlightsPresenter, &qword_409080, &type metadata accessor for HighlightsPresenter, &protocol conformance descriptor for HighlightsPresenter, &protocol witness table for HighlightsPresenter, &unk_3BF660, sub_21997C, sub_218F1C, sub_219B70, sub_218F4C, sub_218F7C, sub_218FAC, sub_219B74, sub_219B78, sub_219B7C);
    }

    else
    {
      if (v68 == enum case for FlowDestination.channels(_:))
      {
        v250 = v322[25];

        sub_303098();
        v251 = v281;
        sub_3099C8();
        v252 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408F10));
        return sub_1DFD68(v250, v251, &type metadata accessor for ChannelListPresenter.Configuration, sub_219B68, sub_219B64, sub_219B6C, &type metadata accessor for ChannelListPresenter, &qword_409060, &type metadata accessor for ChannelListPresenter, &protocol conformance descriptor for ChannelListPresenter, &protocol witness table for ChannelListPresenter, &unk_3BF3E0, sub_21997C, sub_218DEC, sub_219B70, sub_218E1C, sub_218E4C, sub_218E7C, sub_219B74, sub_219B78, sub_219B7C);
      }

      if (v68 != enum case for FlowDestination.categories(_:))
      {
        if (v68 == enum case for FlowDestination.prototypeUpNextSettings(_:))
        {
          v255 = v322[11];
          v256 = v322[12];
          __swift_project_boxed_opaque_existential_1Tm(v322 + 8, v255);
          return (*(v256 + 16))(v255, v256);
        }

        if (v68 == enum case for FlowDestination.downloadingEpisodes(_:))
        {
          v257 = v322;
          swift_getObjectType();
          sub_30AC28();
          v258 = type metadata accessor for DownloadsCVCLibraryActionControllerBridge();
          v259 = objc_allocWithZone(v258);
          sub_12670(&v327, v259 + OBJC_IVAR____TtC23ShelfKitCollectionViews41DownloadsCVCLibraryActionControllerBridge_libraryActionController);
          v325.receiver = v259;
          v325.super_class = v258;
          v260 = objc_msgSendSuper2(&v325, "init");
          __swift_destroy_boxed_opaque_existential_1(&v327);
          v261 = v257[11];
          v262 = v257[12];
          __swift_project_boxed_opaque_existential_1Tm(v257 + 8, v261);
          v80 = (*(v262 + 40))(v260, v261, v262);

          return v80;
        }

        if (v68 == enum case for FlowDestination.recentlyAdded(_:) || v68 == enum case for FlowDestination.recentlyUpdated(_:) || v68 == enum case for FlowDestination.shows(_:))
        {
          v263 = v322[25];

          sub_303098();
          v264 = v300;
          sub_308F98();
          v265 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408E98));
          return sub_1DFD68(v263, v264, &type metadata accessor for ShowListPresenter.Configuration, sub_219B68, sub_219B64, sub_219B6C, &type metadata accessor for ShowListPresenter, &qword_409130, &type metadata accessor for ShowListPresenter, &protocol conformance descriptor for ShowListPresenter, &protocol witness table for ShowListPresenter, &unk_3C00D8, sub_21997C, sub_2194D8, sub_219B70, sub_219508, sub_219538, sub_219568, sub_219B74, sub_219B78, sub_219B7C);
        }

        if (v68 == enum case for FlowDestination.stationTab(_:))
        {
          return 0;
        }

        if (v68 == enum case for FlowDestination.migration(_:))
        {
          return [objc_allocWithZone(type metadata accessor for MigrationViewController()) init];
        }

        if (v68 == enum case for FlowDestination.account(_:))
        {
          v266 = v322[25];
          sub_30A808();
          swift_allocObject();

          v326[0] = sub_30A7E8();
          sub_306A08();
          v80 = sub_1B9748(v266, 0, v327, *(&v327 + 1));

          goto LABEL_13;
        }

        goto LABEL_66;
      }

      v253 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408F08));

      return sub_1DE168(v254, sub_219B68, sub_219B64, sub_219B6C, &type metadata accessor for CategoryListPresenter, &qword_409070, &type metadata accessor for CategoryListPresenter, &protocol conformance descriptor for CategoryListPresenter, &protocol witness table for CategoryListPresenter, &unk_3BF520, sub_21997C, sub_218E84, sub_219B70, sub_218EB4, sub_218EE4, sub_218F14, sub_219B74, sub_219B78, sub_219B7C);
    }
  }

  return v80;
}

void sub_213BF8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (v4)
  {
    aBlock[4] = sub_219270;
    aBlock[5] = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_914CC;
    aBlock[3] = &block_descriptor_403;
    v5 = _Block_copy(aBlock);
    v6 = v4;

    [v6 dismissViewControllerAnimated:1 completion:v5];
    _Block_release(v5);
  }
}

void sub_213CEC(uint64_t a1)
{
  v2 = sub_302558();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v73 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_30AA18();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v79 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_30A4E8();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v84 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_308778();
  v74 = *(v7 - 8);
  __chkstk_darwin(v7);
  v83 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v65 - v10;
  v12 = sub_30BA28();
  __chkstk_darwin(v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v13 - 8);
  v15 = &v65 - v14;
  v86 = sub_30B898();
  v82 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v80 = &v65 - v18;
  __chkstk_darwin(v19);
  v85 = &v65 - v20;
  v21 = [objc_opt_self() sharedApplication];
  v22 = [v21 delegate];

  if (v22)
  {
    if ([v22 respondsToSelector:"window"])
    {
      v23 = [v22 window];
      swift_unknownObjectRelease();
      if (v23)
      {
        v24 = [v23 rootViewController];

        if (v24)
        {
          v67 = v7;
          v70 = v3;
          v71 = v2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC160);
          v72 = v24;
          sub_30B7E8();
          v25 = swift_allocObject();
          v65 = xmmword_315430;
          *(v25 + 16) = xmmword_315430;
          v26 = sub_303538();
          v66 = a1;
          v69 = v26;
          sub_303858();
          sub_303828();
          v27 = sub_301CB8();
          (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
          sub_302718();
          sub_30B788();
          v96 = v90;
          sub_EB68(&v96, &unk_408130);
          v95 = v91;
          sub_EB68(&v95, &qword_3FC878);
          v94 = v92;
          sub_EB68(&v94, &qword_408140);
          sub_1EBD0(v93);

          sub_EB68(v15, &qword_3FB8E0);
          sub_30BA18();
          v28 = v85;
          sub_30B878();
          sub_3093A8();

          sub_30B9B8();
          v29 = sub_302268();
          (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
          v88 = sub_124C4(0, &qword_3FBE30);
          v87[0] = v72;
          v30 = v72;
          v69 = sub_309388();

          sub_EB68(v11, &unk_4090C0);
          sub_EB68(v87, &unk_3FBB70);
          v31 = v30;
          v72 = sub_30C678();
          v33 = v32;
          v68 = v31;

          v34 = [objc_opt_self() currentTraitCollection];
          sub_30CA08();

          v35 = sub_308328();
          v37 = v36;
          if (v35 == sub_308328() && v37 == v38)
          {

            v39 = v86;
            v40 = v82;
            v41 = v80;
            v42 = v67;
          }

          else
          {
            v43 = sub_30D728();

            v39 = v86;
            v40 = v82;
            v41 = v80;
            v42 = v67;
            if ((v43 & 1) == 0)
            {
              (*(v82 + 16))(v81, v28, v86);
              sub_30AFB8();
              v57 = sub_308A48();
              swift_allocObject();
              v58 = sub_308A18();
              v59 = v71;
              v60 = v70;
              if (v72)
              {
                v61 = v58;
                swift_getObjectType();
                v88 = v57;
                v89 = sub_218910(&qword_4090D8, &type metadata accessor for TabChangeAction);
                v87[0] = v61;
                v62 = v73;
                (*(v60 + 104))(v73, enum case for ActionMetricsBehavior.fromAction(_:), v59);
                swift_unknownObjectRetain();

                sub_307C38();

                swift_unknownObjectRelease();
                (*(v60 + 8))(v62, v59);
                __swift_destroy_boxed_opaque_existential_1(v87);
              }

              else
              {
              }

LABEL_23:
              sub_308A78();
              v63 = objc_opt_self();

              v64 = [v63 standardUserDefaults];
              sub_308A68();
              sub_308A58();

              swift_unknownObjectRelease();
              (*(v40 + 8))(v28, v86);
              return;
            }
          }

          v82 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4090D0);
          v44 = swift_allocObject();
          *(v44 + 16) = v65;
          (*(v74 + 104))(v83, enum case for FlowDestination.channels(_:), v42);
          (*(v40 + 16))(v41, v28, v39);
          (*(v75 + 104))(v84, enum case for FlowPresentationContext.infer(_:), v76);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_315420;
          v46 = sub_30AF68();
          *(inited + 32) = v46;
          v47 = sub_30AF98();
          *(inited + 33) = v47;
          sub_30AFB8();
          sub_30AFB8();
          v48 = sub_30AFB8();
          v49 = v71;
          v50 = v70;
          if (v48 != v46)
          {
            sub_30AFB8();
          }

          sub_30AFB8();
          if (sub_30AFB8() != v47)
          {
            sub_30AFB8();
          }

          (*(v77 + 104))(v79, enum case for FlowDestinationPageHeader.standard(_:), v78);
          v51 = sub_3076F8();
          swift_allocObject();
          v52 = sub_307708();
          *(v44 + 56) = v51;
          *(v44 + 64) = sub_218910(&unk_3FB8B0, &type metadata accessor for FlowAction);
          *(v44 + 32) = v52;
          sub_30AFB8();
          sub_30B868();
          v53 = sub_308A48();
          swift_allocObject();
          v54 = sub_308A18();
          if (v72)
          {
            v55 = v54;
            swift_getObjectType();
            v88 = v53;
            v89 = sub_218910(&qword_4090D8, &type metadata accessor for TabChangeAction);
            v87[0] = v55;
            v56 = v73;
            (*(v50 + 104))(v73, enum case for ActionMetricsBehavior.fromAction(_:), v49);
            swift_unknownObjectRetain();

            sub_307C38();

            swift_unknownObjectRelease();
            (*(v50 + 8))(v56, v49);
            __swift_destroy_boxed_opaque_existential_1(v87);
          }

          else
          {
          }

          v28 = v85;
          goto LABEL_23;
        }
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

id sub_214BF8(uint64_t a1, uint64_t a2)
{
  v11[1] = a1;
  v12 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v2 - 8);
  v4 = v11 - v3;
  v11[0] = sub_30B7E8();
  v5 = *(v11[0] - 8);
  __chkstk_darwin(v11[0]);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_303588();
  sub_303858();
  sub_303808();
  v8 = sub_301CB8();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_302718();
  sub_30B788();
  v19 = v13;
  sub_EB68(&v19, &unk_408130);
  v18 = v14;
  sub_EB68(&v18, &qword_3FC878);
  v17 = v15;
  sub_EB68(&v17, &qword_408140);
  sub_1EBD0(v16);

  sub_EB68(v4, &qword_3FB8E0);
  sub_308EC8();
  (*(v5 + 8))(v7, v11[0]);
  v9 = v12;
  swift_beginAccess();
  result = *(v9 + 16);
  if (result)
  {
    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

void sub_214EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a3;
    aBlock[4] = sub_219268;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_914CC;
    aBlock[3] = &block_descriptor_400;
    v8 = _Block_copy(aBlock);
    v9 = v6;

    [v9 dismissViewControllerAnimated:1 completion:v8];
    _Block_release(v8);
  }
}

void sub_214FC4(uint64_t a1, uint64_t a2)
{
  v28[1] = a2;
  v2 = sub_3041E8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_302558();
  v28[0] = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090C0);
  __chkstk_darwin(v9 - 8);
  v11 = v28 - v10;
  v12 = sub_30B898();
  __chkstk_darwin(v12 - 8);
  v13 = [objc_opt_self() sharedApplication];
  v14 = [v13 delegate];

  if (v14)
  {
    if ([v14 respondsToSelector:"window"])
    {
      v15 = [v14 window];
      swift_unknownObjectRelease();
      if (v15)
      {
        v16 = [v15 rootViewController];

        if (v16)
        {
          sub_307D28();
          if (v30)
          {
            sub_12658(&v29, v32);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4090D0);
            v17 = swift_allocObject();
            *(v17 + 16) = xmmword_315430;
            sub_12670(v32, v17 + 32);
            sub_30AFB8();
            sub_30B868();
            v18 = sub_308A48();
            swift_allocObject();
            v19 = sub_308A18();
            sub_3093A8();

            sub_30B9B8();
            v20 = sub_302268();
            (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
            v30 = sub_124C4(0, &qword_3FBE30);
            *&v29 = v16;
            v21 = v16;
            sub_309388();

            sub_EB68(v11, &unk_4090C0);
            sub_EB68(&v29, &unk_3FBB70);
            v22 = v21;
            v23 = sub_30C678();

            if (v23)
            {
              swift_getObjectType();
              v30 = v18;
              v31 = sub_218910(&qword_4090D8, &type metadata accessor for TabChangeAction);
              *&v29 = v19;
              v24 = v28[0];
              (*(v28[0] + 104))(v8, enum case for ActionMetricsBehavior.fromAction(_:), v6);
              swift_unknownObjectRetain();

              sub_307C38();

              swift_unknownObjectRelease_n();
              (*(v24 + 8))(v8, v6);
              __swift_destroy_boxed_opaque_existential_1(v32);
              __swift_destroy_boxed_opaque_existential_1(&v29);
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1(v32);
            }

            return;
          }

          sub_EB68(&v29, &unk_3FBB40);
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_3041C8();
  v25 = sub_3041D8();
  v26 = sub_30C798();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v26, "Cannot go to channel page because either the rootVC was nil or the channel lockup did not have a click action.", v27, 2u);
  }

  (*(v3 + 8))(v5, v2);
}

id sub_2155B4(uint64_t a1)
{
  swift_beginAccess();
  result = *(a1 + 16);
  if (result)
  {
    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

uint64_t sub_21560C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(*v4 + 184))();
  if (result)
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    (*(v11 + 32))(a1, a2, a3, a4, ObjectType, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2156D0(uint64_t a1, uint64_t a2, char a3, char a4, char a5, uint64_t a6)
{
  result = (*(*v6 + 184))();
  if (result)
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    (*(v15 + 40))(a1, a2, a3 & 1, a4 & 1, a5 & 1, a6, ObjectType, v15);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2157B0(uint64_t a1, uint64_t a2)
{
  result = (*(*v2 + 184))();
  if (result)
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    (*(v7 + 48))(a1, a2, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_215858(uint64_t a1)
{
  result = (*(*v1 + 184))();
  if (result)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 56))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2158F8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a2;
  v3 = sub_301CB8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD60);
  __chkstk_darwin(v6 - 8);
  v8 = (&v42 - v7);
  v9 = sub_308778();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v13 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v42 - v18;
  v45 = *(v10 + 16);
  v45(v12, a1, v9, v17);
  v20 = (*(v10 + 88))(v12, v9);
  if (v20 == enum case for FlowDestination.page(_:) || v20 == enum case for FlowDestination.topLevelPage(_:))
  {
    (*(v10 + 96))(v12, v9);

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E10);
    sub_218514(&v12[*(v22 + 48)], v19);
    sub_218514(v19, v15);
    if ((*(v4 + 48))(v15, 1, v3) == 1)
    {
      sub_EB68(v15, &qword_3FB8E0);
      v23 = v46;
      v24 = a1;
LABEL_28:
      (v45)(v23, v24, v9);
      return;
    }

    v43 = a1;
    v34 = v4;
    v35 = v44;
    (*(v4 + 32))(v44, v15, v3);
    swift_getObjectType();
    v36 = sub_30AC78();
    if (v36)
    {
      v37 = v36;
      (*(v34 + 8))(v35, v3);
      *v46 = v37;
    }

    else
    {
      v39 = sub_30AC48();
      if (!v39)
      {
        (*(v4 + 8))(v35, v3);
        v23 = v46;
LABEL_27:
        v24 = v43;
        goto LABEL_28;
      }

      v40 = v39;
      v41 = sub_307F48();
      (*(v34 + 8))(v35, v3);
      if (v41)
      {
        (v45)(v46, v43, v9);

        return;
      }

      *v46 = v40;
    }

    (*(v10 + 104))();
    return;
  }

  if (v20 == enum case for FlowDestination.episodeList(_:))
  {
    v43 = a1;
    v25 = v46;
    (*(v10 + 96))(v12, v9);
    v26 = *v12;
    v27 = *(v12 + 3);
    v28 = *(v12 + 4);
    v29 = *(v12 + 5);
    v30 = *(v12 + 6);
    v31 = *(v12 + 7);
    if (v12[64] == 9)
    {
      v32 = *(v12 + 1);
      v33 = *(v12 + 2);

      sub_21637C(v43, v25);
      sub_218584(v26, v32, v33, v27, v28, v29, v30, v31, 9u);
      sub_218584(v26, v32, v33, v27, v28, v29, v30, v31, 9u);
      return;
    }

    sub_218584(v26, *(v12 + 1), *(v12 + 2), v27, v28, v29, v30, v31, v12[64]);
    v23 = v25;
    goto LABEL_27;
  }

  if (v20 == enum case for FlowDestination.podcast(_:))
  {
    (*(v10 + 96))(v12, v9);
    sub_216584(*v12, v8);

    v38 = *(v10 + 48);
    if (v38(v8, 1, v9) == 1)
    {
      (v45)(v46, a1, v9);
      if (v38(v8, 1, v9) != 1)
      {
        sub_EB68(v8, &qword_3FBD60);
      }
    }

    else
    {
      (*(v10 + 32))(v46, v8, v9);
    }
  }

  else if (v20 == enum case for FlowDestination.podcastUUID(_:))
  {
    (*(v10 + 96))(v12, v9);
    sub_21637C(a1, v46);
  }

  else
  {
    (v45)(v46, a1, v9);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_215FC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_308778();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_303B88();
  v7 = sub_303B68();
  v8 = *(v20 + 16);
  if ((v7 & 1) == 0)
  {
    v8(v6, a1, v4);
    v11 = (*(v20 + 88))(v6, v4);
    if (v11 == enum case for FlowDestination.page(_:))
    {
      (*(v20 + 96))(v6, v4);
      if (*v6)
      {

        v12 = sub_30AFD8();

        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E10);
        sub_EB68(v6 + *(v13 + 48), &qword_3FB8E0);
        if ((v12 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_15:
        v17 = sub_303B78();
        sub_303B58();

        return (*(v20 + 56))(a2, 1, 1, v4);
      }

      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E10);
      sub_EB68(v6 + *(v18 + 48), &qword_3FB8E0);
    }

    else
    {
      if (v11 == enum case for FlowDestination.episodeDetails(_:))
      {
        (*(v20 + 96))(v6, v4);

        swift_getObjectType();
        v14 = sub_30AC18();

        if (!v14)
        {
          goto LABEL_18;
        }

        v15 = [v14 isExplicit];

        if ((v15 & 1) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      if (v11 == enum case for FlowDestination.podcast(_:))
      {
        (*(v20 + 96))(v6, v4);

        v16 = sub_30B288();

        if (v16)
        {
          goto LABEL_15;
        }
      }

      else
      {
        (*(v20 + 8))(v6, v4);
      }
    }

LABEL_18:
    v8(a2, a1, v4);
    return (*(v20 + 56))(a2, 0, 1, v4);
  }

  v8(a2, a1, v4);
  v9 = *(v20 + 56);

  return v9(a2, 0, 1, v4);
}

uint64_t sub_21637C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD60);
  __chkstk_darwin(v4 - 8);
  v6 = (&v14 - v5);
  swift_getObjectType();
  v7 = sub_30AC88();
  if (v7)
  {
    sub_216584(v7, v6);

    v8 = sub_308778();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    if (v10(v6, 1, v8) == 1)
    {
      (*(v9 + 16))(a2, a1, v8);
      result = v10(v6, 1, v8);
      if (result != 1)
      {
        return sub_EB68(v6, &qword_3FBD60);
      }
    }

    else
    {
      return (*(v9 + 32))(a2, v6, v8);
    }
  }

  else
  {
    v12 = sub_308778();
    v13 = *(*(v12 - 8) + 16);

    return v13(a2, a1, v12);
  }

  return result;
}

uint64_t sub_216584@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_301CB8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30B2A8();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_EB68(v6, &qword_3FB8E0);
    v11 = sub_308778();
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    swift_getObjectType();
    if (sub_30AC78())
    {

      (*(v8 + 8))(v10, v7);
      *a2 = a1;
      v13 = enum case for FlowDestination.podcast(_:);
      v14 = sub_308778();
      v15 = *(v14 - 8);
      (*(v15 + 104))(a2, v13, v14);
      (*(v15 + 56))(a2, 0, 1, v14);
    }

    else
    {
      sub_308768();
      (*(v8 + 8))(v10, v7);
      v16 = sub_308778();
      return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
    }
  }
}

uint64_t BaseFlowController.deinit()
{
  swift_unknownObjectUnownedDestroy();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  __swift_destroy_boxed_opaque_existential_1(v0 + 160);

  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews18BaseFlowController_metricsPipeline;
  v2 = sub_30B9D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t BaseFlowController.__deallocating_deinit()
{
  BaseFlowController.deinit();

  return swift_deallocClassInstance();
}

void sub_2169EC(char a1)
{
  if (a1)
  {
    v3 = xmmword_32C2D0;
    v5 = 0;
    v6 = 0;
    v4 = 0;
    v1 = objc_allocWithZone(type metadata accessor for HUDViewController());
    v2 = HUDViewController.init(type:)(&v3);
    sub_25F144();
  }
}

id sub_216B00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComposeReviewDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_216B44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_BA1D4();
  *a1 = result;
  return result;
}

uint64_t sub_216C10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(double))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v13 - v10;
  v13[1] = a2;
  a5(v9);
  sub_30BC08();
  return (*(v8 + 8))(v11, v7);
}

void sub_216D34(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 20);
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E47F8(v1, v2, (v4 | (v3 << 32)) & 0xFFFFFFFFFFLL, &type metadata accessor for ModernStationDetailPresenter, &qword_409140, &type metadata accessor for ModernStationDetailPresenter, &protocol conformance descriptor for ModernStationDetailPresenter, sub_1ED238);
  }
}

void sub_216E10(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + qword_400ED0) = v4;
    v6 = Strong;

    a3(v7);
  }
}

void sub_216E98(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = v3;
      sub_1E4164(v8, v5, a3);
    }
  }
}

void sub_216F1C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 20);
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E47F8(v1, v2, (v4 | (v3 << 32)) & 0xFFFFFFFFFFLL, &type metadata accessor for SeeAllEpisodesPresenter, &qword_409120, &type metadata accessor for SeeAllEpisodesPresenter, &protocol conformance descriptor for SeeAllEpisodesPresenter, sub_1EDEA0);
  }
}

void sub_216FF8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 20);
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E47F8(v1, v2, (v4 | (v3 << 32)) & 0xFFFFFFFFFFLL, &type metadata accessor for SearchPresenter, &qword_409110, &type metadata accessor for SearchPresenter, &protocol conformance descriptor for SearchPresenter, sub_1EEB08);
  }
}

void sub_2170D4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 20);
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E47F8(v1, v2, (v4 | (v3 << 32)) & 0xFFFFFFFFFFLL, &type metadata accessor for ShowListPresenter, &qword_409130, &type metadata accessor for ShowListPresenter, &protocol conformance descriptor for ShowListPresenter, sub_1EF770);
  }
}

void sub_2171B0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 20);
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E47F8(v1, v2, (v4 | (v3 << 32)) & 0xFFFFFFFFFFLL, &type metadata accessor for LibraryShowPresenter, &qword_4090F0, &type metadata accessor for LibraryShowPresenter, &protocol conformance descriptor for LibraryShowPresenter, sub_1F03D8);
  }
}

void sub_21728C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 20);
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E47F8(v1, v2, (v4 | (v3 << 32)) & 0xFFFFFFFFFFLL, &type metadata accessor for StorePagePresenter, &qword_409100, &type metadata accessor for StorePagePresenter, &protocol conformance descriptor for StorePagePresenter, sub_1F1040);
  }
}

void sub_217368(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 20);
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E47F8(v1, v2, (v4 | (v3 << 32)) & 0xFFFFFFFFFFLL, &type metadata accessor for LongDescriptionPresenter, &qword_4090B0, &type metadata accessor for LongDescriptionPresenter, &protocol conformance descriptor for LongDescriptionPresenter, sub_1F1CA8);
  }
}

void sub_217444(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 20);
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E47F8(v1, v2, (v4 | (v3 << 32)) & 0xFFFFFFFFFFLL, &type metadata accessor for HomePagePresenter, &qword_4090A0, &type metadata accessor for HomePagePresenter, &protocol conformance descriptor for HomePagePresenter, sub_1F2910);
  }
}

void sub_217520(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 20);
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E47F8(v1, v2, (v4 | (v3 << 32)) & 0xFFFFFFFFFFLL, &type metadata accessor for LibraryPresenter, &qword_409090, &type metadata accessor for LibraryPresenter, &protocol conformance descriptor for LibraryPresenter, sub_1F3578);
  }
}

void sub_2175FC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 20);
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E47F8(v1, v2, (v4 | (v3 << 32)) & 0xFFFFFFFFFFLL, &type metadata accessor for HighlightsPresenter, &qword_409080, &type metadata accessor for HighlightsPresenter, &protocol conformance descriptor for HighlightsPresenter, sub_1F41E0);
  }
}

void sub_2176D8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 20);
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E47F8(v1, v2, (v4 | (v3 << 32)) & 0xFFFFFFFFFFLL, &type metadata accessor for ModernEpisodesPresenter, &qword_409150, &type metadata accessor for ModernEpisodesPresenter, &protocol conformance descriptor for ModernEpisodesPresenter, sub_1F4E48);
  }
}

void sub_2177B4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 20);
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E47F8(v1, v2, (v4 | (v3 << 32)) & 0xFFFFFFFFFFLL, &type metadata accessor for CategoryListPresenter, &qword_409070, &type metadata accessor for CategoryListPresenter, &protocol conformance descriptor for CategoryListPresenter, sub_1F5AB0);
  }
}

void sub_217890(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 20);
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E47F8(v1, v2, (v4 | (v3 << 32)) & 0xFFFFFFFFFFLL, &type metadata accessor for ChannelListPresenter, &qword_409060, &type metadata accessor for ChannelListPresenter, &protocol conformance descriptor for ChannelListPresenter, sub_1F6718);
  }
}

void sub_21796C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 20);
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E47F8(v1, v2, (v4 | (v3 << 32)) & 0xFFFFFFFFFFLL, &type metadata accessor for ChannelPresenter, &qword_409050, &type metadata accessor for ChannelPresenter, &protocol conformance descriptor for ChannelPresenter, sub_1F7380);
  }
}

void sub_217A48(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 20);
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E47F8(v1, v2, (v4 | (v3 << 32)) & 0xFFFFFFFFFFLL, &type metadata accessor for CategoryPagePresenter, &unk_408F70, &type metadata accessor for CategoryPagePresenter, &protocol conformance descriptor for CategoryPagePresenter, sub_1F7FE8);
  }
}

objc_class *sub_217B24(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD60);
  __chkstk_darwin(v3 - 8);
  v5 = (v26 - v4);
  v6 = sub_308778();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v26 - v11;
  sub_2158F8(a1, (v26 - v11));
  sub_215FC4(v12, v5);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v9, v5, v6);
    v14 = sub_20F3F0(v9, v1);
    v13 = v14;
    if (v14)
    {
      v26[1] = v14;
      sub_124C4(0, &qword_3FBE30);
      v15 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A250);
      if (swift_dynamicCast())
      {
        if (*(&v28 + 1))
        {
          sub_12658(&v27, v30);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408000);
          v26[0] = *(v7 + 72);
          v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_315420;
          v18 = v17 + v16;
          v19 = *(v7 + 16);
          v19(v18, v9, v6);
          v19(v18 + v26[0], a1, v6);
          v20 = v31;
          v21 = v32;
          __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
          (*(v21 + 16))(v17, v20, v21);
          v22 = *(v7 + 8);
          v22(v9, v6);
          v22(v12, v6);
          __swift_destroy_boxed_opaque_existential_1(v30);
          return v13;
        }
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
      }

      v24 = *(v7 + 8);
      v24(v9, v6);
      v24(v12, v6);
    }

    else
    {
      v23 = *(v7 + 8);
      v23(v9, v6);
      v23(v12, v6);
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
    }

    sub_EB68(&v27, &qword_408E48);
    return v13;
  }

  (*(v7 + 8))(v12, v6);
  sub_EB68(v5, &qword_3FBD60);
  return 0;
}

uint64_t type metadata accessor for BaseFlowController()
{
  result = qword_408C48;
  if (!qword_408C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217F44()
{
  result = sub_30B9D8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2180E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_30B9D8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectUnownedInit();
  v9 = type metadata accessor for ComposeReviewDelegate();
  v10 = objc_allocWithZone(v9);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v13.receiver = v10;
  v13.super_class = v9;
  *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews18BaseFlowController_composeReviewDelegate) = objc_msgSendSuper2(&v13, "init");
  *(v3 + 200) = a2;
  sub_30B9A8();

  sub_30BE78();
  (*(v6 + 32))(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews18BaseFlowController_metricsPipeline, v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E20);
  sub_30BE78();
  sub_12658(v12, v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405F78);
  sub_30BE78();
  *(v3 + 104) = v12[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E30);
  sub_30B8E8();
  sub_12658(v12, v3 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640);
  sub_30BE78();
  sub_12658(v12, v3 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408E40);
  sub_30BE78();
  sub_12658(v12, v3 + 64);
  return v3;
}

void sub_218354()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([Strong isViewLoaded])
    {
      v2 = [v1 collectionView];
      if (!v2)
      {
        __break(1u);
        return;
      }

      v3 = v2;
      [v2 reloadData];

      v1 = v3;
    }
  }
}

void sub_2183EC(void *a1, char a2)
{
  if (a1)
  {
    v3 = [a1 presentingViewController];
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = a2 & 1;
      v7[4] = sub_2184F4;
      v7[5] = v5;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_914CC;
      v7[3] = &block_descriptor_46;
      v6 = _Block_copy(v7);

      [v4 dismissViewControllerAnimated:1 completion:v6];
      _Block_release(v6);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_218514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218584(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (a9 <= 3u)
  {
    if (a9 >= 4u)
    {
      return;
    }

    goto LABEL_12;
  }

  if (a9 <= 6u)
  {
    if (a9 != 4)
    {
      if (a9 != 5)
      {
        return;
      }
    }

    goto LABEL_12;
  }

  if (a9 == 7)
  {
LABEL_12:

    return;
  }

  if (a9 != 8)
  {
    if (a9 != 9)
    {
      return;
    }

    goto LABEL_12;
  }

  sub_21869C(a3, a4);
}

uint64_t sub_21869C(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_2186F8(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_2187E0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_218830(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_F4FC;

  return sub_1CE378(a1, v4, v5, v6);
}

uint64_t sub_218910(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218A70()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_218AB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218B18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_218B88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_BA1D4();
  *a1 = result;
  return result;
}

__n128 sub_218BE8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_218BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218C60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218D5C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_218DB4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t objectdestroy_55Tm()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t objectdestroy_78Tm()
{
  v1 = *(sub_307B08() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v7 = sub_30BE68();
      (*(*(v7 - 8) + 8))(v0 + v3, v7);
      v8 = *(sub_307788() + 20);
      v9 = sub_30B858();
      (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

      break;
    case 2:
      v6 = sub_30A078();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      break;
    case 1:

      break;
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t objectdestroy_31Tm_0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 40, 7);
}

char *sub_219B8C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_handler];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_image;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_image] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_isHovering] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_animateHoverChanges] = 0;
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_background;
  *&v4[v12] = [objc_allocWithZone(UIView) init];
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_imageView;
  v14 = [objc_allocWithZone(UIImageView) init];
  v15 = [objc_opt_self() whiteColor];
  [v14 setTintColor:v15];

  *&v4[v13] = v14;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_objectGraph] = 0;
  v16 = *&v4[v11];
  *&v4[v11] = a1;
  v17 = a1;

  if (a4)
  {
    [v17 size];
  }

  else
  {
    v18 = a2;
    v19 = a3;
  }

  v20 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_imageSize];
  *v20 = v18;
  *(v20 + 1) = v19;
  v21 = [objc_opt_self() effectWithStyle:17];
  v22 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v21];

  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_blurView] = v22;
  v23 = *v20;
  v24 = v20[1];
  v38.receiver = v4;
  v38.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v38, "initWithFrame:", 0.0, 0.0, v23, v24);
  [v25 setPreservesSuperviewLayoutMargins:0];
  [v25 setInsetsLayoutMarginsFromSafeArea:0];
  [v25 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v26 = OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_background;
  [*&v25[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_background] setClipsToBounds:1];
  [v25 addSubview:*&v25[v26]];
  v27 = OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_blurView;
  [*&v25[v26] addSubview:*&v25[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_blurView]];
  v28 = OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_imageView;
  [*&v25[v26] addSubview:*&v25[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_imageView]];
  v29 = *&v25[v28];
  [v29 setImage:v17];

  sub_E8C28();
  v30 = *&v25[v27];
  v31 = OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_isHovering;
  [v30 setHidden:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_isHovering]];
  v32 = *&v25[v26];
  if (v25[v31] == 1)
  {
    if (qword_3FAFB8 != -1)
    {
      swift_once();
    }

    v33 = qword_40DB80;
  }

  else
  {
    v33 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.2];
  }

  v34 = v33;
  [v32 setBackgroundColor:v33];

  v35 = [objc_allocWithZone(UITapGestureRecognizer) init];
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_ED14C(sub_21A8EC, v36);

  [v25 addGestureRecognizer:v35];

  return v25;
}

void sub_219F8C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_handler);
    if (v2)
    {
      v3 = *(Strong + OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_handler + 8);

      v2(v1);
      sub_2B8D4(v2, v3);
    }
  }
}

void sub_21A068(char a1)
{
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_isHovering;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_isHovering) = a1;
  [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_blurView) setHidden:a1 & 1];
  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_background);
  if (*(v1 + v2) == 1)
  {
    if (qword_3FAFB8 != -1)
    {
      swift_once();
    }

    v4 = qword_40DB80;
  }

  else
  {
    v4 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.2];
  }

  v5 = v4;
  [v3 setBackgroundColor:?];
}

void sub_21A174()
{
  v42.receiver = v0;
  v42.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v42, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v5 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_imageSize];
  v6 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_imageSize + 8];
  [v0 layoutMargins];
  v8 = v7;
  [v0 layoutMargins];
  v10 = v8 + v9;
  [v0 layoutMargins];
  v12 = v11;
  [v0 layoutMargins];
  v14 = v6 + v12 + v13;
  if (v2 >= v5 + v10)
  {
    v15 = v5 + v10;
  }

  else
  {
    v15 = v2;
  }

  if (v4 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v4;
  }

  [v0 layoutMargins];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = sub_1774A4(&off_3B4B38);
  if (sub_184768(0, v25))
  {
    v26 = v15 - v20 - v24;
  }

  else
  {
    v26 = v15;
  }

  v27 = sub_184768(1uLL, v25);

  if (v27)
  {
    v28 = v16 - v18 - v22;
  }

  else
  {
    v28 = v16;
  }

  [v0 bounds];
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  v33 = CGRectGetWidth(v43) * 0.5;
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v34 = CGRectGetHeight(v44) * 0.5;
  v35 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_background];
  [v35 setBounds:{0.0, 0.0, v26, v28}];
  [v35 setCenter:{v33, v34}];
  v36 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_blurView];
  [v35 bounds];
  [v36 setFrame:?];
  v37 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_imageView];
  [v35 bounds];
  [v37 setFrame:?];
  v38 = [v35 layer];
  [v35 bounds];
  if (v40 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v40;
  }

  [v38 setCornerRadius:v41 * 0.5];
}

id sub_21A3F0()
{
  [v0 layoutMargins];
  [v0 layoutMargins];
  [v0 layoutMargins];
  return [v0 layoutMargins];
}

id sub_21A534(uint64_t a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v8 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_background];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v3 bounds];
  v37.origin.x = v17;
  v37.origin.y = v18;
  v37.size.width = v19;
  v37.size.height = v20;
  v36.origin.x = v10;
  v36.origin.y = v12;
  v36.size.width = v14;
  v36.size.height = v16;
  if (CGRectEqualToRect(v36, v37))
  {
    [v3 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [v8 bounds];
    if (v30 >= v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = v30;
    }

    v32 = [objc_opt_self() bezierPathWithRoundedRect:v22 cornerRadius:{v24, v26, v28, v31 * 0.5}];
    v33 = [v32 containsPoint:{a2, a3}];

    return v33;
  }

  else
  {
    v35.receiver = v3;
    v35.super_class = ObjectType;
    return objc_msgSendSuper2(&v35, "pointInside:withEvent:", a1, a2, a3);
  }
}

uint64_t sub_21A86C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_objectGraph) = a1;
}

uint64_t sub_21A8B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_21A8F4()
{
  v1 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_handler);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_image) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_isHovering) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_animateHoverChanges) = 0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_background;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_imageView;
  v4 = [objc_allocWithZone(UIImageView) init];
  v5 = [objc_opt_self() whiteColor];
  [v4 setTintColor:v5];

  *(v0 + v3) = v4;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_objectGraph) = 0;
  sub_30D648();
  __break(1u);
}

void sub_21AA1C()
{
  v1 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_handler);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_image) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_isHovering) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_animateHoverChanges) = 0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_background;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_imageView;
  v4 = [objc_allocWithZone(UIImageView) init];
  v5 = [objc_opt_self() whiteColor];
  [v4 setTintColor:v5];

  *(v0 + v3) = v4;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_objectGraph) = 0;
  sub_30D648();
  __break(1u);
}

uint64_t sub_21AD70()
{
  sub_30D558(45);
  swift_getObjectType();
  sub_30D8A8();

  v2._object = 0x80000000003403D0;
  v2._countAndFlagsBits = 0xD00000000000002BLL;
  sub_30C238(v2);
  sub_301E08();
}

uint64_t sub_21AE24()
{
  sub_30D558(41);
  swift_getObjectType();
  sub_30D8A8();

  v2._object = 0x80000000003403A0;
  v2._countAndFlagsBits = 0xD000000000000027;
  sub_30C238(v2);
  sub_301E08();
}

id sub_21AED8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
  v4 = v3;

  if (v4)
  {
    v5 = sub_30C098();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *sub_21AF5C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews23BrickCollectionViewCell_objectGraph] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews23BrickCollectionViewCell_isHovering] = 0;
  v11 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_2D5EC(1, 5.0);
  v12 = qword_3FA928;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_428FC8;
  v15 = *&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor];
  *&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor] = qword_428FC8;
  v16 = v14;

  sub_2BE604();
  *&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderWidth] = 0x3FE0000000000000;
  sub_2BE604();

  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews23BrickCollectionViewCell_artworkView] = v13;
  objc_allocWithZone(type metadata accessor for ArtworkContainer());
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews23BrickCollectionViewCell_artworkContainer] = sub_29C44(3u, v13, 0, 0, 0, 0);
  v21.receiver = v5;
  v21.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v18 = [v17 contentView];
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v19 = [v17 contentView];
  [v19 addSubview:*&v17[OBJC_IVAR____TtC23ShelfKitCollectionViews23BrickCollectionViewCell_artworkContainer]];

  sub_E8C68();
  [v17 setIsAccessibilityElement:1];
  [v17 setAccessibilityTraits:UIAccessibilityTraitButton];

  return v17;
}

void sub_21B248()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews23BrickCollectionViewCell_artworkView];
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView;
  v3 = [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView] layer];
  [v3 removeAllAnimations];

  [*&v1[v2] setImage:0];
  v4 = [v1 invalidateIntrinsicContentSize];
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews23BrickCollectionViewCell_isHovering;
  if (v0[OBJC_IVAR____TtC23ShelfKitCollectionViews23BrickCollectionViewCell_isHovering] == 1)
  {
    v6 = sub_26816C(v4);
    if (v6)
    {
      v7 = v6;
      if (v0[v5] == 1)
      {
        v0[v5] = 0;
      }

      ObjectType = swift_getObjectType();
      v9 = swift_conformsToProtocol2();
      if (v9)
      {
        v10 = (*(v9 + 16))(ObjectType, v9);
        sub_2A6FC(0, 0);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

double sub_21B570()
{
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v1 layoutMargins];
  v11 = v10;
  v13 = v12;

  UIEdgeInsetsInsetRect(v3, v5, v7, v9, v11, v13);
  return v14;
}

uint64_t sub_21B674()
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v0 = sub_30AFE8();

  return v0;
}

void sub_21B6F4()
{
  v1 = swift_allocObject();
  swift_weakInit();
  v3[4] = sub_21BAA0;
  v3[5] = v1;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_21AED8;
  v3[3] = &block_descriptor_47;
  v2 = _Block_copy(v3);

  [v0 setAccessibilityLabelBlock:v2];
  _Block_release(v2);
}

void sub_21B7E0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23BrickCollectionViewCell_objectGraph) = a1;

  sub_2AE20(v2);
}

uint64_t sub_21B82C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_21BAC0(&qword_409278, v3, type metadata accessor for BrickCollectionViewCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

void *sub_21B8C8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews23BrickCollectionViewCell_artworkView);
  v2 = v1;
  return v1;
}

uint64_t sub_21BA68()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21BAC0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_21BB44()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleAction:" forControlEvents:0x2000];
  }

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

id sub_21BD8C(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v6 = &v3[OBJC_IVAR____TtC23ShelfKitCollectionViews21ButtonWithTouchInsets_touchInsets];
  if (v3[OBJC_IVAR____TtC23ShelfKitCollectionViews21ButtonWithTouchInsets_touchInsets + 32])
  {
    v15.receiver = v3;
    v15.super_class = type metadata accessor for ButtonWithTouchInsets();
    return objc_msgSendSuper2(&v15, "pointInside:withEvent:", a1, a2, a3);
  }

  else
  {
    v10 = *v6;
    v9 = v6[1];
    [v3 bounds];
    v17.origin.x = UIEdgeInsetsInsetRect(v11, v12, v13, v14, v10, v9);
    v16.x = a2;
    v16.y = a3;
    return CGRectContainsPoint(v17, v16);
  }
}

id ButtonWithTouchInsets.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ButtonWithTouchInsets();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_21BF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return v3(v7);
}

uint64_t sub_21C008(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18CachingArtworkView_objectGraph) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E30);
  sub_30B8E8();
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews18CachingArtworkView_imageProvider;
  swift_beginAccess();
  sub_A32A0(v4, v1 + v2, &qword_402EB8);
  swift_endAccess();
  sub_302528();
  sub_30B8C8();
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18CachingArtworkView_pageRenderController) = v4[0];
}

uint64_t sub_21C1EC()
{

  sub_EB68(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18CachingArtworkView_subscribedRequest, &qword_4093D8);
  sub_EB68(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18CachingArtworkView_imageProvider, &qword_402EB8);
}

id sub_21C27C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachingArtworkView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CachingArtworkView()
{
  result = qword_4093C0;
  if (!qword_4093C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C3A4()
{
  sub_21C44C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21C44C()
{
  if (!qword_4093D0)
  {
    sub_303398();
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_4093D0);
    }
  }
}

uint64_t sub_21C4B8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F30);
  __chkstk_darwin(v4 - 8);
  v44 = &v43 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405F40);
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v48 = &v43 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405F48);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v43 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405F50);
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4093D8);
  __chkstk_darwin(v9 - 8);
  v11 = &v43 - v10;
  v12 = sub_303398();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v14;
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  v18 = sub_3041E8();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_304198();
  sub_30C778();
  sub_303A08();
  (*(v19 + 8))(v21, v18);
  v58 = a1;
  sub_303E88();
  v22 = *(v13 + 16);
  v46 = v13 + 16;
  v45 = v22;
  v22(v11, v17, v12);
  v23 = *(v13 + 56);
  v47 = v12;
  v23(v11, 0, 1, v12);
  v24 = OBJC_IVAR____TtC23ShelfKitCollectionViews18CachingArtworkView_subscribedRequest;
  swift_beginAccess();
  sub_A32A0(v11, &v2[v24], &qword_4093D8);
  swift_endAccess();
  [*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView] setImage:0];
  [v2 invalidateIntrinsicContentSize];
  v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews18CachingArtworkView_imageProvider;
  swift_beginAccess();
  result = sub_EB00(&v2[v25], v63, &qword_402EB8);
  if (v64)
  {
    __swift_project_boxed_opaque_existential_1Tm(v63, v64);
    v60 = sub_302128();
    sub_3EFB4();
    v43 = v17;
    v27 = sub_30C8F8();
    v62 = v27;
    v28 = sub_30C8E8();
    v29 = v44;
    (*(*(v28 - 8) + 56))(v44, 1, 1, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401518);
    sub_EC8C(&qword_401520, &qword_401518);
    sub_CF4A8();
    v30 = v48;
    sub_304F28();
    sub_EB68(v29, &unk_408F30);

    __swift_destroy_boxed_opaque_existential_1(v63);
    v31 = sub_EC8C(&qword_405F60, &qword_405F40);

    v32 = v53;
    v33 = v52;
    sub_304E48();

    (*(v51 + 8))(v30, v33);
    sub_12670(v65, v63);
    v60 = v33;
    v61 = v31;
    swift_getOpaqueTypeConformance2();
    v34 = v55;
    sub_3032E8();
    v35 = v56;
    sub_304E68();
    sub_EB68(v63, &qword_405F68);
    (*(v54 + 8))(v32, v34);
    v36 = v50;
    v37 = v47;
    v45(v50, v58, v47);
    v38 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v39 = swift_allocObject();
    (*(v13 + 32))(v39 + v38, v36, v37);
    *(swift_allocObject() + 16) = v2;
    sub_EC8C(&qword_405F70, &qword_405F50);
    v40 = v2;
    v41 = v59;
    v42 = sub_304EE8();

    (*(v57 + 8))(v35, v41);
    (*(v13 + 8))(v43, v37);
    __swift_destroy_boxed_opaque_existential_1(v65);
    *&v40[OBJC_IVAR____TtC23ShelfKitCollectionViews18CachingArtworkView_subscription] = v42;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21CDE0()
{
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews18CachingArtworkView_subscription] = 0;

  [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView] setImage:0];

  return [v0 invalidateIntrinsicContentSize];
}

id sub_21CEF8(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for CachingArtworkView();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_21CFDC(SEL *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  v9 = v6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4093D8);
  __chkstk_darwin(v14 - 8);
  v16 = &v37 - v15;
  v17 = sub_303398();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = &v37 - v23;
  [v9 *a1];
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for CachingArtworkView();
  v38.receiver = v9;
  v38.super_class = v29;
  result = objc_msgSendSuper2(&v38, *a2, a3, a4, a5, a6);
  if (v26 != a5 || v28 != a6)
  {
    result = [v9 bounds];
    if (v33 >= 1.0 && v32 >= 1.0)
    {
      v35 = OBJC_IVAR____TtC23ShelfKitCollectionViews18CachingArtworkView_subscribedRequest;
      swift_beginAccess();
      sub_EB00(v9 + v35, v16, &qword_4093D8);
      if ((*(v18 + 48))(v16, 1, v17) == 1)
      {
        return sub_EB68(v16, &qword_4093D8);
      }

      else
      {
        (*(v18 + 32))(v24, v16, v17);
        sub_303388();
        sub_21C4B8(v20);
        v36 = *(v18 + 8);
        v36(v20, v17);
        return (v36)(v24, v17);
      }
    }
  }

  return result;
}

void sub_21D290(void *a1, uint64_t a2)
{
  v4 = sub_303398();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = sub_3041E8();
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v32 = v12;
    swift_errorRetain();
    sub_304198();
    v30 = *(v5 + 16);
    v30(v10, a2, v4);
    swift_errorRetain();
    v15 = sub_3041D8();
    v16 = sub_30C798();

    v31 = v16;
    v17 = v16;
    v18 = v15;
    if (os_log_type_enabled(v15, v17))
    {
      v19 = swift_slowAlloc();
      v29 = v11;
      v20 = v19;
      v28 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v20 = 136315394;
      v30(v7, v10, v4);
      v22 = sub_30C148();
      v24 = v23;
      (*(v5 + 8))(v10, v4);
      v25 = sub_191264(v22, v24, &v33);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2112;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v26;
      v27 = v28;
      *v28 = v26;
      _os_log_impl(&dword_0, v18, v31, "Failure fetching artwork for request %s, error %@", v20, 0x16u);
      sub_EB68(v27, &qword_3FC200);

      __swift_destroy_boxed_opaque_existential_1(v21);

      (*(v32 + 8))(v14, v29);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
      (*(v32 + 8))(v14, v11);
    }
  }
}

uint64_t sub_21D60C()
{
  v1 = sub_303398();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_21D694(void *a1)
{
  v3 = *(sub_303398() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_21D290(a1, v4);
}

uint64_t sub_21D704()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_21D73C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_21D79C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

id sub_21D810(void *a1)
{
  v2 = [objc_allocWithZone(CAGradientLayer) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC498);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_315420;
  v4 = [a1 colorWithAlphaComponent:0.0];
  v5 = [v4 CGColor];

  type metadata accessor for CGColor(0);
  v7 = v6;
  *(v3 + 56) = v6;
  *(v3 + 32) = v5;
  v8 = [a1 CGColor];
  *(v3 + 88) = v7;
  *(v3 + 64) = v8;
  isa = sub_30C358().super.isa;

  [v2 setColors:isa];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_317F20;
  sub_21D9EC();
  *(v10 + 32) = sub_30D078(0);
  *(v10 + 40) = sub_30D068(0.8);
  v11 = sub_30C358().super.isa;

  [v2 setLocations:v11];

  [v2 setStartPoint:{0.0, 0.5}];
  [v2 setEndPoint:{1.0, 0.5}];
  return v2;
}

unint64_t sub_21D9EC()
{
  result = qword_4053E0;
  if (!qword_4053E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4053E0);
  }

  return result;
}

uint64_t SteveSetting.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t CalculatorConstructionSet.deinit()
{

  return v0;
}

uint64_t CalculatorConstructionSet.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21DB24(int **a1)
{
  off_4093E0 = *a1;
}

uint64_t sub_21DBF4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_30B3F8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_21DCB4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_30B3F8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CategoryView()
{
  result = qword_4095B0;
  if (!qword_4095B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DDC0@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v54 = sub_305BA8();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_306008();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin(v3);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CategoryView();
  v6 = *(v5 - 8);
  v47 = v5 - 8;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4095F0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4095F8);
  v12 = *(v11 - 8);
  v42 = v11;
  v43 = v12;
  __chkstk_darwin(v11);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409600);
  v16 = *(v15 - 8);
  v44 = v15;
  v45 = v16;
  __chkstk_darwin(v15);
  v18 = &v41 - v17;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409608);
  __chkstk_darwin(v50);
  v20 = &v41 - v19;
  *v10 = sub_305AA8();
  *(v10 + 1) = 0x4028000000000000;
  v10[16] = 0;
  v21 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_409610) + 44)];
  v41 = v1;
  sub_21E538(v1, v21);
  v10[*(v8 + 36)] = 0;
  sub_2207B4(v1, &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CategoryView);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = swift_allocObject();
  sub_22074C(&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for CategoryView);
  v24 = sub_22032C();
  sub_306588();
  v25 = v20;

  sub_EB68(v10, &qword_4095F0);
  v26 = v46;
  sub_305FE8();
  v57 = v8;
  v58 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v42;
  sub_306738();
  (*(v48 + 8))(v26, v49);
  (*(v43 + 8))(v14, v28);
  v57 = sub_30B3B8();
  v58 = v29;
  v55 = v28;
  v56 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_E504();
  v30 = v44;
  sub_3066C8();

  (*(v45 + 8))(v18, v30);
  sub_303A88();
  v31 = sub_3032F8();
  v33 = v32;
  if (v31 == sub_3032F8() && v33 == v34)
  {
  }

  else
  {
    v35 = sub_30D728();

    if ((v35 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC9E8);
      v36 = v52;
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_315430;
      sub_305B88();
      goto LABEL_7;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC9E8);
  v36 = v52;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_315420;
  sub_305B88();
  sub_305B78();
LABEL_7:
  v57 = v37;
  sub_2209BC(&qword_3FC9F0, &type metadata accessor for AccessibilityTraits);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC9F8);
  sub_EC8C(&qword_3FCA00, &qword_3FC9F8);
  v38 = v51;
  v39 = v54;
  sub_30D488();
  sub_305518();
  (*(v36 + 8))(v38, v39);
  return sub_EB68(v25, &qword_409608);
}

uint64_t sub_21E538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v168 = a2;
  v166 = sub_305E08();
  v164 = *(v166 - 8);
  __chkstk_darwin(v166);
  v163 = &v140 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409630);
  __chkstk_darwin(v157);
  v159 = &v140 - v4;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409638);
  __chkstk_darwin(v158);
  v160 = &v140 - v5;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409640);
  __chkstk_darwin(v161);
  v162 = &v140 - v6;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409648);
  v165 = *(v167 - 8);
  __chkstk_darwin(v167);
  v172 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v171 = &v140 - v9;
  v142 = sub_306838();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v143 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409650);
  v145 = *(KeyPath - 8);
  __chkstk_darwin(KeyPath);
  v144 = &v140 - v11;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409658);
  __chkstk_darwin(v151);
  v152 = &v140 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401DC8);
  __chkstk_darwin(v13 - 8);
  v15 = &v140 - v14;
  v154 = sub_3055F8();
  __chkstk_darwin(v154);
  v17 = (&v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v18 - 8);
  v20 = &v140 - v19;
  v149 = sub_30B198();
  v147 = *(v149 - 8);
  __chkstk_darwin(v149);
  v22 = &v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402B98);
  v148 = *(v150 - 8);
  __chkstk_darwin(v150);
  v146 = &v140 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v24 - 8);
  v26 = &v140 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v140 - v28;
  v30 = sub_3031C8();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v140 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409660);
  __chkstk_darwin(v34 - 8);
  v170 = &v140 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v173 = &v140 - v37;
  v155 = type metadata accessor for CategoryView();
  v38 = *(v155 + 24);
  v156 = a1;
  v169 = v38;
  sub_30B3D8();
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    v147 = v17;
    v148 = v15;
    v39 = v154;
    sub_EB68(v29, &unk_402FF0);
    if ((sub_30B3A8() & 0x100000000) != 0)
    {
      v66 = 1;
      v65 = v173;
    }

    else
    {
      sub_306C58();
      sub_3051F8();
      v40 = v179;
      v41 = v180;
      v42 = v181;
      v43 = v182;
      v44 = v183;
      v45 = v184;
      (*(v141 + 104))(v143, enum case for Color.RGBColorSpace.sRGB(_:), v142);
      v46 = sub_3068B8();
      *&v174 = v40;
      BYTE8(v174) = v41;
      *&v175 = v42;
      BYTE8(v175) = v43;
      v176 = v44;
      v177 = v45;
      v178 = v46;
      v47 = v39;
      v48 = *(v39 + 20);
      v49 = enum case for RoundedCornerStyle.continuous(_:);
      v50 = sub_305B68();
      v51 = v147;
      (*(*(v50 - 8) + 104))(v147 + v48, v49, v50);
      __asm { FMOV            V0.2D, #5.0 }

      *v51 = _Q0;
      v57 = v148;
      sub_307F28();
      v58 = sub_307F38();
      (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401E80);
      v59 = sub_E1BF4();
      v60 = sub_2209BC(&qword_401E78, &type metadata accessor for RoundedRectangle);
      v61 = v144;
      sub_306458();
      sub_EB68(v57, &qword_401DC8);
      sub_22081C(v51, &type metadata accessor for RoundedRectangle);

      v62 = v145;
      v63 = KeyPath;
      (*(v145 + 16))(v152, v61, KeyPath);
      swift_storeEnumTagMultiPayload();
      v64 = sub_2209BC(&qword_401F00, &type metadata accessor for Artwork);
      *&v174 = v149;
      *(&v174 + 1) = v47;
      *&v175 = v64;
      *(&v175 + 1) = v60;
      swift_getOpaqueTypeConformance2();
      *&v174 = v146;
      *(&v174 + 1) = v47;
      *&v175 = v59;
      *(&v175 + 1) = v60;
      swift_getOpaqueTypeConformance2();
      v65 = v173;
      sub_305D48();
      (*(v62 + 8))(v61, v63);
      v66 = 0;
    }
  }

  else
  {
    v140 = v33;
    sub_22074C(v29, v33, &type metadata accessor for ArtworkModel);
    sub_2207B4(v33, v26, &type metadata accessor for ArtworkModel);
    (*(v31 + 56))(v26, 0, 1, v30);
    v67 = sub_303DF8();
    (*(*(v67 - 8) + 56))(v20, 1, 1, v67);
    v176 = 0;
    v174 = 0u;
    v175 = 0u;
    sub_306C38();
    sub_30B178();
    v68 = v154;
    v69 = *(v154 + 20);
    v70 = enum case for RoundedCornerStyle.continuous(_:);
    v71 = sub_305B68();
    (*(*(v71 - 8) + 104))(v17 + v69, v70, v71);
    __asm { FMOV            V0.2D, #5.0 }

    *v17 = _Q0;
    sub_307F28();
    v73 = sub_307F38();
    (*(*(v73 - 8) + 56))(v15, 0, 1, v73);
    v74 = sub_2209BC(&qword_401F00, &type metadata accessor for Artwork);
    v75 = sub_2209BC(&qword_401E78, &type metadata accessor for RoundedRectangle);
    v76 = v146;
    v77 = v149;
    sub_306458();
    sub_EB68(v15, &qword_401DC8);
    sub_22081C(v17, &type metadata accessor for RoundedRectangle);
    (*(v147 + 1))(v22, v77);
    v78 = v148;
    v79 = v150;
    (*(v148 + 2))(v152, v76, v150);
    swift_storeEnumTagMultiPayload();
    *&v174 = v77;
    *(&v174 + 1) = v68;
    *&v175 = v74;
    *(&v175 + 1) = v75;
    swift_getOpaqueTypeConformance2();
    v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_401E80);
    v81 = sub_E1BF4();
    *&v174 = v80;
    *(&v174 + 1) = v68;
    *&v175 = v81;
    *(&v175 + 1) = v75;
    swift_getOpaqueTypeConformance2();
    v65 = v173;
    sub_305D48();
    (*(v78 + 1))(v76, v79);
    sub_22081C(v140, &type metadata accessor for ArtworkModel);
    v66 = 0;
  }

  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409668);
  (*(*(v82 - 8) + 56))(v65, v66, 1, v82);
  *&v174 = sub_30B3B8();
  *(&v174 + 1) = v83;
  sub_E504();
  v84 = sub_3063C8();
  v86 = v85;
  v88 = v87;
  sub_306228();
  v89 = sub_306388();
  v91 = v90;
  v93 = v92;

  sub_EBC8(v84, v86, v88 & 1);

  LODWORD(v174) = sub_305E78();
  v156 = sub_306348();
  v154 = v94;
  LODWORD(v152) = v95;
  v169 = v96;
  sub_EBC8(v89, v91, v93 & 1);

  KeyPath = swift_getKeyPath();
  sub_303A88();
  v97 = sub_3032F8();
  v99 = v98;
  if (v97 == sub_3032F8() && v99 == v100)
  {
  }

  else
  {
    sub_30D728();
  }

  v155 = sub_306928();
  sub_306C58();
  sub_3051F8();
  v101 = v174;
  v102 = BYTE8(v174);
  v103 = v175;
  v104 = BYTE8(v175);
  v105 = v176;
  v106 = v177;
  v107 = v159;
  v108 = &v159[*(v157 + 36)];
  v109 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC798) + 28);
  v110 = enum case for Image.Scale.large(_:);
  v111 = sub_306958();
  (*(*(v111 - 8) + 104))(v108 + v109, v110, v111);
  *v108 = swift_getKeyPath();
  *v107 = v155;
  *(v107 + 1) = v101;
  v107[16] = v102;
  *(v107 + 3) = v103;
  v107[32] = v104;
  *(v107 + 5) = v105;
  *(v107 + 6) = v106;
  v112 = sub_306168();
  v113 = swift_getKeyPath();
  v114 = v107;
  v115 = v160;
  sub_34804(v114, v160, &qword_409630);
  v116 = (v115 + *(v158 + 36));
  *v116 = v113;
  v116[1] = v112;
  if (qword_3FAFB8 != -1)
  {
    swift_once();
  }

  v117 = qword_40DB80;
  v118 = sub_306818();
  v119 = swift_getKeyPath();
  v120 = v162;
  sub_34804(v115, v162, &qword_409638);
  v121 = (v120 + *(v161 + 36));
  *v121 = v119;
  v121[1] = v118;
  v122 = v163;
  sub_305DF8();
  sub_220430();
  sub_2209BC(&qword_3FCA58, &type metadata accessor for BorderlessButtonStyle);
  v123 = v171;
  v124 = v166;
  sub_3064E8();
  (*(v164 + 8))(v122, v124);
  sub_EB68(v120, &qword_409640);
  v125 = v170;
  sub_2206DC(v173, v170);
  v126 = v165;
  v127 = *(v165 + 16);
  v128 = v167;
  v127(v172, v123, v167);
  v129 = v168;
  sub_2206DC(v125, v168);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409688);
  v131 = v129 + v130[12];
  v132 = v156;
  v133 = v154;
  *v131 = v156;
  *(v131 + 8) = v133;
  LOBYTE(v125) = v152 & 1;
  *(v131 + 16) = v152 & 1;
  v134 = KeyPath;
  *(v131 + 24) = v169;
  *(v131 + 32) = v134;
  *(v131 + 40) = 1;
  *(v131 + 48) = 0;
  v135 = v129 + v130[16];
  *v135 = 0;
  *(v135 + 8) = 1;
  v136 = v129 + v130[20];
  v137 = v172;
  v127(v136, v172, v128);
  sub_EBD8(v132, v133, v125);
  v138 = *(v126 + 8);

  v138(v171, v128);
  sub_EB68(v173, &qword_409660);
  v138(v137, v128);
  sub_EBC8(v132, v133, v125);

  return sub_EB68(v170, &qword_409660);
}

uint64_t sub_21FA48(uint64_t a1)
{
  v2 = sub_302558();
  v21 = *(v2 - 8);
  v22 = v2;
  __chkstk_darwin(v2);
  v20 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_30BA28();
  __chkstk_darwin(v4 - 8);
  v19[1] = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v6 - 8);
  v8 = v19 - v7;
  v9 = sub_30B898();
  __chkstk_darwin(v9 - 8);
  v19[2] = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CategoryView();
  v11 = sub_303A88();
  v12 = *(a1 + 8);
  v19[4] = *(a1 + 16);
  v19[5] = v12;
  v19[3] = swift_getObjectType();
  v19[0] = sub_30B388();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC160);
  sub_30B7E8();
  *(swift_allocObject() + 16) = xmmword_315430;
  *&v26 = sub_30B388();
  sub_1D770();
  sub_30D438();
  sub_303858();
  if (v11 == 2)
  {
    sub_3037E8();
    v13 = sub_301CB8();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    sub_302718();
    sub_30B788();
    v32[0] = v26;
    sub_EB68(v32, &unk_408130);
    v31 = v27;
    sub_EB68(&v31, &qword_3FC878);
    v30 = v28;
    sub_EB68(&v30, &qword_408140);
    sub_1EBD0(v29);

    sub_EB68(v8, &qword_3FB8E0);
    sub_30BA18();
    sub_30B878();
    v24 = sub_30A7D8();
    v25 = sub_2209BC(&qword_3FCA10, &type metadata accessor for UnfavoriteInterestAction);
    __swift_allocate_boxed_opaque_existential_0Tm(v23);
    sub_30A7B8();
  }

  else
  {
    sub_303798();
    v14 = sub_301CB8();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    sub_302718();
    sub_30B788();
    v32[0] = v26;
    sub_EB68(v32, &unk_408130);
    v31 = v27;
    sub_EB68(&v31, &qword_3FC878);
    v30 = v28;
    sub_EB68(&v30, &qword_408140);
    sub_1EBD0(v29);

    sub_EB68(v8, &qword_3FB8E0);
    sub_30BA18();
    sub_30B878();
    v24 = sub_30A0B8();
    v25 = sub_2209BC(&qword_3FCA08, &type metadata accessor for FavoriteInterestAction);
    __swift_allocate_boxed_opaque_existential_0Tm(v23);
    sub_30A0A8();
  }

  v16 = v20;
  v15 = v21;
  v17 = v22;
  (*(v21 + 104))(v20, enum case for ActionMetricsBehavior.fromAction(_:), v22);
  sub_307C38();

  (*(v15 + 8))(v16, v17);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_2201C4()
{
  v1 = (type metadata accessor for CategoryView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  swift_unknownObjectRelease();
  v5 = v1[8];
  v6 = sub_30B3F8();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_2202CC()
{
  v1 = *(type metadata accessor for CategoryView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21FA48(v2);
}

unint64_t sub_22032C()
{
  result = qword_409618;
  if (!qword_409618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4095F0);
    sub_EC8C(&qword_409620, &qword_409628);
    sub_EC8C(&qword_3FD000, &qword_3FD008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_409618);
  }

  return result;
}

unint64_t sub_220430()
{
  result = qword_409670;
  if (!qword_409670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409640);
    sub_2204E8();
    sub_EC8C(&qword_3FC788, &qword_3FC790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_409670);
  }

  return result;
}

unint64_t sub_2204E8()
{
  result = qword_409678;
  if (!qword_409678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409638);
    sub_2205A0();
    sub_EC8C(&qword_3FC778, &qword_3FC780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_409678);
  }

  return result;
}

unint64_t sub_2205A0()
{
  result = qword_409680;
  if (!qword_409680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409630);
    sub_220658();
    sub_EC8C(&qword_3FC7B8, &qword_3FC798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_409680);
  }

  return result;
}

unint64_t sub_220658()
{
  result = qword_401E58;
  if (!qword_401E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_401E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401E58);
  }

  return result;
}

uint64_t sub_2206DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22074C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22081C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_220880()
{
  result = qword_409690;
  if (!qword_409690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4095F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4095F0);
    sub_22032C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2209BC(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_409690);
  }

  return result;
}

uint64_t sub_2209BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220A58@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_3031C8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_220AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3031C8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  __chkstk_darwin(v16);
  v18 = &v33 - v17;
  __chkstk_darwin(v19);
  v21 = &v33 - v20;
  sub_1DA1C(a2, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4096A0);
  result = swift_dynamicCast();
  if (result)
  {
    v35 = v9;
    v34 = v12;
    v38 = a3;
    v23 = v41;
    v24 = *(v7 + 56);
    v24(v21, 1, 1, v6);
    v36 = a1;
    sub_EB00(a1, &v41, &unk_406568);
    v37 = v23;
    if (*(&v42 + 1))
    {
      sub_12658(&v41, v44);
      ObjectType = swift_getObjectType();
      (*(*(&v23 + 1) + 24))(v44, ObjectType, *(&v23 + 1));
      __swift_destroy_boxed_opaque_existential_1(v44);
      if ((*(v7 + 48))(v18, 1, v6) == 1)
      {
        sub_EB68(v18, &unk_402FF0);
      }

      else
      {
        sub_EB68(v21, &unk_402FF0);
        v26 = v18;
        v27 = v35;
        sub_6D85C(v26, v35);
        sub_6D85C(v27, v21);
        v24(v21, 0, 1, v6);
      }
    }

    else
    {
      sub_EB68(&v41, &unk_406568);
    }

    v28 = v36;
    sub_EB00(v21, v15, &unk_402FF0);
    v29 = (*(v7 + 48))(v15, 1, v6);
    sub_EB68(v15, &unk_402FF0);
    v30 = *(&v37 + 1);
    if (v29 != 1)
    {
      goto LABEL_15;
    }

    sub_EB00(v28, v39, &unk_406568);
    if (v40)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406560);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4096B0);
      if (swift_dynamicCast())
      {
        if (*(&v42 + 1))
        {
          sub_12658(&v41, v44);
          __swift_project_boxed_opaque_existential_1Tm(v44, v44[3]);
          v31 = v34;
          sub_3099B8();
          sub_EB68(v21, &unk_402FF0);
          sub_E2F78(v31, v21);
          __swift_destroy_boxed_opaque_existential_1(v44);
LABEL_15:
          v32 = swift_getObjectType();
          (*(v30 + 8))(v21, v38, v32, v30);
          swift_unknownObjectRelease();
          return sub_EB68(v21, &unk_402FF0);
        }
      }

      else
      {
        v43 = 0;
        v41 = 0u;
        v42 = 0u;
      }
    }

    else
    {
      sub_EB68(v39, &unk_406568);
      v41 = 0u;
      v42 = 0u;
      v43 = 0;
    }

    sub_EB68(&v41, &qword_4096A8);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_220FA8(uint64_t a1)
{
  sub_1DA1C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409698);
  if (swift_dynamicCast())
  {
    ObjectType = swift_getObjectType();
    if ((*(v7 + 16))(ObjectType))
    {
      v3 = (*(v7 + 24))(ObjectType);
      swift_unknownObjectRelease();
      type metadata accessor for LegacyCachingArtworkView();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        (*(&stru_2E8.offset + (swift_isaMask & *v4)))(v8);

        if (v8[1])
        {
        }
      }

      else
      {
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_1DA1C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4096A0);
  result = swift_dynamicCast();
  if (result)
  {
    v6 = swift_getObjectType();
    (*(v7 + 16))(v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2211F0()
{
  sub_3030C8();

  return sub_303118();
}

uint64_t sub_221260@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_303758();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_2212FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v70 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4096B8);
  __chkstk_darwin(v9 - 8);
  v60 = v56 - v10;
  v11 = sub_303758();
  v62 = *(v11 - 8);
  v63 = v11;
  __chkstk_darwin(v11);
  v61 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3041E8();
  v65 = *(v13 - 8);
  __chkstk_darwin(v13);
  v64 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v15 - 8);
  v66 = v56 - v16;
  v17 = sub_303398();
  v68 = *(v17 - 8);
  v69 = v17;
  __chkstk_darwin(v17);
  v67 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v19 - 8);
  v21 = v56 - v20;
  v22 = sub_3031C8();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v56 - v27;
  sub_101CE4(a1, v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    return sub_EB68(v21, &unk_402FF0);
  }

  sub_6D85C(v21, v28);
  if ((*(a4 + 16))(a3, a4))
  {
    v57 = v13;
    v58 = (*(a4 + 40))(&v28[*(v22 + 44)], a3, a4);
    v59 = *(a4 + 24);
    v30 = v5;
    v31 = a3;
    v32 = v59(a3, a4);
    v33 = *(a4 + 32);
    v34 = v33(v31, a4);
    sub_2EF18(v28, v34, v35);

    (*(a4 + 64))(v71, v31, a4);
    v36 = v71[0];
    if (LOBYTE(v71[0]) != 4)
    {
      v37 = v59(v31, a4);
      v38 = v37[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
      v37[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = v36;
      LOBYTE(v71[0]) = v38;
      sub_2DE78(v71);
    }

    v39 = v59;
    v40 = v59(v31, a4);
    [v40 setContentMode:v58];

    v56[1] = a4 + 24;
    v41 = v39(v31, a4);
    sub_6D8C0(v28, v25);
    v33(v31, a4);
    v42 = sub_303DF8();
    (*(*(v42 - 8) + 56))(v66, 1, 1, v42);
    v43 = v64;
    sub_304198();
    sub_30C778();
    sub_303A08();
    (*(v65 + 8))(v43, v57);
    v44 = [objc_opt_self() mainScreen];
    [v44 scale];

    v45 = v67;
    sub_303358();
    type metadata accessor for ArtworkView();
    sub_221DB4();
    sub_308E28();

    (*(v68 + 8))(v45, v69);
    (*(a4 + 48))(v71, v31, a4);
    v46 = v71[0];
    if (LOBYTE(v71[0]) != 6)
    {
      v47 = v31;
      v48 = *(a4 + 56);
      v49 = v60;
      v70 = v30;
      v50 = v47;
      v48();
      v52 = v62;
      v51 = v63;
      v53 = *(v62 + 48);
      if (v53(v49, 1, v63) == 1)
      {
        v54 = v61;
        (*(v52 + 104))(v61, enum case for ArtworkAspectRule.aspectFill(_:), v51);
        if (v53(v49, 1, v51) != 1)
        {
          sub_EB68(v49, &qword_4096B8);
        }
      }

      else
      {
        v54 = v61;
        (*(v52 + 32))(v61, v49, v51);
      }

      v55 = v59(v50, a4);
      LOBYTE(v71[0]) = v46;
      sub_2CE00(v71, v54);

      (*(v52 + 8))(v54, v51);
    }
  }

  return sub_6D924(v28);
}

uint64_t *sub_221B1C(uint64_t *result)
{
  v2 = v1;
  v3 = *result;
  v4 = *(v1 + *result);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_requestCancellable;
    result = swift_beginAccess();
    if (*(v4 + v5))
    {

      sub_304D08();
    }

    v6 = *(v2 + v3);
    if (v6)
    {
      v7 = (v6 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_accessibilityTitle);
      *v7 = 0;
      v7[1] = 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_221BC0(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(v1 + *a1);
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_requestCancellable;
  swift_beginAccess();
  if (*(v4 + v5))
  {

    sub_304D08();
  }

  v6 = (*(v2 + v3) + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_accessibilityTitle);
  *v6 = 0;
  v6[1] = 0;
}

uint64_t sub_221C54(void *a1)
{
  v2 = *(v1 + *a1);
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_requestCancellable;
  swift_beginAccess();
  if (*(v2 + v3))
  {

    sub_304D08();
  }

  v4 = (v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_accessibilityTitle);
  *v4 = 0;
  v4[1] = 0;
}

uint64_t sub_221CD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = v4();
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_requestCancellable;
  swift_beginAccess();
  v7 = *&v5[v6];

  if (v7)
  {
    sub_304D08();
  }

  v8 = (v4)(a1, a2);
  v9 = &v8[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_accessibilityTitle];
  *v9 = 0;
  *(v9 + 1) = 0;
}

unint64_t sub_221DB4()
{
  result = qword_404350;
  if (!qword_404350)
  {
    type metadata accessor for ArtworkView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_404350);
  }

  return result;
}

double sub_221FA0(uint64_t a1, double a2, double a3)
{
  v6 = sub_30D6F8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v21 - v12;
  v24 = a2;
  v14 = *(v7 + 16);
  v14(&v21 - v12, a1, v6, v11);
  v15 = *(v7 + 88);
  v16 = v15(v13, v6);
  v17 = enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:);
  if (v16 == enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:))
  {
    v18 = round(a2);
    v24 = v18;
  }

  else if (v16 == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
  {
    v18 = rint(a2);
    v24 = v18;
  }

  else
  {
    if (v16 == enum case for FloatingPointRoundingRule.up(_:))
    {
      goto LABEL_6;
    }

    if (v16 == enum case for FloatingPointRoundingRule.down(_:))
    {
      goto LABEL_8;
    }

    if (v16 == enum case for FloatingPointRoundingRule.towardZero(_:))
    {
      v18 = trunc(a2);
      v24 = v18;
      goto LABEL_15;
    }

    if (v16 != enum case for FloatingPointRoundingRule.awayFromZero(_:))
    {
      v22 = a1;
      sub_30C4C8();
      a1 = v22;
      (*(v7 + 8))(v13, v6);
      v18 = v24;
      goto LABEL_15;
    }

    if ((*&a2 & 0x8000000000000000) != 0)
    {
LABEL_8:
      v18 = floor(a2);
      v24 = v18;
    }

    else
    {
LABEL_6:
      v18 = ceil(a2);
      v24 = v18;
    }
  }

LABEL_15:
  v23 = a3;
  (v14)(v9, a1, v6);
  v19 = v15(v9, v6);
  if (v19 != v17 && v19 != enum case for FloatingPointRoundingRule.toNearestOrEven(_:) && v19 != enum case for FloatingPointRoundingRule.up(_:) && v19 != enum case for FloatingPointRoundingRule.down(_:) && v19 != enum case for FloatingPointRoundingRule.towardZero(_:) && v19 != enum case for FloatingPointRoundingRule.awayFromZero(_:))
  {
    sub_30C4C8();
    (*(v7 + 8))(v9, v6);
  }

  return v18;
}

uint64_t sub_2222C0@<X0>(void *a1@<X8>)
{
  sub_1A27C8();
  result = sub_305A38();
  *a1 = v3;
  return result;
}

uint64_t sub_222310(void **a1)
{
  v1 = *a1;
  sub_1A27C8();
  v2 = v1;
  return sub_305A48();
}

void *sub_222388()
{
  v1 = sub_305A08();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for CircleLockupView(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_30C7A8();
    v8 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();
    sub_703E4(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_2224E8@<X0>(unsigned __int8 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 1;
  v6 = type metadata accessor for CircleLockupView.Metrics(0);
  v7 = v6;
  *(a3 + v6[12]) = 0x4020000000000000;
  *(a3 + v6[13]) = 0x4024000000000000;
  *a3 = a2;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      *(a3 + 1) = 0;
      v11 = 72.0;
      if (a2)
      {
        v11 = 52.0;
      }

      *(a3 + 8) = v11;
      v10 = 0x4014000000000000;
    }

    else
    {
      if (v5 != 4)
      {
        *(a3 + 1) = 0;
        v17 = 64.0;
        if (a2)
        {
          v17 = 48.0;
        }

        *(a3 + 8) = v17;
        *(a3 + 16) = 0x4010000000000000;
        *(a3 + 24) = 0;
        if (a2)
        {
          v18 = 0;
        }

        else
        {
          v18 = sub_306238();
        }

        *(a3 + 32) = v18;
        *(a3 + 40) = 0x4020000000000000;
        *(a3 + 48) = 0;
        v8 = v7[10];
        v9 = &enum case for Font.TextStyle.callout(_:);
        goto LABEL_23;
      }

      *(a3 + 1) = 0;
      if ((a2 & 1) == 0)
      {
        *(a3 + 8) = 0x4054000000000000;
        *(a3 + 16) = 0x401C000000000000;
        *(a3 + 24) = 0;
        *(a3 + 32) = sub_306248();
        *(a3 + 40) = 0x4010000000000000;
        *(a3 + 48) = 0;
        v19 = v7[10];
        v20 = enum case for Font.TextStyle.body(_:);
        v14 = sub_306278();
        v25 = *(*(v14 - 8) + 104);
        (v25)((v14 - 8), a3 + v19, v20, v14);
        v15 = v7[11];
        v16 = &enum case for Font.TextStyle.footnote(_:);
        goto LABEL_20;
      }

      *(a3 + 8) = 0x404E000000000000;
      v10 = 0x4018000000000000;
    }

    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
    *(a3 + 40) = v10;
    v12 = v6[10];
    v13 = enum case for Font.TextStyle.footnote(_:);
    v14 = sub_306278();
    v25 = *(*(v14 - 8) + 104);
    (v25)((v14 - 8), a3 + v12, v13, v14);
    v15 = v7[11];
    v16 = &enum case for Font.TextStyle.caption(_:);
LABEL_20:
    v21 = *v16;
    v22 = a3 + v15;
    goto LABEL_24;
  }

  if (v5)
  {
    *(a3 + 1) = 1;
    if (v5 == 1)
    {
      *(a3 + 8) = 0x4053000000000000;
      v8 = v6[10];
      v9 = &enum case for Font.TextStyle.subheadline(_:);
    }

    else
    {
      *(a3 + 8) = 0x404F000000000000;
      v8 = v6[10];
      v9 = &enum case for Font.TextStyle.body(_:);
    }
  }

  else
  {
    *(a3 + 1) = 1;
    *(a3 + 8) = 0x4050000000000000;
    v8 = v6[10];
    v9 = &enum case for Font.TextStyle.footnote(_:);
  }

LABEL_23:
  v23 = *v9;
  v14 = sub_306278();
  v25 = *(*(v14 - 8) + 104);
  (v25)((v14 - 8), a3 + v8, v23, v14);
  v22 = a3 + v7[11];
  v21 = v23;
LABEL_24:

  return v25(v22, v21, v14);
}

uint64_t sub_2227E8()
{
  v1 = *v0;
  type metadata accessor for CircleLockupView(0);
  if (v1 == 1)
  {
    return sub_307D88();
  }

  result = sub_307DE8();
  if (result)
  {
    if (*(result + 16))
    {
      v3 = *(result + 32);

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t CircleLockupView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v23 = sub_305BA8();
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_306008();
  v4 = *(v20 - 8);
  __chkstk_darwin(v20);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4096C0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4096C8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = sub_222388();
  if (v14)
  {
    v15 = v14;
    type metadata accessor for CircleLockupView(0);
    v16 = sub_306CC8();
    v17 = &v15[OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_transitionNamespace];
    *v17 = v16;
    v17[8] = 0;
  }

  sub_222B94(v1, v9);
  sub_305FE8();
  v18 = sub_2234BC();
  sub_306738();
  (*(v4 + 8))(v6, v20);
  sub_EB68(v9, &qword_4096C0);
  sub_305B88();
  v24 = v7;
  v25 = v18;
  swift_getOpaqueTypeConformance2();
  sub_306758();
  (*(v21 + 8))(v3, v23);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_222B94@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409900);
  __chkstk_darwin(v3);
  v5 = &v89 - v4;
  v103 = sub_3055F8();
  __chkstk_darwin(v103);
  v104 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409730);
  __chkstk_darwin(v7);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v89 - v11;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409720);
  __chkstk_darwin(v95);
  v14 = &v89 - v13;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409710);
  __chkstk_darwin(v94);
  v96 = &v89 - v15;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4096F8);
  __chkstk_darwin(v100);
  v97 = &v89 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409908);
  v101 = *(v17 - 8);
  v102 = v17;
  __chkstk_darwin(v17);
  v99 = &v89 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4096F0);
  __chkstk_darwin(v19);
  v98 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v89 - v22;
  v24 = a1[1];
  v25 = sub_305BD8();
  if (v24 == 1)
  {
    v89 = v19;
    v92 = v3;
    v93 = v5;
    *v12 = v25;
    *(v12 + 1) = 0;
    v12[16] = 0;
    v26 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_409910) + 44)];
    v105 = a1;
    sub_223934(a1, v26);
    KeyPath = swift_getKeyPath();
    v91 = v7;
    v28 = &v12[*(v7 + 36)];
    *v28 = KeyPath;
    v28[8] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC538);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_318FC0;
    v30 = sub_3060D8();
    *(inited + 32) = v30;
    v31 = sub_3060F8();
    *(inited + 33) = v31;
    v32 = sub_306118();
    *(inited + 34) = v32;
    v33 = sub_306108();
    sub_306108();
    if (sub_306108() != v30)
    {
      v33 = sub_306108();
    }

    sub_306108();
    if (sub_306108() != v31)
    {
      v33 = sub_306108();
    }

    sub_306108();
    v34 = sub_306108();
    v90 = v23;
    if (v34 != v32)
    {
      v33 = sub_306108();
    }

    v35 = v105;
    v36 = type metadata accessor for CircleLockupView.Metrics(0);
    sub_304FD8();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_34804(v12, v14, &qword_409730);
    v45 = &v14[*(v95 + 36)];
    *v45 = v33;
    *(v45 + 1) = v38;
    *(v45 + 2) = v40;
    *(v45 + 3) = v42;
    *(v45 + 4) = v44;
    v45[40] = 0;
    v46 = *&v35[*(v36 + 52)];
    v47 = v96;
    v48 = &v96[*(v94 + 36)];
    v49 = v103;
    v50 = *(v103 + 20);
    v51 = enum case for RoundedCornerStyle.continuous(_:);
    v52 = sub_305B68();
    v53 = *(*(v52 - 8) + 104);
    v53(&v48[v50], v51, v52);
    *v48 = v46;
    *(v48 + 1) = v46;
    v54 = [objc_opt_self() secondarySystemFillColor];
    v55 = sub_306818();
    *&v48[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_409918) + 36)] = v55;
    v56 = sub_306C58();
    v58 = v57;
    v59 = &v48[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_409750) + 36)];
    *v59 = v56;
    v59[1] = v58;
    sub_34804(v14, v47, &qword_409720);
    LOBYTE(v56) = sub_3060C8();
    sub_304FD8();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v68 = v97;
    sub_34804(v47, v97, &qword_409710);
    v69 = v68 + *(v100 + 36);
    *v69 = v56;
    *(v69 + 8) = v61;
    *(v69 + 16) = v63;
    *(v69 + 24) = v65;
    *(v69 + 32) = v67;
    *(v69 + 40) = 0;
    type metadata accessor for CircleLockupView(0);
    sub_306CC8();
    v70 = v104;
    v53(&v104[*(v49 + 20)], v51, v52);
    *v70 = v46;
    v70[1] = v46;
    sub_2237AC(&qword_409700, &qword_4096F8, &unk_32CE50, sub_2236C8);
    v71 = v99;
    sub_306428();
    sub_2265EC(v70, &type metadata accessor for RoundedRectangle);
    sub_EB68(v68, &qword_4096F8);
    LOBYTE(v56) = sub_3060C8();
    sub_304FD8();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = v98;
    (*(v101 + 32))(v98, v71, v102);
    v81 = v80 + *(v89 + 36);
    *v81 = v56;
    *(v81 + 8) = v73;
    *(v81 + 16) = v75;
    *(v81 + 24) = v77;
    *(v81 + 32) = v79;
    *(v81 + 40) = 0;
    v82 = &qword_4096F0;
    v83 = v90;
    sub_34804(v80, v90, &qword_4096F0);
    sub_EB00(v83, v93, &qword_4096F0);
    swift_storeEnumTagMultiPayload();
    sub_2235CC();
    sub_223830();
    sub_305D48();
    v84 = v83;
  }

  else
  {
    *v9 = v25;
    *(v9 + 1) = 0;
    v9[16] = 0;
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409910);
    sub_223934(a1, &v9[*(v85 + 44)]);
    v86 = swift_getKeyPath();
    v87 = &v9[*(v7 + 36)];
    *v87 = v86;
    v87[8] = 1;
    v82 = &qword_409730;
    sub_EB00(v9, v5, &qword_409730);
    swift_storeEnumTagMultiPayload();
    sub_2235CC();
    sub_223830();
    sub_305D48();
    v84 = v9;
  }

  return sub_EB68(v84, v82);
}

unint64_t sub_2234BC()
{
  result = qword_4096D0;
  if (!qword_4096D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4096C0);
    sub_223540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4096D0);
  }

  return result;
}

unint64_t sub_223540()
{
  result = qword_4096D8;
  if (!qword_4096D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4096E0);
    sub_2235CC();
    sub_223830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4096D8);
  }

  return result;
}

unint64_t sub_2235CC()
{
  result = qword_4096E8;
  if (!qword_4096E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4096F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4096F8);
    sub_2237AC(&qword_409700, &qword_4096F8, &unk_32CE50, sub_2236C8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4096E8);
  }

  return result;
}

unint64_t sub_2236C8()
{
  result = qword_409708;
  if (!qword_409708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409710);
    sub_2237AC(&qword_409718, &qword_409720, &unk_32CE60, sub_223830);
    sub_EC8C(&qword_409748, &qword_409750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_409708);
  }

  return result;
}

uint64_t sub_2237AC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_223830()
{
  result = qword_409728;
  if (!qword_409728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409730);
    sub_EC8C(&qword_409738, &qword_409740);
    sub_EC8C(&qword_3FCD48, &qword_3FCD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_409728);
  }

  return result;
}

uint64_t sub_223934@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409920);
  __chkstk_darwin(v3);
  v5 = &v45 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409928);
  __chkstk_darwin(v48);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409930);
  __chkstk_darwin(v8);
  v10 = &v45 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409938);
  v11 = *(v47 - 8);
  __chkstk_darwin(v47);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409940);
  __chkstk_darwin(v14 - 8);
  v50 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v46 = &v45 - v17;
  v52 = a1;
  v49 = a1[1];
  if (v49 == 1)
  {
    sub_2241D8(v13);
    v18 = v47;
    (*(v11 + 16))(v10, v13, v47);
    swift_storeEnumTagMultiPayload();
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407A80);
    v20 = sub_1B24A0();
    v21 = sub_E1EC0();
    *&v54 = v19;
    *(&v54 + 1) = &type metadata for Circle;
    *v55 = v20;
    *&v55[8] = v21;
    swift_getOpaqueTypeConformance2();
    sub_226730();
    v22 = v46;
    sub_305D48();
    (*(v11 + 8))(v13, v18);
  }

  else
  {
    sub_2241D8(v5);
    type metadata accessor for CircleLockupView.Metrics(0);
    v23 = sub_3060C8();
    sub_304FD8();
    v24 = &v5[*(v3 + 36)];
    *v24 = v23;
    *(v24 + 1) = v25;
    *(v24 + 2) = v26;
    *(v24 + 3) = v27;
    *(v24 + 4) = v28;
    v24[40] = 0;
    type metadata accessor for CircleLockupView(0);
    sub_306CC8();
    sub_22664C();
    sub_306438();
    sub_EB68(v5, &qword_409920);
    v29 = sub_3060C8();
    sub_304FD8();
    v30 = &v7[*(v48 + 36)];
    *v30 = v29;
    *(v30 + 1) = v31;
    *(v30 + 2) = v32;
    *(v30 + 3) = v33;
    *(v30 + 4) = v34;
    v30[40] = 0;
    sub_EB00(v7, v10, &qword_409928);
    swift_storeEnumTagMultiPayload();
    v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407A80);
    v36 = sub_1B24A0();
    v37 = sub_E1EC0();
    *&v54 = v35;
    *(&v54 + 1) = &type metadata for Circle;
    *v55 = v36;
    *&v55[8] = v37;
    swift_getOpaqueTypeConformance2();
    sub_226730();
    v38 = v46;
    sub_305D48();
    sub_EB68(v7, &qword_409928);
    v22 = v38;
  }

  v48 = sub_305BD8();
  v58 = 1;
  sub_224540(v52, &v54);
  v72 = *&v55[176];
  v73[0] = *&v55[192];
  *(v73 + 9) = *&v55[201];
  v68 = *&v55[112];
  v69 = *&v55[128];
  v71 = *&v55[160];
  v70 = *&v55[144];
  v64 = *&v55[48];
  v65 = *&v55[64];
  v67 = *&v55[96];
  v66 = *&v55[80];
  v60 = v54;
  v61 = *v55;
  v63 = *&v55[32];
  v62 = *&v55[16];
  v74[12] = *&v55[176];
  v75[0] = *&v55[192];
  *(v75 + 9) = *&v55[201];
  v74[8] = *&v55[112];
  v74[9] = *&v55[128];
  v74[11] = *&v55[160];
  v74[10] = *&v55[144];
  v74[4] = *&v55[48];
  v74[5] = *&v55[64];
  v74[7] = *&v55[96];
  v74[6] = *&v55[80];
  v74[0] = v54;
  v74[1] = *v55;
  v74[3] = *&v55[32];
  v74[2] = *&v55[16];
  sub_EB00(&v60, v53, &qword_409958);
  sub_EB68(v74, &qword_409958);
  *(&v57[11] + 7) = v71;
  *(&v57[12] + 7) = v72;
  *(&v57[13] + 7) = v73[0];
  v57[14] = *(v73 + 9);
  *(&v57[7] + 7) = v67;
  *(&v57[8] + 7) = v68;
  *(&v57[9] + 7) = v69;
  *(&v57[10] + 7) = v70;
  *(&v57[3] + 7) = v63;
  *(&v57[4] + 7) = v64;
  *(&v57[5] + 7) = v65;
  *(&v57[6] + 7) = v66;
  *(v57 + 7) = v60;
  *(&v57[1] + 7) = v61;
  *(&v57[2] + 7) = v62;
  LODWORD(v47) = v58;
  type metadata accessor for CircleLockupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FED68);
  sub_305168();
  if (v49)
  {
    sub_306C58();
  }

  else
  {
    sub_306C38();
  }

  sub_3051F8();
  *&v59[7] = v75[2];
  *&v59[23] = v75[3];
  *&v59[39] = v75[4];
  v39 = v50;
  sub_EB00(v22, v50, &qword_409940);
  v40 = v51;
  sub_EB00(v39, v51, &qword_409940);
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_409960) + 48);
  *(&v53[24] + 1) = v57[11];
  *(&v53[26] + 1) = v57[12];
  *(&v53[28] + 1) = v57[13];
  *(&v53[30] + 1) = v57[14];
  *(&v53[16] + 1) = v57[7];
  *(&v53[18] + 1) = v57[8];
  *(&v53[20] + 1) = v57[9];
  *(&v53[22] + 1) = v57[10];
  *(&v53[8] + 1) = v57[3];
  *(&v53[10] + 1) = v57[4];
  *(&v53[12] + 1) = v57[5];
  *(&v53[14] + 1) = v57[6];
  *(&v53[4] + 1) = v57[1];
  v42 = v48;
  v53[0] = v48;
  v53[1] = 0;
  v43 = v47;
  LOBYTE(v53[2]) = v47;
  *(&v53[6] + 1) = v57[2];
  *(&v53[2] + 1) = v57[0];
  *(&v53[32] + 1) = *v59;
  *(&v53[34] + 1) = *&v59[16];
  *(&v53[36] + 1) = *&v59[32];
  v53[38] = *&v59[47];
  memcpy((v40 + v41), v53, 0x138uLL);
  sub_EB00(v53, &v54, &qword_409968);
  sub_EB68(v22, &qword_409940);
  *&v55[177] = v57[11];
  *&v55[193] = v57[12];
  *&v55[209] = v57[13];
  *&v55[225] = v57[14];
  *&v55[113] = v57[7];
  *&v55[129] = v57[8];
  *&v55[145] = v57[9];
  *&v55[161] = v57[10];
  *&v55[49] = v57[3];
  *&v55[65] = v57[4];
  *&v55[81] = v57[5];
  *&v55[97] = v57[6];
  *&v55[1] = v57[0];
  v54 = v42;
  v55[0] = v43;
  *&v55[17] = v57[1];
  *&v55[33] = v57[2];
  *&v55[241] = *v59;
  *&v55[257] = *&v59[16];
  *v56 = *&v59[32];
  *&v56[15] = *&v59[47];
  sub_EB68(&v54, &qword_409968);
  return sub_EB68(v39, &qword_409940);
}

uint64_t sub_2241D8@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401DC8);
  __chkstk_darwin(v1 - 8);
  v3 = v19 - v2;
  v4 = sub_30B168();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v8 - 8);
  v10 = v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407A80);
  __chkstk_darwin(v12);
  v14 = v19 - v13;
  type metadata accessor for CircleLockupView(0);
  sub_307DA8();
  v15 = sub_303DF8();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  (*(v5 + 104))(v7, enum case for Artwork.Sizing.autosizing(_:), v4);
  sub_306C38();
  sub_30B188();
  v16 = &v14[*(v12 + 36)];
  *v16 = 0x3FF0000000000000;
  *(v16 + 4) = 0;
  sub_307F28();
  v17 = sub_307F38();
  (*(*(v17 - 8) + 56))(v3, 0, 1, v17);
  sub_1B24A0();
  sub_E1EC0();
  sub_306458();
  sub_EB68(v3, &qword_401DC8);
  return sub_EB68(v14, &qword_407A80);
}

uint64_t sub_224540@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEE80);
  __chkstk_darwin(v3 - 8);
  v118 = &v111 - v4;
  v5 = *(type metadata accessor for CircleLockupView(0) + 20);
  v124 = a1;
  v6 = *&a1[v5];
  v7 = sub_307DB8();
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  v10 = *(v124 + 4);
  if (!v10)
  {

LABEL_6:
    if (v124[48] == 1)
    {
      sub_2267F8(&v154);
    }

    else
    {
      sub_306C58();
      sub_3051F8();
      LOBYTE(v133[0]) = 1;
      LOBYTE(v126) = v150;
      v125 = v152;
      *&v142 = 0;
      BYTE8(v142) = 1;
      *&v143 = v149;
      BYTE8(v143) = v150;
      *&v144 = v151;
      BYTE8(v144) = v152;
      v145 = v153;
      sub_226824(&v142);
      v139 = v146;
      v140 = v147;
      v141[0] = v148[0];
      *(v141 + 10) = *(v148 + 10);
      v135 = v142;
      v136 = v143;
      v137 = v144;
      v138 = v145;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409978);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409980);
      sub_EC8C(&qword_409988, &qword_409978);
      sub_226830();
      sub_305D48();
      v139 = v158;
      v140 = v159;
      v141[0] = v160[0];
      *(v141 + 10) = *(v160 + 10);
      v135 = v154;
      v136 = v155;
      v137 = v156;
      v138 = v157;
      UINavigationBar.overrideBackButtonStyle.setter(&v135);
      v158 = v139;
      v159 = v140;
      v160[0] = v141[0];
      *(v160 + 10) = *(v141 + 10);
      v154 = v135;
      v155 = v136;
      v156 = v137;
      v157 = v138;
    }

    goto LABEL_11;
  }

  v11 = v7;
  v12 = v124[24];
  v123 = v6;
  if (v12)
  {
    LOBYTE(v135) = 1;

    v122 = 0;
    v119 = 0;
    v120 = 0;
    v117 = 0;
    v113 = 0;
    v114 = 0;
    v112 = 0;
    LODWORD(v121) = v135;
  }

  else
  {

    sub_306C58();
    sub_3051F8();
    LODWORD(v121) = 0;
    v122 = v149;
    v119 = v153;
    v120 = v151;
    v117 = *(&v153 + 1);
    LOBYTE(v154) = 1;
    LOBYTE(v142) = v150;
    LOBYTE(v133[0]) = v152;
    v112 = 1;
    v113 = v150;
    v114 = v152;
    LOBYTE(v135) = 0;
  }

  *&v135 = v11;
  *(&v135 + 1) = v9;
  sub_E504();
  v13 = sub_3063C8();
  v15 = v14;
  v17 = v16;

  v18 = sub_306388();
  v20 = v19;
  v22 = v21;
  v115 = v10;

  sub_EBC8(v13, v15, v17 & 1);

  sub_3068A8();
  v23 = sub_306338();
  v25 = v24;
  v27 = v26;

  sub_EBC8(v18, v20, v22 & 1);

  v28 = sub_306368();
  v30 = v29;
  LOBYTE(v20) = v31;
  v33 = v32;
  sub_EBC8(v23, v25, v27 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v20) = v20 & 1;
  LOBYTE(v133[0]) = v20;
  LOBYTE(v126) = 0;
  sub_EBD8(v28, v30, v20);

  sub_EBD8(v28, v30, v20);

  sub_EBC8(v28, v30, v20);

  *&v142 = 0;
  *(&v142 + 1) = v112;
  *&v143 = v122;
  *(&v143 + 1) = v113;
  *&v144 = v120;
  *(&v144 + 1) = v114;
  *&v145 = v119;
  *(&v145 + 1) = v117;
  LOBYTE(v146) = v121;
  *(&v146 + 1) = v28;
  *&v147 = v30;
  BYTE8(v147) = v20;
  *&v148[0] = v33;
  *(&v148[0] + 1) = KeyPath;
  *&v148[1] = 1;
  BYTE8(v148[1]) = 0;
  sub_2268B4(&v142);
  v139 = v146;
  v140 = v147;
  v141[0] = v148[0];
  *(v141 + 10) = *(v148 + 10);
  v135 = v142;
  v136 = v143;
  v137 = v144;
  v138 = v145;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409978);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409980);
  sub_EC8C(&qword_409988, &qword_409978);
  sub_226830();
  sub_305D48();

  sub_EBC8(v28, v30, v20);

  v139 = v158;
  v140 = v159;
  v141[0] = v160[0];
  *(v141 + 10) = *(v160 + 10);
  v135 = v154;
  v136 = v155;
  v137 = v156;
  v138 = v157;
  UINavigationBar.overrideBackButtonStyle.setter(&v135);
  v158 = v139;
  v159 = v140;
  v160[0] = v141[0];
  *(v160 + 10) = *(v141 + 10);
  v154 = v135;
  v155 = v136;
  v156 = v137;
  v157 = v138;
LABEL_11:
  LODWORD(v117) = *v124;
  if (v117 != 1)
  {
    v35 = sub_307D88();
    if (v36)
    {
      goto LABEL_13;
    }

LABEL_17:
    v122 = 0;
    v123 = 0;
    v115 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 0;
    goto LABEL_18;
  }

  v35 = sub_307DC8();
  if (!v36)
  {
    goto LABEL_17;
  }

LABEL_13:
  *&v135 = v35;
  *(&v135 + 1) = v36;
  sub_E504();
  v37 = sub_3063C8();
  v39 = v38;
  v41 = v40;
  type metadata accessor for CircleLockupView.Metrics(0);
  v42 = sub_306188();
  v43 = v118;
  (*(*(v42 - 8) + 56))(v118, 1, 1, v42);
  sub_3061E8();
  sub_EB68(v43, &qword_3FEE80);
  v44 = sub_306388();
  v46 = v45;
  v48 = v47;

  sub_EBC8(v37, v39, v41 & 1);

  v49 = v117;
  v50 = sub_306378();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  sub_EBC8(v44, v46, v48 & 1);

  v57 = 1;
  if (!v49)
  {
    v57 = 2;
  }

  v121 = v57;
  v58 = swift_getKeyPath();
  v122 = v52;
  v123 = v50;
  v115 = v54 & 1;
  sub_EBD8(v50, v52, v54 & 1);
  v119 = v56;

  v120 = v58;

LABEL_18:
  v59 = sub_2227E8();
  if (v60)
  {
    *&v135 = v59;
    *(&v135 + 1) = v60;
    sub_E504();
    v61 = sub_3063C8();
    v63 = v62;
    v65 = v64;
    type metadata accessor for CircleLockupView.Metrics(0);
    v66 = sub_306188();
    v67 = v118;
    (*(*(v66 - 8) + 56))(v118, 1, 1, v66);
    sub_3061E8();
    sub_EB68(v67, &qword_3FEE80);
    v68 = sub_306388();
    v70 = v69;
    v72 = v71;

    sub_EBC8(v61, v63, v65 & 1);

    if (v117)
    {
      sub_306898();
    }

    else
    {
      sub_3068A8();
    }

    v77 = sub_306338();
    v79 = v78;
    v81 = v80;
    v83 = v82;

    sub_EBC8(v68, v70, v72 & 1);

    v84 = swift_getKeyPath();
    v85 = (v81 & 1);
    v73 = v77;
    v74 = v79;
    v118 = v85;
    sub_EBD8(v77, v79, v85);
    v75 = v83;

    v76 = v84;

    v124 = (&dword_0 + 1);
  }

  else
  {
    v73 = 0;
    v74 = 0;
    v118 = 0;
    v75 = 0;
    v76 = 0;
    v124 = 0;
  }

  v130 = v158;
  v131 = v159;
  v132[0] = v160[0];
  *(v132 + 10) = *(v160 + 10);
  v126 = v154;
  v127 = v155;
  v128 = v156;
  v129 = v157;
  v133[2] = v156;
  v133[3] = v157;
  v133[0] = v154;
  v133[1] = v155;
  *(v134 + 10) = *(v160 + 10);
  v134[0] = v160[0];
  v133[4] = v158;
  v133[5] = v159;
  v137 = v156;
  v138 = v157;
  v135 = v154;
  v136 = v155;
  *(v141 + 10) = *(v160 + 10);
  v140 = v159;
  v141[0] = v160[0];
  v139 = v158;
  sub_EB00(&v154, &v142, &qword_409970);
  sub_EB00(v133, &v142, &qword_409970);
  v86 = v122;
  v87 = v123;
  v88 = v115;
  sub_E20E0(v123, v122, v115, v119);
  v89 = v73;
  v90 = v73;
  v114 = v73;
  v91 = v74;
  v92 = v74;
  v93 = v118;
  v117 = v76;
  sub_E20E0(v90, v92, v118, v75);
  v94 = v87;
  v95 = v86;
  v96 = v88;
  v97 = v88;
  v99 = v119;
  v98 = v120;
  sub_E2130(v94, v95, v96, v119);
  v100 = v89;
  v101 = v124;
  sub_E2130(v100, v91, v93, v75);
  sub_EB68(&v154, &qword_409970);
  v102 = v140;
  v103 = v116;
  *(v116 + 64) = v139;
  *(v103 + 80) = v102;
  v104 = v141[1];
  *(v103 + 96) = v141[0];
  *(v103 + 112) = v104;
  v105 = v136;
  *v103 = v135;
  *(v103 + 16) = v105;
  v106 = v138;
  *(v103 + 32) = v137;
  *(v103 + 48) = v106;
  v108 = v122;
  v107 = v123;
  *(v103 + 128) = v123;
  *(v103 + 136) = v108;
  *(v103 + 144) = v97;
  *(v103 + 152) = v99;
  *(v103 + 160) = v98;
  *(v103 + 168) = v121;
  *(v103 + 176) = 0;
  v109 = v114;
  *(v103 + 184) = v114;
  *(v103 + 192) = v91;
  *(v103 + 200) = v93;
  *(v103 + 208) = v75;
  *(v103 + 216) = v117;
  *(v103 + 224) = v101;
  *(v103 + 232) = 0;
  sub_E2130(v109, v91, v93, v75);
  sub_E2130(v107, v108, v97, v99);
  v146 = v130;
  v147 = v131;
  v148[0] = v132[0];
  *(v148 + 10) = *(v132 + 10);
  v142 = v126;
  v143 = v127;
  v144 = v128;
  v145 = v129;
  return sub_EB68(&v142, &qword_409970);
}

uint64_t CircleLockupView.init(presentation:model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a2;
  v23 = sub_306278();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_307048();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CircleLockupView.Metrics(0);
  v13 = v12 - 8;
  v14 = __chkstk_darwin(v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8, v14);
  sub_225438(v11, v16);
  v17 = type metadata accessor for CircleLockupView(0);
  v18 = a3 + v17[6];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  *(a3 + v17[7]) = 0;
  sub_22557C(v16, a3);
  v19 = v23;
  *(a3 + v17[5]) = v22;
  v24 = *(v16 + 1);
  (*(v5 + 16))(v7, &v16[*(v13 + 48)], v19);
  sub_70648();
  sub_305148();
  (*(v9 + 8))(a1, v8);
  return sub_2265EC(v16, type metadata accessor for CircleLockupView.Metrics);
}

uint64_t sub_225438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_307038();
  v4 = sub_3070D8();
  v5 = sub_307038();
  v6 = sub_306FE8();
  v7 = 3;
  if (v5 > 0x2Fu)
  {
    if (v5 != 48)
    {
      if (v5 != 49)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  else if (v5 != 45)
  {
    if (v5 != 47)
    {
      goto LABEL_11;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_11;
  }

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = 4;
  }

LABEL_11:
  v11 = v7;
  sub_2224E8(&v11, v4 & 1, a2);
  v8 = sub_307048();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

uint64_t sub_225528@<X0>(void *a1@<X8>)
{
  sub_1A27C8();
  result = sub_305A38();
  *a1 = v3;
  return result;
}

uint64_t sub_22557C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CircleLockupView.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static CircleLockupView.sectionBottomInset(presentation:environment:)(uint64_t a1)
{
  v2 = sub_307048();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CircleLockupView.Metrics(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2, v7);
  sub_225438(v5, v9);
  v10 = 0;
  if ((v9[1] & 1) == 0)
  {
    sub_3074F8();
    v10 = v11;
  }

  sub_2265EC(v9, type metadata accessor for CircleLockupView.Metrics);
  return v10;
}

uint64_t static CircleLockupView.artworkPosition.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ShelfArtworkPosition.top(_:);
  v3 = sub_307228();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t static CircleLockupView.cellShape(presentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_307048();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CircleLockupView.Metrics(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4, v9);
  sub_225438(v7, v11);
  if (v11[1] == 1)
  {
    left = 0.0;
    bottom = 0.0;
    right = 0.0;
    v15 = 0;
    v16 = &v11[*(v8 + 52)];
  }

  else
  {
    v16 = &UIEdgeInsetsZero;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v15 = 1;
  }

  top = v16->top;
  result = sub_2265EC(v11, type metadata accessor for CircleLockupView.Metrics);
  *a2 = top;
  *(a2 + 8) = left;
  *(a2 + 16) = bottom;
  *(a2 + 24) = right;
  *(a2 + 32) = v15;
  return result;
}

uint64_t sub_225940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_225DE8(&qword_4098F8, type metadata accessor for CircleLockupView);

  return ShelfSwiftUICell.init(presentation:model:)(a1, a2, a3, v6);
}

uint64_t static CircleLockupView.heightFor(presentation:traitCollection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v22 = a3;
  v19 = a1;
  v20 = sub_306278();
  v3 = *(v20 - 8);
  __chkstk_darwin(v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3020D8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_307048();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CircleLockupView.Metrics(0);
  v15 = __chkstk_darwin(v14);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v19, v10, v15);
  sub_225438(v13, v17);
  (*(v3 + 16))(v5, &v17[*(v14 + 40)], v20);
  sub_302068();
  sub_302008();
  (*(v7 + 8))(v9, v6);
  sub_307198();
  return sub_2265EC(v17, type metadata accessor for CircleLockupView.Metrics);
}

unint64_t sub_225CA4()
{
  result = qword_409758;
  if (!qword_409758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_409758);
  }

  return result;
}

uint64_t sub_225DE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_225ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CircleLockupView.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FED68);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22601C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CircleLockupView.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FED68);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_22614C()
{
  type metadata accessor for CircleLockupView.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_307DF8();
    if (v1 <= 0x3F)
    {
      sub_226208();
      if (v2 <= 0x3F)
      {
        sub_7A2DC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_226208()
{
  if (!qword_3FF0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_3FF0E8);
    v0 = sub_3050B8();
    if (!v1)
    {
      atomic_store(v0, &qword_3FF0E0);
    }
  }
}

unint64_t sub_226280()
{
  result = qword_409828;
  if (!qword_409828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409830);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4096C0);
    sub_2234BC();
    swift_getOpaqueTypeConformance2();
    sub_225DE8(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_409828);
  }

  return result;
}

uint64_t sub_22638C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_306278();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_226458(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = sub_306278();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2264FC()
{
  sub_DE4D4(319, &qword_4098A0);
  if (v0 <= 0x3F)
  {
    sub_DE4D4(319, &unk_4098A8);
    if (v1 <= 0x3F)
    {
      sub_306278();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2265EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22664C()
{
  result = qword_409948;
  if (!qword_409948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409920);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407A80);
    sub_1B24A0();
    sub_E1EC0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_409948);
  }

  return result;
}

unint64_t sub_226730()
{
  result = qword_409950;
  if (!qword_409950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409928);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409920);
    sub_22664C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_409950);
  }

  return result;
}

double sub_2267F8(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = -256;
  return result;
}

unint64_t sub_226830()
{
  result = qword_409990;
  if (!qword_409990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_409990);
  }

  return result;
}

uint64_t sub_2268C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_309778();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = *(a2 + 8);
  v31 = 0;
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F60);

  sub_30B8E8();
  v24 = v25;
  v27 = v25;
  v32 = v13;
  v33 = v14;
  sub_309548();
  if (swift_dynamicCastClass())
  {
    swift_retain_n();
    sub_309758();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v12, v8, v9);
      sub_309728();
      v17 = sub_309738();
      if (v19 == -1)
      {
      }

      else
      {
        v20 = v17;
        v21 = v18;
        v22 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDD0);
        sub_30B9A8();
        sub_30BE78();

        v31 = sub_303AF8();
        sub_303AE8();

        sub_E1BCC(v20, v21, v22);
      }

      (*(v10 + 8))(v12, v9);
      goto LABEL_12;
    }

    sub_EB68(v8, &qword_3FEA58);
  }

  else
  {
  }

  v15 = sub_307D18();
  if (!v15)
  {
    swift_unknownObjectRelease();

    *(a3 + 80) = 0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return result;
  }

  v16 = v15;
  v29 = sub_30B038();
  v30 = sub_228DAC(&qword_3FBDA0, &type metadata accessor for Action);

  v28 = v16;
LABEL_12:
  sub_E1B1C(&v26, a3);
  return sub_E1B78(&v26);
}

uint64_t sub_226C70()
{
  sub_306258();
  v0 = sub_306178();

  qword_409998 = v0;
  return result;
}

uint64_t sub_226CAC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_303748();
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3039A8();
  if ((sub_3036F8() & 1) == 0)
  {
    sub_303738();
  }

  sub_2B454(v4);
  result = sub_306928();
  *a1 = result;
  return result;
}

BOOL static CompactPlayButton.Style.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

BOOL sub_226DC0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_226DFC()
{
  v1 = sub_307CF8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_EB00(v0 + 24, v14, &unk_3FBB40);
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60);
    sub_3077E8();
    if (swift_dynamicCast())
    {
      sub_3077A8();
      v5 = sub_307CC8();
      (*(v2 + 8))(v4, v1);
      if (v5 == 3)
      {
      }

      else
      {
        v7 = sub_3036D8();
        v9 = v8;
        if (v7 == sub_3036D8() && v9 == v10)
        {

          return 1;
        }

        v12 = sub_30D728();

        if (v12)
        {
          return 1;
        }
      }
    }
  }

  else
  {
    sub_EB68(v14, &unk_3FBB40);
  }

  return 0;
}

uint64_t sub_226FF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_305478();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3054F8();
  v6 = *(v5 - 8);
  v42 = v5;
  v43 = v6;
  __chkstk_darwin(v5);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_305E08();
  v37 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409A20);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409A18);
  v38 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409A10);
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v19 = &v36 - v18;
  sub_E1B1C(v2, &v49);
  v20 = swift_allocObject();
  v21 = v52;
  *(v20 + 48) = v51;
  *(v20 + 64) = v21;
  *(v20 + 80) = v53;
  *(v20 + 96) = v54;
  v22 = v50;
  *(v20 + 16) = v49;
  *(v20 + 32) = v22;
  v48 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409A58);
  sub_2290A8();
  sub_306A68();
  sub_305DF8();
  v23 = sub_EC8C(&qword_409A28, &qword_409A20);
  v24 = sub_228DAC(&qword_3FCA58, &type metadata accessor for BorderlessButtonStyle);
  sub_3064E8();
  (*(v37 + 8))(v10, v8);
  (*(v12 + 8))(v14, v11);
  v25 = v39;
  sub_305688();
  *&v49 = v11;
  *(&v49 + 1) = v8;
  *&v50 = v23;
  *(&v50 + 1) = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_228DAC(&qword_409A30, &type metadata accessor for LiftHoverEffect);
  v28 = v42;
  sub_306548();
  v29 = v25;
  v30 = v28;
  (*(v43 + 8))(v29, v28);
  (*(v38 + 8))(v17, v15);
  v31 = v44;
  v32 = v45;
  v33 = v46;
  (*(v45 + 104))(v44, enum case for DynamicTypeSize.medium(_:), v46);
  *&v49 = v15;
  *(&v49 + 1) = v30;
  *&v50 = OpaqueTypeConformance2;
  *(&v50 + 1) = v27;
  swift_getOpaqueTypeConformance2();
  v34 = v40;
  sub_306618();
  (*(v32 + 8))(v31, v33);
  return (*(v41 + 8))(v19, v34);
}

uint64_t sub_227640(uint64_t a1)
{
  v2 = sub_302558();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_EB00(a1 + 24, &v7, &unk_3FBB40);
  if (!v8)
  {
    return sub_EB68(&v7, &unk_3FBB40);
  }

  sub_12658(&v7, v9);
  swift_getObjectType();
  (*(v3 + 104))(v5, enum case for ActionMetricsBehavior.fromAction(_:), v2);
  sub_307C38();

  (*(v3 + 8))(v5, v2);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

double sub_2277BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 64))
  {
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402750);
    sub_EC8C(&qword_402758, &qword_402750);
    sub_3053C8();
    sub_2291B8();

    sub_305D48();
  }

  else
  {
    sub_226DFC();
    sub_306928();
    sub_2291B8();
    sub_305D48();
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_227930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_305438();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409A80);
  __chkstk_darwin(v47);
  v7 = &v45 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409A88);
  v8 = *(v45 - 8);
  __chkstk_darwin(v45);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409A90);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v45 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409A98);
  __chkstk_darwin(v16 - 8);
  v46 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.n128_f64[0] = __chkstk_darwin(v18);
  v52 = &v45 - v20;
  if (*(a1 + 80))
  {
    (*(v13 + 56))(v52, 1, 1, v12, v19);
  }

  else
  {
    v21 = *(a1 + 72);
    v22 = v8;
    v23 = v3;
    v24 = *(sub_3055F8() + 20);
    v25 = enum case for RoundedCornerStyle.continuous(_:);
    v26 = sub_305B68();
    v27 = v15 + v24;
    v3 = v23;
    v8 = v22;
    (*(*(v26 - 8) + 104))(v27, v25, v26);
    *v15 = v21;
    v15[1] = v21;
    *(v15 + *(v12 + 52)) = sub_305E88();
    *(v15 + *(v12 + 56)) = 256;
    v28 = v52;
    sub_2295BC(v15, v52);
    (*(v13 + 56))(v28, 0, 1, v12, v29);
  }

  sub_226FF8(v7);
  v30 = sub_306878();
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_409AA0) + 36)] = v30;
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_409AA8) + 36)] = 0;
  v31 = &v7[*(v47 + 36)];
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD720) + 28);
  sub_305BF8();
  v33 = sub_305C28();
  (*(*(v33 - 8) + 56))(v31 + v32, 0, 1, v33);
  *v31 = swift_getKeyPath();
  v34 = v49;
  sub_305418();
  sub_22920C();
  v35 = v48;
  sub_3065B8();
  (*(v4 + 8))(v34, v3);
  sub_EB68(v7, &qword_409A80);
  v36 = v52;
  v37 = v46;
  sub_EB00(v52, v46, &qword_409A98);
  v38 = *(v8 + 16);
  v39 = v50;
  v40 = v45;
  v38(v50, v35, v45);
  v41 = v51;
  sub_EB00(v37, v51, &qword_409A98);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409AC8);
  v38((v41 + *(v42 + 48)), v39, v40);
  v43 = *(v8 + 8);
  v43(v35, v40);
  sub_EB68(v36, &qword_409A98);
  v43(v39, v40);
  return sub_EB68(v37, &qword_409A98);
}

uint64_t sub_227EDC()
{
  v0 = sub_305438();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4099C0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  sub_226FF8(&v26 - v8);
  if (qword_3FAC30 != -1)
  {
    swift_once();
  }

  v10 = sub_306288();
  KeyPath = swift_getKeyPath();
  v12 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_409A08) + 36)];
  *v12 = KeyPath;
  v12[1] = v10;
  if (qword_3FAFB8 != -1)
  {
    swift_once();
  }

  v13 = sub_30D058();
  v14 = [objc_opt_self() systemGray6Color];
  v15 = sub_30D058();

  v16 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4099F8) + 36)];
  *v16 = v13;
  v16[1] = v15;
  v17 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4099E8) + 36)];
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC798) + 28);
  v19 = enum case for Image.Scale.medium(_:);
  v20 = sub_306958();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4099D8) + 36)] = 0x3FF0000000000000;
  v21 = &v9[*(v7 + 36)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD720) + 28);
  sub_305C18();
  v23 = sub_305C28();
  (*(*(v23 - 8) + 56))(v21 + v22, 0, 1, v23);
  *v21 = swift_getKeyPath();
  sub_305428();
  sub_305408();
  v24 = *(v1 + 8);
  v24(v6, v0);
  sub_228670();
  sub_3065B8();
  v24(v3, v0);
  return sub_EB68(v9, &qword_4099C0);
}

uint64_t CompactPlayButton.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4099A0);
  __chkstk_darwin(v1);
  v3 = (&v18 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4099A8);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4099B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  if (*(v0 + 80) == 1)
  {
    sub_227EDC();
    (*(v8 + 16))(v6, v10, v7);
    swift_storeEnumTagMultiPayload();
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4099C0);
    v12 = sub_228670();
    v18 = v11;
    v19 = v12;
    swift_getOpaqueTypeConformance2();
    sub_EC8C(&qword_409A38, &qword_4099A0);
    sub_305D48();
    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    *v3 = sub_306C58();
    v3[1] = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4099B8);
    sub_227930(v0, v3 + *(v15 + 44));
    sub_228600(v3, v6);
    swift_storeEnumTagMultiPayload();
    v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4099C0);
    v17 = sub_228670();
    v18 = v16;
    v19 = v17;
    swift_getOpaqueTypeConformance2();
    sub_EC8C(&qword_409A38, &qword_4099A0);
    sub_305D48();
    return sub_EB68(v3, &qword_4099A0);
  }
}

uint64_t sub_228600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4099A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_228670()
{
  result = qword_4099C8;
  if (!qword_4099C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4099C0);
    sub_228728();
    sub_EC8C(&qword_3FD718, &qword_3FD720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4099C8);
  }

  return result;
}

unint64_t sub_228728()
{
  result = qword_4099D0;
  if (!qword_4099D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4099D8);
    sub_2287E0();
    sub_EC8C(&qword_4075D8, &qword_4075D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4099D0);
  }

  return result;
}

unint64_t sub_2287E0()
{
  result = qword_4099E0;
  if (!qword_4099E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4099E8);
    sub_228898();
    sub_EC8C(&qword_3FC7B8, &qword_3FC798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4099E0);
  }

  return result;
}

unint64_t sub_228898()
{
  result = qword_4099F0;
  if (!qword_4099F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4099F8);
    sub_228950();
    sub_EC8C(&qword_403AA0, &qword_403AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4099F0);
  }

  return result;
}

unint64_t sub_228950()
{
  result = qword_409A00;
  if (!qword_409A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409A08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409A10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409A18);
    sub_3054F8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409A20);
    sub_305E08();
    sub_EC8C(&qword_409A28, &qword_409A20);
    sub_228DAC(&qword_3FCA58, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_228DAC(&qword_409A30, &type metadata accessor for LiftHoverEffect);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_EC8C(&qword_3FC778, &qword_3FC780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_409A00);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine11ActionModel_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_228BC8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_228C10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_228C8C()
{
  result = qword_409A40;
  if (!qword_409A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409A48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4099C0);
    sub_228670();
    swift_getOpaqueTypeConformance2();
    sub_EC8C(&qword_409A38, &qword_4099A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_409A40);
  }

  return result;
}

uint64_t sub_228DAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_228E18(uint64_t a1)
{
  v2 = sub_306958();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_3056E8();
}

uint64_t sub_228F58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409A50);
  __chkstk_darwin(v2 - 8);
  sub_EB00(a1, &v5 - v3, &qword_409A50);
  return sub_305818();
}

uint64_t sub_229004()
{

  swift_unknownObjectRelease();
  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  }

  return _swift_deallocObject(v0, 97, 7);
}

double sub_229064@<D0>(uint64_t a1@<X8>)
{
  sub_2277BC(*(v1 + 16), &v5);
  v3 = v6;
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_2290A8()
{
  result = qword_409A60;
  if (!qword_409A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409A58);
    sub_22912C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_409A60);
  }

  return result;
}

unint64_t sub_22912C()
{
  result = qword_409A68;
  if (!qword_409A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409A70);
    sub_2291B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_409A68);
  }

  return result;
}

unint64_t sub_2291B8()
{
  result = qword_409A78;
  if (!qword_409A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_409A78);
  }

  return result;
}

unint64_t sub_22920C()
{
  result = qword_409AB0;
  if (!qword_409AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409A80);
    sub_2292C4();
    sub_EC8C(&qword_3FD718, &qword_3FD720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_409AB0);
  }

  return result;
}

unint64_t sub_2292C4()
{
  result = qword_409AB8;
  if (!qword_409AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409AA8);
    sub_22937C();
    sub_EC8C(&qword_4075D8, &qword_4075D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_409AB8);
  }

  return result;
}

unint64_t sub_22937C()
{
  result = qword_409AC0;
  if (!qword_409AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409AA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409A10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409A18);
    sub_3054F8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_409A20);
    sub_305E08();
    sub_EC8C(&qword_409A28, &qword_409A20);
    sub_228DAC(&qword_3FCA58, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_228DAC(&qword_409A30, &type metadata accessor for LiftHoverEffect);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_EC8C(&qword_3FC820, &qword_3FC828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_409AC0);
  }

  return result;
}

uint64_t sub_2295BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409A90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_229660(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v11.receiver = a1;
  v11.super_class = swift_getObjectType();
  v8 = *a4;
  v9 = v11.receiver;
  objc_msgSendSuper2(&v11, v8, a3);
  v10 = [objc_opt_self() sharedCoordinator];
  [v10 *a5];
}

id sub_2296F4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  sub_229AA8(a1, &v16 - v6);
  v8 = sub_301CB8();
  v9 = *(v8 - 8);
  v11 = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_301C08(v10);
    v11 = v12;
    (*(v9 + 8))(v7, v8);
  }

  v16.receiver = v2;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, "initWithCompositionURL:", v11);

  v14 = v13;
  sub_229B18(a1);
  if (v14)
  {
  }

  return v14;
}

uint64_t sub_229AA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_229B18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_229B80(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 8);
      swift_unknownObjectRetain();
      v9(a1, ObjectType, v7);
      swift_unknownObjectRelease();
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_229C48(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 16);
      swift_unknownObjectRetain();
      v9(a1, ObjectType, v7);
      swift_unknownObjectRelease();
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_229D10(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 24);
      swift_unknownObjectRetain();
      v9(a1, ObjectType, v7);
      swift_unknownObjectRelease();
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_229DD8(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  v6 = *(v2 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = (v6 + 40);
    do
    {
      v9 = *v8;
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 32);
      swift_unknownObjectRetain();
      v11(a1, a2 & 1, ObjectType, v9);
      swift_unknownObjectRelease();
      v8 += 2;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_229EA8(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 40);
      swift_unknownObjectRetain();
      v9(a1, ObjectType, v7);
      swift_unknownObjectRelease();
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_229F70(uint64_t a1, uint64_t a2, double a3, double a4)
{
  result = swift_beginAccess();
  v10 = *(v4 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {

    v12 = (v10 + 40);
    do
    {
      v13 = *v12;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 48);
      swift_unknownObjectRetain();
      v15(a1, a2, ObjectType, v13, a3, a4);
      swift_unknownObjectRelease();
      v12 += 2;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_22A058(uint64_t a1, uint64_t a2, double a3, double a4)
{
  result = swift_beginAccess();
  v10 = *(v4 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {

    v12 = (v10 + 40);
    do
    {
      v13 = *v12;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 56);
      swift_unknownObjectRetain();
      v15(a1, a2, ObjectType, v13, a3, a4);
      swift_unknownObjectRelease();
      v12 += 2;
      --v11;
    }

    while (v11);
  }

  return result;
}

void ContainerCell<>.setSeparatorHidden(hidden:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 80))(a2, a3);
  if (v4)
  {
    v5 = 1.0;
    if (a1)
    {
      v5 = 0.0;
    }

    v6 = v4;
    [v4 setAlpha:v5];
  }
}

uint64_t ContainerCell.embeddedView<A>(as:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = __chkstk_darwin(AssociatedTypeWitness);
  (*(a3 + 40))(a1, a3, v9);
  v10 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a4, v10 ^ 1u, 1, a2);
}

Swift::Void __swiftcall ContainerCell.setInContextMenu(_:)(Swift::Bool a1)
{
  v3 = v2;
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406660);
  (*(*(v3 + 8) + 16))(v6, v5, v5, v4);
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1Tm(v6, v7);
    sub_302578();
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    sub_EB68(v6, &qword_406590);
  }
}

uint64_t ContainerCell.previewMargins.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v36 = a3;
  v6 = sub_302728();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406658);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v33 - v17;
  v34 = v3;
  v37 = v3;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406660);
  v20 = *(a2 + 8);
  v21 = *(v20 + 16);
  v35 = a1;
  v21(v38, v19, v19, a1, v20);
  if (v39)
  {
    __swift_project_boxed_opaque_existential_1Tm(v38, v39);
    sub_302588();
    (*(v7 + 56))(v18, 0, 1, v6);
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    sub_EB68(v38, &qword_406590);
    (*(v7 + 56))(v18, 1, 1, v6);
  }

  sub_22A7D8(v18, v15);
  if ((*(v7 + 48))(v15, 1, v6) == 1)
  {
    sub_EB68(v15, &qword_406658);
LABEL_8:
    v38[0] = v34;
    v24 = (*(v20 + 32))(v35, v20);
    v26 = v25;
    v28 = v27;
    v30 = v29;
    sub_EB68(v18, &qword_406658);
    v31 = v36;
    *v36 = v24;
    v31[1] = v26;
    v31[2] = v28;
    v31[3] = v30;
    return (*(v7 + 104))();
  }

  v33 = *(v7 + 32);
  v33(v12, v15, v6);
  (*(v7 + 104))(v9, enum case for ContextMenuPreviewMargins.provide(_:), v6);
  sub_22A848();
  v22 = sub_30C018();
  v23 = *(v7 + 8);
  v23(v9, v6);
  if (v22)
  {
    v23(v12, v6);
    goto LABEL_8;
  }

  sub_EB68(v18, &qword_406658);
  return (v33)(v36, v12, v6);
}

uint64_t sub_22A7D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406658);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22A848()
{
  result = qword_409BE8;
  if (!qword_409BE8)
  {
    sub_302728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_409BE8);
  }

  return result;
}