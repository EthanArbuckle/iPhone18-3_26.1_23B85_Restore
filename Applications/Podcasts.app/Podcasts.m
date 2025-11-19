uint64_t start(int a1, char **a2)
{
  v4 = objc_opt_class();
  v5 = objc_autoreleasePoolPush();
  setenv("JSC_numberOfGCMarkers", "3", 1);
  setenv("JSC_numberOfWorklistThreads", "2", 1);
  setenv("com.apple.CoreData.MigrationDebug", "1", 1);
  if (MKBDeviceUnlockedSinceBoot() != 1)
  {
    NSLog(@"Podcasts launched before first unlock since boot.");
    exit(0);
  }

  v6 = [[IMMetricsController alloc] initWithTopic:@"xp_its_podcasts_main"];
  [v6 setShouldSuppressUserInfo:1];
  v7 = [[IMMetricsController alloc] initWithTopic:@"xp_dzc_main"];
  [v7 setShouldSuppressUserInfo:1];
  [v7 setShouldIgnoreDNU:1];
  [IMMetrics addMetricsController:v7];
  v8 = [[IMMetricsController alloc] initWithTopic:@"xp_amp_podcasts_main"];
  [v8 setShouldSuppressUserInfo:1];
  [v8 setShouldIgnoreDNU:1];
  [IMMetrics addMetricsController:v8];
  v9 = [[IMMetricsController alloc] initWithTopic:@"xp_amp_podcasts_paf"];
  [v9 setShouldSuppressUserInfo:1];
  [v9 setShouldIgnoreDNU:1];
  [IMMetrics addMetricsController:v9];
  [IMMetrics setDefaultMetricsController:v6];
  +[IMMetrics enable];
  [IMMetrics startTimer:@"app_launch"];
  +[MTLibraryMigrationUtil migrateDatabasePropertiesToSharedContainerIfNeeded];
  +[MTLibraryMigrator migrateDatabaseToSharedContainerIfNeeded];
  if (+[MTLibraryMigrator needsMigration])
  {
    v4 = objc_opt_class();
  }

  objc_autoreleasePoolPop(v5);
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = NSStringFromClass(v4);
  v13 = UIApplicationMain(a1, a2, v11, v12);

  return v13;
}

BOOL _s8Podcasts12DataMigratorC17requiresMigrationSbvgZ_0()
{
  if (qword_100572838 != -1)
  {
LABEL_8:
    swift_once();
  }

  v0 = off_10057F208;
  v1 = off_10057F208 + 32;
  v2 = -*(off_10057F208 + 2);
  v3 = -1;
  do
  {
    v4 = v2 + v3;
    if (v2 + v3 == -1)
    {
      break;
    }

    if (++v3 >= v0[2])
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = v1 + 40;
    sub_100004428(v1, v9);
    v6 = v10;
    v7 = v11;
    sub_1000044A0(v9, v10);
    LOBYTE(v6) = (*(v7 + 16))(v6, v7);
    sub_100004590(v9);
    v1 = v5;
  }

  while ((v6 & 1) == 0);
  return v4 != -1;
}

uint64_t sub_100004260()
{
  sub_100168088(&qword_10057F238);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100401B10;
  *(v0 + 56) = &type metadata for UberArtworkResetMigrator;
  *(v0 + 64) = &protocol witness table for UberArtworkResetMigrator;
  *(v0 + 32) = "com.apple.podcasts.artwork.uber-migration.rdar120006144";
  *(v0 + 40) = 55;
  *(v0 + 48) = 258;
  *(v0 + 96) = &type metadata for EntitledFirstTimeAvailableMigrator;
  *(v0 + 104) = &protocol witness table for EntitledFirstTimeAvailableMigrator;
  *(v0 + 72) = "com.apple.podcasts.db.firstAvailabilityDate-migration.rdar138352221";
  *(v0 + 80) = 67;
  *(v0 + 88) = 258;
  *(v0 + 136) = &type metadata for TextKit2Migrator;
  *(v0 + 144) = &off_1004E31C8;
  *(v0 + 112) = "com.apple.podcasts.textkit2-migration.rdar143710219";
  *(v0 + 120) = 51;
  *(v0 + 128) = 258;
  *(v0 + 176) = &type metadata for DeleteHiddenShowsMigrator;
  *(v0 + 184) = &off_1004E15B0;
  *(v0 + 152) = "com.apple.podcasts.deletehiddenshows-migration";
  *(v0 + 160) = 46;
  *(v0 + 168) = 258;
  v1 = [objc_opt_self() autoupdatingSharedLibrary];
  *(v0 + 216) = &type metadata for UpgradeMediaLibraryEntryArtwork;
  *(v0 + 224) = &protocol witness table for UpgradeMediaLibraryEntryArtwork;
  result = swift_allocObject();
  *(v0 + 192) = result;
  *(result + 16) = "com.apple.podcasts.artwork.upgrade-library-artwork";
  *(result + 24) = 50;
  *(result + 32) = 258;
  *(result + 40) = v1;
  *(v0 + 256) = &type metadata for UpNextSplitMigrationStep;
  *(v0 + 264) = &protocol witness table for UpNextSplitMigrationStep;
  *(v0 + 232) = "com.apple.podcasts.upNextSplitMigration";
  *(v0 + 240) = 39;
  *(v0 + 248) = 258;
  off_10057F208 = v0;
  return result;
}

uint64_t sub_1000043F0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100004428(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 initializeBufferWithCopyOfBuffer for DeleteHiddenShowsMigrator(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

void *sub_1000044A0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000044F8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  StaticString.description.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 BOOLForKey:v1];

  return v2 ^ 1;
}

uint64_t sub_100004590(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_100004870(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___MTReachability;
  v1 = [objc_msgSendSuper2(&v3 allocWithZone:{0), "init"}];
  v2 = qword_100583C38;
  qword_100583C38 = v1;
}

uint64_t type metadata accessor for AppDelegate()
{
  result = qword_10057E638;
  if (!qword_10057E638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100004FF4()
{
  sub_1000050C4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000050C4()
{
  if (!qword_10057E648)
  {
    type metadata accessor for PPTViewControllerProxy();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10057E648);
    }
  }
}

id sub_100005140()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC8Podcasts11AppDelegate_appHasBeenInBackground] = 0;
  *&v0[OBJC_IVAR____TtC8Podcasts11AppDelegate_subscriptions] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC8Podcasts11AppDelegate_commandController] = 0;
  *&v0[OBJC_IVAR____TtC8Podcasts11AppDelegate_widgetManager] = 0;
  *&v0[OBJC_IVAR____TtC8Podcasts11AppDelegate_nowPlayingBootstrap] = 0;
  v2 = OBJC_IVAR____TtC8Podcasts11AppDelegate_eventWatchdoge;
  type metadata accessor for AppEnterExitEventWatchdoge();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  v4 = &v0[OBJC_IVAR____TtC8Podcasts11AppDelegate_urlActionRunner];
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC8Podcasts11AppDelegate_pptViewHierarchyProxy;
  v6 = type metadata accessor for PPTViewControllerProxy();
  (*(*(v6 - 8) + 56))(&v0[v5], 1, 1, v6);
  v7 = &v0[OBJC_IVAR____TtC8Podcasts11AppDelegate_flowController];
  *v7 = 0;
  v7[1] = 0;
  *&v0[OBJC_IVAR____TtC8Podcasts11AppDelegate_objectGraph] = static Dependencies.allDependencies()();
  v17.receiver = v0;
  v17.super_class = ObjectType;

  v8 = objc_msgSendSuper2(&v17, "init");
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12 == 1)
  {
    type metadata accessor for ClassKitManager();
    BaseObjectGraph.inject<A>(_:)();
    v13 = [objc_opt_self() shared];
    [v13 setDelegate:*&v16[OBJC_IVAR____TtC8Podcasts15ClassKitManager_dataStoreDelegate]];

    sub_100335D30();
  }

  type metadata accessor for ApplicationStateMonitor();
  v14 = static ApplicationStateMonitor.shared.getter();
  ApplicationStateMonitor.beginListening()();

  return v10;
}

uint64_t static Dependencies.allDependencies()()
{
  v0 = type metadata accessor for Dependency();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v206 = v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v204 = v151 - v5;
  v6 = __chkstk_darwin(v4);
  v187 = v151 - v7;
  v8 = __chkstk_darwin(v6);
  v201 = v151 - v9;
  v10 = __chkstk_darwin(v8);
  v199 = v151 - v11;
  v12 = __chkstk_darwin(v10);
  v186 = v151 - v13;
  v14 = __chkstk_darwin(v12);
  v185 = v151 - v15;
  v16 = __chkstk_darwin(v14);
  v184 = v151 - v17;
  v18 = __chkstk_darwin(v16);
  v183 = v151 - v19;
  v20 = __chkstk_darwin(v18);
  v182 = v151 - v21;
  v22 = __chkstk_darwin(v20);
  v194 = v151 - v23;
  v24 = __chkstk_darwin(v22);
  v195 = v151 - v25;
  v26 = __chkstk_darwin(v24);
  v196 = v151 - v27;
  v28 = __chkstk_darwin(v26);
  v197 = v151 - v29;
  v30 = __chkstk_darwin(v28);
  v198 = v151 - v31;
  v32 = __chkstk_darwin(v30);
  v200 = v151 - v33;
  v34 = __chkstk_darwin(v32);
  v202 = v151 - v35;
  v36 = __chkstk_darwin(v34);
  v203 = v151 - v37;
  v38 = __chkstk_darwin(v36);
  v205 = v151 - v39;
  v40 = __chkstk_darwin(v38);
  v207 = v151 - v41;
  v42 = __chkstk_darwin(v40);
  v208 = v151 - v43;
  v44 = __chkstk_darwin(v42);
  v209 = v151 - v45;
  v46 = __chkstk_darwin(v44);
  v210 = v151 - v47;
  v48 = __chkstk_darwin(v46);
  v211 = v151 - v49;
  v50 = __chkstk_darwin(v48);
  v212 = v151 - v51;
  v52 = __chkstk_darwin(v50);
  v213 = v151 - v53;
  v54 = __chkstk_darwin(v52);
  v214 = v151 - v55;
  v56 = __chkstk_darwin(v54);
  v215 = v151 - v57;
  v58 = __chkstk_darwin(v56);
  v216 = v151 - v59;
  v60 = __chkstk_darwin(v58);
  v217 = v151 - v61;
  v62 = __chkstk_darwin(v60);
  v218 = v151 - v63;
  v64 = __chkstk_darwin(v62);
  v219 = v151 - v65;
  v66 = __chkstk_darwin(v64);
  v220 = v151 - v67;
  v68 = __chkstk_darwin(v66);
  v221 = v151 - v69;
  v70 = __chkstk_darwin(v68);
  v222 = v151 - v71;
  v72 = __chkstk_darwin(v70);
  v223 = v151 - v73;
  v74 = __chkstk_darwin(v72);
  v224 = v151 - v75;
  v76 = __chkstk_darwin(v74);
  v225 = v151 - v77;
  v78 = __chkstk_darwin(v76);
  v226 = v151 - v79;
  v80 = __chkstk_darwin(v78);
  v227 = v151 - v81;
  v82 = __chkstk_darwin(v80);
  v228 = v151 - v83;
  v84 = __chkstk_darwin(v82);
  v229 = v151 - v85;
  v86 = __chkstk_darwin(v84);
  v230 = v151 - v87;
  v88 = __chkstk_darwin(v86);
  v231 = v151 - v89;
  v90 = __chkstk_darwin(v88);
  v232 = v151 - v91;
  v92 = __chkstk_darwin(v90);
  v233 = v151 - v93;
  v94 = __chkstk_darwin(v92);
  v234 = v151 - v95;
  v96 = __chkstk_darwin(v94);
  v235 = v151 - v97;
  v98 = __chkstk_darwin(v96);
  v236 = v151 - v99;
  v100 = __chkstk_darwin(v98);
  v237 = v151 - v101;
  v102 = __chkstk_darwin(v100);
  v238 = v151 - v103;
  v104 = __chkstk_darwin(v102);
  v239 = v151 - v105;
  v106 = __chkstk_darwin(v104);
  v240 = v151 - v107;
  v108 = __chkstk_darwin(v106);
  v241 = v151 - v109;
  v110 = __chkstk_darwin(v108);
  v242 = v151 - v111;
  v112 = __chkstk_darwin(v110);
  v188 = v151 - v113;
  v114 = __chkstk_darwin(v112);
  v189 = v151 - v115;
  v116 = __chkstk_darwin(v114);
  v190 = v151 - v117;
  v118 = __chkstk_darwin(v116);
  v191 = v151 - v119;
  v120 = __chkstk_darwin(v118);
  v192 = v151 - v121;
  __chkstk_darwin(v120);
  v193 = v151 - v122;
  v181 = static Dependencies.allDependencies()();
  sub_100168088(&qword_10057AAB0);

  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&qword_10057AAB8);
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&unk_10057AAC0);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for PodcastsStateCoordinator();
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&qword_100573DA0);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for LibraryDataProvider(0);
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&unk_100575CF0);
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&qword_100573D88);
  swift_getKeyPath();
  Dependency.init<A, B>(aliasing:with:)();
  sub_100168088(&unk_100573D90);
  swift_getKeyPath();
  Dependency.init<A, B>(aliasing:with:)();
  sub_100168088(&unk_10057A4A0);
  swift_getKeyPath();
  Dependency.init<A, B>(aliasing:with:)();
  type metadata accessor for PodcastStateController();
  swift_getKeyPath();
  Dependency.init<A, B>(aliasing:with:)();
  sub_100168088(&qword_100573DB0);
  swift_getKeyPath();
  Dependency.init<A, B>(aliasing:with:)();
  sub_100168088(&qword_100573DB8);
  swift_getKeyPath();
  Dependency.init<A, B>(aliasing:with:)();
  sub_100168088(&unk_100573DD0);
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&qword_100573DC0);
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&unk_10057AAD0);
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&qword_100573DE8);
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&unk_10057AAE0);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for TranscriptReportConcernURLBuilder();
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&unk_100573E10);
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&unk_10057AAF0);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for LibraryActionController();
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&qword_10057E670);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for ClassKitManager();
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for EpisodeController();
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&unk_10057AB00);
  Dependency.init<A>(satisfying:with:)();
  sub_100009F1C(0, &qword_10057A128);
  Dependency.init<A>(satisfying:with:)();
  sub_100009F1C(0, &unk_10057AB10);
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&qword_10057A158);
  Dependency.init<A>(satisfying:with:)();
  sub_100009F1C(0, &qword_10057AB20);
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&qword_10057AB28);
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&unk_10057AB30);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for SiriIntentDonator();
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&qword_10057A160);
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&qword_10057AB40);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for UserActivityController();
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for NowPlayingItemPlayheadSynchronizer();
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for RemoteFollowCommandCenter();
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&qword_10057AB48);
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&qword_10057ABB0);
  Dependency.init<A>(satisfying:with:)();
  sub_100009F1C(0, &qword_100573E40);
  Dependency.init<A>(satisfying:with:)();
  sub_100009F1C(0, &qword_100573E00);
  Dependency.init<A>(satisfying:with:)();
  Dependency.init<A>(satisfying:with:)();
  sub_100009F1C(0, &qword_10057ABB8);
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&qword_10057ABC0);
  Dependency.init<A>(satisfying:with:)();
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for BookmarksController();
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&qword_10057ABC8);
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&qword_10057ABD0);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for RecommendationsMetadataProvider();
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for HomePageProvider();
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for EpisodeUpsellBannerDataProvider();
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&qword_10057ABD8);
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&qword_10057ABE0);
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&qword_10057ABE8);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for PageContextTracker();
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for OAuthController();
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for DebouncedAutoDownloadProcessor();
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for DebouncedAssetRemovalProcessor();
  Dependency.init<A>(satisfying:with:)();
  sub_100168088(&qword_10057ABF0);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for ForegroundSessionPreconnecter();
  Dependency.init<A>(satisfying:with:)();

  v180 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v123 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v179 = v123;

  v178 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v124 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v177 = v124;

  v176 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v125 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v175 = v125;

  v174 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v126 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v173 = v126;

  v172 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v127 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v171 = v127;

  v170 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v128 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v169 = v128;

  v168 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v129 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v167 = v129;

  v166 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v130 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v165 = v130;

  v164 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v131 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v163 = v131;

  v162 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v132 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v161 = v132;

  v160 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v133 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v159 = v133;

  v158 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v134 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v157 = v134;

  v156 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v135 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v155 = v135;

  v154 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v136 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v153 = v136;

  v151[23] = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v137 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v151[22] = v137;

  v151[21] = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v138 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v151[20] = v138;

  v151[19] = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v139 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v151[18] = v139;

  v151[17] = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v140 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v151[16] = v140;

  v151[15] = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v141 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v151[14] = v141;

  v151[13] = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v142 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v151[12] = v142;

  v151[11] = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v143 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v151[10] = v143;

  v151[9] = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v144 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v151[8] = v144;

  v151[7] = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v145 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v151[6] = v145;

  v151[5] = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v146 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v151[4] = v146;

  v151[3] = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v147 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v151[2] = v147;

  v151[1] = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v148 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v151[0] = v148;

  dispatch thunk of BaseObjectGraph.adding(dependency:)();

  dispatch thunk of BaseObjectGraph.adding(dependency:)();

  dispatch thunk of BaseObjectGraph.adding(dependency:)();

  dispatch thunk of BaseObjectGraph.adding(dependency:)();

  dispatch thunk of BaseObjectGraph.adding(dependency:)();

  dispatch thunk of BaseObjectGraph.adding(dependency:)();

  dispatch thunk of BaseObjectGraph.adding(dependency:)();

  dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v152 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v149 = *(v1 + 8);
  v149(v206, v0);
  v149(v204, v0);
  v149(v187, v0);
  v149(v201, v0);
  v149(v199, v0);
  v149(v186, v0);
  v149(v185, v0);
  v149(v184, v0);
  v149(v183, v0);
  v149(v182, v0);
  v149(v194, v0);
  v149(v195, v0);
  v149(v196, v0);
  v149(v197, v0);
  v149(v198, v0);
  v149(v200, v0);
  v149(v202, v0);
  v149(v203, v0);
  v149(v205, v0);
  v149(v207, v0);
  v149(v208, v0);
  v149(v209, v0);
  v149(v210, v0);
  v149(v211, v0);
  v149(v212, v0);
  v149(v213, v0);
  v149(v214, v0);
  v149(v215, v0);
  v149(v216, v0);
  v149(v217, v0);
  v149(v218, v0);
  v149(v219, v0);
  v149(v220, v0);
  v149(v221, v0);
  v149(v222, v0);
  v149(v223, v0);
  v149(v224, v0);
  v149(v225, v0);
  v149(v226, v0);
  v149(v227, v0);
  v149(v228, v0);
  v149(v229, v0);
  v149(v230, v0);
  v149(v231, v0);
  v149(v232, v0);
  v149(v233, v0);
  v149(v234, v0);
  v149(v235, v0);
  v149(v236, v0);
  v149(v237, v0);
  v149(v238, v0);
  v149(v239, v0);
  v149(v240, v0);
  v149(v241, v0);
  v149(v242, v0);
  v149(v188, v0);
  v149(v189, v0);
  v149(v190, v0);
  v149(v191, v0);
  v149(v192, v0);
  v149(v193, v0);
  return v152;
}

{
  return static Dependencies.allDependencies()();
}

void sub_10000801C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (!v2)
  {
    v2 = *(v1 + 56);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

void sub_10000804C(uint64_t a1)
{
  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MTAccountController: updating active account", v7, 2u);
  }

  v3 = [*(a1 + 32) _activeAccountBlocking];
  v4 = [v3 ams_DSID];
  v5 = [v4 stringValue];

  v6 = *(a1 + 40);
  if (v6 | v5 && ([v6 isEqualToString:v5] & 1) == 0)
  {
    dispatch_async(&_dispatch_main_q, &stru_1004DBB40);
  }

  [*(a1 + 32) setActiveAccount:v3];
  [*(a1 + 32) setHasFetchedInitialAccount:1];
}

void sub_10000838C(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___MTLibrary;
  v1 = [objc_msgSendSuper2(&v3 allocWithZone:{0), "init"}];
  v2 = qword_100583A48;
  qword_100583A48 = v1;
}

void sub_1000084B8(id a1)
{
  v1 = objc_alloc_init(MTMediaContentSourceiOSMusicLibrary);
  v2 = qword_100583D68;
  qword_100583D68 = v1;
}

