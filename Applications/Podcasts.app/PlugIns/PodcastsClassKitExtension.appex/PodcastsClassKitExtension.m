void sub_100003250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003268(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = [MTRecencyUtil upNextForPodcastUuid:v2 excludeExplicit:0 ctx:*(a1 + 40)];

  v4 = [v3 episodeUuid];
  v5 = [*(a1 + 32) nextEpisodeUuid];
  v6 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) uuid];
    v8 = [v3 episodeUuid];
    [v3 modifiedDate];
    v14 = 138543874;
    v15 = v7;
    v16 = 2114;
    v17 = v8;
    v18 = 2050;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "UpNext result from update cursor position for podcast %{public}@: episodeUuid: %{public}@ at %{public}f", &v14, 0x20u);
  }

  v10 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v3 episodeUuid];
    v14 = 138543618;
    v15 = v5;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "UpNext result updating podcast nextEpisodeUuid from %{public}@ to %{public}@", &v14, 0x16u);
  }

  if (v5 != v4 && ([v5 isEqualToString:v4] & 1) == 0)
  {
    v12 = [*(a1 + 40) episodeForUuid:v4];
    v13 = [*(a1 + 40) episodeForUuid:v5];
    if ([v13 listenNowEpisode])
    {
      [v13 setListenNowEpisode:0];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    if (v12 && ([v12 listenNowEpisode] & 1) == 0)
    {
      [v12 setListenNowEpisode:1];
      *(*(*(a1 + 48) + 8) + 24) = 1;
      [v3 modifiedDate];
      [*(a1 + 32) setModifiedDate:?];
    }
  }

  if (*(a1 + 56) == 1 && *(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) saveInCurrentBlock];
  }
}

