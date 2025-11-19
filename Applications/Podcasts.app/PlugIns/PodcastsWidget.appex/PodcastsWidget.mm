void sub_100003298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000032B0(uint64_t a1)
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

void sub_1000036A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000036C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000036D8(uint64_t a1)
{
  v5 = [*(a1 + 32) podcastForFeedUrl:*(a1 + 40)];
  v2 = [v5 uuid];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000038A0(uint64_t a1)
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

uint64_t sub_100003D3C@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v48 = sub_100004224(&qword_10000C620, &qword_100005960);
  v1 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v47 = &v34 - v2;
  v46 = sub_100004634();
  v51 = *(v46 - 8);
  v3 = v51[8];
  v4 = (__chkstk_darwin)();
  v45 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v34 - v6;
  v37 = &v34 - v6;
  v44 = sub_100004674();
  v50 = *(v44 - 8);
  v8 = v50[8];
  v9 = __chkstk_darwin(v44);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v40 = &v34 - v12;
  v14 = sub_100004654();
  v43 = *(v14 - 8);
  v15 = v43;
  v16 = *(v43 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  v42 = &v34 - v20;
  sub_100004644();
  sub_100004664();
  sub_100004624();
  v36 = *(v15 + 16);
  v41 = v19;
  v38 = v14;
  v36(v19, v21, v14);
  v35 = v50[2];
  v39 = v11;
  v22 = v44;
  v35(v11, v13, v44);
  v34 = v51[2];
  v23 = v45;
  v24 = v7;
  v25 = v46;
  v34(v45, v24, v46);
  v26 = v47;
  v36(v47, v19, v14);
  v27 = v48;
  v35(&v26[*(v48 + 48)], v11, v22);
  v34(&v26[*(v27 + 64)], v23, v25);
  sub_100004604();
  v28 = v51[1];
  v29 = v25;
  v28(v37, v25);
  v30 = v50[1];
  v30(v40, v22);
  v31 = *(v43 + 8);
  v32 = v38;
  v31(v42, v38);
  v28(v23, v29);
  v30(v39, v22);
  return (v31)(v41, v32);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000041A4();
  sub_100004614();
  return 0;
}

unint64_t sub_1000041A4()
{
  result = qword_10000C618;
  if (!qword_10000C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C618);
  }

  return result;
}

uint64_t sub_100004224(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100004270()
{
  result = qword_10000C628;
  if (!qword_10000C628)
  {
    sub_1000042D4(&qword_10000C630, &qword_100005968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C628);
  }

  return result;
}

uint64_t sub_1000042D4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000431C()
{
  sub_100004224(&qword_10000C638, qword_1000059D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100005970;
  v1 = sub_1000045F4();
  result = sub_100004568();
  *(v0 + 32) = v1;
  *(v0 + 40) = result;
  static WidgetAppIntentsPackage.includedPackages = v0;
  return result;
}

uint64_t *WidgetAppIntentsPackage.includedPackages.unsafeMutableAddressor()
{
  if (qword_10000C610 != -1)
  {
    swift_once();
  }

  return &static WidgetAppIntentsPackage.includedPackages;
}

uint64_t static WidgetAppIntentsPackage.includedPackages.getter()
{
  if (qword_10000C610 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static WidgetAppIntentsPackage.includedPackages.setter(uint64_t a1)
{
  if (qword_10000C610 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static WidgetAppIntentsPackage.includedPackages = a1;
}

uint64_t (*static WidgetAppIntentsPackage.includedPackages.modify())()
{
  if (qword_10000C610 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_100004568()
{
  result = qword_10000C640;
  if (!qword_10000C640)
  {
    sub_1000045F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C640);
  }

  return result;
}