void sub_1000088C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000088E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000088F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008900(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008910(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008920(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008930(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008940(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008950(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008960(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008970(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008980(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100008990(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1000089BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000089CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000089DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000089EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000089FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008A0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008A1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008A2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008A3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008A4C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008A5C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008A6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008A7C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008A8C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008A9C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008AAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008ABC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008ACC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008ADC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008AEC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008AFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008B0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008B1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008B2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008B3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008B4C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008B5C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008B6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008B7C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008B8C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008B9C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008BAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008BBC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008BCC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008BDC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008BEC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008BFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008C0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008C1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008C2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008C3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008C4C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10002C074(&qword_100573100, type metadata accessor for LaunchOptionsKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  v10 = a5();

  return v10 & 1;
}

uint64_t sub_100008D34()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v21[-v7];
  static Logger.lifecycle.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "willFinishLaunching. Preparing for background execution", v11, 2u);
  }

  v12 = *(v3 + 8);
  v12(v8, v2);
  v13 = *(v1 + OBJC_IVAR____TtC8Podcasts11AppDelegate_objectGraph);
  type metadata accessor for AppDependencyManager();

  static AppDependencyManager.shared.getter();
  v21[7] = 1;
  sub_1000090B0();
  AnyHashable.init<A>(_:)();
  type metadata accessor for BaseObjectGraph();

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009104(v22, &unk_10057E698);
  sub_100009164(v13);
  sub_10000B2C8();
  static Logger.lifecycle.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    sub_100009F1C(0, &qword_10057E7D8);
    v18 = [swift_getObjCClassFromMetadata() sharedInstance];
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&_mh_execute_header, v14, v15, "Starting spotlight controller: %@", v16, 0xCu);
    sub_100009104(v17, &qword_100575B20);
  }

  v12(v6, v2);
  sub_100009F1C(0, &qword_10057E7D0);
  v19 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v19 setup];

  return 1;
}

unint64_t sub_1000090B0()
{
  result = qword_10057E690;
  if (!qword_10057E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057E690);
  }

  return result;
}

uint64_t sub_100009104(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100168088(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100009164(uint64_t a1)
{
  v2 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for MediaCacheDeleteRemovalProcessor();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MediaCacheDeleteProcessor();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ForegroundSessionPreconnecter();
  BaseObjectGraph.inject<A>(_:)();
  ForegroundSessionPreconnecter.preconnect(objectGraph:)();

  type metadata accessor for PlaybackController();
  BaseObjectGraph.inject<A>(_:)();
  v13 = v26;
  v14 = objc_allocWithZone(type metadata accessor for SharedPlaybackController());
  v15 = sub_10023A874(v13);
  v16 = qword_100593578;
  qword_100593578 = v15;

  type metadata accessor for UserActivityController();
  BaseObjectGraph.inject<A>(_:)();
  sub_10000A00C();

  type metadata accessor for RemoteFollowCommandCenter();
  BaseObjectGraph.inject<A>(_:)();
  v17 = v26;
  dispatch thunk of RemoteFollowCommandCenter.beginObservingPlaybackQueue()();

  type metadata accessor for NowPlayingItemPlayheadSynchronizer();
  BaseObjectGraph.inject<A>(_:)();
  dispatch thunk of NowPlayingItemPlayheadSynchronizer.beginObserving()();

  sub_100009F1C(0, &unk_10057AB10);
  BaseObjectGraph.inject<A>(_:)();

  BaseObjectGraph.inject<A>(_:)();
  MediaCacheDeleteProcessor.start()();
  (*(v10 + 8))(v12, v9);
  BaseObjectGraph.inject<A>(_:)();
  MediaCacheDeleteRemovalProcessor.start()();
  (*(v6 + 8))(v8, v5);
  static TaskPriority.utility.getter();
  v18 = type metadata accessor for TaskPriority();
  v19 = *(*(v18 - 8) + 56);
  v19(v4, 0, 1, v18);
  type metadata accessor for MainActor();

  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = &protocol witness table for MainActor;
  v21[4] = a1;
  sub_10023EE80(0, 0, v4, &unk_10040C058, v21);

  sub_100168088(&unk_10057AB30);
  BaseObjectGraph.inject<A>(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for SiriIntentDonator();
  BaseObjectGraph.inject<A>(_:)();
  SiriIntentDonator.beginObserving()();

  static TaskPriority.userInitiated.getter();
  v19(v4, 0, 1, v18);

  v22 = static MainActor.shared.getter();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = &protocol witness table for MainActor;
  v23[4] = a1;
  sub_100217A04(0, 0, v4, &unk_10040C068, v23);
}

uint64_t sub_100009638()
{
  v0 = sub_100168088(&qword_1005791B0);
  v1 = *(v0 - 8);
  v15 = v0;
  v16 = v1;
  __chkstk_darwin(v0);
  v3 = &v14 - v2;
  v4 = sub_100168088(&unk_100580450);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - v6;
  v8 = sub_100168088(&unk_10057A020);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - v10;
  dispatch thunk of PlaybackController.$isPlaying.getter();
  v14 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100009FAC(&unk_100580460, &unk_100580450);
  Publisher<>.removeDuplicates()();
  (*(v5 + 8))(v7, v4);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009FAC(&qword_10057A080, &unk_10057A020);
  Publisher<>.sink(receiveValue:)();

  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  sub_100168088(&unk_1005783F0);
  sub_100009FAC(&unk_10057A070, &unk_1005783F0);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  dispatch thunk of PlaybackController.$preferredJumpInterval.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009FAC(&qword_1005791B8, &qword_1005791B0);
  v12 = v15;
  Publisher<>.sink(receiveValue:)();

  (*(v16 + 8))(v3, v12);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t sub_100009A7C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100009AB4(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setIsPlaying:v1];
  }
}

void *sub_100009B18(uint64_t a1)
{
  v1[2] = &_swiftEmptyArrayStorage;
  v1[4] = 0;
  v1[6] = 0;
  v1[7] = 0;
  v1[8] = a1;
  type metadata accessor for PlaybackController();

  BaseObjectGraph.inject<A>(_:)();
  v1[3] = v7;
  v2 = type metadata accessor for PlaybackContinuityActivityDelegate();
  v3 = objc_allocWithZone(v2);
  swift_weakInit();
  swift_weakAssign();
  v6.receiver = v3;
  v6.super_class = v2;

  v4 = objc_msgSendSuper2(&v6, "init");

  v1[5] = v4;
  return v1;
}

unint64_t sub_100009C28()
{
  result = qword_10057A040;
  if (!qword_10057A040)
  {
    sub_100168310(&qword_10057A048);
    sub_10000A500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A040);
  }

  return result;
}

uint64_t sub_100009CAC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100009CE4()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Calendar();
    if (v1 <= 0x3F)
    {
      sub_100009E94(319, &qword_100573EC0, &type metadata accessor for OSSignpostID, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100009E94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100009F1C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100009FAC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100168310(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A00C()
{
  v0 = sub_100168088(&unk_100580450);
  v1 = *(v0 - 8);
  v22 = v0;
  v23 = v1;
  __chkstk_darwin(v0);
  v21 = &v19 - v2;
  v3 = sub_100168088(&unk_10057A020);
  v4 = *(v3 - 8);
  v24 = v3;
  v25 = v4;
  __chkstk_darwin(v3);
  v20 = &v19 - v5;
  v6 = sub_100168088(&unk_10057DE20);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  v10 = sub_100168088(&unk_10057A030);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - v12;
  dispatch thunk of PlaybackController.$nowPlayingItem.getter();
  sub_100009FAC(&qword_100575E78, &unk_10057DE20);
  sub_100009C28();
  Publisher<>.removeDuplicates()();
  (*(v7 + 8))(v9, v6);
  sub_100009FAC(&unk_10057A060, &unk_10057A030);

  Publisher<>.sink(receiveValue:)();

  (*(v11 + 8))(v13, v10);
  swift_beginAccess();
  sub_100168088(&unk_1005783F0);
  sub_100009FAC(&unk_10057A070, &unk_1005783F0);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v14 = v21;
  dispatch thunk of PlaybackController.$isPlaying.getter();
  sub_100009FAC(&unk_100580460, &unk_100580450);
  v15 = v20;
  v16 = v22;
  Publisher<>.removeDuplicates()();
  (*(v23 + 8))(v14, v16);
  sub_100009FAC(&qword_10057A080, &unk_10057A020);

  v17 = v24;
  Publisher<>.sink(receiveValue:)();

  (*(v25 + 8))(v15, v17);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

unint64_t sub_10000A500()
{
  result = qword_10057A050;
  if (!qword_10057A050)
  {
    sub_100009F1C(255, &qword_10057A058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A050);
  }

  return result;
}

uint64_t sub_10000A568(void **a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100578010);
  result = __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = *a1;
  if (*a1)
  {
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    type metadata accessor for MainActor();
    v10 = v8;

    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = a2;
    v12[5] = v10;
    sub_100217A04(0, 0, v7, &unk_100407158, v12);
  }

  return result;
}

uint64_t sub_10000A6A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10000A790(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___MTSyncController;
  v1 = [objc_msgSendSuper2(&v3 allocWithZone:{0), "init"}];
  v2 = qword_100583C90;
  qword_100583C90 = v1;
}

unint64_t sub_10000AA38()
{
  result = qword_100574390;
  if (!qword_100574390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100574390);
  }

  return result;
}

void sub_10000B15C(id a1, NSString *a2, id a3, id a4)
{
  v5 = a4;
  if ([(NSString *)a2 isEqualToString:kMTShowSiriSuggestionsKey])
  {
    sub_10000B1D8(kMTApplicationBundleIdentifier, [v5 BOOLValue]);
  }
}

void sub_10000B1D8(void *a1, int a2)
{
  v8 = a1;
  v3 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mutableCopy];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;
  if (a2)
  {
    [v5 removeObject:v8];
  }

  else if (([v5 containsObject:v8] & 1) == 0)
  {
    [v6 addObject:v8];
  }

  CFPreferencesSetAppValue(@"AppCanShowSiriSuggestionsBlacklist", v6, @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);
}

void sub_10000B2C8()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignposter();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v3 - 8);
  v5 = v19 - v4;
  v6 = OBJC_IVAR____TtC8Podcasts11AppDelegate_widgetManager;
  if (!*(v0 + OBJC_IVAR____TtC8Podcasts11AppDelegate_widgetManager))
  {
    sub_100168088(&unk_100575CF0);

    BaseObjectGraph.inject<A>(_:)();
    v7 = v22;
    v8 = v23;
    sub_100168088(&qword_100579548);
    BaseObjectGraph.inject<A>(_:)();
    sub_100168088(&unk_10057E7E0);
    BaseObjectGraph.inject<A>(_:)();
    type metadata accessor for PlaybackController();
    BaseObjectGraph.inject<A>(_:)();
    v9 = v19[1];
    v10 = objc_allocWithZone(type metadata accessor for WidgetManager());
    v11 = sub_10032519C(v7, v8, v21, v20, v9, 5.0);

    v12 = *(v1 + v6);
    *(v1 + v6) = v11;

    v13 = *(v1 + v6);
    if (v13)
    {
      v14 = OBJC_IVAR____TtC8Podcasts13WidgetManager_artworkPrefetchTask;
      if (!*&v13[OBJC_IVAR____TtC8Podcasts13WidgetManager_artworkPrefetchTask])
      {
        v15 = v13;
        static TaskPriority.utility.getter();
        v16 = type metadata accessor for TaskPriority();
        (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
        static OSSignposter.widget.getter();
        v17 = swift_allocObject();
        v17[2] = 0;
        v17[3] = 0;
        v17[4] = v15;
        v18 = v15;
        *&v13[v14] = _sScT18PodcastsFoundations5Error_pRs_rlE8priority10signposter4name5blockScTyxsAB_pGScPSg_2os12OSSignposterVs12StaticStringVxyYaKYAcntcfC();
      }
    }
  }
}

uint64_t sub_10000B57C@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  type metadata accessor for LibraryDataProvider(0);
  BaseObjectGraph.inject<A>(_:)();

  result = sub_100283980(a1, type metadata accessor for LibraryDataProvider);
  *a2 = v5;
  a2[1] = result;
  return result;
}

uint64_t sub_10000B62C@<X0>(void *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  v2 = static BaseObjectGraph.current.getter();
  sub_100168088(&unk_1005738E0);
  BaseObjectGraph.inject<A>(_:)();
  sub_100009F1C(0, &qword_10057AFF0);
  BaseObjectGraph.inject<A>(_:)();
  v3 = objc_allocWithZone(type metadata accessor for LibraryDataProvider(0));
  v4 = sub_10000B6F4(v7, v6, v2);

  *a1 = v4;
  return result;
}

id sub_10000B6F4(void (*a1)(uint64_t, _BYTE *, uint64_t), void *a2, void (*a3)(uint64_t, _BYTE *, uint64_t))
{
  v4 = v3;
  v209 = a3;
  v200 = a2;
  v207 = a1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DispatchTimeInterval();
  v187 = *(v5 - 8);
  v188 = v5;
  __chkstk_darwin(v5);
  v189 = &v165[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v199 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v186 = *(v199 - 1);
  __chkstk_darwin(v199);
  v185 = &v165[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v183 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v183);
  v184 = &v165[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v182 = &v165[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v210 = type metadata accessor for URL();
  v203 = *(v210 - 8);
  v11 = __chkstk_darwin(v210);
  v191 = &v165[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v204 = &v165[-v14];
  v190 = v15;
  __chkstk_darwin(v13);
  v208 = &v165[-v16];
  v17 = type metadata accessor for Calendar.Identifier();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v165[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = type metadata accessor for Calendar();
  v211 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v165[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v3 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider____lazy_storage___actionController) = 0;
  v24 = v3 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider____lazy_storage___libraryActionController;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_podcastStateController;
  if (qword_100572770 != -1)
  {
    swift_once();
  }

  *(v3 + v25) = qword_100593368;
  v26 = OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_hudPresenter;
  type metadata accessor for HUDPresenter();
  *(v3 + v26) = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_jobStorageFactory) = 0;
  *(v3 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_isObservingLibrary) = 0;
  v27 = OBJC_IVAR____TtC8Podcasts19LibraryDataProvider____lazy_storage___signpostID;
  v28 = type metadata accessor for OSSignpostID();
  (*(*(v28 - 8) + 56))(v3 + v27, 1, 1, v28);
  v29 = v3 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_signpostName;
  *v29 = "LibraryDataProvider.startObservingEpisodesIfNeeded()";
  *(v29 + 8) = 52;
  *(v29 + 16) = 2;
  *(v3 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_objectGraph) = v209;
  (*(v18 + 104))(v20, enum case for Calendar.Identifier.gregorian(_:), v17);
  sub_10000F084(&qword_100574348, &type metadata accessor for Calendar);

  BaseObjectGraph.inject<A>(_:named:)();
  (*(v18 + 8))(v20, v17);
  v211[4](v3 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_metricsCalendar, v23, v21);
  v30 = type metadata accessor for UIPurchaseDelegate();
  v31 = [objc_allocWithZone(v30) init];
  type metadata accessor for PurchaseControllerWrapper();
  v32 = static PurchaseControllerWrapper.sharedInstance.getter();
  v33 = PurchaseControllerWrapper.purchaseController.getter();

  type metadata accessor for PlaybackController();
  BaseObjectGraph.inject<A>(_:)();
  v192 = OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_playbackController;
  *(v4 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_playbackController) = v232;
  v234 = v30;
  v235 = sub_10000F084(&qword_100574350, &type metadata accessor for UIPurchaseDelegate);
  *&v232 = v31;
  v34 = v31;
  dispatch thunk of PurchaseController.uiDelegate.setter();
  v35 = (v4 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_purchaseController);
  v35[3] = sub_100168088(&qword_100574358);
  v35[4] = sub_100009FAC(&qword_100574360, &qword_100574358);
  *v35 = v33;
  v36 = objc_opt_self();
  v37 = v33;
  v38 = [v36 managedAssetsDirectoryURL];
  v39 = v208;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v211 = v4;
  v40 = v4 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_assetsFolder;
  v41 = v203;
  v43 = v203 + 32;
  v42 = *(v203 + 32);
  v205 = v40;
  v44 = v210;
  v181 = v42;
  v42();
  v45 = [v36 documentsDirectory];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL.appendingPathComponent(_:)();
  v201 = *(v41 + 8);
  v202 = v41 + 8;
  v201(v39, v44);
  if (qword_100572740 != -1)
  {
    swift_once();
  }

  v46 = qword_100575060;
  if (qword_100572748 != -1)
  {
    swift_once();
  }

  v47 = qword_100575068;
  v197 = *(v41 + 16);
  v198 = v41 + 16;
  v197(v39);
  type metadata accessor for CoreDataDownloadJobStorageFactory();
  swift_allocObject();

  v48 = sub_10000FC08(v39, v46, v47);
  v49 = *(v48 + 24);
  v235 = sub_100010838;
  v236[0] = 0;
  *&v232 = _NSConcreteStackBlock;
  *(&v232 + 1) = 1107296256;
  v233 = sub_1000107AC;
  v234 = &unk_1004E1F00;
  v50 = _Block_copy(&v232);
  [v49 loadPersistentStoresWithCompletionHandler:v50];
  _Block_release(v50);
  v51 = *(v48 + 24);

  type metadata accessor for CoreDataDownloadJobStorage();
  v206 = swift_allocObject();
  *(v206 + 16) = v51;
  v241 = 0;
  v239 = 0u;
  v240 = 0u;
  v52 = objc_opt_self();
  result = [v52 autoupdatingSharedLibraryPath];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v54 = result;
  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  result = [objc_opt_self() sharedMediaLibraryService];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v58 = result;
  v179 = v37;
  v180 = v34;
  v59 = sub_100009F1C(0, &qword_100574368);
  v235 = &off_1004EE590;
  v234 = v59;
  *&v232 = v58;
  sub_100009F1C(0, &qword_100574370);
  v60 = [swift_getObjCClassFromMetadata() sharedInstance];
  result = [v52 autoupdatingSharedLibrary];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v61 = result;
  v178 = v43;
  v62 = sub_100009F1C(0, &qword_100574378);
  v223 = &off_1004EE5F0;
  v222 = v62;
  *&v221 = v61;
  v63 = type metadata accessor for MediaLibraryClient();
  v64 = swift_allocObject();
  *(v64 + 88) = 0u;
  *(v64 + 104) = 0u;
  *(v64 + 120) = 0;
  *(v64 + 16) = v55;
  *(v64 + 24) = v57;
  sub_1000109E4(&v232, v64 + 32);
  *(v64 + 72) = sub_100186868;
  *(v64 + 80) = 0;
  sub_1000109E4(&v221, v64 + 128);
  *(v64 + 168) = v60;
  v65 = sub_10000F084(&unk_100574380, type metadata accessor for MediaLibraryClient);
  sub_100009104(&v239, &unk_1005817C0);
  *&v239 = v64;
  *(&v240 + 1) = v63;
  v241 = v65;
  v66 = swift_allocObject();
  v67 = v207;
  *(v66 + 16) = v207;
  v68 = objc_opt_self();
  swift_unknownObjectRetain();
  v69 = [v68 sharedInstance];
  v70 = sub_100009F1C(0, &qword_100574390);
  v235 = &protocol witness table for PFAutoBugCaptureBugReporter;
  v234 = v70;
  *&v232 = v69;
  type metadata accessor for CoreDataEpisodeStorage();
  v71 = swift_allocObject();
  *(v71 + 16) = sub_1001A07B0;
  *(v71 + 24) = v66;
  sub_1000109E4(&v232, v71 + 32);
  v72 = swift_allocObject();
  *(v72 + 16) = v67;
  swift_unknownObjectRetain();
  v73 = [v68 sharedInstance];
  v235 = &protocol witness table for PFAutoBugCaptureBugReporter;
  v234 = v70;
  *&v232 = v73;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_1001A07E8;
  *(v74 + 24) = v72;
  sub_1000109E4(&v232, v74 + 32);
  v222 = &type metadata for PodcastsDownloader;
  v223 = &off_1004DFD10;
  LOBYTE(v221) = 0;
  v215 = &type metadata for PodcastsDownloader;
  v216 = &off_1004DFD10;
  LOBYTE(v213) = 3;
  v230 = &type metadata for PodcastsDownloader;
  v231 = &off_1004DFD10;
  LOBYTE(v229) = 1;
  v227 = &type metadata for PodcastsDownloader;
  v228 = &off_1004DFD10;
  LOBYTE(v226) = 2;
  sub_100004428(&v221, &v232);
  sub_100004428(&v213, v236);
  sub_100004428(&v229, &v237);
  sub_100004428(&v226, &v238);
  sub_100168088(&qword_100574398);
  v75 = swift_allocObject();
  sub_100004428(&v221, v75 + 32);
  sub_100004428(&v213, v75 + 72);
  sub_100004428(&v229, v75 + 112);
  sub_1000109E4(&v226, v75 + 152);
  sub_100004590(&v229);
  sub_100004590(&v213);
  sub_100004590(&v221);
  swift_setDeallocating();
  sub_100168088(&unk_1005743A0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  type metadata accessor for DownloadRemovalObserver();
  BaseObjectGraph.inject<A>(_:)();
  v76 = v221;
  sub_100010430(&v239, &v229, &unk_1005817C0);
  v175 = [objc_opt_self() sharedInstance];
  v176 = [objc_allocWithZone(MTEpisodeDownloadsAlertsPresenter) init];
  sub_100010A78(&v232, &v221);
  result = [objc_opt_self() sharedInstance];
  v177 = result;
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  (v197)(v208, v205, v210);
  v77 = sub_100009F1C(0, &qword_100573E40);
  v78 = [swift_getObjCClassFromMetadata() defaultStore];
  v227 = &type metadata for AccounStoreDsidProvider;
  v228 = &off_1004F1108;
  v220[4] = &off_1004EDAF8;
  v220[3] = v77;
  v220[0] = v78;
  v174 = type metadata accessor for EpisodeDownloadsManager();
  v79 = objc_allocWithZone(v174);
  sub_100010C38(&v226, v227);
  v219[3] = &type metadata for AccounStoreDsidProvider;
  v219[4] = &off_1004F1108;
  *&v79[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager____lazy_storage___serialQueue] = 0;
  v172 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_delegateQueue;
  v194 = sub_100009F1C(0, &qword_1005729D0);
  *&v213 = 0;
  *(&v213 + 1) = 0xE000000000000000;

  v173 = v200;
  _StringGuts.grow(_:)(16);

  sub_100168088(&qword_100572A10);
  *&v213 = _typeName(_:qualified:)();
  *(&v213 + 1) = v80;
  v81._countAndFlagsBits = 0x746167656C65642ELL;
  v81._object = 0xEE00657565755165;
  String.append(_:)(v81);
  v196 = v74;
  v170 = *(&v213 + 1);
  v171 = v213;
  static DispatchQoS.unspecified.getter();
  *&v213 = &_swiftEmptyArrayStorage;
  v169 = sub_10000F084(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  v168 = sub_100168088(&unk_1005729E0);
  v167 = sub_100009FAC(&qword_1005743C0, &unk_1005729E0);
  v205 = v71;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v166 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v195 = v76;
  v82 = v185;
  v186 = *(v186 + 104);
  (v186)(v185);
  *&v79[v172] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v172 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_accessQueue;
  *&v213 = _typeName(_:qualified:)();
  *(&v213 + 1) = v83;
  v84._countAndFlagsBits = 0x517373656363612ELL;
  v84._object = 0xEC00000065756575;
  String.append(_:)(v84);
  static DispatchQoS.unspecified.getter();
  *&v213 = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v186)(v82, v166, v199);
  *&v79[v172] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v85 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager__downloaders;
  *&v79[v85] = sub_100010C88(&_swiftEmptyArrayStorage);
  v86 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_inMemoryStorage;
  type metadata accessor for JobPipelineInMemoryStorage();
  v87 = swift_allocObject();
  *(v87 + 16) = [objc_allocWithZone(NSRecursiveLock) init];
  *(v87 + 24) = &_swiftEmptyArrayStorage;
  *&v79[v86] = v87;
  *&v79[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_expectedDownloaderTypes] = &_swiftEmptySetSingleton;
  *&v79[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager____lazy_storage___restoreQueue] = 0;
  v88 = &v79[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_finalCheckBeforStart];
  *v88 = 0;
  *(v88 + 1) = 0;
  *&v79[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager____lazy_storage___preflightURLSession] = 0;
  sub_100010A78(&v221, &v79[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_downloaderConfiguration]);
  v89 = v196;
  *&v79[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_episodeRemover] = v195;
  v90 = &v79[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userEpisodeStorage];
  *v90 = v89;
  *(v90 + 1) = &off_1004F2B90;
  v91 = &v79[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_systemEpisodeStorage];
  *v91 = v205;
  v91[1] = &off_1004F2B90;
  sub_100004428(v219, &v79[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_dsidProvider]);
  v92 = &v79[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_jobStorage];
  *v92 = v206;
  v92[1] = &off_1004E2A38;
  sub_100010430(&v229, &v79[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_mediaLibraryClient], &unk_1005817C0);
  *&v79[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_limitsHolder] = v175;
  *&v79[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_notifier] = v200;
  v93 = type metadata accessor for DownloadsAlertPresenter();
  v94 = swift_allocObject();
  *(v94 + 24) = 0u;
  *(v94 + 40) = 0u;
  *(v94 + 56) = 0;
  *(v94 + 64) = -1;
  v95 = v176;
  *(v94 + 16) = v176;
  v96 = v188;
  v97 = v189;
  *v189 = 500;
  (*(v187 + 104))(v97, enum case for DispatchTimeInterval.milliseconds(_:), v96);
  v215 = v93;
  v216 = &off_1004E6058;
  *&v213 = v94;
  v98 = type metadata accessor for DownloadsAlertController();
  v99 = swift_allocObject();
  v100 = sub_100010C38(&v213, v93);
  __chkstk_darwin(v100);
  v102 = &v165[-((v101 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v103 + 16))(v102);
  v104 = *v102;
  v199 = v173;
  v200 = v95;
  v105 = sub_100010F04(v104, v97, v99);
  sub_100004590(&v213);
  v106 = v210;
  v107 = &v79[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter];
  *v107 = v105;
  *(v107 + 8) = v213;
  *(v107 + 3) = v98;
  *(v107 + 4) = &off_1004E3790;
  *&v79[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_reachability] = v177;
  v108 = v208;
  v109 = v197;
  (v197)(&v79[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_assetsFolder], v208, v106);
  sub_100004428(v220, &v79[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_artworkStorage]);
  v218.receiver = v79;
  v218.super_class = v174;
  v110 = objc_msgSendSuper2(&v218, "init");
  v111 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v112 = &v110[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_finalCheckBeforStart];
  v113 = *&v110[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_finalCheckBeforStart];
  *v112 = sub_1001A0820;
  v112[1] = v111;
  v114 = v110;

  sub_1000112B4(v113);

  v115 = sub_100011218();
  v116 = v191;
  (v109)(v191, v108, v106);
  v117 = v199;
  v118 = (*(v203 + 80) + 16) & ~*(v203 + 80);
  v119 = swift_allocObject();
  (v181)(v119 + v118, v116, v106);
  v216 = sub_100011AC0;
  v217 = v119;
  *&v213 = _NSConcreteStackBlock;
  *(&v213 + 1) = 1107296256;
  v214 = sub_10000F038;
  v215 = &unk_1004E1FC8;
  v120 = _Block_copy(&v213);

  [v115 addOperationWithBlock:v120];
  _Block_release(v120);

  v121 = *&v114[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager____lazy_storage___serialQueue];
  sub_100168088(&unk_100574680);
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_100400800;
  LOBYTE(v120) = *sub_1000044A0(&v221, v222);
  v123 = v121;
  *(v122 + 32) = sub_1000112C8(v120, 1);
  v124 = sub_1000044A0(v224, v224[3]);
  *(v122 + 40) = sub_1000112C8(*v124, 1);
  v125 = sub_1000044A0(v225, v225[3]);
  *(v122 + 48) = sub_1000112C8(*v125, 1);
  sub_100009F1C(0, &unk_10057A6A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v123 addOperations:isa waitUntilFinished:0];

  v201(v108, v106);
  sub_100009104(&v229, &unk_1005817C0);
  sub_100004590(v220);
  sub_100004590(v219);
  sub_1000124FC(&v221);
  sub_100004590(&v226);
  sub_100010430(&v239, &v213, &unk_1005817C0);
  if (v215)
  {
    sub_1000109E4(&v213, &v221);
    sub_100004428(&v221, &v213);
    type metadata accessor for PostRestorePromptPresenter();
    v127 = swift_allocObject();
    v128 = objc_opt_self();
    v129 = v205;

    v130 = v114;
    v131 = [v128 standardUserDefaults];
    sub_100004428(&v213, &v229);
    type metadata accessor for DownloadsRestoreRunner();
    v132 = swift_allocObject();
    v132[11] = 0;
    sub_1000109E4(&v229, (v132 + 2));
    v132[7] = v130;
    v132[8] = v129;
    v132[9] = &off_1004F2B90;
    v132[10] = v131;
    type metadata accessor for PodcastsDownloadsRestoreController();
    v133 = swift_allocObject();
    v134 = sub_1000125BC(v132, v127, v133);
    sub_100004590(&v213);
    sub_100004590(&v221);
    v135 = v211;
    v136 = (v211 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_downloadsRestoreController);
    *v136 = v134;
    v136[1] = &off_1004ECFE8;
  }

  else
  {
    sub_100009104(&v213, &unk_1005817C0);
    v135 = v211;
    v137 = (v211 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_downloadsRestoreController);
    *v137 = 0;
    v137[1] = 0;
  }

  *(v135 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) = v207;
  type metadata accessor for EpisodeStateRepository();
  swift_unknownObjectRetain();
  v138 = static EpisodeStateRepository.shared.getter();
  v139 = OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_episodeStateRepository;
  *(v135 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_episodeStateRepository) = v138;
  v208 = v139;
  v140 = objc_allocWithZone(type metadata accessor for EpisodeDownloadStateControllerProvider());
  v141 = v114;
  v142 = v117;
  v143 = v141;

  v144 = sub_100012A70(v143, v142, v138, v140);
  v209 = v142;

  v145 = OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_episodeDownloadStateControllerProvider;
  *(v135 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_episodeDownloadStateControllerProvider) = v144;
  type metadata accessor for InterestObserverProvider();
  BaseObjectGraph.inject<A>(_:)();
  *(v135 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_interestsObserverProvider) = v221;
  sub_100168088(&qword_1005743D0);
  BaseObjectGraph.inject<A>(_:)();
  sub_1000109E4(&v221, v135 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_libraryObserverProvider);
  *(v135 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_episodeDownloadStateController) = *(*(v135 + v145) + OBJC_IVAR____TtC8Podcasts38EpisodeDownloadStateControllerProvider_stateController);
  v146 = sub_100168088(&qword_1005743D8);
  swift_allocObject();

  v147 = OnDemandLibraryEpisodeStateDataSource.init(episodeStateRepository:)();
  type metadata accessor for PendingPlaybackStore();
  swift_allocObject();
  PendingPlaybackStore.init()();
  v148 = v192;
  v222 = v146;
  v223 = sub_100009FAC(&qword_1005743E0, &qword_1005743D8);
  *&v221 = v147;
  v215 = type metadata accessor for DummyLegacyPlayerController();
  v216 = &protocol witness table for DummyLegacyPlayerController;
  sub_10000E680(&v213);

  DummyLegacyPlayerController.init()();
  v149 = type metadata accessor for PendingPlaybackController();
  swift_allocObject();
  v150 = PendingPlaybackController.init(pendingPlaybackStore:playbackController:playStateEstimationProvider:legacyPlayerController:)();
  v151 = (v211 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_pendingPlaybackController);
  v151[3] = v149;
  v151[4] = &protocol witness table for PendingPlaybackController;
  *v151 = v150;
  v152 = *(v211 + v148);
  *&v221 = v147;
  v153 = v211;
  sub_100009FAC(&qword_1005743E8, &qword_1005743D8);

  v154 = EpisodeStateDataSourceProtocol.eraseToAnyEpisodeStateDataSource()();
  sub_100226D38(v152, v154);
  defaultEpisodePlayTransitionRules.getter();
  sub_100168088(&unk_10057A4A0);
  swift_allocObject();
  v155 = EpisodeStateController.init(dataSources:transitionRules:)();

  *&v153[OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_episodePlayStateController] = v155;

  v156 = sub_100014428();

  *&v153[OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_episodeBookmarkStateController] = v156;
  sub_100009F1C(0, &qword_1005743F0);
  v157 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v157 setDownloadManager:v143];

  if (qword_100572810 != -1)
  {
    swift_once();
  }

  *(static FeedManager.shared + OBJC_IVAR___MTFeedManager_downloadManager) = v143;
  v158 = v143;
  swift_unknownObjectRelease();
  sub_10000F48C();

  v159 = v179;
  dispatch thunk of PurchaseController.downloadManager.setter();
  v212.receiver = v153;
  v212.super_class = ObjectType;
  v160 = objc_msgSendSuper2(&v212, "init");
  sub_100009F1C(0, &qword_1005742D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v162 = v160;
  v163 = [ObjCClassFromMetadata sharedInstance];
  v164 = v209;
  [v163 setupWith:v158 downloadsNotifier:v209];

  sub_1000164E8();
  swift_unknownObjectRelease();

  sub_1000124FC(&v232);
  sub_100009104(&v239, &unk_1005817C0);
  v201(v204, v210);
  return v162;
}

uint64_t sub_10000D538()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D58C()
{
  if (qword_100572768 != -1)
  {
    swift_once();
  }

  defaultPodcastTransitionRules.getter();
  type metadata accessor for PodcastStateController();
  swift_allocObject();
  result = PodcastStateController.init(dataSources:transitionRules:)();
  qword_100593368 = result;
  return result;
}

uint64_t sub_10000D620()
{
  sub_100168088(&qword_100576F18);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004007E0;
  v1 = [objc_opt_self() sharedInstance];
  type metadata accessor for LibraryPodcastStateDataSource();
  swift_allocObject();
  *(v0 + 32) = LibraryPodcastStateDataSource.init(contextProvider:)();
  *(v0 + 40) = &protocol witness table for LibraryPodcastStateDataSource;
  sub_10000D740();
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 podcastStateDataSource];

  *(v0 + 48) = v3;
  *(v0 + 56) = &protocol witness table for AddingPodcastStateDataSource;
  type metadata accessor for DefaultPodcastStateDataSource();
  swift_allocObject();
  result = DefaultPodcastStateDataSource.init()();
  *(v0 + 64) = result;
  *(v0 + 72) = &protocol witness table for DefaultPodcastStateDataSource;
  qword_100576F10 = v0;
  return result;
}

unint64_t sub_10000D740()
{
  result = qword_100582850;
  if (!qword_100582850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100582850);
  }

  return result;
}

uint64_t type metadata accessor for FeedManager()
{
  result = qword_10057D718;
  if (!qword_10057D718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000D8D0()
{
  sub_10000D9E4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for OSSignpostID();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000D9E4()
{
  if (!qword_10057D728)
  {
    v0 = type metadata accessor for UninitializedCurrentValueSubject();
    if (!v1)
    {
      atomic_store(v0, &qword_10057D728);
    }
  }
}

id sub_10000DAA0()
{
  result = [objc_allocWithZone(type metadata accessor for FeedManager()) init];
  static FeedManager.shared = result;
  return result;
}

char *sub_10000DAD4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v1 - 8);
  v54 = v1;
  __chkstk_darwin(v1);
  v52 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OSSignposter();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin(v3);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for OSSignpostID();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LibraryImageProvider();
  v7 = *(v6 - 8);
  v58 = v6;
  v59 = v7;
  __chkstk_darwin(v6);
  v57 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  UninitializedCurrentValueSubject.init()();
  v56 = OBJC_IVAR___MTFeedManager_queue;
  v55 = sub_100009F1C(0, &qword_1005729D0);
  (*(v14 + 104))(v16, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v13);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000E53C(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0);
  sub_100009FAC(&qword_1005743C0, &unk_1005729E0);
  v17 = v12;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v0[v56] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v18 = &v0[OBJC_IVAR___MTFeedManager__system];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  *&v0[OBJC_IVAR___MTFeedManager__pendingRequests] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR___MTFeedManager__pendingBlocks] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR___MTFeedManager__subscriptions] = &_swiftEmptyArrayStorage;
  v19 = v0;
  v0[OBJC_IVAR___MTFeedManager__wasUpdating] = 0;
  *&v0[OBJC_IVAR___MTFeedManager_downloadManager] = 0;
  v20 = v57;
  static LibraryImageProvider.background.getter();
  type metadata accessor for CategoryIngester();
  v21 = swift_allocObject();
  v22 = v58;
  v21[5] = v58;
  v21[6] = &protocol witness table for LibraryImageProvider;
  v23 = sub_10000E680(v21 + 2);
  (*(v59 + 32))(v23, v20, v22);
  v24 = [objc_opt_self() sharedInstance];
  v25 = [v24 importContext];

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v27 = result;
    v28 = [objc_opt_self() sharedInstance];
    type metadata accessor for CoreDataChapterIngester();
    v29 = swift_allocObject();
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v30 = result;
      type metadata accessor for FeedIngesterProvider();
      v31 = swift_allocObject();
      aBlock[0] = 0;

      sub_100168088(&qword_1005786F0);
      v32 = Synchronized.init(wrappedValue:)();
      v31[7] = v29;
      v31[8] = v32;
      v31[2] = v25;
      v31[3] = v27;
      v31[5] = v30;
      v31[6] = v21;
      v31[4] = v28;
      v31[9] = sub_10000E894();
      v31[10] = sub_10000E8A0();
      *&v19[OBJC_IVAR___MTFeedManager__feedIngesterProvider] = v31;
      v33 = v46;
      static OSSignposter.feedUpdate.getter();
      OSSignposter.logHandle.getter();
      v34 = v44;
      OSSignpostID.init(log:)();
      (*(v48 + 8))(v33, v49);
      (*(v45 + 32))(&v19[OBJC_IVAR___MTFeedManager_signpostID], v34, v47);
      v35 = type metadata accessor for FeedManager();
      v62.receiver = v19;
      v62.super_class = v35;
      v36 = objc_msgSendSuper2(&v62, "init");
      v37 = *&v36[OBJC_IVAR___MTFeedManager_queue];
      v38 = swift_allocObject();
      *(v38 + 16) = v36;
      aBlock[4] = sub_10000F07C;
      aBlock[5] = v38;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F038;
      aBlock[3] = &unk_1004EB4D0;
      v39 = _Block_copy(aBlock);
      v40 = v36;
      v41 = v37;
      static DispatchQoS.unspecified.getter();
      v60 = &_swiftEmptyArrayStorage;
      sub_10000E53C(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
      sub_100168088(&unk_100575CD0);
      sub_100009FAC(&qword_10057D390, &unk_100575CD0);
      v42 = v52;
      v43 = v54;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v39);

      (*(v53 + 8))(v42, v43);
      (*(v50 + 8))(v17, v51);

      return v40;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E424(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000E464(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000E4AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000E4F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000E53C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000E584(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000E5CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000E614(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_10000E680(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_10000E784(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100583DC0;
  qword_100583DC0 = v1;
}

uint64_t sub_10000E8AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E8BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E8CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E8DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E8EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E8FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E90C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E91C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E93C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E94C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E95C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E96C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E97C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E98C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E99C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E9AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E9BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E9CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E9DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E9EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E9FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EA0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EA1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EA2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EA3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EA4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EA5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EA6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EA7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EA8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EA9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EAAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EABC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EACC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EADC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EAEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EAFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EB0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EB1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EB2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EB3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EB4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EB5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EB6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EB7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EB8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EB9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EBAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EBBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EBCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EBEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EBFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EC0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EC1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EC2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EC3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EC4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EC5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EC6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EC7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EC8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EC9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000ECAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000ECBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000ECCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000ECDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000ECEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000ECFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000ED0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000ED1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000ED2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000ED3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000ED4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000ED5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000ED7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000ED8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000ED9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EDAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EDBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EDCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EDEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EDFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EE0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EE1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EE2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EE3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EE4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EE5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EE6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EE7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EE8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EE9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EEAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EEBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EECC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EEDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EEEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EEFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EF0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EF1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EF2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EF3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EF4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EF5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EF6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EF8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EF9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EFC4(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  static FeedManagerBagConfiguration.getConfigurationOrLocalDefault(completion:)();
}

uint64_t sub_10000F038(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000F084(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F48C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  __chkstk_darwin();
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR___MTFeedManager_queue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1000164E0;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EB700;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  v14 = &_swiftEmptyArrayStorage;
  sub_10000E53C(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

uint64_t sub_10000F75C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F794()
{
  sub_100168088(&qword_100575270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  sub_100009F1C(0, &qword_1005742A0);
  *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(1);
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v2;
  *(inited + 72) = NSFileProtectionNone;
  v3 = NSFileProtectionNone;
  v4 = sub_10000F898(inited);
  swift_setDeallocating();
  sub_100168088(&qword_100575280);
  result = swift_arrayDestroy();
  qword_100575060 = v4;
  return result;
}

unint64_t sub_10000F8AC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100168088(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_10000F9A8(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000F9C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v5 = Hasher._finalize()();

  return a3(a1, a2, v5);
}

unint64_t sub_10000FA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10000FAFC()
{
  sub_100168088(&qword_100575270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100400790;
  strcpy((inited + 32), "journal_mode");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  sub_100009F1C(0, &qword_100575278);
  *(inited + 48) = NSString.init(stringLiteral:)();
  v1 = sub_10000F898(inited);
  swift_setDeallocating();
  result = sub_100009104(inited + 32, &qword_100575280);
  qword_100575068 = v1;
  return result;
}

uint64_t sub_10000FC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v26 = a1;
  v23 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v22[1] = sub_100009F1C(0, &qword_1005729D0);
  static DispatchQoS.unspecified.getter();
  v27 = &_swiftEmptyArrayStorage;
  sub_100010064(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0);
  sub_100009FAC(&qword_1005743C0, &unk_1005729E0);
  v8 = v22[2];
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v23);
  *(v8 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_100572750 != -1)
  {
    swift_once();
  }

  v9 = qword_100575070;
  v10 = objc_allocWithZone(NSPersistentContainer);
  v11 = v9;
  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 initWithName:v12 managedObjectModel:v11];

  v14 = v26;
  sub_100010500(v26, v24, v25, 0);
  v16 = v15;

  sub_100168088(&unk_100574680);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1004007B0;
  *(v17 + 32) = v16;
  sub_100009F1C(0, &unk_100575260);
  v18 = v16;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 setPersistentStoreDescriptions:isa];

  v20 = type metadata accessor for URL();
  (*(*(v20 - 8) + 8))(v14, v20);
  *(v8 + 24) = v13;
  return v8;
}

uint64_t sub_10001001C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100010064(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000100AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000100F4()
{
  sub_100168088(&qword_100574040);
  v0 = (__chkstk_darwin)();
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v0);
  v5 = &v21 - v4;
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  type metadata accessor for CoreDataDownloadJobStorage();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 URLForResource:v10 withExtension:v11];

  if (v12)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
  }

  else
  {
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  }

  sub_100010498(v5, v7, &qword_100574040);
  sub_100010430(v7, v2, &qword_100574040);
  type metadata accessor for URL();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v2, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v16 = objc_allocWithZone(NSManagedObjectModel);
    URL._bridgeToObjectiveC()(v17);
    v19 = v18;
    v20 = [v16 initWithContentsOfURL:v18];

    result = (*(v14 + 8))(v2, v13);
    if (v20)
    {
      sub_100009104(v7, &qword_100574040);
      return v20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000103EC()
{
  result = sub_1000100F4();
  qword_100575070 = result;
  return result;
}

uint64_t sub_100010430(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100168088(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100010498(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100168088(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100010500(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = objc_allocWithZone(NSPersistentStoreDescription);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = [v7 initWithURL:v9];

  [v11 setShouldAddStoreAsynchronously:a4 & 1];
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  while (v14)
  {
LABEL_11:
    v20 = (*(a2 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v14)))));
    v22 = *v20;
    v21 = v20[1];
    v17 = *(a2 + 16);

    if (v17)
    {
      v23 = sub_10000F9A8(v22, v21);
      if (v24)
      {
        v17 = *(*(a2 + 56) + 8 * v23);
      }

      else
      {
        v17 = 0;
      }
    }

    v14 &= v14 - 1;
    v18 = String._bridgeToObjectiveC()();

    [v11 setOption:v17 forKey:v18];
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v19 >= v15)
    {
      break;
    }

    v14 = *(a2 + 64 + 8 * v19);
    ++v16;
    if (v14)
    {
      v16 = v19;
      goto LABEL_11;
    }
  }

  v25 = 1 << *(a3 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a3 + 64);
  v28 = (v25 + 63) >> 6;

  v29 = 0;
  while (v27)
  {
LABEL_24:
    v33 = (*(a3 + 48) + ((v29 << 10) | (16 * __clz(__rbit64(v27)))));
    v35 = *v33;
    v34 = v33[1];
    v30 = *(a3 + 16);

    if (v30)
    {
      v36 = sub_10000F9A8(v35, v34);
      if (v37)
      {
        v30 = *(*(a3 + 56) + 8 * v36);
      }

      else
      {
        v30 = 0;
      }
    }

    v27 &= v27 - 1;
    v31 = String._bridgeToObjectiveC()();

    [v11 setValue:v30 forPragmaNamed:v31];
  }

  while (1)
  {
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v32 >= v28)
    {

      return;
    }

    v27 = *(a3 + 64 + 8 * v32);
    ++v29;
    if (v27)
    {
      v29 = v32;
      goto LABEL_24;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1000107AC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void sub_100010838(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    _StringGuts.grow(_:)(35);

    swift_getErrorValue();
    v2._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v2);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_100010904()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000109E4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_100010A2C@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for EpisodeDownloadsManager()
{
  result = qword_100581688;
  if (!qword_100581688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010B20()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100010C38(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_100010C88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100168088(&qword_100572F50);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      swift_unknownObjectRetain();
      result = sub_10000F9A8(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t type metadata accessor for DownloadsAlertController()
{
  result = qword_100576268;
  if (!qword_100576268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010E38()
{
  result = type metadata accessor for DispatchTimeInterval();
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

uint64_t sub_100010F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v19 = type metadata accessor for DownloadsAlertPresenter();
  v20 = &off_1004E6058;
  *&v18 = a1;
  v10 = sub_100009F1C(0, &qword_1005729D0);
  v14[0] = "sRestoreController.accessQueue";
  v14[1] = v10;
  static DispatchQoS.unspecified.getter();
  v17 = &_swiftEmptyArrayStorage;
  sub_10000F084(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0);
  sub_100009FAC(&qword_1005743C0, &unk_1005729E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  *(a3 + 56) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a3 + 64) = &_swiftEmptyArrayStorage;
  *(a3 + OBJC_IVAR____TtC8Podcasts24DownloadsAlertController____lazy_storage___debouncer) = 0;
  *(a3 + OBJC_IVAR____TtC8Podcasts24DownloadsAlertController_active) = 1;
  sub_1000109E4(&v18, a3 + 16);
  v11 = OBJC_IVAR____TtC8Podcasts24DownloadsAlertController_debounceInterval;
  v12 = type metadata accessor for DispatchTimeInterval();
  (*(*(v12 - 8) + 32))(a3 + v11, v16, v12);
  return a3;
}

id sub_100011218()
{
  v1 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager____lazy_storage___serialQueue;
  v2 = *(v0 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager____lazy_storage___serialQueue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager____lazy_storage___serialQueue);
  }

  else
  {
    v4 = [objc_allocWithZone(NSOperationQueue) init];
    [v4 setQualityOfService:-1];
    [v4 setMaxConcurrentOperationCount:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1000112B4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_1000112C8(char a1, char a2)
{
  v21[3] = &type metadata for PodcastsDownloader;
  v21[4] = &off_1004DFD10;
  LOBYTE(v21[0]) = a1;
  v3 = *sub_1000044A0(v21, &type metadata for PodcastsDownloader);
  v4 = 0xD000000000000033;
  v5 = "bytes";
  v6 = "ts.downloads.episodes.restore";
  v7 = 0xD00000000000002FLL;
  if (v3 == 2)
  {
    v7 = 0xD00000000000002DLL;
  }

  else
  {
    v6 = "ts.downloads.episodes.headers";
  }

  if (v3)
  {
    v4 = 0xD00000000000002DLL;
    v5 = "sodes.userInitiated";
  }

  if (v3 <= 1)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (v3 <= 1)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  swift_beginAccess();
  sub_100011550(&v20, v8, v9 | 0x8000000000000000);
  swift_endAccess();

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100004428(v21, v19);
  v11 = swift_allocObject();
  sub_1000109E4(v19, v11 + 16);
  *(v11 + 56) = a2 & 1;
  *(v11 + 64) = v10;
  v12 = sub_100168088(&qword_100574420);
  v13 = objc_allocWithZone(v12);
  v14 = &v13[*((swift_isaMask & *v13) + 0x180)];
  *v14 = 0;
  v14[8] = 2;
  v15 = &v13[*((swift_isaMask & *v13) + 0x188)];
  *v15 = sub_1000153D0;
  v15[1] = v11;
  v18.receiver = v13;
  v18.super_class = v12;
  v16 = objc_msgSendSuper2(&v18, "init");
  sub_100004590(v21);
  return v16;
}

uint64_t sub_1000114D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011510()
{
  sub_100004590(v0 + 16);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100011550(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1000116A0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_1000116A0(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000121C8();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100390098();
      goto LABEL_16;
    }

    sub_100011820();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100011820()
{
  v1 = v0;
  v2 = *v0;
  sub_100168088(&qword_100582880);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_100011A6C()
{
  result = qword_1005731C8;
  if (!qword_1005731C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005731C8);
  }

  return result;
}

void sub_100011AC0()
{
  type metadata accessor for URL();

  sub_100011B50();
}

void sub_100011B50()
{
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  URL.path.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 fileExistsAtPath:v2];

  if (v3)
  {
    static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v21 = static OS_os_log.downloads.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v4 = [v0 defaultManager];
    URL._bridgeToObjectiveC()(v5);
    v7 = v6;
    sub_10016ACC4(&_swiftEmptyArrayStorage);
    type metadata accessor for FileAttributeKey(0);
    sub_10000E614(&qword_1005730E0, type metadata accessor for FileAttributeKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v22 = 0;
    v9 = [v4 createDirectoryAtURL:v7 withIntermediateDirectories:0 attributes:isa error:&v22];

    if (v9)
    {
      v10 = v22;
      static os_log_type_t.default.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v11 = static OS_os_log.downloads.getter();
      os_log(_:dso:log:_:_:)();
    }

    else
    {
      v12 = v22;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = v14;
      static os_log_type_t.error.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v16 = static OS_os_log.downloads.getter();
      sub_100168088(&unk_100574670);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1004007C0;
      *(v17 + 56) = &type metadata for String;
      v18 = sub_100022C18();
      *(v17 + 64) = v18;
      *(v17 + 32) = v13;
      *(v17 + 40) = v15;
      v19 = URL.path.getter();
      *(v17 + 96) = &type metadata for String;
      *(v17 + 104) = v18;
      *(v17 + 72) = v19;
      *(v17 + 80) = v20;
      os_log(_:dso:log:_:_:)();

      sub_100370B38();
    }
  }
}

uint64_t sub_100011F4C()
{
  result = type metadata accessor for OperationResult();
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

unint64_t sub_100011FF4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_10001206C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10001206C()
{
  result = qword_10057CBF8;
  if (!qword_10057CBF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10057CBF8);
  }

  return result;
}

id sub_100012118()
{
  v1 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  *&v0[v1] = [objc_allocWithZone(NSRecursiveLock) init];
  *&v0[OBJC_IVAR____TtC8Podcasts13BaseOperation__error] = 0;
  v0[OBJC_IVAR____TtC8Podcasts13BaseOperation__state] = 0;
  *&v0[OBJC_IVAR____TtC8Podcasts13BaseOperation__onFinishBlocks] = &_swiftEmptyArrayStorage;
  v2 = &v0[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
  v4 = type metadata accessor for BaseOperation();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_1000121C8()
{
  v1 = v0;
  v2 = *v0;
  sub_100168088(&qword_100582880);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10001245C()
{
  v1 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  [*&v0[OBJC_IVAR____TtC8Podcasts13BaseOperation_lock] lock];
  v2 = v0[OBJC_IVAR____TtC8Podcasts13BaseOperation__state];
  [*&v0[v1] unlock];
  if (v2)
  {
    return 0;
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for BaseOperation();
  if (objc_msgSendSuper2(&v4, "isReady"))
  {
    return 1;
  }

  else
  {
    return [v0 isCancelled];
  }
}

uint64_t sub_1000125BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v15 = a2;
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v13 - 8);
  __chkstk_darwin(v13);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100009F1C(0, &qword_1005729D0);
  v12[0] = "tion8@NSError16";
  v12[1] = v9;
  static DispatchQoS.unspecified.getter();
  v16 = &_swiftEmptyArrayStorage;
  sub_10000F084(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0);
  sub_100009FAC(&qword_1005743C0, &unk_1005729E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  *(a3 + 48) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a3 + 56) = UIBackgroundTaskInvalid;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  v10 = v15;
  *(a3 + 32) = v14;
  *(a3 + 40) = &off_1004E83A0;
  *(a3 + 16) = v10;
  *(a3 + 24) = &off_1004E4808;
  return a3;
}

unint64_t sub_100012868(uint64_t a1)
{
  v2 = sub_100168088(&qword_100572F78);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100168088(&qword_100572F80);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100010430(v9, v5, &qword_100572F78);
      v11 = *v5;
      result = sub_1002021B8(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for FairPlayDownloadsObserver.DownloadState();
      result = sub_10016BDD8(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for FairPlayDownloadsObserver.DownloadState);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_100012A70(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  *&a4[OBJC_IVAR____TtC8Podcasts38EpisodeDownloadStateControllerProvider_downloadManager] = a1;
  v6 = objc_allocWithZone(type metadata accessor for DownloadingEpisodeStateDataSource());
  v7 = a2;
  v8 = sub_100012EA4(v7);
  sub_100168088(&unk_100574680);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100400800;
  sub_10000F084(&qword_1005743F8, type metadata accessor for DownloadingEpisodeStateDataSource);
  *(v9 + 32) = EpisodeStateDataSourceProtocol.eraseToAnyEpisodeStateDataSource()();
  sub_100168088(&qword_100574400);
  swift_allocObject();

  OnDemandLibraryEpisodeStateDataSource.init(episodeStateRepository:)();
  sub_100009FAC(&qword_100574408, &qword_100574400);
  v10 = EpisodeStateDataSourceProtocol.eraseToAnyEpisodeStateDataSource()();

  *(v9 + 40) = v10;
  sub_100168088(&qword_100574410);
  swift_allocObject();
  v15 = DefaultEpisodeStateDataSource.init()();
  sub_100009FAC(&qword_100574418, &qword_100574410);
  v11 = EpisodeStateDataSourceProtocol.eraseToAnyEpisodeStateDataSource()();

  *(v9 + 48) = v11;
  defaultEpisodeDownloadTransitionRules.getter();
  sub_100168088(&unk_100573D90);
  swift_allocObject();
  *&a4[OBJC_IVAR____TtC8Podcasts38EpisodeDownloadStateControllerProvider_stateController] = EpisodeStateController.init(dataSources:transitionRules:)();
  *&a4[OBJC_IVAR____TtC8Podcasts38EpisodeDownloadStateControllerProvider_downloadsNotifier] = v7;
  *&a4[OBJC_IVAR____TtC8Podcasts38EpisodeDownloadStateControllerProvider_downloadingStateDataSource] = v8;
  v14.receiver = a4;
  v14.super_class = type metadata accessor for EpisodeDownloadStateControllerProvider();
  v12 = v7;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t type metadata accessor for FairPlayDownloadsObserver.DownloadState()
{
  result = qword_10057B498;
  if (!qword_10057B498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100012D54()
{
  sub_100009F1C(319, &qword_10057B4A8);
  if (v0 <= 0x3F)
  {
    sub_100009F1C(319, &qword_100577200);
    if (v1 <= 0x3F)
    {
      sub_100012E4C();
      if (v2 <= 0x3F)
      {
        sub_1000131FC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100012E4C()
{
  if (!qword_10057C350)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10057C350);
    }
  }
}

id sub_100012EA4(uint64_t a1)
{
  v2 = v1;
  v16 = a1;
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v15 - 8);
  __chkstk_darwin(v15);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  *&v1[OBJC_IVAR____TtC8Podcasts33DownloadingEpisodeStateDataSource_expectedEpisodeStates] = &_swiftEmptyDictionarySingleton;
  v8 = &v1[OBJC_IVAR____TtC8Podcasts33DownloadingEpisodeStateDataSource_refreshControllerStates];
  *v8 = 0;
  *(v8 + 1) = 0;
  v14 = OBJC_IVAR____TtC8Podcasts33DownloadingEpisodeStateDataSource_accessQueue;
  v13[1] = sub_100009F1C(0, &qword_1005729D0);
  sub_100168088(&qword_10057B9F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100400790;
  static OS_dispatch_queue.Attributes.concurrent.getter();
  v18 = v9;
  sub_1000136E4(&qword_1005743B0, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0);
  sub_10001378C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static DispatchQoS.unspecified.getter();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  *&v1[v14] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = OBJC_IVAR____TtC8Podcasts33DownloadingEpisodeStateDataSource_downloadManagerObserver;
  *&v2[v10] = [objc_allocWithZone(sub_100168088(&qword_10057B9F8)) init];
  *&v2[OBJC_IVAR____TtC8Podcasts33DownloadingEpisodeStateDataSource_downloadsNotifier] = v16;
  v11 = type metadata accessor for DownloadingEpisodeStateDataSource();
  v17.receiver = v2;
  v17.super_class = v11;
  return objc_msgSendSuper2(&v17, "init");
}

void sub_1000131FC()
{
  if (!qword_10057B4B0)
  {
    sub_100168310(&unk_10057B4B8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10057B4B0);
    }
  }
}

char *sub_100013260(char a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v27 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v26[1] = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v34 = &type metadata for PodcastsDownloader;
  v35 = &off_1004DFD10;
  v33[0] = a1;
  v9 = &a2[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_statusUpdateHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a2[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_backgroundCompletionHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_urlProtocolDelegate;
  *&a2[v11] = [objc_allocWithZone(type metadata accessor for UIStoreResponseDelegate()) init];
  v12 = OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_fairPlayDownloadsObserver;
  type metadata accessor for FairPlayDownloadsObserver();
  swift_allocObject();
  *&a2[v12] = sub_100015BD8();
  v13 = OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_sessionLock;
  sub_100168088(&qword_1005818B8);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *&a2[v13] = v14;
  v15 = OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_taskToKeyAdamIDMap;
  sub_100168088(&qword_1005818C0);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = &_swiftEmptyDictionarySingleton;
  *&a2[v15] = v16;
  v17 = OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_taskToKeyLoaderMap;
  sub_100168088(&qword_1005818C8);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = &_swiftEmptyDictionarySingleton;
  *&a2[v17] = v18;
  v19 = OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_internalQueue;
  sub_100009F1C(0, &qword_1005729D0);
  static DispatchQoS.userInteractive.getter();
  v32 = &_swiftEmptyArrayStorage;
  sub_10000E614(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0);
  sub_100015E58(&qword_1005743C0, &unk_1005729E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v28 + 104))(v27, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v29);
  *&a2[v19] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&a2[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader____lazy_storage___sessionDelegateQueue] = 0;
  v20 = &a2[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader____lazy_storage___logPrefix];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&a2[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader__session] = 0;
  sub_100004428(v33, &a2[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_config]);
  type metadata accessor for FairPlayKeyLoader();
  v21 = FairPlayKeyLoader.__allocating_init()();
  v22 = *&a2[v19];
  v23 = FairPlayKeyLoading.receive(on:)();

  *&a2[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_fairPlayKeyLoader] = v23;
  v31.receiver = a2;
  v31.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v31, "init");
  sub_100004590(v33);
  *(*&v24[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_fairPlayDownloadsObserver] + 24) = &off_1004E7620;
  swift_unknownObjectWeakAssign();
  return v24;
}

uint64_t sub_1000136E4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_100013740(uint64_t a1, unint64_t *a2)
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

unint64_t sub_10001378C()
{
  result = qword_1005743C0;
  if (!qword_1005743C0)
  {
    sub_100168310(&unk_1005729E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005743C0);
  }

  return result;
}

uint64_t sub_1000137F0(uint64_t a1, uint64_t a2)
{
  result = sub_1000136E4(&qword_10057B9C0, a2, type metadata accessor for DownloadingEpisodeStateDataSource);
  *(a1 + 8) = result;
  return result;
}

id sub_100013848(char a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000002DLL;
  v3 = a2;
  v4 = "ts.downloads.episodes.restore";
  v5 = 0xD00000000000002FLL;
  if (a2 == 2)
  {
    v5 = 0xD00000000000002DLL;
  }

  else
  {
    v4 = "ts.downloads.episodes.headers";
  }

  if (a2)
  {
    v6 = "sodes.userInitiated";
  }

  else
  {
    v2 = 0xD000000000000033;
    v6 = "bytes";
  }

  if (a2 > 1u)
  {
    v2 = v5;
    v6 = v4;
  }

  v7 = v6 | 0x8000000000000000;
  if (a1)
  {
    v8 = 1936484398;
  }

  else
  {
    v8 = 0x7261646E6174732ELL;
  }

  if (a1)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE900000000000064;
  }

  v23 = v2;

  v10._countAndFlagsBits = v8;
  v10._object = v9;
  String.append(_:)(v10);

  if (v3 > 1)
  {
    if (v3 == 2)
    {

      v14 = [objc_opt_self() ephemeralSessionConfiguration];
      [v14 setHTTPCookieAcceptPolicy:1];
      [v14 setHTTPShouldSetCookies:0];
      v15 = &selRef_setWaitsForConnectivity_;
      goto LABEL_23;
    }

    v19 = objc_opt_self();
    v20 = String._bridgeToObjectiveC()();

    v21 = [v19 backgroundSessionConfigurationWithIdentifier:{v20, v23, v7}];

    v14 = v21;
    [v14 setHTTPCookieAcceptPolicy:1];
    [v14 setHTTPShouldSetCookies:0];
LABEL_22:
    v15 = &selRef_set_allowsConstrainedNetworkAccess_;
    goto LABEL_23;
  }

  if (v3)
  {
    v16 = objc_opt_self();
    v17 = String._bridgeToObjectiveC()();

    v18 = [v16 backgroundSessionConfigurationWithIdentifier:{v17, v23, v7}];

    v14 = v18;
    [v14 setHTTPCookieAcceptPolicy:1];
    [v14 setHTTPShouldSetCookies:0];
    [v14 setAllowsCellularAccess:0];
    goto LABEL_22;
  }

  v11 = objc_opt_self();
  v12 = String._bridgeToObjectiveC()();

  v13 = [v11 backgroundSessionConfigurationWithIdentifier:{v12, v23, v7}];

  v14 = v13;
  [v14 setHTTPCookieAcceptPolicy:1];
  v15 = &selRef_setHTTPShouldSetCookies_;
LABEL_23:
  [v14 *v15];

  return v14;
}

id sub_100013BA4()
{
  v1 = qword_100576BD0;
  *&v0[v1] = Set.init()();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DownloadManagerObserver();
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_100013CB4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100013CC4(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC8Podcasts33DownloadingEpisodeStateDataSource_refreshControllerStates;
  v5 = *v4;
  *v4 = a1;
  *(v4 + 8) = a2;
  sub_100013CB4(a1);
  sub_100013D44(v5);
  sub_1000112B4(v5);

  return sub_1000112B4(a1);
}

id sub_100013D44(id result)
{
  v2 = v1;
  if (result)
  {
    if (*&v1[OBJC_IVAR____TtC8Podcasts33DownloadingEpisodeStateDataSource_refreshControllerStates])
    {
      return result;
    }

    v3 = *&v1[OBJC_IVAR____TtC8Podcasts33DownloadingEpisodeStateDataSource_downloadManagerObserver];
    swift_beginAccess();
    v4 = sub_1002930E8(v1);
    swift_endAccess();

    v5 = &selRef_unregisterForUpdates_;
  }

  else
  {
    v3 = *&v1[OBJC_IVAR____TtC8Podcasts33DownloadingEpisodeStateDataSource_downloadManagerObserver];
    swift_beginAccess();
    sub_100013E4C(&v7, v1);
    v6 = v7;
    swift_endAccess();

    v5 = &selRef_registerForUpdates_;
  }

  return [*&v2[OBJC_IVAR____TtC8Podcasts33DownloadingEpisodeStateDataSource_downloadsNotifier] *v5];
}

uint64_t sub_100013E4C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for DownloadingEpisodeStateDataSource();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100291D68(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_10038F244(v20 + 1, &unk_100582800);
    }

    v18 = v8;
    sub_100294074();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for DownloadingEpisodeStateDataSource();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1000142A4(v18, v13, isUniquelyReferenced_nonNull_native, &unk_100582800, &unk_100408E70, type metadata accessor for DownloadingEpisodeStateDataSource);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_100014098(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_100168088(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(v6 + 40);
      v18 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v26;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

void sub_1000142A4(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_10038F244(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_10039021C(a4);
      goto LABEL_12;
    }

    v11 = a6;
    sub_100014098(v9 + 1, a4);
  }

  v12 = *v6;
  v13 = NSObject._rawHashValue(seed:)(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100014428()
{
  sub_100168088(&unk_100574680);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100405740;
  sub_100168088(&qword_10057B1B8);
  swift_allocObject();

  OnDemandLibraryEpisodeStateDataSource.init(episodeStateRepository:)();
  sub_100009FAC(&qword_10057B1C0, &qword_10057B1B8);
  v1 = EpisodeStateDataSourceProtocol.eraseToAnyEpisodeStateDataSource()();

  *(v0 + 32) = v1;
  sub_100168088(&qword_10057B1C8);
  swift_allocObject();
  DefaultEpisodeStateDataSource.init()();
  sub_100009FAC(&unk_10057B1D0, &qword_10057B1C8);
  v2 = EpisodeStateDataSourceProtocol.eraseToAnyEpisodeStateDataSource()();

  *(v0 + 40) = v2;
  defaultEpisodeBookmarkTransitionRules.getter();
  sub_100168088(&qword_100573D88);
  swift_allocObject();
  return EpisodeStateController.init(dataSources:transitionRules:)();
}

void sub_1000146B4(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100583CD0;
  qword_100583CD0 = v1;

  v3 = objc_opt_new();
  v4 = qword_100583CD8;
  qword_100583CD8 = v3;
}

uint64_t sub_10001494C()
{
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = *((swift_isaMask & *v0) + 0x170);
  v5 = *(v4 - 8);
  __chkstk_darwin(ObjectType);
  v7 = &v13 - v6;
  v8 = *(v0 + *((v3 & v2) + 0x188));
  WitnessTable = swift_getWitnessTable();
  sub_100014CBC(ObjectType, WitnessTable, v7);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v4;
  v11[3] = *((v3 & v2) + 0x178);
  v11[4] = v10;

  v8(v7, sub_10002DE6C, v11);

  (*(v5 + 8))(v7, v4);
}

uint64_t sub_100014B24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014B5C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100014B94()
{
  if ([v0 isCancelled])
  {
LABEL_4:
    v4 = *((swift_isaMask & *v0) + 0x128);

    return v4();
  }

  v1 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  [*(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock) lock];
  v2 = *(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error);
  v3 = *(v0 + v1);
  swift_errorRetain();
  [v3 unlock];
  if (v2)
  {

    goto LABEL_4;
  }

  sub_10002FA08();
  v4 = *((swift_isaMask & *v0) + 0x120);

  return v4();
}

uint64_t sub_100014CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for OperationResult();
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  (*(a2 + 16))(a1, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return (*(*(AssociatedTypeWitness - 1) + 32))(a3, v9, AssociatedTypeWitness);
  }

  if (EnumCaseMultiPayload == 2 && AssociatedTypeWitness == (&type metadata for () + 8))
  {
    return swift_dynamicCast();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100014E9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6)
{
  LODWORD(v7) = a5;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v38 = v15;

  static Logger.downloads.getter();
  sub_100004428(a4, &v41);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v36 = v11;
    v37 = v7;
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40[0] = v18;
    *v7 = 136446210;
    v19 = *sub_1000044A0(&v41, v42);
    v20 = 0xD000000000000033;
    v21 = "bytes";
    v22 = "ts.downloads.episodes.restore";
    v23 = 0xD00000000000002FLL;
    if (v19 == 2)
    {
      v23 = 0xD00000000000002DLL;
    }

    else
    {
      v22 = "ts.downloads.episodes.headers";
    }

    if (v19)
    {
      v20 = 0xD00000000000002DLL;
      v21 = "sodes.userInitiated";
    }

    if (v19 <= 1)
    {
      v24 = v20;
    }

    else
    {
      v24 = v23;
    }

    if (v19 <= 1)
    {
      v25 = v21;
    }

    else
    {
      v25 = v22;
    }

    strcpy(v39, "ConfigType: ");
    BYTE13(v39[0]) = 0;
    HIWORD(v39[0]) = -5120;
    v26 = v25 | 0x8000000000000000;
    String.append(_:)(*&v24);

    v27 = v39[0];
    sub_100004590(&v41);
    v28 = sub_1000153E0(v27, *(&v27 + 1), v40);

    *(v7 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v16, v17, "Create downloader for %{public}s.", v7, 0xCu);
    sub_100004590(v18);

    (*(v12 + 8))(v14, v36);
    LOBYTE(v7) = v37;
  }

  else
  {

    (*(v12 + 8))(v14, v11);
    sub_100004590(&v41);
  }

  sub_100004428(a4, &v41);
  v29 = swift_allocObject();
  *(v29 + 16) = a6;
  sub_1000109E4(&v41, v29 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();

    Strong = sub_1003711D0;
  }

  else
  {

    v31 = 0;
  }

  sub_100004428(a4, v39);
  v32 = swift_allocObject();
  v32[2] = a6;
  sub_1000109E4(v39, (v32 + 3));
  v33 = v38;
  v32[8] = sub_10002DD30;
  v32[9] = v33;
  v34 = *sub_1000044A0(a4, a4[3]);

  sub_1000154AC(v34, v7 & 1, sub_100020DC4, v29, Strong, v31, sub_10002D79C, v32);
  sub_1000112B4(Strong);
}

uint64_t sub_1000152D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015310()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100015348()
{

  sub_100004590(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100015388()
{

  sub_100004590(v0 + 24);

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_1000153E0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001B838(v11, 0, 0, 1, a1, a2);
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
    sub_10001B944(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004590(v11);
  return v7;
}

uint64_t sub_1000154AC(char a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a8;
  v42 = a7;
  v41 = a6;
  v40 = a3;
  v39 = a2;
  v45 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for DispatchQoS();
  v46 = *(v12 - 8);
  v47 = v12;
  __chkstk_darwin(v12);
  v14 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v38[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = &type metadata for PodcastsDownloader;
  v58 = &off_1004DFD10;
  LOBYTE(v56[0]) = a1;
  sub_100004428(v56, aBlock);
  v19 = *sub_100010C38(aBlock, v50);
  v54 = &type metadata for PodcastsDownloader;
  v55 = &off_1004DFD10;
  LOBYTE(v53[0]) = v19;
  v20 = objc_allocWithZone(type metadata accessor for AssetsDownloader());
  v21 = sub_100010C38(v53, v54);
  v22 = sub_100015A58(*v21, v20);
  sub_100004590(v53);
  sub_100004590(aBlock);
  v23 = sub_1000044A0(v56, v57);
  v24 = sub_100013848(0, *v23);
  v25 = [objc_opt_self() sessionWithConfiguration:v24 delegate:v22 delegateQueue:0];

  v26 = *&v22[OBJC_IVAR____TtC8Podcasts16AssetsDownloader_urlSession];
  *&v22[OBJC_IVAR____TtC8Podcasts16AssetsDownloader_urlSession] = v25;
  v27 = v25;

  sub_100009F1C(0, &qword_1005729D0);
  (*(v16 + 104))(v18, enum case for DispatchQoS.QoSClass.default(_:), v15);
  v28 = static OS_dispatch_queue.global(qos:)();
  (*(v16 + 8))(v18, v15);
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v39;
  v30 = v40;
  *(v29 + 32) = v22;
  *(v29 + 40) = v30;
  *(v29 + 48) = a4;
  *(v29 + 56) = a5;
  v31 = v42;
  *(v29 + 64) = v41;
  *(v29 + 72) = v31;
  *(v29 + 80) = v43;
  v51 = sub_10001E57C;
  v52 = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  v50 = &unk_1004F1048;
  v32 = _Block_copy(aBlock);
  v33 = v27;
  v34 = v22;

  sub_100013CB4(a5);

  static DispatchQoS.unspecified.getter();
  v53[0] = &_swiftEmptyArrayStorage;
  sub_10000E614(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100015E58(&qword_10057D390, &unk_100575CD0);
  v35 = v44;
  v36 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v32);

  (*(v48 + 8))(v35, v36);
  (*(v46 + 8))(v14, v47);

  return sub_100004590(v56);
}

uint64_t sub_1000159D4()
{

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 88, 7);
}

id sub_100015A58(char a1, char *a2)
{
  v19 = &type metadata for PodcastsDownloader;
  v20 = &off_1004DFD10;
  v18[0] = a1;
  *&a2[OBJC_IVAR____TtC8Podcasts16AssetsDownloader_urlSession] = 0;
  v3 = &a2[OBJC_IVAR____TtC8Podcasts16AssetsDownloader_backgroundCompletionHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &a2[OBJC_IVAR____TtC8Podcasts16AssetsDownloader_statusUpdateHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  sub_100004428(v18, &a2[OBJC_IVAR____TtC8Podcasts16AssetsDownloader_config]);
  sub_100004428(v18, v16);
  v5 = *sub_100010C38(v16, v17);
  v14 = &type metadata for PodcastsDownloader;
  v15 = &off_1004DFD10;
  v13[0] = v5;
  v6 = objc_allocWithZone(type metadata accessor for FairPlayAssetsDownloader());
  v7 = sub_100010C38(v13, &type metadata for PodcastsDownloader);
  v8 = sub_100013260(*v7, v6);
  sub_100004590(v13);
  sub_100004590(v16);
  v9 = &a2[OBJC_IVAR____TtC8Podcasts16AssetsDownloader_fairPlayAssetsDownloader];
  *v9 = v8;
  v9[1] = &off_1004E7680;
  v12.receiver = a2;
  v12.super_class = type metadata accessor for AssetsDownloader();
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_100004590(v18);
  return v10;
}

void *sub_100015BD8()
{
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v9 - 8);
  __chkstk_darwin(v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v0[4] = sub_100012868(&_swiftEmptyArrayStorage);
  v6 = sub_100009F1C(0, &qword_1005729D0);
  v8[0] = "[FairPlayDownloadsObserver]:";
  v8[1] = v6;
  static DispatchQoS.unspecified.getter();
  v10 = &_swiftEmptyArrayStorage;
  sub_10000E4F4(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0);
  sub_100015E58(&qword_1005743C0, &unk_1005729E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  v0[5] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

uint64_t sub_100015E58(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100168310(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_100015F28(_BYTE *result)
{
  if (*result == 1)
  {
    result = *(v1 + 32);
    if (result)
    {
      return [result becomeCurrent];
    }
  }

  return result;
}

void sub_10001607C(uint64_t a1)
{
  v2 = [*(a1 + 32) temporaryDirectory];
  v3 = +[NSFileManager defaultManager];
  v33 = 0;
  v27 = v2;
  v4 = [v3 contentsOfDirectoryAtPath:v2 error:&v33];
  v5 = v33;

  if (v5)
  {
    v6 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v5 localizedDescription];
      *buf = 138412546;
      v36 = v27;
      v37 = 2112;
      v38 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to obtain list of files in directory:%@, error:%@", buf, 0x16u);
    }
  }

  v26 = v5;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        if ([v13 containsString:@"_feed"])
        {
          v14 = [*(a1 + 32) configuration];
          v15 = [v14 keepsFeedFileInTempDirAfterDownload];

          if (!v15 || [*(a1 + 32) isFileExpired:v13 inDirectory:v27])
          {
            v16 = [v27 stringByAppendingPathComponent:v13];
            v17 = +[NSFileManager defaultManager];
            v28 = 0;
            v18 = [v17 removeItemAtPath:v16 error:&v28];
            v19 = v28;

            v20 = _MTLogCategoryFeedUpdate();
            v21 = v20;
            if (v18)
            {
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v36 = v16;
                v22 = v21;
                v23 = OS_LOG_TYPE_DEBUG;
                v24 = "Temporary feed file has been removed:%@";
                v25 = 12;
                goto LABEL_18;
              }
            }

            else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v36 = v16;
              v37 = 2112;
              v38 = v19;
              v22 = v21;
              v23 = OS_LOG_TYPE_ERROR;
              v24 = "Failed to remove temporary feed file at:%@, error:%@";
              v25 = 22;
LABEL_18:
              _os_log_impl(&_mh_execute_header, v22, v23, v24, buf, v25);
            }

            continue;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v10);
  }
}

uint64_t sub_10001644C()
{
  swift_beginAccess();
  swift_unknownObjectRetain_n();
  sub_100168088(&qword_1005786F8);
  Synchronized.wrappedValue.setter();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1000164E8()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  v17 = sub_100009F1C(0, &qword_1005748A0);
  v5 = static OS_os_log.episodeStatesSignpost.getter();
  v6 = *(v0 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_signpostName);
  v7 = *(v0 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_signpostName + 8);
  v8 = *(v0 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_signpostName + 16);
  sub_1000167D4(v4);
  v19 = v7;
  v20 = v6;
  v18 = v8;
  os_signpost(_:dso:log:name:signpostID:)();

  v9 = *(v2 + 8);
  v9(v4, v1);
  EpisodeStateRepository.startObservingChanges()();
  dispatch thunk of EpisodeStateController.startObservingChanges()();
  dispatch thunk of EpisodeStateController.startObservingChanges()();
  dispatch thunk of EpisodeStateController.startObservingChanges()();
  if (qword_100572820 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = static PodcastsStateCoordinator.shared;
  v22 = type metadata accessor for PodcastsStateCoordinator();
  v23 = sub_10000F084(&qword_100573DA8, type metadata accessor for PodcastsStateCoordinator);
  v21 = v10;
  v11 = type metadata accessor for LocalLibraryPlaybackPositionTracker();
  swift_allocObject();
  v12 = v10;
  v13 = LocalLibraryPlaybackPositionTracker.init(stateCoordinator:)();
  v22 = v11;
  v23 = &protocol witness table for LocalLibraryPlaybackPositionTracker;
  v21 = v13;
  dispatch thunk of PlaybackController.playbackPositionTracker.setter();
  v14 = static PodcastsStateCoordinator.shared;
  PodcastsStateCoordinator.startTrackingChangesInDownloads()();

  static os_signpost_type_t.end.getter();
  v15 = static OS_os_log.episodeStatesSignpost.getter();
  sub_1000167D4(v4);
  os_signpost(_:dso:log:name:signpostID:)();

  return (v9)(v4, v1);
}

uint64_t sub_1000167D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100573F90);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC8Podcasts19LibraryDataProvider____lazy_storage___signpostID;
  swift_beginAccess();
  sub_100010430(v2 + v10, v9, &qword_100573F90);
  v11 = type metadata accessor for OSSignpostID();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_100009104(v9, &qword_100573F90);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.episodeStatesSignpost.getter();
  swift_unknownObjectRetain();
  OSSignpostID.init(log:object:)();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_100016A14(v7, v2 + v10, &qword_100573F90);
  return swift_endAccess();
}

uint64_t sub_100016A14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100168088(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

id sub_100016A80()
{
  v0 = type metadata accessor for Podcasts();
  v50 = v0;
  v51 = sub_1000170B0(&qword_1005742C0, &type metadata accessor for Podcasts);
  v1 = sub_10000E680(v49);
  (*(*(v0 - 8) + 104))(v1, enum case for Podcasts.simplifiedSyncDirtyHandling(_:), v0);
  v2 = isFeatureEnabled(_:)();
  sub_100004590(v49);
  EpisodesStates = type metadata accessor for FetchEpisodesStates();
  v4 = swift_allocObject();
  v50 = EpisodesStates;
  v51 = &off_1004ED9D8;
  v49[0] = v4;
  if (v2)
  {
    v5 = type metadata accessor for SimplifiedPodcastsStateTransitionsFinder();
    v6 = swift_allocObject();
    v7 = sub_100010C38(v49, EpisodesStates);
    __chkstk_darwin(v7);
    v9 = (&v43 - v8);
    (*(v10 + 16))(&v43 - v8);
    v11 = *v9;
    v6[5] = EpisodesStates;
    v6[6] = &off_1004ED9D8;
    v6[2] = v11;
    sub_100004590(v49);
    v12 = &off_1004EF7B0;
  }

  else
  {
    v5 = type metadata accessor for OriginBasedPodcastsStateTransitionsFinder();
    v6 = swift_allocObject();
    v13 = sub_100010C38(v49, EpisodesStates);
    __chkstk_darwin(v13);
    v15 = (&v43 - v14);
    (*(v16 + 16))(&v43 - v14);
    v17 = *v15;
    v6[5] = EpisodesStates;
    v6[6] = &off_1004ED9D8;
    v6[2] = v17;
    sub_100004590(v49);
    v12 = &off_1004E44A0;
  }

  v50 = v5;
  v51 = v12;
  v49[0] = v6;
  type metadata accessor for SyncKeysRepository();
  v18 = static SyncKeysRepository.shared.getter();
  v19 = [objc_opt_self() sharedInstance];
  v43 = [objc_opt_self() shared];
  sub_100004428(v49, v48);
  v20 = type metadata accessor for ImplicitFollowsDecayCoordinator();
  swift_allocObject();
  v21 = ImplicitFollowsDecayCoordinator.init()();
  v44 = objc_opt_self();
  result = [v44 sharedInstance];
  if (result)
  {
    v23 = result;
    sub_100009F1C(0, &qword_100573DE0);
    v24 = [swift_getObjCClassFromMetadata() sharedInstance];
    v25 = type metadata accessor for PodcastsStateTransitionsExternalEffects();
    v26 = swift_allocObject();
    v26[2] = v23;
    v26[3] = v24;
    v26[4] = v19;
    v47[3] = v20;
    v47[4] = &protocol witness table for ImplicitFollowsDecayCoordinator;
    v47[0] = v21;
    v46[3] = v25;
    v46[4] = &protocol witness table for PodcastsStateTransitionsExternalEffects;
    v46[0] = v26;
    type metadata accessor for PodcastsStateTransitions();
    v27 = swift_allocObject();
    sub_100004428(v48, (v27 + 2));
    v27[7] = v18;
    sub_100004428(v47, (v27 + 8));
    sub_100004428(v46, (v27 + 13));
    swift_beginAccess();
    v28 = v27[11];
    v29 = v27[12];
    sub_100010C38((v27 + 8), v28);
    v30 = *(v29 + 24);
    v31 = v18;
    v32 = v19;

    v30(v33, &off_1004EAA98, v28, v29);
    swift_endAccess();
    sub_100004590(v48);
    sub_100004590(v46);
    sub_100004590(v47);

    type metadata accessor for EpisodeStateRepository();
    v34 = static EpisodeStateRepository.shared.getter();
    v35 = [objc_opt_self() sharedInstance];
    v36 = type metadata accessor for PodcastsStateCoordinatorPersistentStore();
    swift_allocObject();
    v37 = v31;
    v38 = PodcastsStateCoordinatorPersistentStore.init(syncKeysRepository:)();
    result = [v44 sharedInstance];
    if (result)
    {
      v39 = result;
      v48[3] = v36;
      v48[4] = &protocol witness table for PodcastsStateCoordinatorPersistentStore;
      v48[0] = v38;
      v40 = type metadata accessor for PodcastsStateCoordinator();
      v41 = objc_allocWithZone(v40);
      *&v41[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_subscriptions] = &_swiftEmptyArrayStorage;
      *&v41[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_downloadsGateway] = v43;
      *&v41[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_podcastsStateTransitions] = v27;
      *&v41[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_episodeStateRepository] = v34;
      *&v41[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_contextProvider] = v35;
      sub_100004428(v48, &v41[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_podcastsStateCoordinatorPersistentStore]);
      *&v41[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_syncController] = v32;
      *&v41[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_library] = v39;
      v45.receiver = v41;
      v45.super_class = v40;
      v42 = objc_msgSendSuper2(&v45, "init");
      sub_100004590(v48);

      sub_100004590(v49);
      return v42;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100017090()
{
  result = sub_100016A80();
  static PodcastsStateCoordinator.shared = result;
  return result;
}

uint64_t sub_1000170B0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100017198(id a1)
{
  v1 = +[MTLegacyDownloadManagerProvider sharedInstance];
  v4 = [v1 downloadManager];

  v2 = [[MTFullDownloadsGateway alloc] initWithDownloadManager:v4];
  v3 = qword_100583D70;
  qword_100583D70 = v2;
}

void *ImplicitFollowsDecayCoordinator.init()()
{
  v0 = sub_100168088(&qword_100575C10);
  __chkstk_darwin(v0 - 8);
  v33 = v24 - v1;
  v34 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v31 = *(v34 - 8);
  __chkstk_darwin(v34);
  v29 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100168088(&qword_100577878);
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v26 = v24 - v4;
  v35 = sub_100168088(&qword_100577880);
  v32 = *(v35 - 8);
  __chkstk_darwin(v35);
  v30 = v24 - v5;
  v25 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v11 = sub_100009F1C(0, &qword_1005729D0);
  v24[0] = "ts.upNextSplitMigration";
  static DispatchQoS.background.getter();
  v36 = &_swiftEmptyArrayStorage;
  sub_1000179A0();
  sub_100168088(&unk_1005729E0);
  v12 = v24[1];
  sub_100009FAC(&qword_1005743C0, &unk_1005729E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v25);
  v25 = v11;
  v12[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_100168088(&unk_1005729F0);
  swift_allocObject();
  v12[3] = PassthroughSubject.init()();
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = sub_10016B138(&_swiftEmptyArrayStorage);
  }

  else
  {
    v13 = &_swiftEmptySetSingleton;
  }

  v12[4] = v13;
  v12[6] = 0;
  swift_unknownObjectWeakInit();
  v36 = v12[3];
  sub_100009FAC(&qword_100577888, &unk_1005729F0);

  v14 = v26;
  Publisher.filter(_:)();

  v15 = v29;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v36 = v12[2];
  v16 = v36;
  v17 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v18 = v33;
  (*(*(v17 - 8) + 56))(v33, 1, 1, v17);
  sub_100009FAC(&qword_100577890, &qword_100577878);
  sub_1000179F8();
  v19 = v16;
  v20 = v30;
  v21 = v28;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_100009104(v18, &qword_100575C10);

  (*(v31 + 8))(v15, v34);
  (*(v27 + 8))(v14, v21);
  swift_allocObject();
  swift_weakInit();
  sub_100009FAC(&qword_100577898, &qword_100577880);
  v22 = v35;
  Publisher<>.sink(receiveValue:)();

  (*(v32 + 8))(v20, v22);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v12;
}

uint64_t sub_100017958()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000179A0()
{
  result = qword_1005743B0;
  if (!qword_1005743B0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005743B0);
  }

  return result;
}

unint64_t sub_1000179F8()
{
  result = qword_100575C40;
  if (!qword_100575C40)
  {
    sub_100009F1C(255, &qword_1005729D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100575C40);
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for TextKit2Migrator.Error(_WORD *result, int a2, int a3)
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

uint64_t sub_100017BB8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 48) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall PodcastsStateCoordinator.startTrackingChangesInDownloads()()
{
  v0 = type metadata accessor for EpisodeStateDomain();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100168088(&qword_10057E1F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = sub_100168088(&qword_10057E1F8);
  v9 = *(v8 - 8);
  v20 = v8;
  v21 = v9;
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v12 = sub_100168088(&qword_10057E200);
  v13 = *(v12 - 8);
  v22 = v12;
  v23 = v13;
  __chkstk_darwin(v12);
  v15 = &v19 - v14;
  EpisodeStateRepository.startObservingChanges()();
  (*(v1 + 104))(v3, enum case for EpisodeStateDomain.downloadState(_:), v0);
  v16 = EpisodeStateRepository.publisherForChanges(in:)();
  (*(v1 + 8))(v3, v0);
  v24 = v16;
  sub_100168088(&qword_10057E210);
  sub_100009FAC(&qword_10057E218, &qword_10057E210);
  Publisher.filter(_:)();

  sub_100168088(&qword_10057E220);
  sub_100009FAC(&qword_10057E228, &qword_10057E1F0);
  Publisher.compactMap<A>(_:)();
  (*(v5 + 8))(v7, v4);
  static Subscribers.Demand.unlimited.getter();
  sub_100168088(&qword_10057E230);
  sub_100009FAC(&qword_10057E238, &qword_10057E1F8);
  sub_100009FAC(&qword_10057E240, &qword_10057E230);
  v17 = v20;
  Publisher<>.flatMap<A>(maxPublishers:_:)();
  (*(v21 + 8))(v11, v17);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009FAC(&qword_10057E248, &qword_10057E200);
  v18 = v22;
  Publisher<>.sink(receiveValue:)();

  (*(v23 + 8))(v15, v18);
  swift_beginAccess();
  sub_100168088(&unk_1005783F0);
  sub_100009FAC(&unk_10057A070, &unk_1005783F0);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t sub_1000181D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t type metadata accessor for WidgetManager()
{
  result = qword_10057FC70;
  if (!qword_10057FC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001829C()
{
  sub_100327990();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100018394(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000183DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LibraryDataProvider.episodeListPublisher(settings:pageSize:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = a3;
  v26 = a2;
  v5 = type metadata accessor for EpisodeListSettings();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v25 = sub_100168088(&unk_100573C10);
  v24 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = v22 - v8;
  if (os_feature_enabled_prototype_up_next())
  {
    EpisodeListSettings.listType.getter();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30[9] = 2;
    v34 = 0;
    v35 = 10;
    v10 = static EpisodeListType.== infix(_:_:)();
    sub_100018888(v29);
    if (v10)
    {
      sub_1001D3E04(2);
    }
  }

  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v27 = 0xD000000000000015;
  v28 = 0x8000000100465C50;
  EpisodeListSettings.listType.getter();
  v11 = EpisodeListType.description.getter();
  v13 = v12;
  sub_100018888(v30);
  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v22[3] = v27;
  v22[2] = v28;
  v22[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22[0] = v15;
  EpisodeListSettings.predicate.getter();
  EpisodeListSettings.sort.getter();
  EpisodeSortType.descriptors.getter();
  v16 = [*(v3 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  (*(v6 + 16))(v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  type metadata accessor for LibraryEpisodeLockup();
  sub_100009F1C(0, &qword_100573660);
  v23;
  FetchedResultsListPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
  sub_100009FAC(&qword_100573C20, &unk_100573C10);
  v19 = v25;
  v20 = PaginatedPublisher.eraseToAnyPaginatedPublisher()();
  (*(v24 + 8))(v9, v19);
  return v20;
}

uint64_t sub_1000188DC()
{
  v10 = sub_100168088(&unk_100580450);
  __chkstk_darwin(v10);
  v9 = sub_100168088(&qword_100580440);
  __chkstk_darwin(v9);
  v0 = sub_100168088(&unk_10057DE20);
  __chkstk_darwin(v0);
  v1 = sub_100168088(&qword_10057FC88);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - v3;
  dispatch thunk of PlaybackController.$nowPlayingItem.getter();
  dispatch thunk of PlaybackController.$durationSnapshot.getter();
  dispatch thunk of PlaybackController.$isPlaying.getter();
  sub_100009FAC(&qword_100575E78, &unk_10057DE20);
  sub_100009FAC(&unk_100580470, &qword_100580440);
  sub_100009FAC(&unk_100580460, &unk_100580450);
  Publishers.CombineLatest3.init(_:_:_:)();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1000193F8;
  *(v6 + 24) = v5;
  sub_100009FAC(&qword_10057FC90, &qword_10057FC88);
  Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  sub_100168088(&unk_1005783F0);
  sub_100009FAC(&unk_10057A070, &unk_1005783F0);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t sub_100018CC0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018CF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100018D30()
{
  v1 = v0;
  sub_1000188DC();
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  v4 = MTApplicationWillTerminateNotification;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_100327A60;
  v21 = v5;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_1003250A8;
  v19 = &unk_1004EE1B0;
  v6 = _Block_copy(&v16);

  v7 = [v3 addObserverForName:v4 object:0 queue:0 usingBlock:v6];
  _Block_release(v6);

  v8 = OBJC_IVAR____TtC8Podcasts13WidgetManager_observerTokens;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v9 = [v2 defaultCenter];
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 privateQueueContext];

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_100327A90;
  v21 = v12;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_1003250A8;
  v19 = &unk_1004EE1D8;
  v13 = _Block_copy(&v16);

  v14 = [v9 addObserverForName:NSManagedObjectContextDidSaveNotification object:v11 queue:0 usingBlock:v13];
  _Block_release(v13);

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

void sub_100019098(void *a1, __int128 *a2, int a3)
{
  v6 = type metadata accessor for WidgetNowPlayingInfo();
  __chkstk_darwin(v6 - 8);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100168088(&qword_10057FC98);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v30 - v14;
  if (a1)
  {
    v16 = *(a2 + 6);
    if (v16 != 2)
    {
      v17 = a2[1];
      v31 = *a2;
      v32 = v17;
      v33 = a2[2];
      v34 = v16;
      if (a3)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        v19 = a1;
        if (Strong)
        {
          MPModelObject.contentId.getter();
          v30[3] = a3;
          Date.init()();
          WidgetLastPlayedInfo.init(contentID:date:)();
          PlayedInfo = type metadata accessor for WidgetLastPlayedInfo();
          (*(*(PlayedInfo - 8) + 56))(v15, 0, 1, PlayedInfo);
          v21 = OBJC_IVAR____TtC8Podcasts13WidgetManager_lastPlayedInfo;
          swift_beginAccess();
          sub_100327B30(v15, Strong + v21);
          swift_endAccess();
        }
      }

      else
      {
        v22 = a1;
      }

      swift_beginAccess();
      v23 = swift_unknownObjectWeakLoadStrong();
      if (v23)
      {
        v24 = v23;
        v25 = a1;
        MPModelObject.contentId.getter();

        swift_beginAccess();
        v26 = swift_unknownObjectWeakLoadStrong();
        if (v26)
        {
          v27 = OBJC_IVAR____TtC8Podcasts13WidgetManager_lastPlayedInfo;
          v28 = v26;
          swift_beginAccess();
          sub_100327AC0(v28 + v27, v13);
        }

        else
        {
          v29 = type metadata accessor for WidgetLastPlayedInfo();
          (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
        }

        WidgetNowPlayingInfo.init(isPlaying:currentEpisodeID:durationSnapshot:widgetLastPlayedInfo:)();
        sub_100326FA8(v8);
      }
    }
  }
}

uint64_t sub_100019400(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 3);
  v6[0] = *(a1 + 1);
  v6[1] = v4;
  v6[2] = *(a1 + 5);
  v7 = a1[7];
  return v2(v3, v6, *(a1 + 64));
}

uint64_t sub_10001946C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v3[OBJC_IVAR____TtC8Podcasts13WidgetManager_refreshQueue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  static DispatchQoS.unspecified.getter();
  v19 = &_swiftEmptyArrayStorage;
  sub_1000183DC(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

uint64_t sub_100019800()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.widget.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Reloading Timeline", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  type metadata accessor for WidgetCenter();
  static WidgetCenter.shared.getter();
  static WidgetConstants.upNextWidgetKind.getter();
  dispatch thunk of WidgetCenter.reloadTimelines(ofKind:)();

  v7 = type metadata accessor for Podcasts();
  v17 = v7;
  v8 = sub_1000183DC(&qword_1005742C0, &type metadata accessor for Podcasts);
  v18 = v8;
  v9 = sub_10000E680(v16);
  v10 = *(*(v7 - 8) + 104);
  v10(v9, enum case for Podcasts.libraryWidget(_:), v7);
  v11 = isFeatureEnabled(_:)();
  sub_100004590(v16);
  if (v11)
  {
    static WidgetCenter.shared.getter();
    static WidgetConstants.libraryWidgetKind.getter();
    dispatch thunk of WidgetCenter.reloadTimelines(ofKind:)();
  }

  v17 = v7;
  v18 = v8;
  v12 = sub_10000E680(v16);
  v10(v12, enum case for Podcasts.showWidget(_:), v7);
  v13 = isFeatureEnabled(_:)();
  result = sub_100004590(v16);
  if (v13)
  {
    static WidgetCenter.shared.getter();
    static WidgetConstants.singleShowWidgetKind.getter();
    dispatch thunk of WidgetCenter.reloadTimelines(ofKind:)();
  }

  return result;
}

uint64_t sub_100019AAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10021A620;

  return sub_100019B60();
}

uint64_t sub_100019B60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001C51C;

  return sub_100019BF0();
}

uint64_t sub_100019BF0()
{
  v1[2] = v0;
  sub_100168088(&qword_100578010);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for OSSignposter();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for ArtworkRequest();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v1[9] = *(v4 + 64);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[12] = v5;
  *v5 = v1;
  v5[1] = sub_100037208;

  return sub_100019D84();
}

uint64_t sub_100019D84()
{
  sub_100168088(&qword_100578010);
  v0[3] = swift_task_alloc();
  v1 = type metadata accessor for OSSignposter();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();

  return _swift_task_switch(sub_100019E78, 0, 0);
}

uint64_t sub_100019E78()
{
  v1 = *(v0 + 24);
  static OSSignposter.widget.getter();
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = sub_100168088(&qword_10057FCB0);
  *v4 = v0;
  v4[1] = sub_100036A8C;
  v6 = *(v0 + 24);

  return __s2os12OSSignposterV18PodcastsFoundationE4task8priority4name5blockxScPSg_s12StaticStringVxyYaKYAcntYaKs8SendableRzlF(v0 + 16, v6, "WidgetFetchArtworkRequests", 26, 2, &unk_10040D180, v3, v5);
}

uint64_t sub_100019FC8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001A190(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001C51C;

  return sub_10001A23C(a1);
}

uint64_t sub_10001A23C(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10001A2FC, 0, 0);
}

uint64_t sub_10001A2FC()
{
  sub_100009F1C(0, &qword_1005735F0);
  v1 = static MTDB.shared.getter();
  v2 = NSManagedObjectContextProvider.importManagedObjectContext.getter();
  v0[6] = v2;

  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
  v0[7] = v6;
  v7 = swift_allocObject();
  v0[8] = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v6;
  (*(v4 + 104))(v3, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v5);
  v2;
  v8 = v6;
  v9 = swift_task_alloc();
  v0[9] = v9;
  v10 = sub_100168088(&qword_10057FCB0);
  *v9 = v0;
  v9[1] = sub_10003643C;
  v11 = v0[5];
  v12 = v0[2];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v12, v11, sub_100327E0C, v7, v10);
}

uint64_t sub_10001A500()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10001A540(uint64_t a1)
{
  if (([*(a1 + 32) isObserving] & 1) == 0)
  {
    [*(a1 + 32) setObserving:1];
    v2 = +[MTDB sharedInstance];
    [v2 addChangeNotifier:*(a1 + 32)];
  }
}

void sub_10001AC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001ACFC(uint64_t a1)
{
  v2 = [MTSiriPlistDumper alloc];
  v6 = objc_alloc_init(MTBackgroundTaskManager);
  v3 = [v2 initWithBackgroundTaskManager:v6];
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  *(v4 + 56) = v3;
}

void sub_10001AE7C(uint64_t a1)
{
  v1 = [*(a1 + 32) listenNowQueryObserver];
  [v1 startObserving];
}

uint64_t sub_10001AEC0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 privateQueueContext];

  LODWORD(v12) = [v13 hasChanges];
  if (v12)
  {
    v22 = v2;
    v14 = v0;
    static Logger.widget.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Timeline has changed but it's not saved yet. Waiting for save notification", v17, 2u);
    }

    (*(v9 + 8))(v11, v8);
    v18 = swift_allocObject();
    *(v18 + 16) = v14;
    aBlock[4] = sub_100327DF4;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F038;
    aBlock[3] = &unk_1004EE2C8;
    v19 = _Block_copy(aBlock);
    v20 = v14;
    static DispatchQoS.unspecified.getter();
    v25 = &_swiftEmptyArrayStorage;
    sub_1000183DC(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
    sub_100168088(&unk_100575CD0);
    sub_100009FAC(&qword_10057D390, &unk_100575CD0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);
    (*(v22 + 8))(v4, v1);
    (*(v23 + 8))(v7, v24);
  }

  else
  {

    return sub_10001972C();
  }
}

uint64_t sub_10001B328()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001B3CC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  v13 = OBJC_IVAR___MTBackgroundTaskManager_task;
  if (*&v3[OBJC_IVAR___MTBackgroundTaskManager_task] == UIBackgroundTaskInvalid)
  {
    v35 = v6;
    v14 = [objc_opt_self() sharedApplication];
    v15 = String._bridgeToObjectiveC()();
    v16 = swift_allocObject();
    *(v16 + 16) = v3;
    aBlock[4] = sub_1003A29FC;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F038;
    aBlock[3] = &unk_1004F2B68;
    v17 = _Block_copy(aBlock);
    v18 = v3;
    v34 = a1;
    v19 = v18;

    v20 = [v14 beginBackgroundTaskWithName:v15 expirationHandler:v17];
    _Block_release(v17);

    *&v3[v13] = v20;
    static Logger.backgroundTaskManager.getter();
    v21 = v19;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 134218242;
      *(v24 + 4) = Int.hashValue.getter();

      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_1000153E0(v34, a2, aBlock);
      _os_log_impl(&_mh_execute_header, v22, v23, "Started background task with identifier hash: %ld with name: %s.", v24, 0x16u);
      sub_100004590(v25);
    }

    else
    {
    }

    return (*(v7 + 8))(v12, v35);
  }

  else
  {
    static Logger.backgroundTaskManager.getter();
    v26 = v3;

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v35 = v6;
      v30 = v29;
      v31 = swift_slowAlloc();
      v34 = a1;
      v32 = v31;
      aBlock[0] = v31;
      *v30 = 134218242;
      *(v30 + 4) = Int.hashValue.getter();

      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_1000153E0(v34, a2, aBlock);
      _os_log_impl(&_mh_execute_header, v27, v28, "Tried to start background task but there is already an ongoing background task in progress with identifier hash: %ld. Not starting background task with name: %s.", v30, 0x16u);
      sub_100004590(v32);

      return (*(v7 + 8))(v10, v35);
    }

    else
    {

      return (*(v7 + 8))(v10, v6);
    }
  }
}

uint64_t sub_10001B800()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10001B838(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100030CA0(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t sub_10001B944(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10001B9A0(id a1, SEL a2)
{
  v3 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  v8 = a1;
  sub_100217A04(0, 0, v5, &unk_10040E008, v7);
}

uint64_t sub_10001BAAC(uint64_t a1)
{
  v2 = sub_100168088(&qword_100578010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001BB2C()
{
  v1 = v0;
  type metadata accessor for StoreReviewPromptController();
  static StoreReviewPromptController.shared.getter();
  dispatch thunk of StoreReviewPromptController.prepareToTrackBecomeActive()();

  v2 = [objc_opt_self() sharedCoordinator];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v7[4] = sub_100305240;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10000F038;
  v7[3] = &unk_1004ECF48;
  v4 = _Block_copy(v7);
  v5 = v1;

  [v2 registerAppBootstrapHandler:v4];
  _Block_release(v4);

  static MetricsVisualizer.setupMetricsEventVisualizer()();
  return 1;
}

uint64_t sub_10001BC58(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001C610;

  return v6(a1);
}

uint64_t sub_10001BD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[16] = v7;
  *v7 = v4;
  v7[1] = sub_10001C1DC;

  return sub_10001BF58();
}

uint64_t sub_10001BEA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10021A620;

  return sub_10001BC58(a1, v4);
}

uint64_t sub_10001BF78()
{
  v1 = [objc_opt_self() standardUserDefaults];
  sub_10001C0C0();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 integerForKey:v2];

  if (v3 > 0 || (RestrictionsController.state.getter(), (RestrictionsController.ExplicitContentState.isExplicitContentAllowed.getter() & 1) != 0))
  {
    v4 = *(v0 + 8);

    return v4(0);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 24) = v6;
    *v6 = v0;
    v6[1] = sub_100338730;

    return RestrictionsController.isExplicitContentBannedInCurrentStorefront()();
  }
}

unint64_t sub_10001C0C0()
{
  sub_100009F1C(0, &qword_10057AB20);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 activeAccount];

  if (v1)
  {
    v2 = [v1 ams_altDSID];

    if (v2)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;

      v6._countAndFlagsBits = v3;
      v6._object = v5;
      String.append(_:)(v6);

      v7._countAndFlagsBits = 46;
      v7._object = 0xE100000000000000;
      String.append(_:)(v7);
    }
  }

  return 0xD000000000000037;
}

uint64_t sub_10001C1DC(char a1)
{
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_10001C2DC, 0, 0);
}

uint64_t sub_10001C2DC()
{
  if (*(v0 + 136) == 1)
  {
    v2 = v0[14];
    v1 = v0[15];
    v3 = v0[12];
    v13 = v0[13];
    v4 = v0[10];
    v5 = v0[11];
    v6 = v0[9];
    sub_100009F1C(0, &qword_1005729D0);
    v12 = static OS_dispatch_queue.main.getter();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v0[6] = sub_10033902C;
    v0[7] = v7;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10000F038;
    v0[5] = &unk_1004EF030;
    v8 = _Block_copy(v0 + 2);
    v9 = v6;
    static DispatchQoS.unspecified.getter();
    v0[8] = _swiftEmptyArrayStorage;
    sub_1001D293C();
    sub_100168088(&unk_100575CD0);
    sub_100182E30();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v8);

    (*(v5 + 8))(v3, v4);
    (*(v2 + 8))(v1, v13);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10001C4E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C51C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001C610()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001C708()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

Swift::Void __swiftcall RestrictionsController.presentLaunchAlertIfNeeded()()
{
  v1 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_100217A04(0, 0, v3, &unk_10040E000, v5);
}

uint64_t sub_10001C854(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10001C8E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C924()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_10001CA54(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = [v4 sharedApplication];
  v6 = [v5 delegate];

  if (!v6)
  {
    return;
  }

  v67 = &OBJC_PROTOCOL___MTAppDelegateProtocol;
  v7 = swift_dynamicCastObjCProtocolConditional();
  if (!v7 || (v8 = v7, objc_opt_self(), (v9 = swift_dynamicCastObjCClass()) == 0) || (v10 = v9, ([v8 respondsToSelector:"createWindowWithScene:"] & 1) == 0))
  {
    swift_unknownObjectRelease();
    return;
  }

  v11 = a1;
  v12 = [v8 createWindowWithScene:v10];
  if (!v12)
  {
    swift_unknownObjectRelease();

    return;
  }

  v57 = v11;
  v13 = v12;
  v14 = [v13 traitCollection];
  v15 = [v14 userInterfaceIdiom];

  v16 = v13;
  if (!v15)
  {
    v16 = [objc_opt_self() traitCollectionWithHorizontalSizeClass:1];
    [v13 _setLocalOverrideTraitCollection:v16];
  }

  [v8 setWindow:v13];
  if ([v8 respondsToSelector:"willConnectScene"])
  {
    [v8 willConnectScene];
  }

  [v13 makeKeyAndVisible];
  v17 = [a2 shortcutItem];
  v59 = v4;
  v56 = v13;
  if (v17)
  {
    v18 = v17;
    static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v19 = static OS_os_log.launch.getter();
    sub_100168088(&unk_100574670);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100400790;
    v21 = [v18 type];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100022C18();
    *(v20 + 32) = v22;
    *(v20 + 40) = v24;
    os_log(_:dso:log:_:_:)();

    v25 = [v4 sharedApplication];
    v26 = [v25 delegate];

    if (v26)
    {
      if ([v26 respondsToSelector:"application:performActionForShortcutItem:completionHandler:"])
      {
        swift_unknownObjectRetain();
        v27 = [v4 sharedApplication];
        v65 = UInt64.int64Representation.getter;
        v66 = 0;
        aBlock = _NSConcreteStackBlock;
        v62 = 1107296256;
        v63 = sub_1002016BC;
        v64 = &unk_1004E7F78;
        v28 = _Block_copy(&aBlock);
        [v26 application:v27 performActionForShortcutItem:v18 completionHandler:v28];
        swift_unknownObjectRelease_n();

        _Block_release(v28);

        goto LABEL_19;
      }

      swift_unknownObjectRelease();
    }
  }

LABEL_19:
  v29 = [a2 URLContexts];
  sub_100009F1C(0, &qword_10057A278);
  sub_100031980(&qword_10057A280, &qword_10057A278);
  v30 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v30 & 0xC000000000000001) == 0)
  {
    if (*(v30 + 16) < 1)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (__CocoaSet.count.getter() >= 1)
  {
LABEL_21:
    sub_100270DF4(v30);
  }

LABEL_22:

  v31 = [a2 userActivities];
  sub_100009F1C(0, &qword_10057A288);
  sub_100031980(&unk_10057A290, &qword_10057A288);
  v32 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v32 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v32 = v68;
    v33 = v69;
    v34 = v70;
    v35 = v71;
    v36 = v72;
  }

  else
  {
    v35 = 0;
    v37 = -1 << *(v32 + 32);
    v33 = v32 + 56;
    v34 = ~v37;
    v38 = -v37;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    else
    {
      v39 = -1;
    }

    v36 = v39 & *(v32 + 56);
  }

  v40 = (v34 + 64) >> 6;
  v58 = v32;
  while (v32 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v45 = aBlock, v43 = v35, v44 = v36, !aBlock))
    {
LABEL_46:
      sub_1000319D8();
      swift_unknownObjectRelease();

      return;
    }

LABEL_43:
    v60 = v44;
    static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v46 = static OS_os_log.launch.getter();
    sub_100168088(&unk_100574670);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_100400790;
    v48 = [v45 activityType];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    *(v47 + 56) = &type metadata for String;
    *(v47 + 64) = sub_100022C18();
    *(v47 + 32) = v49;
    *(v47 + 40) = v51;
    os_log(_:dso:log:_:_:)();

    v52 = [v59 sharedApplication];
    v53 = [v52 delegate];

    if (!v53)
    {
      goto LABEL_32;
    }

    if (([v53 respondsToSelector:"application:continueUserActivity:restorationHandler:"] & 1) == 0)
    {
      swift_unknownObjectRelease();
LABEL_32:

      goto LABEL_33;
    }

    v54 = [v59 sharedApplication];
    v65 = UInt64.int64Representation.getter;
    v66 = 0;
    aBlock = _NSConcreteStackBlock;
    v62 = 1107296256;
    v63 = sub_100270A4C;
    v64 = &unk_1004E7F50;
    v55 = _Block_copy(&aBlock);
    [v53 application:v54 continueUserActivity:v45 restorationHandler:v55];
    swift_unknownObjectRelease();

    _Block_release(v55);

LABEL_33:
    v35 = v43;
    v36 = v60;
    v32 = v58;
  }

  v41 = v35;
  v42 = v36;
  v43 = v35;
  if (v36)
  {
LABEL_39:
    v44 = (v42 - 1) & v42;
    v45 = *(*(v32 + 48) + ((v43 << 9) | (8 * __clz(__rbit64(v42)))));
    if (!v45)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  while (1)
  {
    v43 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v43 >= v40)
    {
      goto LABEL_46;
    }

    v42 = *(v33 + 8 * v43);
    ++v41;
    if (v42)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
}

uint64_t sub_10001D39C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_10001D480@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100168088(&qword_100573A78);
  __chkstk_darwin(v6 - 8);
  v8 = &v20[-v7];
  v9 = sub_100168088(&unk_100573A80);
  __chkstk_darwin(v9 - 8);
  v11 = &v20[-v10];
  EpisodeListSettings.listType.getter();
  EpisodeListType.stationUUID.getter();
  v13 = v12;
  sub_100018888(v20);
  if (!v13)
  {
    type metadata accessor for Episode();
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v19 = a1;
    EpisodeListSettings.listType.getter();
    EpisodeListType.wantsListenNowReason.getter();
    sub_100018888(v21);
    result = Episode.__allocating_init(from:clickAction:wantsListenNowReason:)();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  type metadata accessor for StationEpisode();
  v14 = a1;
  result = StationEpisode.__allocating_init(from:stationUuid:)();
  if (!result)
  {
    goto LABEL_5;
  }

LABEL_3:

  v16 = type metadata accessor for EpisodeListSettings();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v11, a2, v16);
  (*(v17 + 56))(v11, 0, 1, v16);
  EpisodeListSettings.sectionContext.getter();
  static MetricsDataConfiguration.default.getter();
  v18 = dispatch thunk of Episode.defaultLockup(for:sectionContext:configuration:)();
  v27 = v22;
  sub_100009104(&v27, &unk_100574650);
  v26 = v23;
  sub_100009104(&v26, &unk_100573A90);
  v25 = *(&v23 + 1);
  sub_100009104(&v25, &unk_100574660);
  sub_1000112B4(v24);

  sub_100009104(v8, &qword_100573A78);
  result = sub_100009104(v11, &unk_100573A80);
LABEL_6:
  *a3 = v18;
  return result;
}

void **sub_10001DB48()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v46 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v41 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC8Podcasts11AppDelegate_objectGraph];
  sub_100009F1C(0, &qword_10057BC40);

  if (static UITraitCollection.interfaceIdiomIsMac.getter())
  {
    type metadata accessor for LegacyArtworkLoader();
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    if (aBlock)
    {
      sub_100009F1C(0, &qword_100573E40);
      [swift_getObjCClassFromMetadata() defaultMaxImageDimensionInPixels];
      v7 = v6;
      v8 = swift_allocObject();
      v8[2] = sub_100344148;
      v8[3] = 0;
      v8[4] = v7;
      LegacyArtworkLoader.alternativeSize.setter();
    }
  }

  sub_10001E428();
  type metadata accessor for HomePageProvider();
  BaseObjectGraph.inject<A>(_:)();
  HomePageProvider.loadPageContent()();

  v9 = sub_10001F5E4();
  sub_100168088(&qword_100574580);
  BaseObjectGraph.inject<A>(_:)();
  v11 = aBlock;
  v10 = v53;
  sub_100168088(&qword_100574590);
  BaseObjectGraph.inject<A>(_:)();
  v13 = aBlock;
  v12 = v53;
  type metadata accessor for PodcastsFlowTabBarController();
  BaseObjectGraph.inject<A>(_:)();
  v14 = aBlock;
  type metadata accessor for MenuBarController();
  v44 = v9;
  BaseObjectGraph.inject<A>(_:)();
  v15 = *&v1[OBJC_IVAR____TtC8Podcasts11AppDelegate_commandController];
  *&v1[OBJC_IVAR____TtC8Podcasts11AppDelegate_commandController] = aBlock;

  v16 = &v1[OBJC_IVAR____TtC8Podcasts11AppDelegate_flowController];
  *v16 = v13;
  v16[1] = v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v17 = &v1[OBJC_IVAR____TtC8Podcasts11AppDelegate_urlActionRunner];
  *v17 = v11;
  v17[1] = v10;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  aBlock = v11;
  v53 = v10;
  BaseObjectGraph.satisfying<A>(_:with:)();
  v42 = v13;
  aBlock = v13;
  v53 = v12;
  v18 = BaseObjectGraph.satisfying<A>(_:with:)();

  type metadata accessor for NowPlayingBootstrap();
  swift_allocObject();

  v19 = v14;
  v20 = sub_1001CE240(v18, v19);

  sub_10002B038();
  *&v1[OBJC_IVAR____TtC8Podcasts11AppDelegate_nowPlayingBootstrap] = v20;

  type metadata accessor for UserActivityController();
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v21 = aBlock;
  if (aBlock)
  {
    aBlock[6] = v11;
    v21[7] = v10;
  }

  v43 = v11;
  swift_unknownObjectRelease();
  aBlock = v20;
  v22 = BaseObjectGraph.satisfying<A>(_:with:)();

  v23 = sub_10002C074(&qword_10057E680, type metadata accessor for PodcastsFlowTabBarController);
  type metadata accessor for EpisodeController();
  v24 = v19;

  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v50 = v5;
  v40[1] = v20;
  if (aBlock)
  {
    aBlock[3] = v23;
    swift_unknownObjectWeakAssign();
  }

  else
  {
  }

  type metadata accessor for PurchaseControllerWrapper();
  v25 = static PurchaseControllerWrapper.sharedInstance.getter();
  v26 = PurchaseControllerWrapper.purchaseController.getter();

  v27 = type metadata accessor for SubscriptionConfirmationSheetHandler();
  swift_allocObject();

  v28 = SubscriptionConfirmationSheetHandler.init(asPartOf:)();
  v55 = v27;
  v56 = sub_10002C074(&qword_10057E688, &type metadata accessor for SubscriptionConfirmationSheetHandler);
  aBlock = v28;
  dispatch thunk of PurchaseController.subscriptionConfirmatonHandler.setter();

  sub_10002C164(v24);
  v29 = v24;

  sub_10002C69C(v29);
  sub_10002C914();
  sub_100009F1C(0, &qword_1005729D0);
  v30 = static OS_dispatch_queue.main.getter();
  v31 = swift_allocObject();
  *(v31 + 16) = v1;
  *(v31 + 24) = v22;
  v56 = sub_100044C14;
  v57 = v31;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_10000F038;
  v55 = &unk_1004ECCF0;
  v32 = _Block_copy(&aBlock);
  v33 = v1;

  v34 = v41;
  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_10002C074(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0);
  v35 = v46;
  v36 = v49;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v32);

  (*(v48 + 8))(v35, v36);
  (*(v45 + 8))(v34, v47);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v51 = 0;
  sub_1000090B0();
  AnyHashable.init<A>(_:)();
  v37 = swift_allocObject();
  v38 = v44;
  *(v37 + 16) = v22;
  *(v37 + 24) = v38;
  type metadata accessor for BaseObjectGraph();

  AppDependencyManager.add<A>(key:dependency:)();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_100009104(&aBlock, &unk_10057E698);
  return v29;
}

uint64_t sub_10001E3A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E3E8()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10001E428()
{
  sub_100009F1C(0, &qword_10057BC40);
  if (static UITraitCollection.interfaceIdiomIsMac.getter())
  {
    sub_100009F1C(0, &qword_100573E40);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v0 = v3[0];
    if (v3[0])
    {
      v3[4] = sub_100344148;
      v3[5] = 0;
      v3[0] = _NSConcreteStackBlock;
      v3[1] = 1107296256;
      v3[2] = sub_100303314;
      v3[3] = &unk_1004ECE08;
      v1 = _Block_copy(v3);
      v2 = v0;

      [v2 setAlternativeSize:v1];
      _Block_release(v1);
    }
  }
}

void sub_10001E5B8(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = objc_autoreleasePoolPush();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7;
  *(v18 + 64) = a8;
  *(v18 + 72) = a9;
  v21[4] = sub_10001EBE4;
  v21[5] = v18;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_10001E7C0;
  v21[3] = &unk_1004F13F0;
  v19 = _Block_copy(v21);
  v20 = a3;

  sub_100013CB4(a6);

  [a1 getAllTasksWithCompletionHandler:v19];
  _Block_release(v19);
  objc_autoreleasePoolPop(v17);
}

uint64_t sub_10001E704()
{

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_10001E75C()
{
  result = qword_10057AEC8;
  if (!qword_10057AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057AEC8);
  }

  return result;
}

uint64_t sub_10001E7C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100009F1C(0, &qword_1005748F0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);
}

void sub_10001E88C(unint64_t a1, char a2, char *a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, _UNKNOWN **), uint64_t a9)
{
  v28 = a8;
  if (a2)
  {
    v27[1] = v27;
    v14 = *(*&a3[OBJC_IVAR____TtC8Podcasts16AssetsDownloader_fairPlayAssetsDownloader] + OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_sessionLock);
    v15 = __chkstk_darwin(a1);
    v16 = __chkstk_darwin(v15);
    os_unfair_lock_lock(v14 + 4);
    sub_10001EC34(aBlock);
    os_unfair_lock_unlock(v14 + 4);
    v17 = aBlock[0];
    v18 = swift_allocObject();
    v18[2] = a4;
    v18[3] = a5;
    v18[4] = v16;
    v18[5] = a3;
    v18[6] = a6;
    v18[7] = a7;
    v18[8] = v28;
    v18[9] = a9;
    aBlock[4] = sub_10002A480;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001E7C0;
    aBlock[3] = &unk_1004F1440;
    v19 = _Block_copy(aBlock);

    v20 = a3;
    sub_100013CB4(a6);

    [v17 getAllTasksWithCompletionHandler:v19];
    _Block_release(v19);
  }

  else
  {
    sub_10002A4B4(a1);
    a4();

    v21 = &a3[OBJC_IVAR____TtC8Podcasts16AssetsDownloader_statusUpdateHandler];
    v22 = *&a3[OBJC_IVAR____TtC8Podcasts16AssetsDownloader_statusUpdateHandler];
    *v21 = a6;
    v21[1] = a7;
    sub_100013CB4(a6);
    sub_1000112B4(v22);
    v23 = *&a3[OBJC_IVAR____TtC8Podcasts16AssetsDownloader_fairPlayAssetsDownloader + 8];
    ObjectType = swift_getObjectType();
    v25 = *(v23 + 8);
    v26 = *(v25 + 16);
    sub_100013CB4(a6);
    v26(a6, a7, ObjectType, v25);
    v28(a3, &off_1004F1300);
  }
}

uint64_t sub_10001EB38()
{

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t type metadata accessor for OpenTranscriptIntentImplementation()
{
  result = qword_100583058;
  if (!qword_100583058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001EC50()
{
  result = type metadata accessor for OpenTranscriptIntent();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PlaybackController();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for NowPlayingBootstrap();
      if (v3 <= 0x3F)
      {
        result = sub_10001EE7C(319, &qword_100583068);
        if (v4 <= 0x3F)
        {
          result = sub_10001EE7C(319, &unk_100583070);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for BaseObjectGraph();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

id sub_10001ED5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader__session;
  v4 = *(a1 + OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader__session);
  if (v4)
  {
    v5 = *(a1 + OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader__session);
  }

  else
  {
    v7 = sub_1000044A0((a1 + OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_config), *(a1 + OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_config + 24));
    v8 = sub_100013848(1, *v7);
    v9 = sub_10001EF1C();
    v10 = [objc_opt_self() sessionWithConfiguration:v8 assetDownloadDelegate:a1 delegateQueue:v9];

    v11 = *(a1 + v3);
    *(a1 + v3) = v10;
    v5 = v10;

    v4 = 0;
  }

  *a2 = v5;
  return v4;
}

uint64_t sub_10001EE7C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_10001EED8@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

id sub_10001EF1C()
{
  v1 = OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader____lazy_storage___sessionDelegateQueue;
  v2 = *(v0 + OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader____lazy_storage___sessionDelegateQueue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader____lazy_storage___sessionDelegateQueue);
  }

  else
  {
    v4 = [objc_allocWithZone(NSOperationQueue) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t type metadata accessor for ReevaluateAutoDownloadsIntentImplementation()
{
  result = qword_100576510;
  if (!qword_100576510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001EFDC()
{
  result = type metadata accessor for DebouncedAutoDownloadProcessor();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DebouncedAssetRemovalProcessor();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ReevaluateAutoDownloadsIntent();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_10001F078()
{
  result = qword_10057AF20;
  if (!qword_10057AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057AF20);
  }

  return result;
}

unint64_t sub_10001F114()
{
  result = qword_10057AF28;
  if (!qword_10057AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057AF28);
  }

  return result;
}

uint64_t type metadata accessor for FetchShowLatestLocalEpisodesIntent()
{
  result = qword_100579900;
  if (!qword_100579900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001F1B4()
{
  result = type metadata accessor for ShowEntity();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10001F228()
{
  result = qword_10057B1E0;
  if (!qword_10057B1E0)
  {
    type metadata accessor for FetchShowLatestLocalEpisodesIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057B1E0);
  }

  return result;
}

unint64_t sub_10001F2A4()
{
  result = qword_10057AF30;
  if (!qword_10057AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057AF30);
  }

  return result;
}

uint64_t type metadata accessor for PlayStationIntentImplementation()
{
  result = qword_10057EB98;
  if (!qword_10057EB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10001F38C()
{
  result = type metadata accessor for PlaybackController();
  if (v1 <= 0x3F)
  {
    result = sub_10001F428();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PlayStationIntent();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_10001F428()
{
  result = qword_10057EBA8;
  if (!qword_10057EBA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10057EBA8);
  }

  return result;
}

uint64_t LibraryDataProvider.fetchChannelsObserver()()
{
  sub_100168088(&qword_100573AD8);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.libraryLoadingSignpost.getter();
  v1 = Promise.init(signpost:log:metadata:logResult:)();
  v2 = [*(v0 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  v5[4] = sub_10019BABC;
  v5[5] = v1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10000F038;
  v5[3] = &unk_1004E1708;
  v3 = _Block_copy(v5);

  [v2 performBlock:v3];
  _Block_release(v3);

  return v1;
}

uint64_t sub_10001F5E4()
{
  v0 = type metadata accessor for OSSignposter();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v37 - v5;
  v7 = type metadata accessor for OSSignpostID();
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  static OSSignposter.bootstrap.getter();
  OSSignposter.logHandle.getter();
  v13 = v12;
  OSSignpostID.init(log:)();
  v14 = *(v1 + 8);
  v14(v6, v0);
  static OSSignposter.bootstrap.getter();
  v15 = OSSignposter.logHandle.getter();
  v16 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v17 = swift_slowAlloc();
    v38 = v0;
    v18 = v17;
    *v17 = 0;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v16, v19, "ViewControllerBootstrap", "", v18, 2u);
    v0 = v38;
  }

  v20 = *(v40 + 16);
  v39 = v13;
  v20(v10, v13, v41);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v14(v4, v0);
  v21 = objc_allocWithZone(type metadata accessor for PodcastsFlowTabBarController());

  v23 = sub_10001FD5C(v22);
  sub_100168088(&qword_100574580);
  type metadata accessor for RootActionRunner();
  swift_allocObject();
  v24 = v23;
  v25 = RootActionRunner.init(target:)();
  v26 = sub_1001A22CC(&qword_100574588, &type metadata accessor for RootActionRunner);
  v42 = v25;
  v43 = v26;
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&qword_100574590);
  *(swift_allocObject() + 16) = v24;
  v27 = v24;
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100009F1C(0, &qword_100574598);
  v42 = v27;
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&qword_1005745A0);
  v28 = sub_1001A22CC(&qword_1005745A8, type metadata accessor for PodcastsFlowTabBarController);
  v42 = v27;
  v43 = v28;
  v29 = v27;
  BaseObjectGraph.satisfying<A>(_:with:)();

  type metadata accessor for LibraryTabGroupManager();
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&qword_1005745B0);
  BaseObjectGraph.satisfying<A>(_:with:)();

  type metadata accessor for MenuBarController();
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&qword_1005745B8);
  BaseObjectGraph.satisfying<A>(_:with:)();

  type metadata accessor for ParentFlowController();
  *(swift_allocObject() + 16) = v29;
  v30 = v29;
  v31 = BaseObjectGraph.satisfying<A>(_:with:)();

  BaseObjectGraph.inject<A>(_:)();
  v32 = v42;
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v32;

  BaseObjectGraph.inject<A>(_:)();
  v34 = v42;
  dispatch thunk of LibraryTabGroupManager.setViewControllerProvider(_:)();

  sub_1001A1DA0(v30, sub_1001A1D98, v33, v31);
  v42 = v30;
  v35 = BaseObjectGraph.satisfying<A>(_:with:)();

  sub_10002ACF4("ViewControllerBootstrap", 23, 2);

  (*(v40 + 8))(v39, v41);
  return v35;
}

uint64_t sub_10001FCBC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001FCF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10001FD5C(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC8Podcasts28PodcastsFlowTabBarController_flowController);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + OBJC_IVAR____TtC8Podcasts28PodcastsFlowTabBarController_actionRunner);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC8Podcasts28PodcastsFlowTabBarController_overlayViewController) = 0;
  *(v1 + OBJC_IVAR____TtC8Podcasts28PodcastsFlowTabBarController_objectGraph) = a1;
  type metadata accessor for PodcastsTabBarPresenter();
  swift_allocObject();
  swift_retain_n();
  *(v1 + OBJC_IVAR____TtC8Podcasts28PodcastsFlowTabBarController_presenter) = PodcastsTabBarPresenter.init(asPartOf:)();

  v4 = NowPlayingTabController.init(asPartOf:)();
  result = [v4 view];
  if (result)
  {
    v6 = result;
    type metadata accessor for Theme();
    v7 = static Theme.backgroundColor.getter();
    [v6 setBackgroundColor:v7];

    sub_10033D8B8(&qword_100580568, v8, type metadata accessor for PodcastsFlowTabBarController);
    v9 = v4;

    PodcastsTabBarPresenter.view.setter();

    [v9 setMode:2];
    v10 = [v9 sidebar];
    [v10 setPreferredLayout:static UITabBarControllerSidebarLayout._insetOverlap.getter()];

    [v9 setTabBarMinimizeBehavior:2];

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LibraryDataProvider.fetchShowCountObserver(listType:)(uint64_t a1, char a2)
{
  sub_100168088(&qword_100573B38);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.libraryLoadingSignpost.getter();
  v5 = Promise.init(signpost:log:metadata:logResult:)();
  v6 = [*(v2 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2 & 1;
  *(v7 + 32) = v5;
  v10[4] = sub_10019BB18;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10000F038;
  v10[3] = &unk_1004E1758;
  v8 = _Block_copy(v10);

  [v6 performBlock:v8];
  _Block_release(v8);

  return v5;
}

uint64_t sub_1000200CC()
{

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_1000201A8(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for HUDPresenter();
  v2[2] = swift_allocObject();
  v2[22] = a1;
  sub_100168088(&unk_100573D90);

  BaseObjectGraph.inject<A>(_:)();
  v2[3] = *&v5[0];
  sub_100168088(&qword_10057E670);
  BaseObjectGraph.inject<A>(_:)();
  sub_1000109E4(v5, (v2 + 4));
  type metadata accessor for PodcastStateController();
  BaseObjectGraph.inject<A>(_:)();
  v2[14] = *&v5[0];
  sub_100168088(&unk_10057AB00);
  BaseObjectGraph.inject<A>(_:)();
  sub_1000109E4(v5, (v2 + 15));
  type metadata accessor for BookmarksController();
  BaseObjectGraph.inject<A>(_:)();
  v2[20] = *&v5[0];
  sub_100168088(&qword_10057ABD0);
  BaseObjectGraph.inject<A>(_:)();
  sub_1000109E4(v5, (v2 + 9));
  sub_100168088(&unk_10057A4A0);
  BaseObjectGraph.inject<A>(_:)();
  v2[21] = *&v5[0];
  sub_100168088(&unk_100578420);
  BaseObjectGraph.inject<A>(_:)();
  sub_1000109E4(v5, (v2 + 23));
  type metadata accessor for PlaybackController();
  BaseObjectGraph.inject<A>(_:)();
  v2[28] = *&v5[0];
  return v2;
}

uint64_t sub_100020360(uint64_t a1)
{
  sub_100168088(&unk_10057AAD0);
  BaseObjectGraph.inject<A>(_:)();
  sub_100168088(&qword_100573DC0);
  v26 = v38;
  BaseObjectGraph.inject<A>(_:)();
  v2 = v37;
  sub_100168088(&unk_100573DD0);
  BaseObjectGraph.inject<A>(_:)();
  sub_100168088(&qword_100573DE8);
  v25 = v36;
  BaseObjectGraph.inject<A>(_:)();
  sub_100168088(&unk_10057AAF0);
  v24 = v35;
  BaseObjectGraph.inject<A>(_:)();
  sub_100168088(&unk_10057AAE0);
  v23 = v34;
  BaseObjectGraph.inject<A>(_:)();
  sub_100168088(&qword_100573DA0);
  v22 = v33;
  BaseObjectGraph.inject<A>(_:)();
  sub_100168088(&unk_100573E10);
  BaseObjectGraph.inject<A>(_:)();
  v3 = type metadata accessor for InterestRepository();
  BaseObjectGraph.inject<A>(_:)();
  sub_100168088(&qword_10057A160);
  BaseObjectGraph.inject<A>(_:)();
  v4 = sub_100010C38(v31, v31[3]);
  __chkstk_darwin(v4);
  v6 = (v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = v30[5];
  v9 = *v6;
  v10 = type metadata accessor for TranscriptReportConcernURLBuilder();
  v29[3] = v10;
  v29[4] = &off_1004E6A50;
  v29[0] = v9;
  v28[3] = v3;
  v28[4] = &protocol witness table for InterestRepository;
  v28[0] = v8;
  v21[1] = v8;
  type metadata accessor for LibraryActionController();
  v11 = swift_allocObject();
  v12 = sub_100010C38(v29, v10);
  __chkstk_darwin(v12);
  v14 = (v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v27[3] = v10;
  v27[4] = &off_1004E6A50;
  v27[0] = v16;
  *(v11 + 104) = 0;
  *(v11 + 232) = 0;
  *(v11 + 240) = 1;
  *(v11 + 296) = 0;
  *(v11 + 248) = a1;
  sub_100004428(v30, v11 + 256);
  v17 = v25;
  *(v11 + 16) = v26;
  v21[0] = v2;
  *(v11 + 32) = v2;
  *(v11 + 40) = v17;
  v18 = v23;
  *(v11 + 56) = v24;
  *(v11 + 72) = v18;
  *(v11 + 88) = v22;
  sub_100004428(v32, v11 + 112);
  sub_100004428(v27, v11 + 152);
  sub_100004428(v28, v11 + 192);
  type metadata accessor for DeviceCapacityMonitor();
  swift_retain_n();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v19 = static DeviceCapacityMonitor.shared.getter();
  swift_allocObject();
  swift_weakInit();

  *&v26 = DeviceCapacityMonitor.addCapacityChangeObserver(options:callback:)();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_100004590(v30);

  sub_100004590(v32);
  sub_100004590(v28);
  sub_100004590(v27);

  *(v11 + 232) = v26;
  *(v11 + 240) = 0;
  sub_100004590(v29);
  sub_100004590(v31);
  type metadata accessor for PlaybackController();

  BaseObjectGraph.inject<A>(_:)();

  *(v11 + 296) = v32[0];

  return v11;
}

uint64_t sub_1000208BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000208F4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  sub_100009F1C(0, a1);
  result = [swift_getObjCClassFromMetadata() sharedInstance];
  *a3 = result;
  a3[1] = a2;
  return result;
}

void sub_100020960(void *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  type metadata accessor for LibraryDataProvider(0);
  BaseObjectGraph.inject<A>(_:)();

  v2 = *&v3[OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_episodeDownloadStateControllerProvider];

  *a1 = v2;
}

void sub_1000209E4(void *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  type metadata accessor for LibraryDataProvider(0);
  BaseObjectGraph.inject<A>(_:)();

  v2 = *&v3[OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_hudPresenter];

  *a1 = v2;
  a1[1] = &off_1004F1118;
}

void sub_100020AB0(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  v2 = qword_100583C18;
  qword_100583C18 = v1;
}

uint64_t sub_100020DD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *sub_1000044A0(a4, a4[3]);
    v10 = 0xD000000000000033;
    v11 = "bytes";
    v12 = "ts.downloads.episodes.restore";
    v13 = 0xD00000000000002FLL;
    if (v9 == 2)
    {
      v13 = 0xD00000000000002DLL;
    }

    else
    {
      v12 = "ts.downloads.episodes.headers";
    }

    if (v9)
    {
      v10 = 0xD00000000000002DLL;
      v11 = "sodes.userInitiated";
    }

    if (v9 <= 1)
    {
      v14 = v10;
    }

    else
    {
      v14 = v13;
    }

    if (v9 <= 1)
    {
      v15 = v11;
    }

    else
    {
      v15 = v12;
    }

    sub_10002100C(v14, (v15 | 0x8000000000000000), 0, a1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = *sub_1000044A0(a4, a4[3]);
    v19 = 0xD000000000000033;
    v20 = "bytes";
    v21 = "ts.downloads.episodes.restore";
    v22 = 0xD00000000000002FLL;
    if (v18 == 2)
    {
      v22 = 0xD00000000000002DLL;
    }

    else
    {
      v21 = "ts.downloads.episodes.headers";
    }

    if (v18)
    {
      v19 = 0xD00000000000002DLL;
      v20 = "sodes.userInitiated";
    }

    if (v18 <= 1)
    {
      v23 = v19;
    }

    else
    {
      v23 = v22;
    }

    if (v18 <= 1)
    {
      v24 = v20;
    }

    else
    {
      v24 = v21;
    }

    sub_10002100C(v23, (v24 | 0x8000000000000000), 1, a2);
  }

  return result;
}

void sub_10002100C(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  if (v8)
  {
    v9 = a4 + 32;
    v10 = a3 & 1;
    do
    {
      sub_10035E3F8(v9, a1, a2, v10);
      v9 += 40;
      --v8;
    }

    while (v8);
  }

  else
  {
    v10 = a3 & 1;
  }

  v11 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_jobStorage;
  v12 = type metadata accessor for SyncDownloadJobsOperation();
  v44 = *&v4[v11];
  v13 = objc_allocWithZone(v12);
  v14 = OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_operationQueue;
  v15 = objc_allocWithZone(NSOperationQueue);
  swift_unknownObjectRetain();
  *&v13[v14] = [v15 init];
  *&v13[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_jobStorage] = v44;
  *&v13[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_tasks] = a4;
  v16 = &v13[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier];
  *v16 = a1;
  *(v16 + 1) = a2;
  v16[16] = v10;
  v47.receiver = v13;
  v47.super_class = v12;

  v17 = objc_msgSendSuper2(&v47, "init");
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  v19 = sub_100168088(&unk_1005817F0);
  v20 = objc_allocWithZone(v19);
  v21 = &v20[*((swift_isaMask & *v20) + 0x180)];
  *v21 = 0;
  v21[8] = 2;
  v22 = &v20[*((swift_isaMask & *v20) + 0x188)];
  *v22 = sub_10002C8F0;
  v22[1] = v18;
  v46.receiver = v20;
  v46.super_class = v19;
  v4;
  v23 = objc_msgSendSuper2(&v46, "init");
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = &v17[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v26 = *&v17[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v25 = sub_10003C618;
  v25[1] = v24;

  sub_1000112B4(v26);

  ObjectType = swift_getObjectType();
  v27 = swift_conformsToProtocol2();
  if (v27)
  {
    v28 = v27;
    v29 = swift_allocObject();
    *(v29 + 24) = v28;
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = v29;
    v41 = *(v28 + 72);
    v32 = v17;
    v42 = v23;

    v41(sub_10003B6A0, v31, ObjectType, v28);

    v45.receiver = v42;
    v45.super_class = type metadata accessor for BaseOperation();
    objc_msgSendSuper2(&v45, "addDependency:", v32);

    v33 = swift_allocObject();
    *(v33 + 16) = a1;
    *(v33 + 24) = a2;
    *(v33 + 32) = v10;
    *(v33 + 40) = a4;
    v34 = &v42[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    v35 = *&v42[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    *v34 = sub_100370E9C;
    v34[1] = v33;

    sub_1000112B4(v35);

    v36 = sub_100021E4C();
    sub_100168088(&unk_100574680);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_100405740;
    *(v37 + 32) = v32;
    *(v37 + 40) = v42;
    sub_100009F1C(0, &unk_10057A6A0);
    v38 = v32;
    v39 = v42;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v36 addOperations:isa waitUntilFinished:1];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000214D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021510()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021548()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000215B4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for EpisodeMetadata(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_100021698()
{
  result = qword_10057AC50;
  if (!qword_10057AC50)
  {
    sub_100205938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057AC50);
  }

  return result;
}

void sub_1000216F0()
{
  sub_1000217EC(319, &qword_1005779C8);
  if (v0 <= 0x3F)
  {
    sub_1000217EC(319, &qword_1005779D0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v2 <= 0x3F)
      {
        sub_100021910();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000217EC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

id sub_100021838@<X0>(void *a1@<X8>)
{
  if (qword_100572820 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static PodcastsStateCoordinator.shared;
  a1[3] = type metadata accessor for PodcastsStateCoordinator();
  a1[4] = sub_100283980(&qword_100573DA8, type metadata accessor for PodcastsStateCoordinator);
  *a1 = v3;

  return v3;
}

void sub_100021910()
{
  if (!qword_1005779D8)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005779D8);
    }
  }
}

uint64_t sub_1000219B0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1000219F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  [*(v3 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock) lock];
  sub_100168088(&qword_1005794C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100400790;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(inited + 32) = sub_10002D7F8;
  *(inited + 40) = v8;
  swift_beginAccess();

  sub_100021B28(inited);
  swift_endAccess();
  return [*(v3 + v6) unlock];
}

uint64_t sub_100021AF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_100021B28(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_10002FC64(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100168088(&unk_100575BF0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100021C2C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    sub_100168088(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100168088(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}