void sub_100003660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003678(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003690(uint64_t a1)
{
  v5 = [*(a1 + 32) podcastForFeedUrl:*(a1 + 40)];
  v2 = [v5 uuid];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100003858(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:kMTEpisodeEntityName];
  v3 = [*(a1 + 32) uuid];
  v4 = [MTEpisode predicateForEpisodesWithSeasonNumbersOnPodcastUuid:v3];
  [v2 setPredicate:v4];

  [v2 setFetchLimit:1];
  v5 = *(a1 + 40);
  v8 = 0;
  v6 = [v5 executeFetchRequest:v2 error:&v8];
  v7 = v8;
  *(*(*(a1 + 48) + 8) + 24) = [v6 count] != 0;

  [v7 logAndThrow:0];
}

uint64_t sub_100003C24(uint64_t a1, uint64_t a2)
{
  sub_100004600(&qword_100014C10, &qword_10000D078);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10000D010;
  *(v4 + 32) = (*(a2 + 8))(a1, a2);
  *(v4 + 40) = v5;
  (*(a2 + 16))(&v9, a1, a2);
  if (v10)
  {
    sub_10000485C(&v9, v11);
    v6 = v12;
    v7 = v13;
    sub_100004874(v11, v12);
    *&v9 = sub_100003C24(v6, v7);
    sub_1000048B8(v4);
    v4 = v9;
    sub_1000049AC(v11);
  }

  else
  {
    sub_1000047F4(&v9);
  }

  return v4;
}

id sub_100003D2C(char a1)
{
  v2 = v1;
  v4 = sub_100004600(&qword_1000149A0, &qword_10000D070);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v27 - v6;
  v8 = *v2;
  v9 = v2[1];
  v10 = v2[2];
  v11 = v2[3];
  v12 = v2[4];
  v13 = objc_allocWithZone(CLSContext);
  v14 = sub_10000B7A4();
  v15 = sub_10000B7A4();
  v16 = [v13 initWithType:v8 identifier:v14 title:v15];

  [v16 setAssignable:*(v2 + 40)];
  [v16 setDisplayOrder:v2[6]];
  v17 = type metadata accessor for CLSContextMetadata();
  sub_100004784(v2 + *(v17 + 36), v7);
  v18 = sub_10000B6E4();
  v19 = *(v18 - 8);
  v21 = 0;
  if ((*(v19 + 48))(v7, 1, v18) != 1)
  {
    sub_10000B6D4(v20);
    v21 = v22;
    (*(v19 + 8))(v7, v18);
  }

  [v16 setUniversalLinkURL:v21];

  if (a1)
  {
    v23 = v2 + *(v17 + 40);
    v24 = *(v23 + 8);
    v25 = (*v23)();
    [v16 setThumbnail:v25];
  }

  return v16;
}

void sub_100003F38(void *a1, int a2)
{
  v3 = v2;
  v63 = a2;
  v62 = type metadata accessor for CLSContextMetadata();
  v5 = *(*(v62 - 8) + 64);
  v6 = __chkstk_darwin(v62);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v62 - v9);
  v11 = sub_10000B794();
  v64 = *(v11 - 8);
  v65 = v11;
  v12 = *(v64 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v62 - v16;
  v18 = sub_100004600(&qword_1000149A0, &qword_10000D070);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v62 - v20;
  v22 = [a1 identifier];
  v23 = sub_10000B7B4();
  v25 = v24;

  if (v23 == *(v3 + 8) && v25 == *(v3 + 16))
  {
  }

  else
  {
    v26 = sub_10000B984();

    if ((v26 & 1) == 0)
    {
      sub_100004648();
      sub_10000B8E4();
      sub_100004694(v3, v8);
      v50 = a1;
      v51 = sub_10000B784();
      v52 = sub_10000B8A4();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *v53 = 136315394;
        v54 = [v50 identifier];
        v55 = sub_10000B7B4();
        v57 = v56;

        v58 = sub_1000055F0(v55, v57, &v67);

        *(v53 + 4) = v58;
        *(v53 + 12) = 2080;
        v59 = *(v8 + 1);
        v60 = *(v8 + 2);

        sub_1000046F8(v8);
        v61 = sub_1000055F0(v59, v60, &v67);

        *(v53 + 14) = v61;
        _os_log_impl(&_mh_execute_header, v51, v52, "Unable to update context identifier from %s to %s", v53, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000046F8(v8);
      }

      (*(v64 + 8))(v15, v65);
      return;
    }
  }

  if ([a1 type] == *v3)
  {
    v27 = *(v3 + 24);
    v28 = *(v3 + 32);
    v29 = sub_10000B7A4();
    [a1 setTitle:v29];

    [a1 setAssignable:*(v3 + 40)];
    [a1 setDisplayOrder:*(v3 + 48)];
    v30 = v62;
    sub_100004784(v3 + *(v62 + 36), v21);
    v31 = sub_10000B6E4();
    v32 = *(v31 - 8);
    v34 = 0;
    if ((*(v32 + 48))(v21, 1, v31) != 1)
    {
      sub_10000B6D4(v33);
      v34 = v35;
      (*(v32 + 8))(v21, v31);
    }

    [a1 setUniversalLinkURL:v34];

    if (v63)
    {
      v36 = v3 + *(v30 + 40);
      v37 = *(v36 + 8);
      v38 = (*v36)();
      [a1 setThumbnail:v38];
    }
  }

  else
  {
    sub_100004648();
    sub_10000B8E4();
    sub_100004694(v3, v10);
    v39 = a1;
    v40 = sub_10000B784();
    v41 = sub_10000B8A4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v42 = 136315394;
      v66 = [v39 type];
      type metadata accessor for CLSContextType(0);
      v43 = sub_10000B7C4();
      v45 = sub_1000055F0(v43, v44, &v67);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2080;
      v66 = *v10;
      v46 = sub_10000B7C4();
      v48 = v47;
      sub_1000046F8(v10);
      v49 = sub_1000055F0(v46, v48, &v67);

      *(v42 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v40, v41, "Unable to update context type from %s to %s", v42, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000046F8(v10);
    }

    (*(v64 + 8))(v17, v65);
  }
}

uint64_t type metadata accessor for CLSContextMetadata()
{
  result = qword_100014A18;
  if (!qword_100014A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004600(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100004648()
{
  result = qword_100014BD0;
  if (!qword_100014BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014BD0);
  }

  return result;
}

uint64_t sub_100004694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLSContextMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000046F8(uint64_t a1)
{
  v2 = type metadata accessor for CLSContextMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100004754@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100004784(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004600(&qword_1000149A0, &qword_10000D070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000047F4(uint64_t a1)
{
  v2 = sub_100004600(&qword_1000149A8, &qword_10000D080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000485C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100004874(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000048B8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000081B8(result, v11, 1, v3);
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

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000049AC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 sub_1000049F8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100004A08(uint64_t a1, int a2)
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

uint64_t sub_100004A28(uint64_t result, int a2, int a3)
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

uint64_t sub_100004A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004600(&qword_1000149A0, &qword_10000D070);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100004B48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004600(&qword_1000149A0, &qword_10000D070);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100004BF8()
{
  type metadata accessor for CLSContextType(319);
  if (v0 <= 0x3F)
  {
    sub_100004CD8();
    if (v1 <= 0x3F)
    {
      sub_100004D30();
      if (v2 <= 0x3F)
      {
        sub_100004D80();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100004CD8()
{
  if (!qword_100014A28)
  {
    sub_10000B6E4();
    v0 = sub_10000B8F4();
    if (!v1)
    {
      atomic_store(v0, &qword_100014A28);
    }
  }
}

unint64_t sub_100004D30()
{
  result = qword_100014A30;
  if (!qword_100014A30)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100014A30);
  }

  return result;
}

void sub_100004D80()
{
  if (!qword_100014A38)
  {
    sub_100004DE4(&unk_100014A40, qword_10000D0D8);
    v0 = sub_10000B8F4();
    if (!v1)
    {
      atomic_store(v0, &qword_100014A38);
    }
  }
}

uint64_t sub_100004DE4(uint64_t *a1, uint64_t *a2)
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

void sub_100004E40(uint64_t a1, unint64_t *a2)
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

void sub_100004E8C(uint64_t a1, uint64_t a2)
{
  sub_1000054D8(0, &qword_100014A98, NSPredicate_ptr);
  sub_100004600(&qword_100014AA0, &qword_10000D160);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10000D140;
  *(v5 + 56) = sub_1000054D8(0, &qword_100014AA8, NSString_ptr);
  *(v5 + 64) = sub_1000050BC(&qword_100014AB0, &qword_100014AA8, NSString_ptr);
  *(v5 + 32) = CLSPredicateKeyPathParent;
  *(v5 + 96) = sub_1000054D8(0, &unk_100014BE0, CLSContext_ptr);
  *(v5 + 104) = sub_1000050BC(&qword_100014AB8, &unk_100014BE0, CLSContext_ptr);
  *(v5 + 72) = v2;
  v6 = CLSPredicateKeyPathParent;
  v7 = v2;
  v8 = sub_10000B874();
  v9 = [objc_opt_self() shared];
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = a1;
  v10[4] = a2;
  v13[4] = sub_100005404;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100005410;
  v13[3] = &unk_1000109A0;
  v11 = _Block_copy(v13);
  v12 = v8;

  [v9 contextsMatchingPredicate:v12 completion:v11];
  _Block_release(v11);
}

uint64_t sub_1000050BC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000054D8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000510C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8 = sub_10000B794();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v29 = v10;
    sub_1000054D8(0, &qword_100014BD0, OS_os_log_ptr);
    swift_errorRetain();
    sub_10000B8E4();
    swift_errorRetain();
    v13 = a3;
    v14 = sub_10000B784();
    v15 = sub_10000B894();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v28 = a1;
      v17 = v16;
      v18 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30 = a2;
      v31 = v27;
      *v17 = 138412546;
      *(v17 + 4) = v13;
      *v18 = v13;
      *(v17 + 12) = 2080;
      swift_errorRetain();
      v19 = v13;
      sub_100004600(&qword_100014BC0, &qword_10000D200);
      v20 = sub_10000B7C4();
      v22 = sub_1000055F0(v20, v21, &v31);
      v26 = v8;
      v23 = a4;
      v24 = v22;

      *(v17 + 14) = v24;
      a4 = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error loading contexts for predicate %@ - %s", v17, 0x16u);
      sub_100005BA8(v18);

      sub_1000049AC(v27);

      a1 = v28;

      (*(v29 + 8))(v12, v26);
    }

    else
    {

      (*(v29 + 8))(v12, v8);
    }
  }

  return a4(a1);
}

uint64_t sub_1000053C4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100005410(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_1000054D8(0, &unk_100014BE0, CLSContext_ptr);
  v6 = sub_10000B854();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_1000054C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000054D8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100005520(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100005594(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1000055F0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1000055F0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000056BC(v11, 0, 0, 1, a1, a2);
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
    sub_100005C10(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000049AC(v11);
  return v7;
}

unint64_t sub_1000056BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000057C8(a5, a6);
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
    result = sub_10000B934();
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

char *sub_1000057C8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100005814(a1, a2);
  sub_100005944(&off_100010880);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100005814(uint64_t a1, unint64_t a2)
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

  v6 = sub_100005A30(v5, 0);
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

  result = sub_10000B934();
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
        v10 = sub_10000B7E4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100005A30(v10, 0);
        result = sub_10000B914();
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

uint64_t sub_100005944(uint64_t result)
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

  result = sub_100005AA4(result, v12, 1, v3);
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

void *sub_100005A30(uint64_t a1, uint64_t a2)
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

  sub_100004600(&qword_100014AC8, &qword_10000D170);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100005AA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004600(&qword_100014AC8, &qword_10000D170);
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

_BYTE **sub_100005B98(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100005BA8(uint64_t a1)
{
  v2 = sub_100004600(&qword_100014AC0, &qword_10000D168);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005C10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005C70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100004600(&qword_1000149A0, &qword_10000D070);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v44 - v6;
  v8 = type metadata accessor for CLSContextMetadata();
  v45 = *(v8 - 1);
  v9 = *(v45 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v44 - v13;
  if (([objc_opt_self() isEmpty:{objc_msgSend(v1, "storeTrackId")}] & 1) != 0 || (v15 = objc_msgSend(v1, "title")) == 0)
  {
    v25 = *(v45 + 56);

    return v25(a1, 1, 1, v8);
  }

  else
  {
    v16 = v15;
    v44 = sub_10000B7B4();
    v18 = v17;

    v49[0] = [v2 storeTrackId];
    v19 = sub_10000B974();
    v21 = v20;
    v22 = [v2 podcast];
    v23 = v22;
    if (v22)
    {
      v22 = sub_1000054D8(0, &qword_100014C00, MTPodcast_ptr);
      v24 = &off_100010A10;
    }

    else
    {
      v24 = 0;
      v49[1] = 0;
      v49[2] = 0;
    }

    v49[0] = v23;
    v49[3] = v22;
    v49[4] = v24;
    v12[40] = 1;
    *(v12 + 6) = 0;
    v27 = v8[9];
    v28 = sub_10000B6E4();
    (*(*(v28 - 8) + 56))(&v12[v27], 1, 1, v28);
    v29 = &v12[v8[10]];
    *v29 = sub_100003C1C;
    v29[1] = 0;
    *&v12[v8[11]] = 0;
    *v12 = 14;
    *(v12 + 1) = v19;
    v30 = v44;
    *(v12 + 2) = v21;
    *(v12 + 3) = v30;
    *(v12 + 4) = v18;
    sub_1000065F4(v49, v46);
    v31 = v47;
    if (v47)
    {
      v32 = v48;
      sub_100004874(v46, v47);
      v31 = sub_100003C24(v31, v32);
      sub_1000047F4(v49);
      sub_1000049AC(v46);
    }

    else
    {
      sub_1000047F4(v49);
      sub_1000047F4(v46);
    }

    *&v12[v8[12]] = v31;
    sub_100006664(v12, v14);
    *(v14 + 6) = [v2 episodeNumber];
    sub_100006108(v7);
    sub_1000066C8(v7, &v14[v8[9]]);
    v33 = [v2 uuid];
    if (v33)
    {
      v34 = v33;
      v35 = sub_10000B7B4();
      v37 = v36;

      v38 = CLSContextThumbnailMaximumAllowedDimension;
      v39 = swift_allocObject();
      *(v39 + 16) = v35;
      *(v39 + 24) = v37;
      *(v39 + 32) = v38;
      *(v39 + 40) = v38;
      v40 = sub_100006770;
    }

    else
    {
      v40 = sub_100003C1C;
      v39 = 0;
    }

    v41 = &v14[v8[10]];
    v42 = *(v41 + 1);

    *v41 = v40;
    *(v41 + 1) = v39;
    [v2 pubDate];
    *&v14[v8[11]] = v43;
    sub_100004694(v14, a1);
    (*(v45 + 56))(a1, 0, 1, v8);
    return sub_1000046F8(v14);
  }
}

uint64_t sub_100006108@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10000B794();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000B744();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  v17 = [v1 podcast];
  if (v17)
  {
    v18 = v17;
    [v17 storeCollectionId];

    sub_10000B714();
    sub_10000B734();
    [v2 storeTrackId];
    sub_10000B724();
    sub_10000B764();
    (*(v10 + 16))(v14, v16, v9);
    v19 = sub_10000B704();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    sub_10000B6F4();
    sub_10000B754();

    return (*(v10 + 8))(v16, v9);
  }

  else
  {
    sub_1000054D8(0, &qword_100014BD0, OS_os_log_ptr);
    sub_10000B8E4();
    v23 = v1;
    v24 = sub_10000B784();
    v25 = sub_10000B894();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = [v23 storeTrackId];

      _os_log_impl(&_mh_execute_header, v24, v25, "Unable to build share URL, unknown show for episode - %lld", v26, 0xCu);
    }

    else
    {

      v24 = v23;
    }

    (*(v5 + 8))(v8, v4);
    v27 = sub_10000B6E4();
    return (*(*(v27 - 8) + 56))(a1, 1, 1, v27);
  }
}

id sub_100006480(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = sub_10000B7A4();
  v6 = [v4 artworkForEpisodeUuid:v5 size:0 triggerDownload:{a1, a2}];

  v7 = [v6 CGImage];
  return v7;
}

id sub_100006580@<X0>(void *a1@<X8>)
{
  result = [*v1 podcast];
  v4 = result;
  if (result)
  {
    result = sub_1000054D8(0, &qword_100014C00, MTPodcast_ptr);
    v5 = &off_100010A10;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t sub_1000065F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004600(&qword_1000149A8, &qword_10000D080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLSContextMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000066C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004600(&qword_1000149A0, &qword_10000D070);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006738()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

id sub_100006770()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100006480(*(v0 + 32), *(v0 + 40));
}

uint64_t sub_10000677C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10000B744();
  v59 = *(v4 - 8);
  v5 = *(v59 + 64);
  v6 = (__chkstk_darwin)();
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v54 - v9;
  v11 = sub_100004600(&qword_1000149A0, &qword_10000D070);
  v12 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11 - 8);
  v14 = &v54 - v13;
  v15 = type metadata accessor for CLSContextMetadata();
  v60 = *(v15 - 1);
  v16 = *(v60 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v54 - v20;
  if (([objc_opt_self() isEmpty:{objc_msgSend(v2, "storeCollectionId")}] & 1) != 0 || (v22 = objc_msgSend(v2, "title")) == 0)
  {
    v36 = *(v60 + 56);

    return v36(a1, 1, 1, v15);
  }

  else
  {
    v57 = v4;
    v58 = a1;
    v23 = v22;
    v24 = sub_10000B7B4();
    v55 = v25;
    v56 = v24;

    *&v64[0] = [v2 storeCollectionId];
    v26 = sub_10000B974();
    v28 = v27;
    v65 = 0;
    memset(v64, 0, sizeof(v64));
    v19[40] = 1;
    *(v19 + 6) = 0;
    v29 = v15[9];
    v30 = sub_10000B6E4();
    (*(*(v30 - 8) + 56))(&v19[v29], 1, 1, v30);
    v31 = &v19[v15[10]];
    *v31 = sub_100003C1C;
    v31[1] = 0;
    *&v19[v15[11]] = 0;
    *v19 = 0;
    *(v19 + 1) = v26;
    v32 = v55;
    v33 = v56;
    *(v19 + 2) = v28;
    *(v19 + 3) = v33;
    *(v19 + 4) = v32;
    sub_1000065F4(v64, v61);
    v34 = v62;
    if (v62)
    {
      v35 = v63;
      sub_100004874(v61, v62);
      v34 = sub_100003C24(v34, v35);
      sub_1000047F4(v64);
      sub_1000049AC(v61);
    }

    else
    {
      sub_1000047F4(v64);
      sub_1000047F4(v61);
    }

    v38 = v57;
    *&v19[v15[12]] = v34;
    sub_100006664(v19, v21);
    v21[40] = 0;
    sub_10000B714();
    [v2 storeCollectionId];
    sub_10000B734();
    sub_10000B764();
    v39 = v59;
    (*(v59 + 16))(v8, v10, v38);
    v40 = sub_10000B704();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    sub_10000B6F4();
    sub_10000B754();

    (*(v39 + 8))(v10, v38);
    sub_1000066C8(v14, &v21[v15[9]]);
    v43 = [v2 uuid];
    if (v43)
    {
      v44 = v43;
      v45 = sub_10000B7B4();
      v47 = v46;

      v48 = CLSContextThumbnailMaximumAllowedDimension;
      v49 = swift_allocObject();
      *(v49 + 16) = v45;
      *(v49 + 24) = v47;
      *(v49 + 32) = v48;
      *(v49 + 40) = v48;
      v50 = sub_100006E44;
    }

    else
    {
      v50 = sub_100003C1C;
      v49 = 0;
    }

    v51 = &v21[v15[10]];
    v52 = *(v51 + 1);

    *v51 = v50;
    *(v51 + 1) = v49;
    v53 = v58;
    sub_100004694(v21, v58);
    (*(v60 + 56))(v53, 0, 1, v15);
    return sub_1000046F8(v21);
  }
}

id sub_100006CFC(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = sub_10000B7A4();
  v6 = [v4 artworkForPodcastUuid:v5 size:0 triggerDownload:{a1, a2}];

  v7 = [v6 CGImage];
  return v7;
}

double sub_100006DFC@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_100006E0C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

id sub_100006E44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100006CFC(*(v0 + 32), *(v0 + 40));
}

void sub_100006EDC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_10000B6C4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_100006F40(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100006FD0(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 setFetchBatchSize:10];
  v14 = 0;
  v15 = 0;
  v7 = swift_allocObject();
  v7[2] = &v14;
  v7[3] = v3;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = a3;
  v7[7] = &v15;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10000B3C0;
  *(v8 + 24) = v7;
  v13[4] = sub_10000B3E4;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000080CC;
  v13[3] = &unk_100010B48;
  v9 = _Block_copy(v13);
  v10 = v3;
  v11 = a1;

  [v10 performBlockAndWait:v9];
  _Block_release(v9);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    if (v15)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
      a3 = v14;
    }

    return a3;
  }

  return result;
}

uint64_t sub_1000071B4(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 setFetchBatchSize:10];
  v14 = 0;
  v15 = 0;
  v7 = swift_allocObject();
  v7[2] = &v14;
  v7[3] = v3;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = a3;
  v7[7] = &v15;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10000B534;
  *(v8 + 24) = v7;
  v13[4] = sub_10000B6AC;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000080CC;
  v13[3] = &unk_100010C60;
  v9 = _Block_copy(v13);
  v10 = v3;
  v11 = a1;

  [v10 performBlockAndWait:v9];
  _Block_release(v9);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    if (v15)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
      a3 = v14;
    }

    return a3;
  }

  return result;
}

uint64_t sub_100007398(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 setFetchBatchSize:10];
  v14 = 0;
  v15 = 0;
  v7 = swift_allocObject();
  v7[2] = &v14;
  v7[3] = v3;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = a3;
  v7[7] = &v15;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10000B4AC;
  *(v8 + 24) = v7;
  v13[4] = sub_10000B6AC;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000080CC;
  v13[3] = &unk_100010BE8;
  v9 = _Block_copy(v13);
  v10 = v3;
  v11 = a1;

  [v10 performBlockAndWait:v9];
  _Block_release(v9);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    if (v15)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
      a3 = v14;
    }

    return a3;
  }

  return result;
}

void sub_10000757C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 uuid];
  if (v3)
  {
    v4 = v3;
    v5 = sub_10000B7B4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_100007604(unint64_t a1, uint64_t a2, void *a3)
{
  v23 = a3;
  v25 = a1;
  v4 = type metadata accessor for CLSContextMetadata();
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    v24 = xmmword_10000D010;
    do
    {
      v17 = sub_100004694(v11, v9);
      __chkstk_darwin(v17);
      *(&v22 - 2) = v9;
      v18 = sub_1000079AC(sub_10000B2E0, (&v22 - 4), v25);
      if (v18)
      {
        v19 = v18;
        sub_100003F38(v18, 0);
        sub_10000B884();
        sub_100004600(&qword_100014AA0, &qword_10000D160);
        v20 = swift_allocObject();
        *(v20 + 16) = v24;
        *(v20 + 56) = sub_1000054D8(0, &unk_100014BE0, CLSContext_ptr);
        *(v20 + 64) = sub_10000B300();
        *(v20 + 32) = v19;
        sub_1000054D8(0, &qword_100014BD0, OS_os_log_ptr);
        v21 = v19;
        v15 = sub_10000B8D4();
        sub_10000B774();
      }

      else
      {
        v13 = sub_100003D2C(0);
        sub_10000B884();
        sub_100004600(&qword_100014AA0, &qword_10000D160);
        v14 = swift_allocObject();
        *(v14 + 16) = v24;
        *(v14 + 56) = sub_1000054D8(0, &unk_100014BE0, CLSContext_ptr);
        *(v14 + 64) = sub_10000B300();
        *(v14 + 32) = v13;
        sub_1000054D8(0, &qword_100014BD0, OS_os_log_ptr);
        v15 = v13;
        v16 = sub_10000B8D4();
        sub_10000B774();

        [v23 addChildContext:v15];
      }

      result = sub_1000046F8(v9);
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_100007910(id *a1, uint64_t a2)
{
  v3 = [*a1 identifier];
  v4 = sub_10000B7B4();
  v6 = v5;

  if (v4 == *(a2 + 8) && v6 == *(a2 + 16))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10000B984();
  }

  return v8 & 1;
}

void *sub_1000079AC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10000B954())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_10000B924();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

id sub_100007B00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextRequestHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100007B58(char **a1, void *a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, id))
{
  sub_1000054D8(0, &qword_100014C00, MTPodcast_ptr);
  v7 = sub_10000B8B4();
  v8 = v7;
  v23 = a1;
  v24 = a2;
  v9 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
LABEL_21:
    v10 = sub_10000B954();
  }

  else
  {
    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  v25 = &_swiftEmptyArrayStorage;
  while (v10 != v11)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = sub_10000B924();
    }

    else
    {
      if (v11 >= *(v9 + 16))
      {
        goto LABEL_20;
      }

      v12 = *(v8 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    a4(&v26, v12);

    v15 = v27;
    ++v11;
    if (v27)
    {
      v21 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1000081B8(0, *(v25 + 2) + 1, 1, v25);
      }

      v17 = *(v25 + 2);
      v16 = *(v25 + 3);
      v22 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v25 = sub_1000081B8((v16 > 1), v22, 1, v25);
      }

      *(v25 + 2) = v22;
      v18 = &v25[16 * v17];
      *(v18 + 4) = v21;
      *(v18 + 5) = v15;
      v11 = v14;
    }
  }

  v19 = *v23;
  *v23 = v25;

  return [v24 reset];
}

id sub_100007D64(uint64_t *a1, void *a2, uint64_t a3, void (*a4)(id), uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t *a8)
{
  v47 = a4;
  v48 = a5;
  v40 = a1;
  v11 = sub_100004600(&qword_100014BF8, &qword_10000D208);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v38 - v13;
  v15 = type metadata accessor for CLSContextMetadata();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v38 - v21;
  sub_1000054D8(0, a7, a8);
  v23 = sub_10000B8B4();
  v24 = v23;
  v41 = v22;
  v42 = v16;
  v45 = v15;
  v46 = v20;
  if (v23 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10000B954())
  {
    v39 = a2;
    if (!i)
    {
      break;
    }

    v26 = 0;
    v43 = v24 & 0xFFFFFFFFFFFFFF8;
    v44 = v24 & 0xC000000000000001;
    v27 = (v42 + 48);
    v28 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v44)
      {
        v29 = sub_10000B924();
      }

      else
      {
        if (v26 >= *(v43 + 16))
        {
          goto LABEL_21;
        }

        v29 = *(v24 + 8 * v26 + 32);
      }

      v30 = v29;
      v31 = (v26 + 1);
      if (__OFADD__(v26, 1))
      {
        break;
      }

      a2 = i;
      v47(v29);

      if ((*v27)(v14, 1, v45) == 1)
      {
        sub_10000B40C(v14, &qword_100014BF8, &qword_10000D208);
      }

      else
      {
        v32 = v41;
        sub_100006664(v14, v41);
        sub_100006664(v32, v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1000082C4(0, v28[2] + 1, 1, v28);
        }

        v34 = v28[2];
        v33 = v28[3];
        v35 = v46;
        if (v34 >= v33 >> 1)
        {
          v28 = sub_1000082C4(v33 > 1, v34 + 1, 1, v28);
          v35 = v46;
        }

        v28[2] = v34 + 1;
        sub_100006664(v35, v28 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v34);
      }

      ++v26;
      i = a2;
      if (v31 == a2)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v28 = &_swiftEmptyArrayStorage;
LABEL_19:

  v36 = *v40;
  *v40 = v28;

  return [v39 reset];
}

Swift::Int sub_1000080FC()
{
  sub_10000B9D4();
  sub_10000B9E4(0);
  return sub_10000B9F4();
}

Swift::Int sub_100008168()
{
  sub_10000B9D4();
  sub_10000B9E4(0);
  return sub_10000B9F4();
}

char *sub_1000081B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004600(&qword_100014C10, &qword_10000D078);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1000082C4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004600(&qword_100014C08, &unk_10000D210);
  v10 = *(type metadata accessor for CLSContextMetadata() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for CLSContextMetadata() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10000849C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004600(&qword_100014C20, &qword_10000D228);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unsigned __int8 *sub_1000085A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_10000B834();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100009CA8();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_10000B934();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

Swift::Int sub_100008B2C(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_10000B964(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for CLSContextMetadata();
        v6 = sub_10000B864();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for CLSContextMetadata() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100008E60(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100008C58(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100008C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for CLSContextMetadata();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v31 - v14;
  result = __chkstk_darwin(v13);
  v19 = &v31 - v18;
  v33 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v32 = v21;
    v25 = v20 + v21 * a3;
LABEL_5:
    v37 = a3;
    v34 = v25;
    v35 = v24;
    v26 = v24;
    v36 = v22;
    while (1)
    {
      sub_100004694(v25, v19);
      sub_100004694(v22, v15);
      v27 = *(v8 + 44);
      v28 = *&v19[v27];
      v29 = *&v15[v27];
      sub_1000046F8(v15);
      result = sub_1000046F8(v19);
      if (v28 >= v29)
      {
LABEL_4:
        a3 = v37 + 1;
        v22 = v36 + v32;
        v24 = v35 - 1;
        v25 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v20)
      {
        break;
      }

      sub_100006664(v25, v12);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_100006664(v12, v22);
      v22 += v23;
      v25 += v23;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100008E60(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v9 = type metadata accessor for CLSContextMetadata();
  v118 = *(v9 - 8);
  v10 = *(v118 + 64);
  v11 = __chkstk_darwin(v9);
  v113 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v121 = &v106 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v106 - v16;
  result = __chkstk_darwin(v15);
  v20 = &v106 - v19;
  v120 = a3;
  v21 = a3[1];
  if (v21 < 1)
  {
    v23 = &_swiftEmptyArrayStorage;
LABEL_94:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_100009BB0(v23);
      v23 = result;
    }

    v123 = v23;
    v102 = *(v23 + 2);
    if (v102 >= 2)
    {
      while (*v120)
      {
        v103 = *&v23[16 * v102];
        v104 = *&v23[16 * v102 + 24];
        sub_1000096B0(*v120 + *(v118 + 72) * v103, *v120 + *(v118 + 72) * *&v23[16 * v102 + 16], *v120 + *(v118 + 72) * v104, v5);
        if (v6)
        {
        }

        if (v104 < v103)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_100009BB0(v23);
        }

        if (v102 - 2 >= *(v23 + 2))
        {
          goto LABEL_120;
        }

        v105 = &v23[16 * v102];
        *v105 = v103;
        *(v105 + 1) = v104;
        v123 = v23;
        result = sub_100009B24(v102 - 1);
        v23 = v123;
        v102 = *(v123 + 2);
        if (v102 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v122 = result;
  v109 = a4;
  v22 = 0;
  v23 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v24 = v22;
    v25 = v22 + 1;
    if (v25 >= v21)
    {
      v21 = v25;
    }

    else
    {
      v26 = *v120;
      v27 = *(v118 + 72);
      v5 = *v120 + v27 * v25;
      sub_100004694(v5, v20);
      sub_100004694(v26 + v27 * v24, v17);
      v28 = *(v122 + 44);
      v29 = *&v20[v28];
      v30 = *&v17[v28];
      sub_1000046F8(v17);
      result = sub_1000046F8(v20);
      v110 = v24;
      v31 = v24 + 2;
      v119 = v27;
      v32 = v26 + v27 * v31;
      while (v21 != v31)
      {
        sub_100004694(v32, v20);
        sub_100004694(v5, v17);
        v33 = *(v122 + 44);
        v34 = *&v20[v33];
        v35 = *&v17[v33];
        sub_1000046F8(v17);
        result = sub_1000046F8(v20);
        ++v31;
        v32 += v119;
        v5 += v119;
        if (v29 < v30 == v34 >= v35)
        {
          v21 = v31 - 1;
          break;
        }
      }

      v24 = v110;
      if (v29 < v30)
      {
        if (v21 < v110)
        {
          goto LABEL_123;
        }

        if (v110 < v21)
        {
          v107 = v23;
          v108 = v6;
          v36 = v119 * (v21 - 1);
          v37 = v21 * v119;
          v117 = v21;
          v38 = v21;
          v39 = v110;
          v40 = v110 * v119;
          do
          {
            if (v39 != --v38)
            {
              v5 = *v120;
              if (!*v120)
              {
                goto LABEL_129;
              }

              sub_100006664(v5 + v40, v113);
              if (v40 < v36 || v5 + v40 >= v5 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_100006664(v113, v5 + v36);
            }

            ++v39;
            v36 -= v119;
            v37 -= v119;
            v40 += v119;
          }

          while (v39 < v38);
          v23 = v107;
          v6 = v108;
          v24 = v110;
          v21 = v117;
        }
      }
    }

    v41 = v120[1];
    if (v21 < v41)
    {
      if (__OFSUB__(v21, v24))
      {
        goto LABEL_122;
      }

      if (v21 - v24 < v109)
      {
        if (__OFADD__(v24, v109))
        {
          goto LABEL_124;
        }

        if (v24 + v109 >= v41)
        {
          v42 = v120[1];
        }

        else
        {
          v42 = v24 + v109;
        }

        if (v42 < v24)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v21 != v42)
        {
          break;
        }
      }
    }

    v43 = v21;
    if (v21 < v24)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000849C(0, *(v23 + 2) + 1, 1, v23);
      v23 = result;
    }

    v45 = *(v23 + 2);
    v44 = *(v23 + 3);
    v5 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_10000849C((v44 > 1), v45 + 1, 1, v23);
      v23 = result;
    }

    *(v23 + 2) = v5;
    v46 = &v23[16 * v45];
    *(v46 + 4) = v24;
    *(v46 + 5) = v43;
    v47 = *v111;
    if (!*v111)
    {
      goto LABEL_131;
    }

    v114 = v43;
    if (v45)
    {
      while (1)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v49 = *(v23 + 4);
          v50 = *(v23 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_52:
          if (v52)
          {
            goto LABEL_110;
          }

          v65 = &v23[16 * v5];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_113;
          }

          v71 = &v23[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_117;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v75 = &v23[16 * v5];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_66:
        if (v70)
        {
          goto LABEL_112;
        }

        v78 = &v23[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_115;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_73:
        v86 = v48 - 1;
        if (v48 - 1 >= v5)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*v120)
        {
          goto LABEL_128;
        }

        v87 = *&v23[16 * v86 + 32];
        v5 = *&v23[16 * v48 + 40];
        sub_1000096B0(*v120 + *(v118 + 72) * v87, *v120 + *(v118 + 72) * *&v23[16 * v48 + 32], *v120 + *(v118 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_100009BB0(v23);
        }

        if (v86 >= *(v23 + 2))
        {
          goto LABEL_107;
        }

        v88 = &v23[16 * v86];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v123 = v23;
        result = sub_100009B24(v48);
        v23 = v123;
        v5 = *(v123 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v23[16 * v5 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_108;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_109;
      }

      v60 = &v23[16 * v5];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_111;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_114;
      }

      if (v64 >= v56)
      {
        v82 = &v23[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_118;
        }

        if (v51 < v85)
        {
          v48 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v21 = v120[1];
    v22 = v114;
    if (v114 >= v21)
    {
      goto LABEL_94;
    }
  }

  v107 = v23;
  v108 = v6;
  v89 = *v120;
  v90 = *(v118 + 72);
  v91 = *v120 + v90 * (v21 - 1);
  v92 = v24;
  v93 = -v90;
  v110 = v92;
  v94 = v92 - v21;
  v112 = v90;
  v5 = v89 + v21 * v90;
  v114 = v42;
LABEL_85:
  v116 = v94;
  v117 = v21;
  v115 = v5;
  v119 = v91;
  v95 = v91;
  v96 = v122;
  while (1)
  {
    sub_100004694(v5, v20);
    sub_100004694(v95, v17);
    v97 = *(v96 + 44);
    v98 = *&v20[v97];
    v99 = *&v17[v97];
    sub_1000046F8(v17);
    result = sub_1000046F8(v20);
    if (v98 >= v99)
    {
LABEL_84:
      v21 = v117 + 1;
      v91 = v119 + v112;
      v94 = v116 - 1;
      v43 = v114;
      v5 = v115 + v112;
      if (v117 + 1 != v114)
      {
        goto LABEL_85;
      }

      v23 = v107;
      v6 = v108;
      v24 = v110;
      if (v114 < v110)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v89)
    {
      break;
    }

    v100 = v121;
    sub_100006664(v5, v121);
    v96 = v122;
    swift_arrayInitWithTakeFrontToBack();
    sub_100006664(v100, v95);
    v95 += v93;
    v5 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_84;
    }
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

uint64_t sub_1000096B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = type metadata accessor for CLSContextMetadata();
  v8 = *(*(v48 - 8) + 64);
  v9 = __chkstk_darwin(v48);
  v47 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v13 = &v42 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v17 = (a2 - a1) / v15;
  v51 = a1;
  v50 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v19;
    if (v19 >= 1)
    {
      v27 = -v15;
      v28 = a4 + v19;
      v45 = v27;
      v46 = a4;
      do
      {
        v43 = v26;
        v29 = a2 + v27;
        while (1)
        {
          if (a2 <= a1)
          {
            v51 = a2;
            v26 = v43;
            goto LABEL_57;
          }

          v31 = a3;
          v44 = v26;
          a3 += v27;
          v32 = v28 + v27;
          sub_100004694(v32, v13);
          v33 = v29;
          v34 = v29;
          v35 = v13;
          v36 = v47;
          sub_100004694(v34, v47);
          v37 = *(v48 + 44);
          v38 = *(v35 + v37);
          v39 = *(v36 + v37);
          v40 = v36;
          v13 = v35;
          sub_1000046F8(v40);
          sub_1000046F8(v35);
          if (v38 < v39)
          {
            break;
          }

          v26 = v32;
          if (v31 < v28 || a3 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v26 = v32;
            v29 = v33;
          }

          else
          {
            v29 = v33;
            if (v31 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
              v26 = v32;
            }
          }

          v28 = v26;
          v30 = v32 > v46;
          v27 = v45;
          if (!v30)
          {
            goto LABEL_55;
          }
        }

        if (v31 < a2 || a3 >= a2)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v45;
        }

        else
        {
          v41 = v31 == a2;
          a2 = v33;
          v27 = v45;
          if (!v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v44;
      }

      while (v28 > v46);
    }

LABEL_55:
    v51 = a2;
LABEL_57:
    v49 = v26;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v20 = a4 + v18;
    v49 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      do
      {
        sub_100004694(a2, v13);
        v22 = v47;
        sub_100004694(a4, v47);
        v23 = *(v48 + 44);
        v24 = *&v13[v23];
        v25 = *(v22 + v23);
        sub_1000046F8(v22);
        sub_1000046F8(v13);
        if (v24 >= v25)
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = a4 + v15;
          a4 += v15;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        a1 += v15;
        v51 = a1;
      }

      while (a4 < v20 && a2 < a3);
    }
  }

  sub_100009BC4(&v51, &v50, &v49);
  return 1;
}

uint64_t sub_100009B24(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100009BB0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100009BC4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for CLSContextMetadata();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_100009CA8()
{
  v0 = sub_10000B844();
  v4 = sub_100009D28(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100009D28(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_10000B7D4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_10000B904();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100005A30(v9, 0);
  v12 = sub_100009E80(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_10000B7D4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_10000B934();
LABEL_4:

  return sub_10000B7D4();
}

unint64_t sub_100009E80(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10000A0A0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_10000B814();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_10000B934();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10000A0A0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_10000B7F4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10000A0A0(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_10000B824();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_10000B804();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

size_t sub_10000A11C(size_t a1, int64_t a2, char a3)
{
  result = sub_10000A13C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000A13C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004600(&qword_100014C08, &unk_10000D210);
  v10 = *(type metadata accessor for CLSContextMetadata() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for CLSContextMetadata() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10000A328()
{
  v1 = objc_opt_self();
  if ([v1 canExtensionOpenDatabase])
  {
    v2 = [v1 sharedInstance];
    v3 = [v2 resetableImportContext];

    v4 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
    v5 = [objc_opt_self() predicateForNotHiddenNotImplicitlyFollowedPodcasts];
    [v4 setPredicate:v5];

    v0 = sub_100006FD0(v4, sub_100006FAC, 0);
  }

  else
  {
    sub_10000B368();
    swift_allocError();
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_10000A47C(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
  v5 = [objc_opt_self() predicateForPodcastStoreId:a1];
  [v4 setPredicate:v5];

  v6 = sub_1000071B4(v4, sub_10000757C, 0);
  if (!v1)
  {
    if (v6)
    {
      if (v6[2])
      {
        v2 = v6[4];
        v7 = v6[5];

        return v2;
      }
    }

    return 0;
  }

  return v2;
}

id sub_10000A594(uint64_t a1)
{
  v4 = objc_opt_self();
  if ([v4 canExtensionOpenDatabase])
  {
    v2 = [v4 sharedInstance];
    v5 = [v2 resetableImportContext];

    sub_10000A47C(a1);
    if (v1)
    {
    }

    else if (v6)
    {
      v8 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
      v9 = objc_opt_self();
      v10 = sub_10000B7A4();

      v11 = [v9 predicateForUserEpisodesOnPodcastUuid:v10 ctx:v5];

      [v8 setPredicate:v11];
      v2 = sub_100007398(v8, sub_1000075E0, 0);
    }

    else
    {

      return 0;
    }
  }

  else
  {
    sub_10000B368();
    swift_allocError();
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_10000A75C(void *a1)
{
  v2 = v1;
  v67 = sub_100004600(&qword_100014C18, &qword_10000D220);
  v4 = *(*(v67 - 8) + 64);
  v5 = __chkstk_darwin(v67);
  v66 = (v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v65 = v60 - v7;
  v8 = type metadata accessor for CLSContextMetadata();
  v68 = *(v8 - 8);
  v9 = *(v68 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 identifier];
  v13 = sub_10000B7B4();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  v17 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v18 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
  }

  if ((v15 & 0x1000000000000000) != 0)
  {
    v71 = 0;
    v21 = sub_1000085A0(v13, v15, 10);
    v39 = v59;
    goto LABEL_63;
  }

  if ((v15 & 0x2000000000000000) != 0)
  {
    v69 = v13;
    v70 = v15 & 0xFFFFFFFFFFFFFFLL;
    if (v13 == 43)
    {
      if (v16)
      {
        if (--v16)
        {
          v21 = 0;
          v31 = &v69 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              break;
            }

            v21 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v16)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_86:
      __break(1u);
LABEL_87:
      v2 = sub_10000A314(v2);
      goto LABEL_67;
    }

    if (v13 != 45)
    {
      if (v16)
      {
        v21 = 0;
        v36 = &v69;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          v38 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v38 + v37;
          if (__OFADD__(v38, v37))
          {
            break;
          }

          v36 = (v36 + 1);
          if (!--v16)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v16)
    {
      if (--v16)
      {
        v21 = 0;
        v25 = &v69 + 1;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v27 - v26;
          if (__OFSUB__(v27, v26))
          {
            break;
          }

          ++v25;
          if (!--v16)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_84;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {
    v19 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v19 = sub_10000B934();
  }

  v20 = *v19;
  if (v20 == 43)
  {
    if (v17 < 1)
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v16 = v17 - 1;
    if (v17 != 1)
    {
      v21 = 0;
      if (v19)
      {
        v28 = v19 + 1;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            goto LABEL_61;
          }

          v30 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            goto LABEL_61;
          }

          v21 = v30 + v29;
          if (__OFADD__(v30, v29))
          {
            goto LABEL_61;
          }

          ++v28;
          if (!--v16)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_53;
    }

LABEL_61:
    v21 = 0;
    LOBYTE(v16) = 1;
    goto LABEL_62;
  }

  if (v20 != 45)
  {
    if (v17)
    {
      v21 = 0;
      if (v19)
      {
        while (1)
        {
          v34 = *v19 - 48;
          if (v34 > 9)
          {
            goto LABEL_61;
          }

          v35 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            goto LABEL_61;
          }

          v21 = v35 + v34;
          if (__OFADD__(v35, v34))
          {
            goto LABEL_61;
          }

          ++v19;
          if (!--v17)
          {
            goto LABEL_53;
          }
        }
      }

      goto LABEL_53;
    }

    goto LABEL_61;
  }

  if (v17 < 1)
  {
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v16 = v17 - 1;
  if (v17 == 1)
  {
    goto LABEL_61;
  }

  v21 = 0;
  if (v19)
  {
    v22 = v19 + 1;
    while (1)
    {
      v23 = *v22 - 48;
      if (v23 > 9)
      {
        goto LABEL_61;
      }

      v24 = 10 * v21;
      if ((v21 * 10) >> 64 != (10 * v21) >> 63)
      {
        goto LABEL_61;
      }

      v21 = v24 - v23;
      if (__OFSUB__(v24, v23))
      {
        goto LABEL_61;
      }

      ++v22;
      if (!--v16)
      {
        goto LABEL_62;
      }
    }
  }

LABEL_53:
  LOBYTE(v16) = 0;
LABEL_62:
  v71 = v16;
  v39 = v16;
LABEL_63:

  if (v39)
  {
    return result;
  }

  result = sub_10000A594(v21);
  if (v1)
  {
    return result;
  }

  v2 = result;
  if (!result)
  {
    return result;
  }

  v60[0] = a1;
  v13 = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_87;
  }

LABEL_67:
  v41 = v2[2];
  v64 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v63 = v2 + v64;
  v69 = (v2 + v64);
  v70 = v41;
  sub_100008B2C(&v69);
  v60[1] = v13;
  v42 = v2[2];
  if (v42)
  {
    v69 = &_swiftEmptyArrayStorage;
    sub_10000A11C(0, v42, 0);
    v43 = 0;
    v44 = v69;
    v45 = v2[2];
    v61 = v2;
    v62 = v45;
    while (v62 != v43)
    {
      if (v43 >= v2[2])
      {
        goto LABEL_79;
      }

      v46 = v67;
      v47 = *(v67 + 48);
      v48 = *(v68 + 72);
      v49 = v11;
      v50 = v65;
      sub_100004694(&v63[v48 * v43], &v65[v47]);
      v51 = v66;
      *v66 = v43;
      v52 = *(v46 + 48);
      v53 = &v50[v47];
      v11 = v49;
      sub_100006664(v53, v51 + v52);
      sub_100004694(v51 + v52, v49);
      *(v49 + 48) = v43;
      sub_10000B40C(v51, &qword_100014C18, &qword_10000D220);
      v69 = v44;
      v55 = v44[2];
      v54 = v44[3];
      if (v55 >= v54 >> 1)
      {
        sub_10000A11C(v54 > 1, v55 + 1, 1);
        v44 = v69;
      }

      ++v43;
      v44[2] = v55 + 1;
      sub_100006664(v49, v44 + v64 + v55 * v48);
      v2 = v61;
      if (v42 == v43)
      {

        goto LABEL_76;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
  }

  v44 = &_swiftEmptyArrayStorage;
LABEL_76:
  v56 = swift_allocObject();
  v57 = v60[0];
  *(v56 + 16) = v44;
  *(v56 + 24) = v57;
  v58 = v57;
  sub_100004E8C(sub_10000B6C0, v56);
}

void sub_10000AD88(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [a1 identifierPath];
  v8 = sub_10000B854();

  v9 = *(v8 + 16);

  if (v9 == 2)
  {
    sub_10000A75C(a1);
    if (v3)
    {
      return;
    }

    v18 = [objc_opt_self() shared];
    v25 = a2;
    v26 = a3;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v19 = &unk_100010A80;
  }

  else
  {
    if (v9 != 1)
    {
      return;
    }

    sub_1000054D8(0, &qword_100014BD8, NSObject_ptr);
    v10 = objc_opt_self();
    v11 = [v10 shared];
    v12 = [v11 mainAppContext];

    v13 = sub_10000B8C4();
    if (v13)
    {
      v14 = sub_10000A328();
      if (v3)
      {
        return;
      }

      if (v14)
      {
        v15 = v14;
        v16 = swift_allocObject();
        *(v16 + 16) = v15;
        *(v16 + 24) = a1;
        v17 = a1;
        sub_100004E8C(sub_10000B2D8, v16);
      }
    }

    v18 = [v10 shared];
    v25 = a2;
    v26 = a3;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v19 = &unk_100010AA8;
  }

  v23 = sub_100006F40;
  v24 = v19;
  v20 = _Block_copy(&v21);

  [v18 saveWithCompletion:{v20, v21, v22}];
  _Block_release(v20);
}

uint64_t sub_10000B024(void *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  sub_10000AD88(a1, sub_10000B260, v4);
  a2[2](a2, 0);
}

uint64_t sub_10000B228()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10000B268()
{
  result = qword_100014BC8;
  if (!qword_100014BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014BC8);
  }

  return result;
}

uint64_t sub_10000B2BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000B300()
{
  result = qword_100014AB8;
  if (!qword_100014AB8)
  {
    sub_1000054D8(255, &unk_100014BE0, CLSContext_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014AB8);
  }

  return result;
}

unint64_t sub_10000B368()
{
  result = qword_100014BF0;
  if (!qword_100014BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014BF0);
  }

  return result;
}

uint64_t sub_10000B3E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10000B40C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004600(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000B46C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B4EC()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

id sub_10000B534()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return sub_100007B58(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
}

uint64_t getEnumTagSinglePayload for ClassKitError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ClassKitError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10000B634()
{
  result = qword_100014C30;
  if (!qword_100014C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014C30);
  }

  return result;
}