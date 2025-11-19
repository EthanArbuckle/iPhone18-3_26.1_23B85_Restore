@interface BKDebugViewController
+ (id)resolver;
+ (id)serviceCenter;
- (BKDebugViewSection)yearInReviewSection;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (uint64_t)_clearTodaysReadingTime;
- (unint64_t)supportedInterfaceOrientations;
- (void)_emulateCurrentLightLevelChange:(int64_t)a3;
- (void)_handleAppRemoval;
- (void)_loadDefaults;
- (void)_moveEligibleLocalBooksToUbiquity;
- (void)_moveUbiquityBooksBackToLocal;
- (void)_presentAddReadingSessionPickerFromIndexPath:(id)a3 duration:(double)a4;
- (void)_presentCoverCacheDumpingAdamIDCoversAlert;
- (void)_presentLightLevelChangeAlert;
- (void)_presentProductPageAlsoAvailableAsAlert;
- (void)_presentREIChromeEditingMenu;
- (void)_presentSessionStartOffsetChangeAlert;
- (void)_presentTeaDebugViewController:(id)a3;
- (void)_presentWantToReadSamplesBehaviorAlert;
- (void)setupForTableView;
- (void)setupNavigationBar;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation BKDebugViewController

+ (id)serviceCenter
{
  v2 = +[BKAppDelegate delegate];
  v3 = [v2 serviceCenter];

  return v3;
}

+ (id)resolver
{
  v2 = +[BKAppDelegate delegate];
  v3 = [v2 containerHost];
  v4 = [v3 bridgedResolver];

  return v4;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = BKDebugViewController;
  [(BKDebugViewController *)&v3 viewDidLoad];
  [(BKDebugViewController *)self setupNavigationBar];
  [(BKDebugViewController *)self setupForTableView];
}

- (unint64_t)supportedInterfaceOrientations
{
  if (isPad())
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)setupNavigationBar
{
  v3 = [(BKDebugViewController *)self navigationItem];
  [v3 setTitle:@"iBooks Debugging (Release Build)"];

  v4 = [[UIBarButtonItem alloc] initWithTitle:@"Close" style:2 target:self action:"_close:"];
  v5 = [(BKDebugViewController *)self navigationItem];
  [v5 setLeftBarButtonItem:v4];

  v6 = +[NSBundle internalExtrasBundle];

  if (v6)
  {
    v8 = [[UIBarButtonItem alloc] initWithTitle:@"Tea" style:2 target:self action:"_presentTeaDebugViewController:"];
    v7 = [(BKDebugViewController *)self navigationItem];
    [v7 setRightBarButtonItem:v8];
  }
}

- (void)setupForTableView
{
  v3 = [[BKDebugBoolDefaultSwitch alloc] initWithDefaultsKey:@"kREIChapterAnimationEnabled"];
  enableChapterAnimationSwitch = self->_enableChapterAnimationSwitch;
  self->_enableChapterAnimationSwitch = &v3->super;

  v5 = [[BKDebugBoolDefaultSwitch alloc] initWithDefaultsKey:@"kPageTurnSnapshotDebug" action:&stru_100A066B8];
  enablePageTurnDebugging = self->_enablePageTurnDebugging;
  val = self;
  self->_enablePageTurnDebugging = &v5->super;

  v7 = +[NSUserDefaults standardUserDefaults];
  self->_currentLightLevel = [v7 integerForKey:kOverrideLightLevel];

  lightLevelTitles = self->_lightLevelTitles;
  self->_lightLevelTitles = &off_100A43DB0;

  v9 = [BKDebugBoolDefaultSwitch alloc];
  v363[0] = _NSConcreteStackBlock;
  v363[1] = 3221225472;
  v363[2] = sub_1000C2D84;
  v363[3] = &unk_100A038D0;
  v363[4] = self;
  v10 = [(BKDebugBoolDefaultSwitch *)v9 initWithDefaultsKey:kOverrideNightMode action:v363];
  nightModeSwitch = self->_nightModeSwitch;
  self->_nightModeSwitch = v10;

  v12 = [[BKDebugBoolDefaultSwitch alloc] initWithDefaultsKey:@"BCShouldOverrideNightModeDelay"];
  nightModeDelaySwitch = self->_nightModeDelaySwitch;
  self->_nightModeDelaySwitch = &v12->super;

  v14 = [[BKDebugBoolDefaultSwitch alloc] initWithDefaultsKey:@"BKAllowEndOfBookDebugMenu"];
  endOfBookDebugMenuSwitch = self->_endOfBookDebugMenuSwitch;
  self->_endOfBookDebugMenuSwitch = &v14->super;

  v16 = [BKDebugBoolDefaultSwitch alloc];
  v17 = [(BKDebugBoolDefaultSwitch *)v16 initWithDefaultsKey:BKUseOldFontStepsAndSpacing];
  oldFontStepsAndSpacingSwitch = self->_oldFontStepsAndSpacingSwitch;
  self->_oldFontStepsAndSpacingSwitch = v17;

  v19 = [[BKDebugBoolDefaultSwitch alloc] initWithDefaultsKey:@"kREILayoutGuides"];
  reiLayoutGuidesSwitch = self->_reiLayoutGuidesSwitch;
  self->_reiLayoutGuidesSwitch = &v19->super;

  v21 = [BKDebugBoolDefaultSwitch alloc];
  v22 = [(BKDebugBoolDefaultSwitch *)v21 initWithDefaultsKey:BKUseLegacyCurlAnimation];
  curlAnimationSwitch = self->_curlAnimationSwitch;
  self->_curlAnimationSwitch = v22;

  v24 = [[BKDebugBoolDefaultSwitch alloc] initWithDefaultsKey:@"REI.ShowPaginatingWebView"];
  reiShowPaginatingWebViewSwitch = self->_reiShowPaginatingWebViewSwitch;
  self->_reiShowPaginatingWebViewSwitch = &v24->super;

  v26 = [[BKDebugBoolDefaultSwitch alloc] initWithDefaultsKey:@"REI.IgnoreCache"];
  reiIgnoreCacheSwitch = self->_reiIgnoreCacheSwitch;
  self->_reiIgnoreCacheSwitch = &v26->super;

  v28 = [[BKDebugBoolDefaultSwitch alloc] initWithDefaultsKey:@"_BEAlwaysFullParse"];
  alwaysParseEpubSwitch = self->_alwaysParseEpubSwitch;
  self->_alwaysParseEpubSwitch = &v28->super;

  v30 = [[BKDebugBoolDefaultSwitch alloc] initWithDefaultsKey:@"REI.LogContentSize"];
  reiLogContentSizeSwitch = self->_reiLogContentSizeSwitch;
  self->_reiLogContentSizeSwitch = &v30->super;

  v32 = [[BKDebugBoolDefaultSwitch alloc] initWithDefaultsKey:@"REI.AllowMacOSScroll"];
  reiAllowScrollMacOSSwitch = self->_reiAllowScrollMacOSSwitch;
  self->_reiAllowScrollMacOSSwitch = &v32->super;

  v34 = [[BKDebugBoolDefaultSwitch alloc] initWithDefaultsKey:@"REI.DisableAutoFontDownload"];
  reiDisableAutoFontDownloadSwitch = self->_reiDisableAutoFontDownloadSwitch;
  self->_reiDisableAutoFontDownloadSwitch = &v34->super;

  v36 = [[BKDebugBoolDefaultSwitch alloc] initWithDefaultsKey:@"REIUseOldTextStyling"];
  reiUseNewTextStylingSwitch = self->_reiUseNewTextStylingSwitch;
  self->_reiUseNewTextStylingSwitch = &v36->super;

  v38 = [[BKDebugBoolDefaultSwitch alloc] initWithDefaultsKey:@"REI.LogContentSize"];
  reiContentSizeLogging = self->_reiContentSizeLogging;
  self->_reiContentSizeLogging = &v38->super;

  v40 = +[JSABridge sharedInstance];
  v41 = [v40 environment];
  v42 = [v41 bootURL];
  bootUrl = self->_bootUrl;
  self->_bootUrl = v42;

  v44 = +[NSUserDefaults standardUserDefaults];
  v45 = [v44 stringForKey:kAllowsCoverCacheImagesLoggingUserDefaultsKey];
  coverCacheHashOrAdamID = self->_coverCacheHashOrAdamID;
  self->_coverCacheHashOrAdamID = v45;

  v47 = [BKDebugBoolDefaultSwitch alloc];
  v48 = [(BKDebugBoolDefaultSwitch *)v47 initWithDefaultsKey:BCCardStackTransitionAnimatorSlowModeEnabledUserDefaultsKey];
  productPageSlowModeSwitch = self->_productPageSlowModeSwitch;
  self->_productPageSlowModeSwitch = v48;

  v50 = [BKDebugBoolDefaultSwitch alloc];
  v51 = [(BKDebugBoolDefaultSwitch *)v50 initWithDefaultsKey:BCCardStackTransitionForceSlideAnimationUserDefaultsKey];
  productPageSlideSwitch = self->_productPageSlideSwitch;
  self->_productPageSlideSwitch = v51;

  v53 = +[BRCConfigurationManager sharedInstance];
  v54 = +[BCRCDataContainer defaultContainer];
  v295 = [v54 configs];

  v55 = [BKDebugBoolDefaultSwitch alloc];
  v56 = [v295 valueForKeyPath:BRCBooksDefaultsKeyPersonalizationLocalSignalCollectionEnabled];
  v57 = [v56 BOOLValue];
  v361[0] = _NSConcreteStackBlock;
  v361[1] = 3221225472;
  v361[2] = sub_1000C2DA4;
  v361[3] = &unk_100A038D0;
  v58 = v53;
  v362 = v58;
  v59 = [(BKDebugBoolDefaultSwitch *)v55 initWithInitialValue:v57 synchronize:v361];
  localSignalCollectionEnabledSwitch = self->_localSignalCollectionEnabledSwitch;
  self->_localSignalCollectionEnabledSwitch = v59;

  v61 = [BKDebugBoolDefaultSwitch alloc];
  v62 = [v295 valueForKeyPath:BRCBooksDefaultsKeyPersonalizationLocalSignalSyncEnabled];
  v63 = [v62 BOOLValue];
  v359[0] = _NSConcreteStackBlock;
  v359[1] = 3221225472;
  v359[2] = sub_1000C2E5C;
  v359[3] = &unk_100A038D0;
  v197 = v58;
  v360 = v197;
  v64 = [(BKDebugBoolDefaultSwitch *)v61 initWithInitialValue:v63 synchronize:v359];
  localSignalSyncEnabledSwitch = self->_localSignalSyncEnabledSwitch;
  self->_localSignalSyncEnabledSwitch = v64;

  v66 = [[BKDebugBoolDefaultSwitch alloc] initWithDefaultsKey:@"BKDebugODPClusteringEnabled"];
  debugODPClusteringSwitch = self->_debugODPClusteringSwitch;
  self->_debugODPClusteringSwitch = &v66->super;

  v68 = objc_alloc_init(UISwitch);
  fakePlayerSwitch = self->_fakePlayerSwitch;
  self->_fakePlayerSwitch = v68;

  v70 = [UICommand commandWithTitle:@"Toggle Fake Player" image:0 action:"books_internal_toggleFakePlayer:" propertyList:0];
  objc_opt_class();
  v71 = +[BKAppDelegate delegate];
  v72 = [v71 targetForAction:objc_msgSend(v70 withSender:{"action"), v70}];
  v73 = BUDynamicCast();

  [v73 validateCommand:v70];
  -[UISwitch setOn:](self->_fakePlayerSwitch, "setOn:", [v70 state] == 1);
  v74 = self->_fakePlayerSwitch;
  v356[0] = _NSConcreteStackBlock;
  v356[1] = 3221225472;
  v356[2] = sub_1000C2F14;
  v356[3] = &unk_100A066E0;
  v196 = v73;
  v357 = v196;
  v195 = v70;
  v358 = v195;
  v75 = [UIAction actionWithHandler:v356];
  [(UISwitch *)v74 addAction:v75 forControlEvents:4096];

  v76 = [BKDebugBoolDefaultSwitch alloc];
  v77 = [(BKDebugBoolDefaultSwitch *)v76 initWithDefaultsKey:BAAppAnalyticsUseDebugProcessor];
  appAnalyticsDebugProcessorModeSwitch = self->_appAnalyticsDebugProcessorModeSwitch;
  self->_appAnalyticsDebugProcessorModeSwitch = v77;

  objc_initWeak(&location, self);
  v79 = [BKDebugBoolDefaultSwitch alloc];
  v80 = [(BKDebugBoolDefaultSwitch *)v79 initWithDefaultsKey:BKDisableAccleratedWebRendering action:&stru_100A06700];
  webSetAcceleratedDrawingDisabledSwitch = self->_webSetAcceleratedDrawingDisabledSwitch;
  self->_webSetAcceleratedDrawingDisabledSwitch = v80;

  v82 = [BKDebugBoolDefaultSwitch alloc];
  v83 = [(BKDebugBoolDefaultSwitch *)v82 initWithDefaultsKey:BKWebDrawBorders];
  webSetDrawBordersSwitch = self->_webSetDrawBordersSwitch;
  self->_webSetDrawBordersSwitch = v83;

  v85 = [[BKDebugBoolDefaultSwitch alloc] initWithDefaultsKey:@"BKBookOpenAnimatorRedViewFallbackEnabled"];
  uipBookViewFallback = self->_uipBookViewFallback;
  self->_uipBookViewFallback = &v85->super;

  v87 = [[BKDebugBoolDefaultSwitch alloc] initWithDefaultsKey:@"BKBookOpenAnimatorSlowModeEnabled"];
  slowModeSwitch = self->_slowModeSwitch;
  self->_slowModeSwitch = &v87->super;

  v89 = [BKDebugBoolDefaultSwitch alloc];
  v90 = +[NSUserDefaults standardUserDefaults];
  v91 = -[BKDebugBoolDefaultSwitch initWithInitialValue:synchronize:action:](v89, "initWithInitialValue:synchronize:action:", [v90 BOOLForKey:@"BKLibraryBookshelfLayoutDebugEnabledUserDefaultsKey"], 0, &stru_100A06720);
  layoutDebugSwitch = self->_layoutDebugSwitch;
  self->_layoutDebugSwitch = v91;

  sessionStartOffsets = self->_sessionStartOffsets;
  self->_sessionStartOffsets = &off_100A43DC8;

  v94 = [[BKDebugBoolDefaultSwitch alloc] initWithDefaultsKey:@"BooksUIEnableDebugModifiers"];
  booksUIDebugModifiersEnabledSwitch = self->_booksUIDebugModifiersEnabledSwitch;
  self->_booksUIDebugModifiersEnabledSwitch = &v94->super;

  v96 = [[BKDebugBoolDefaultSwitch alloc] initWithDefaultsKey:@"BookAnalyticsOverlayImpressions"];
  bookAnalyticsOverlayImpressionsEnabledSwitch = self->_bookAnalyticsOverlayImpressionsEnabledSwitch;
  self->_bookAnalyticsOverlayImpressionsEnabledSwitch = &v96->super;

  v98 = [[BKDebugBoolDefaultSwitch alloc] initWithDefaultsKey:@"BooksUIShelfGridDebugUIEnabled"];
  booksUIShelfGridDebugUIEnabledSwitch = self->_booksUIShelfGridDebugUIEnabledSwitch;
  self->_booksUIShelfGridDebugUIEnabledSwitch = &v98->super;

  [(BKDebugViewController *)self _loadDefaults];
  v100 = +[JSABridge sharedInstance];
  v101 = [v100 environment];
  v204 = [v101 appVersion];

  v353[0] = _NSConcreteStackBlock;
  v353[1] = 3221225472;
  v353[2] = sub_1000C2FF8;
  v353[3] = &unk_100A06748;
  objc_copyWeak(&v354, &location);
  v289 = [BKDebugViewEntry entryWithTitle:@"REI: Edit Chrome" action:v353];
  v376[0] = v289;
  v284 = [BKDebugViewCellModel modelWithAccessoryView:self->_enableChapterAnimationSwitch];
  v279 = [BKDebugViewEntry entryWithTitle:@"REI: Use chapter scrubbing animation" model:v284];
  v376[1] = v279;
  v274 = [BKDebugViewCellModel modelWithAccessoryView:self->_enablePageTurnDebugging];
  v270 = [BKDebugViewEntry entryWithTitle:@"REI: Page Turn Debug Layers (Quits Immediately)" model:v274];
  v376[2] = v270;
  v102 = [BKDebugViewCellModel modelWithAccessoryView:self->_nightModeSwitch];
  [BKDebugViewEntry entryWithTitle:@"Light Level: Override" model:v102];
  v200 = v198 = v102;
  v376[3] = v200;
  v351[0] = _NSConcreteStackBlock;
  v351[1] = 3221225472;
  v351[2] = sub_1000C3038;
  v351[3] = &unk_100A06770;
  objc_copyWeak(&v352, &location);
  v103 = [BKDebugViewCellModel modelWithDetailLineBreakMode:4 detailTextBlock:v351];
  v349[0] = _NSConcreteStackBlock;
  v349[1] = 3221225472;
  v349[2] = sub_1000C30BC;
  v349[3] = &unk_100A06748;
  objc_copyWeak(&v350, &location);
  v265 = [BKDebugViewEntry entryWithTitle:@"Light Level: Set" model:v103 action:v349];
  v376[4] = v265;
  v260 = [NSString stringWithFormat:@"Light Level: Delay %d sec before update", 5];
  v255 = [BKDebugViewCellModel modelWithAccessoryView:val->_nightModeDelaySwitch];
  v251 = [BKDebugViewEntry entryWithTitle:v260 model:v255];
  v376[5] = v251;
  v247 = [BKDebugViewCellModel modelWithAccessoryView:val->_oldFontStepsAndSpacingSwitch];
  v243 = [BKDebugViewEntry entryWithTitle:@"Use Old Font Sizes & Spacing" model:v247];
  v376[6] = v243;
  v240 = [BKDebugViewCellModel modelWithAccessoryView:val->_endOfBookDebugMenuSwitch];
  v237 = [BKDebugViewEntry entryWithTitle:@"Allow End of Book Debug menu" model:v240];
  v376[7] = v237;
  v235 = [BKDebugViewCellModel modelWithAccessoryView:val->_reiLayoutGuidesSwitch];
  v233 = [BKDebugViewEntry entryWithTitle:@"Show REI Layout guides" model:v235];
  v376[8] = v233;
  v231 = [BKDebugViewCellModel modelWithAccessoryView:val->_reiShowPaginatingWebViewSwitch];
  v229 = [BKDebugViewEntry entryWithTitle:@"Show paginating web view" model:v231];
  v376[9] = v229;
  v227 = [BKDebugViewCellModel modelWithAccessoryView:val->_reiLogContentSizeSwitch];
  v225 = [BKDebugViewEntry entryWithTitle:@"Log webView.scrollView.contentSize results (Log has #sizeResult:)" model:v227];
  v376[10] = v225;
  v223 = [BKDebugViewCellModel modelWithAccessoryView:val->_alwaysParseEpubSwitch];
  v221 = [BKDebugViewEntry entryWithTitle:@"Always Paginate in REI Reader (Ignore pagination cache)" model:v223];
  v376[11] = v221;
  v219 = [BKDebugViewCellModel modelWithAccessoryView:val->_reiIgnoreCacheSwitch];
  v217 = [BKDebugViewEntry entryWithTitle:@"Always Parse EPUBs" model:v219];
  v376[12] = v217;
  v215 = [BKDebugViewCellModel modelWithAccessoryView:val->_reiAllowScrollMacOSSwitch];
  v213 = [BKDebugViewEntry entryWithTitle:@"Allow scroll mode on macOS" model:v215];
  v376[13] = v213;
  v211 = [BKDebugViewCellModel modelWithAccessoryView:val->_reiDisableAutoFontDownloadSwitch];
  v209 = [BKDebugViewEntry entryWithTitle:@"Disable Auto Font Download" model:v211];
  v376[14] = v209;
  v207 = [BKDebugViewCellModel modelWithAccessoryView:val->_reiUseNewTextStylingSwitch];
  v205 = [BKDebugViewEntry entryWithTitle:@"Use Old Text Styling (Must Reopen Book)" model:v207];
  v376[15] = v205;
  v104 = [BKDebugViewCellModel modelWithAccessoryView:val->_reiContentSizeLogging];
  v105 = [BKDebugViewEntry entryWithTitle:@"Enable Content Size logging" model:v104];
  v376[16] = v105;
  v106 = [BKDebugViewCellModel modelWithAccessoryView:val->_curlAnimationSwitch];
  v107 = [BKDebugViewEntry entryWithTitle:@"Use Legacy Page Curl animation" model:v106];
  v376[17] = v107;
  v108 = [BKDebugViewCellModel modelWithAccessoryView:val->_webSetDrawBordersSwitch];
  v109 = [BKDebugViewEntry entryWithTitle:@"WebKit Draw Borders" model:v108];
  v376[18] = v109;
  v110 = [BKDebugViewCellModel modelWithAccessoryView:val->_webSetAcceleratedDrawingDisabledSwitch];
  v111 = [BKDebugViewEntry entryWithTitle:@"Disable WebKit Accelerated Drawing (Quits Immediately)" model:v110];
  v376[19] = v111;
  v203 = [NSArray arrayWithObjects:v376 count:20];

  v290 = [BKDebugViewCellModel modelWithAccessoryType:1];
  v347[0] = _NSConcreteStackBlock;
  v347[1] = 3221225472;
  v347[2] = sub_1000C30FC;
  v347[3] = &unk_100A06748;
  objc_copyWeak(&v348, &location);
  v112 = [BKDebugViewEntry entryWithTitle:@"Widgets Showroom" model:v290 action:v347];
  v375[0] = v112;
  v285 = [BKDebugViewCellModel modelWithAccessoryType:1];
  v201 = v112;
  v345[0] = _NSConcreteStackBlock;
  v345[1] = 3221225472;
  v345[2] = sub_1000C3180;
  v345[3] = &unk_100A06748;
  objc_copyWeak(&v346, &location);
  v199 = [BKDebugViewEntry entryWithTitle:@"Figaro Metrics" model:v285 action:v345];
  v375[1] = v199;
  v343[0] = _NSConcreteStackBlock;
  v343[1] = 3221225472;
  v343[2] = sub_1000C31F8;
  v343[3] = &unk_100A06770;
  objc_copyWeak(&v344, &location);
  v280 = [BKDebugViewCellModel modelWithDetailLineBreakMode:5 detailTextBlock:v343];
  v275 = [BKDebugViewEntry entryWithTitle:@"JS App URL" model:v280];
  v375[2] = v275;
  v271 = [BKDebugViewCellModel modelWithAccessoryView:val->_hotReloadModeSwitch];
  v266 = [BKDebugViewEntry entryWithTitle:@"Hot Reload Mode" model:v271];
  v375[3] = v266;
  v261 = [BKDebugViewCellModel modelWithAccessoryView:val->_launchWithBundleJSSwitch];
  v256 = [BKDebugViewEntry entryWithTitle:@"Launch with bundle JS" model:v261];
  v375[4] = v256;
  v252 = [BKDebugViewCellModel modelWithAccessoryView:val->_allowUnsignedJetpackSwitch];
  v248 = [BKDebugViewEntry entryWithTitle:@"Allow Unsigned Jetpack" model:v252];
  v375[5] = v248;
  v244 = [BKDebugViewCellModel modelWithAccessoryView:val->_loadBundledJetPackFromJSRootSwitch];
  v241 = [BKDebugViewEntry entryWithTitle:@"Load Bundled JetPack from JSRoot" model:v244];
  v375[6] = v241;
  v238 = [BKDebugViewCellModel modelWithAccessoryView:val->_productPageSlowModeSwitch];
  v236 = [BKDebugViewEntry entryWithTitle:@"Product Page: Slow Mode" model:v238];
  v375[7] = v236;
  v234 = [BKDebugViewCellModel modelWithAccessoryView:val->_productPageSlideSwitch];
  v232 = [BKDebugViewEntry entryWithTitle:@"Product Page: Always Use Slide Animation" model:v234];
  v375[8] = v232;
  v113 = [BKDebugViewCellModel modelWithAccessoryView:val->_productPageSampleFeedbackShownSwitch];
  v202 = [BKDebugViewEntry entryWithTitle:@"Product Page: Sample Feedback Shown" model:v113];
  v375[9] = v202;
  v341[0] = _NSConcreteStackBlock;
  v341[1] = 3221225472;
  v341[2] = sub_1000C3244;
  v341[3] = &unk_100A06748;
  objc_copyWeak(&v342, &location);
  v230 = [BKDebugViewEntry entryWithTitle:@"Product Page: Remote Configuration" action:v341];
  v375[10] = v230;
  v228 = [BKDebugViewCellModel modelWithAccessoryView:val->_localSignalCollectionEnabledSwitch];
  v226 = [BKDebugViewEntry entryWithTitle:@"Personalization: Local Signal Collection" model:v228];
  v375[11] = v226;
  v224 = [BKDebugViewCellModel modelWithAccessoryView:val->_localSignalSyncEnabledSwitch];
  v222 = [BKDebugViewEntry entryWithTitle:@"Personalization: Local Signal Sync" model:v224];
  v375[12] = v222;
  v220 = [BKDebugViewCellModel modelWithAccessoryView:val->_dontShowDisabledSwitch];
  v218 = [BKDebugViewEntry entryWithTitle:@"Personalization: Disable Don't Show" model:v220];
  v375[13] = v218;
  v216 = [BKDebugViewCellModel modelWithAccessoryType:0];
  v214 = [BKDebugViewEntry entryWithTitle:@"Personalization: Trigger Sync from Cloud" model:v216 action:&stru_100A067B0];
  v375[14] = v214;
  v212 = [BKDebugViewCellModel modelWithAccessoryType:0];
  v114 = [BKDebugViewEntry entryWithTitle:@"Personalization: Trigger Sync to Cloud" model:v212 action:&stru_100A067D0];
  v375[15] = v114;
  v210 = [BKDebugViewCellModel modelWithAccessoryType:1];
  v339[0] = _NSConcreteStackBlock;
  v339[1] = 3221225472;
  v339[2] = sub_1000C33CC;
  v339[3] = &unk_100A06748;
  objc_copyWeak(&v340, &location);
  v208 = [BKDebugViewEntry entryWithTitle:@"Personalization: Stress Test Local Signals" model:v210 action:v339];
  v375[16] = v208;
  v115 = [BKDebugViewCellModel modelWithAccessoryView:val->_debugODPClusteringSwitch];
  v116 = [BKDebugViewEntry entryWithTitle:@"Personalization: Debug ODP Clustering" model:v115];
  v375[17] = v116;
  v117 = [BKDebugViewCellModel modelWithAccessoryView:val->_booksUIDebugModifiersEnabledSwitch];
  v118 = [BKDebugViewEntry entryWithTitle:@"BooksUI: Debug Modifiers Enabled" model:v117];
  v375[18] = v118;
  v119 = [BKDebugViewCellModel modelWithAccessoryView:val->_booksUIShelfGridDebugUIEnabledSwitch];
  v120 = [BKDebugViewEntry entryWithTitle:@"BooksUI: Debug ShelfGrid UI Enabled" model:v119];
  v375[19] = v120;
  v121 = [BKDebugViewCellModel modelWithAccessoryView:val->_bookAnalyticsOverlayImpressionsEnabledSwitch];
  v122 = [BKDebugViewEntry entryWithTitle:@"Book Analytics: Overlay Impressions Enabled" model:v121];
  v375[20] = v122;
  v206 = [NSArray arrayWithObjects:v375 count:21];

  v276 = [NSMutableArray alloc];
  v123 = [BKDebugViewCellModel modelWithAccessoryType:1];
  v337[0] = _NSConcreteStackBlock;
  v337[1] = 3221225472;
  v337[2] = sub_1000C3444;
  v337[3] = &unk_100A06748;
  objc_copyWeak(&v338, &location);
  v124 = [BKDebugViewEntry entryWithTitle:@"Book Messages Local Data" model:v123 action:v337];
  v374[0] = v124;
  v291 = [BKDebugViewCellModel modelWithAccessoryType:1];
  v286 = [BKDebugViewEntry entryWithTitle:@"Reset Local Storage" model:v291 action:&stru_100A067F0];
  v374[1] = v286;
  v281 = [BKDebugViewCellModel modelWithAccessoryType:1];
  v125 = [BKDebugViewEntry entryWithTitle:@"Kill Books" model:v281 action:&stru_100A06810];
  v374[2] = v125;
  v126 = [BKDebugBoolDefaultSwitch alloc];
  v127 = +[_TtC5Books23BKMessagesDebugProvider enabled];
  v128 = [(BKDebugBoolDefaultSwitch *)v126 initWithDefaultsKey:v127];
  v129 = [BKDebugViewCellModel modelWithAccessoryView:v128];
  v130 = [BKDebugViewEntry entryWithTitle:@"Enable Debug Messages Provider" model:v129];
  v374[3] = v130;
  v131 = [NSArray arrayWithObjects:v374 count:4];
  v132 = [v276 initWithArray:v131];

  v133 = [NSMutableArray alloc];
  v134 = [BKDebugViewCellModel modelWithAccessoryType:1];
  v335[0] = _NSConcreteStackBlock;
  v335[1] = 3221225472;
  v335[2] = sub_1000C3578;
  v335[3] = &unk_100A06748;
  objc_copyWeak(&v336, &location);
  v135 = [BKDebugViewEntry entryWithTitle:@"Analytics Settings" model:v134 action:v335];
  v373 = v135;
  v136 = [NSArray arrayWithObjects:&v373 count:1];
  v242 = [v133 initWithArray:v136];

  v137 = +[_TtC5Books23BKMessagesDebugProvider signIntoItunes];
  v371[0] = v137;
  v372[0] = @"Enable Sign into iTunes";
  v138 = +[_TtC5Books23BKMessagesDebugProvider signIntoItunesCatalyst];
  v371[1] = v138;
  v372[1] = @"Enable Sign into iTunes Catalyst";
  v292 = +[_TtC5Books23BKMessagesDebugProvider readSample];
  v371[2] = v292;
  v372[2] = @"Enable Read a free sample";
  v287 = +[_TtC5Books23BKMessagesDebugProvider listenPreview];
  v371[3] = v287;
  v372[3] = @"Enable Listen a free preview";
  v282 = +[_TtC5Books23BKMessagesDebugProvider addToWTR];
  v371[4] = v282;
  v372[4] = @"Enable Add to WTR";
  v277 = +[_TtC5Books23BKMessagesDebugProvider listenOnCarplay];
  v371[5] = v277;
  v372[5] = @"Enable Listen on Carplay";
  v272 = +[_TtC5Books23BKMessagesDebugProvider appleWatchMessage];
  v371[6] = v272;
  v372[6] = @"Enable Apple Watch Message";
  v267 = +[_TtC5Books23BKMessagesDebugProvider supplementalContent];
  v371[7] = v267;
  v372[7] = @"Enable Sup Content Tip";
  v262 = +[_TtC5Books23BKMessagesDebugProvider enableCoaching];
  v371[8] = v262;
  v372[8] = @"Enable Reading Coaching Onboarding";
  v257 = +[_TtC5Books23BKMessagesDebugProvider wtrGenericNotification];
  v371[9] = v257;
  v372[9] = @"Enable Generic Notification Below WTR";
  v253 = +[_TtC5Books23BKMessagesDebugProvider wtrPriceDropSettings];
  v371[10] = v253;
  v372[10] = @"Enable Price Drop (TCC-disabled) Notification Below WTR";
  v249 = +[_TtC5Books23BKMessagesDebugProvider wtrPriceDropNotify];
  v371[11] = v249;
  v372[11] = @"Enable Price Drop Notification Below WTR";
  v245 = +[_TtC5Books23BKMessagesDebugProvider sgIntro];
  v371[12] = v245;
  v372[12] = @"Enable SG Product page tip";
  v139 = +[_TtC5Books23BKMessagesDebugProvider sgReportAConcern];
  v371[13] = v139;
  v372[13] = @"Enable SG Report a Concern";
  v140 = +[_TtC5Books23BKMessagesDebugProvider readerThemeMessage];
  v371[14] = v140;
  v372[14] = @"Enable Reading Theme Tip";
  v141 = +[_TtC5Books23BKMessagesDebugProvider easyNavigationMessage];
  v371[15] = v141;
  v372[15] = @"Enable Easy Navigation Tip";
  v142 = +[_TtC5Books23BKMessagesDebugProvider lockingBookOrientationMessage];
  v371[16] = v142;
  v372[16] = @"Enable Locking Book Orientation Tip";
  v143 = +[_TtC5Books23BKMessagesDebugProvider bookmarkShortcutMessage];
  v371[17] = v143;
  v372[17] = @"Enable Bookmark Shortcut Tip";
  v144 = +[_TtC5Books23BKMessagesDebugProvider readingGoalMessage];
  v371[18] = v144;
  v372[18] = @"Enable Reading Goal Message";
  v145 = [NSDictionary dictionaryWithObjects:v372 forKeys:v371 count:19];

  v334 = 0u;
  v333 = 0u;
  v332 = 0u;
  v331 = 0u;
  v146 = [v145 allKeys];
  v147 = [v146 countByEnumeratingWithState:&v331 objects:v370 count:16];
  if (v147)
  {
    v148 = *v332;
    do
    {
      for (i = 0; i != v147; i = i + 1)
      {
        if (*v332 != v148)
        {
          objc_enumerationMutation(v146);
        }

        v150 = *(*(&v331 + 1) + 8 * i);
        v151 = [v145 objectForKeyedSubscript:v150];
        v152 = [[BKDebugBoolDefaultSwitch alloc] initWithDefaultsKey:v150];
        v153 = [BKDebugViewCellModel modelWithAccessoryView:v152];
        v154 = [BKDebugViewEntry entryWithTitle:v151 model:v153];
        [v132 addObject:v154];
      }

      v147 = [v146 countByEnumeratingWithState:&v331 objects:v370 count:16];
    }

    while (v147);
  }

  v155 = [BKDebugViewCellModel modelWithAccessoryView:val->_uipBookViewFallback];
  v156 = [BKDebugViewEntry entryWithTitle:@"UIP: Book View Cover Fallback" model:v155];
  v369[0] = v156;
  v157 = [BKDebugViewCellModel modelWithAccessoryView:val->_slowModeSwitch];
  v158 = [BKDebugViewEntry entryWithTitle:@"Slow Mode" model:v157];
  v369[1] = v158;
  v288 = [NSArray arrayWithObjects:v369 count:2];

  v159 = [BKDebugViewCellModel modelWithAccessoryView:val->_layoutDebugSwitch];
  v160 = [BKDebugViewEntry entryWithTitle:@"Layout Debugging" model:v159];
  v368 = v160;
  v283 = [NSArray arrayWithObjects:&v368 count:1];

  v161 = [BKDebugViewEntry entryWithTitle:@"Clear ResourceLoader Cache" action:&stru_100A06830];
  v367 = v161;
  v278 = [NSArray arrayWithObjects:&v367 count:1];

  v329[0] = _NSConcreteStackBlock;
  v329[1] = 3221225472;
  v329[2] = sub_1000C3650;
  v329[3] = &unk_100A06770;
  objc_copyWeak(&v330, &location);
  v162 = [BKDebugViewCellModel modelWithDetailLineBreakMode:0 detailTextBlock:v329];
  v327[0] = _NSConcreteStackBlock;
  v327[1] = 3221225472;
  v327[2] = sub_1000C3700;
  v327[3] = &unk_100A06748;
  objc_copyWeak(&v328, &location);
  v163 = [BKDebugViewEntry entryWithTitle:@"Reading session start offset" model:v162 action:v327];
  v366[0] = v163;
  v325[0] = _NSConcreteStackBlock;
  v325[1] = 3221225472;
  v325[2] = sub_1000C3740;
  v325[3] = &unk_100A06748;
  objc_copyWeak(&v326, &location);
  v164 = [BKDebugViewEntry entryWithTitle:@"Add a 2-min session to a date" action:v325];
  v366[1] = v164;
  v323[0] = _NSConcreteStackBlock;
  v323[1] = 3221225472;
  v323[2] = sub_1000C37A4;
  v323[3] = &unk_100A06748;
  objc_copyWeak(&v324, &location);
  v165 = [BKDebugViewEntry entryWithTitle:@"Add a 30-min session to a date" action:v323];
  v366[2] = v165;
  v321[0] = _NSConcreteStackBlock;
  v321[1] = 3221225472;
  v321[2] = sub_1000C3808;
  v321[3] = &unk_100A06748;
  objc_copyWeak(&v322, &location);
  v166 = [BKDebugViewEntry entryWithTitle:@"Add a 60-min session to a date" action:v321];
  v366[3] = v166;
  v319[0] = _NSConcreteStackBlock;
  v319[1] = 3221225472;
  v319[2] = sub_1000C386C;
  v319[3] = &unk_100A06748;
  objc_copyWeak(&v320, &location);
  v167 = [BKDebugViewEntry entryWithTitle:@"Add a 360-min session to a date" action:v319];
  v366[4] = v167;
  v317[0] = _NSConcreteStackBlock;
  v317[1] = 3221225472;
  v317[2] = sub_1000C38D0;
  v317[3] = &unk_100A06748;
  objc_copyWeak(&v318, &location);
  v168 = [BKDebugViewEntry entryWithTitle:@"Clear today's reading time" action:v317];
  v366[5] = v168;
  v273 = [NSArray arrayWithObjects:v366 count:6];

  v315[0] = _NSConcreteStackBlock;
  v315[1] = 3221225472;
  v315[2] = sub_1000C3910;
  v315[3] = &unk_100A06748;
  objc_copyWeak(&v316, &location);
  v293 = [BKDebugViewEntry entryWithTitle:@"Clear AppStore review cache" action:v315];
  v365[0] = v293;
  v169 = [BKDebugViewCellModel modelWithAccessoryView:val->_fakePlayerSwitch];
  [BKDebugViewEntry entryWithTitle:@"Toggle Fake Player" model:v169];
  v268 = v263 = v169;
  v365[1] = v268;
  v313[0] = _NSConcreteStackBlock;
  v313[1] = 3221225472;
  v313[2] = sub_1000C3950;
  v313[3] = &unk_100A06748;
  objc_copyWeak(&v314, &location);
  v258 = [BKDebugViewEntry entryWithTitle:@"Move All Eligible Local Books to iCloud" action:v313];
  v365[2] = v258;
  v311[0] = _NSConcreteStackBlock;
  v311[1] = 3221225472;
  v311[2] = sub_1000C3990;
  v311[3] = &unk_100A06748;
  objc_copyWeak(&v312, &location);
  v296 = [BKDebugViewEntry entryWithTitle:@"Move All iCloud Books back to Local" action:v311];
  v365[3] = v296;
  v170 = [BKDebugViewCellModel modelWithAccessoryView:val->_appAnalyticsDebugProcessorModeSwitch];
  v171 = [BKDebugViewEntry entryWithTitle:@"AppAnalytics: Debug Processor" model:v170];
  v365[4] = v171;
  v309[0] = _NSConcreteStackBlock;
  v309[1] = 3221225472;
  v309[2] = sub_1000C39D0;
  v309[3] = &unk_100A06748;
  objc_copyWeak(&v310, &location);
  v172 = [BKDebugViewEntry entryWithTitle:@"Delete app" action:v309];
  v365[5] = v172;
  v307[0] = _NSConcreteStackBlock;
  v307[1] = 3221225472;
  v307[2] = sub_1000C3A10;
  v307[3] = &unk_100A06770;
  objc_copyWeak(&v308, &location);
  v173 = [BKDebugViewCellModel modelWithDetailLineBreakMode:3 detailTextBlock:v307];
  v305[0] = _NSConcreteStackBlock;
  v305[1] = 3221225472;
  v305[2] = sub_1000C3A70;
  v305[3] = &unk_100A06748;
  objc_copyWeak(&v306, &location);
  v174 = [BKDebugViewEntry entryWithTitle:@"CoverCache: Dump particular cover cache images to disk" model:v173 action:v305];
  v365[6] = v174;
  v303[0] = _NSConcreteStackBlock;
  v303[1] = 3221225472;
  v303[2] = sub_1000C3AB0;
  v303[3] = &unk_100A06748;
  objc_copyWeak(&v304, &location);
  v175 = [BKDebugViewEntry entryWithTitle:@"Sim: Family Content Deletion" action:v303];
  v365[7] = v175;
  v301[0] = _NSConcreteStackBlock;
  v301[1] = 3221225472;
  v301[2] = sub_1000C3B24;
  v301[3] = &unk_100A06748;
  objc_copyWeak(&v302, &location);
  v176 = [BKDebugViewEntry entryWithTitle:@"Sim: Managed Books Changed" action:v301];
  v365[8] = v176;
  v299[0] = _NSConcreteStackBlock;
  v299[1] = 3221225472;
  v299[2] = sub_1000C3B88;
  v299[3] = &unk_100A06748;
  objc_copyWeak(&v300, &location);
  v177 = [BKDebugViewEntry entryWithTitle:@"Sim: Triggering Local Notification in 1 second" action:v299];
  v365[9] = v177;
  v250 = [NSArray arrayWithObjects:v365 count:10];

  v178 = [[DebugViewControllerPriceTracking alloc] initWithOwner:val];
  priceTracking = val->_priceTracking;
  val->_priceTracking = v178;

  v180 = [[DebugViewControllerRemoteConfig alloc] initWithOwner:val];
  remoteConfig = val->_remoteConfig;
  val->_remoteConfig = v180;

  v297 = +[NSMutableArray array];
  v294 = [(BKDebugViewController *)val remoteConfig];
  v269 = [v294 section];
  v364[0] = v269;
  v264 = [[BKDebugViewSection alloc] initWithHeaderTitle:@"Reading Experience" entries:v203 footerTitle:0];
  v364[1] = v264;
  v182 = [BKDebugViewSection alloc];
  v259 = [NSString stringWithFormat:@"Store: JS %@", v204];
  v254 = [(BKDebugViewSection *)v182 initWithHeaderTitle:v259 entries:v206 footerTitle:@"Note: You must enable Enable Remote Config Monitoring in Internal Settings for configuration to work"];
  v364[2] = v254;
  v246 = [[BKDebugViewSection alloc] initWithHeaderTitle:@"Book Messages" entries:v132 footerTitle:&stru_100A30A68];
  v364[3] = v246;
  v239 = [[BKDebugViewSection alloc] initWithHeaderTitle:@"Open Book Animation" entries:v288 footerTitle:0];
  v364[4] = v239;
  v183 = [[BKDebugViewSection alloc] initWithHeaderTitle:@"Bookshelf" entries:v283 footerTitle:0];
  v364[5] = v183;
  v184 = [[BKDebugViewSection alloc] initWithHeaderTitle:@"TUIAnimation" entries:v278 footerTitle:0];
  v364[6] = v184;
  v185 = [[BKDebugViewSection alloc] initWithHeaderTitle:@"Reading Goals" entries:v273 footerTitle:0];
  v364[7] = v185;
  v186 = [[BKDebugViewSection alloc] initWithHeaderTitle:@"Miscellaneous" entries:v250 footerTitle:0];
  v364[8] = v186;
  v187 = [[BKDebugViewSection alloc] initWithHeaderTitle:@"Analytics" entries:v242 footerTitle:0];
  v364[9] = v187;
  v188 = [(BKDebugViewController *)val yearInReviewSection];
  v364[10] = v188;
  v189 = [NSArray arrayWithObjects:v364 count:11];
  [v297 addObjectsFromArray:v189];

  v190 = [(BKDebugViewController *)val priceTracking];
  v191 = [v190 section];

  if (v191)
  {
    [v297 addObject:v191];
  }

  v192 = [v297 copy];
  sections = val->_sections;
  val->_sections = v192;

  v194 = [(BKDebugViewController *)val tableView];
  [v194 registerClass:objc_opt_class() forCellReuseIdentifier:@"CellIdentifier"];

  objc_destroyWeak(&v300);
  objc_destroyWeak(&v302);
  objc_destroyWeak(&v304);
  objc_destroyWeak(&v306);
  objc_destroyWeak(&v308);
  objc_destroyWeak(&v310);
  objc_destroyWeak(&v312);
  objc_destroyWeak(&v314);
  objc_destroyWeak(&v316);

  objc_destroyWeak(&v318);
  objc_destroyWeak(&v320);
  objc_destroyWeak(&v322);
  objc_destroyWeak(&v324);
  objc_destroyWeak(&v326);
  objc_destroyWeak(&v328);
  objc_destroyWeak(&v330);

  objc_destroyWeak(&v336);
  objc_destroyWeak(&v338);

  objc_destroyWeak(&v340);
  objc_destroyWeak(&v342);
  objc_destroyWeak(&v344);
  objc_destroyWeak(&v346);
  objc_destroyWeak(&v348);

  objc_destroyWeak(&v350);
  objc_destroyWeak(&v352);
  objc_destroyWeak(&v354);

  objc_destroyWeak(&location);
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(BKDebugViewController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(BKDebugViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];

  v7 = [v6 entries];
  v8 = [v7 count];

  return v8;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(BKDebugViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];

  v7 = [v6 headerTitle];

  return v7;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = [(BKDebugViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];

  v7 = [v6 footerTitle];

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v8 = a4;
  v9 = [a3 dequeueReusableCellWithIdentifier:@"CellIdentifier" forIndexPath:v8];
  v10 = [(BKDebugViewController *)self sections];
  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v8, "section")}];

  v12 = [v11 entries];
  v13 = [v8 row];

  v14 = [v12 objectAtIndexedSubscript:v13];

  v15 = [v14 title];
  v16 = [v9 textLabel];
  [v16 setText:v15];

  v17 = [v14 model];
  v18 = [v17 detailTextBlock];
  if (v18)
  {
    v4 = [v14 model];
    v5 = [v4 detailTextBlock];
    v19 = v5[2]();
  }

  else
  {
    v19 = 0;
  }

  v20 = [v9 detailTextLabel];
  [v20 setText:v19];

  if (v18)
  {
  }

  v21 = [v14 model];
  v22 = [v21 detailLineBreakMode];
  v23 = [v9 detailTextLabel];
  [v23 setLineBreakMode:v22];

  v24 = [v14 model];
  [v9 setAccessoryType:{objc_msgSend(v24, "accessoryType")}];

  v25 = [v14 model];
  v26 = [v25 accessoryView];
  [v9 setAccessoryView:v26];

  v27 = [v14 model];
  v28 = [v27 userInteractionEnabledBlock];
  if (v28)
  {
    v29 = [v14 model];
    v30 = [v29 userInteractionEnabledBlock];
    [v9 setUserInteractionEnabled:v30[2]()];
  }

  else
  {
    [v9 setUserInteractionEnabled:1];
  }

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a4;
  v6 = a3;
  v7 = [(BKDebugViewController *)self sections];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v13, "section")}];

  v9 = [v8 entries];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v13, "row")}];

  v11 = [v10 action];
  v12 = v11;
  if (v11)
  {
    (*(v11 + 16))(v11, v13);
  }

  [v6 deselectRowAtIndexPath:v13 animated:1];
}

- (void)_presentTeaDebugViewController:(id)a3
{
  v12 = [objc_opt_class() resolver];
  v4 = [v12 resolveClass:objc_opt_class() name:@"Debug"];
  v5 = objc_opt_new();
  v6 = [(BKDebugViewController *)self view];
  v7 = [v6 window];
  v8 = [v7 windowScene];
  v9 = +[BKAppDelegate delegate];
  v10 = [v9 containerHost];
  [v5 registerWindowScene:v8 containerHost:v10];

  v11 = [(BKDebugViewController *)self navigationController];
  [v11 presentViewController:v4 animated:1 completion:0];
}

- (void)_presentLightLevelChangeAlert
{
  v3 = [(BKDebugViewController *)self tableView];
  v4 = [v3 indexPathForSelectedRow];

  v5 = [(BKDebugViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];

  v20 = v6;
  v7 = [v6 entries];
  v8 = v4;
  v9 = [v7 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];

  v10 = [v9 title];
  v11 = [UIAlertController alertControllerWithTitle:v10 message:0 preferredStyle:1];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = self;
  obj = self->_lightLevelTitles;
  v13 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1000C535C;
        v22[3] = &unk_100A05868;
        v22[4] = v12;
        v23 = v8;
        v18 = [UIAlertAction actionWithTitle:v17 style:0 handler:v22];
        [v11 addAction:v18];
      }

      v14 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v19 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:0];
  [v11 addAction:v19];

  [(BKDebugViewController *)v12 presentViewController:v11 animated:1 completion:0];
}

- (void)_emulateCurrentLightLevelChange:(int64_t)a3
{
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"BCShouldOverrideNightModeDelay"];

  if (v6)
  {
    v7 = 5000000000;
  }

  else
  {
    v7 = 0;
  }

  v8 = dispatch_time(0, v7);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C5574;
  v9[3] = &unk_100A04DD0;
  v9[4] = self;
  v9[5] = a3;
  dispatch_after(v8, &_dispatch_main_q, v9);
}

- (void)_presentProductPageAlsoAvailableAsAlert
{
  v7 = [UIAlertController alertControllerWithTitle:0 message:@"Select product page treatment type" preferredStyle:1];
  v3 = [UIAlertAction actionWithTitle:@"None" style:0 handler:&stru_100A06938];
  [v7 addAction:v3];

  v4 = [UIAlertAction actionWithTitle:@"Type 1" style:0 handler:&stru_100A06958];
  [v7 addAction:v4];

  v5 = [UIAlertAction actionWithTitle:@"Type 2" style:0 handler:&stru_100A06978];
  [v7 addAction:v5];

  v6 = [UIAlertAction actionWithTitle:@"Cancel" style:2 handler:0];
  [v7 addAction:v6];

  [(BKDebugViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_presentCoverCacheDumpingAdamIDCoversAlert
{
  v3 = [(BKDebugViewController *)self tableView];
  v4 = [v3 indexPathForSelectedRow];

  v5 = [UIAlertController alertControllerWithTitle:@"Dump particular cover cache images in the next app launch" message:@"See BICCacheStates logging for dumped image file path.\n\n Just enter hash (sideload) or adamID (store) you want its covers dumped preferredStyle:and restart Books.app and use it like you normally do. Below text field will be reset when Books.app relaunched.\n\n", 1];
  [(BKDebugViewController *)self coverCacheHashOrAdamID];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000C5AB4;
  v6 = v14[3] = &unk_100A069A0;
  v15 = v6;
  [v5 addTextFieldWithConfigurationHandler:v14];
  objc_initWeak(&location, v5);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000C5B18;
  v10[3] = &unk_100A069C8;
  objc_copyWeak(&v12, &location);
  v10[4] = self;
  v7 = v4;
  v11 = v7;
  v8 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:v10];
  [v5 addAction:v8];

  v9 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:0];
  [v5 addAction:v9];

  [(BKDebugViewController *)self presentViewController:v5 animated:1 completion:0];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_moveEligibleLocalBooksToUbiquity
{
  objc_opt_class();
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];
  v5 = BUDynamicCast();

  v4 = [v5 ubiquitousDocumentsController];
  [v4 makeAllEligibleLocalBooksUbiquitousWithCompletion:&stru_100A06A08];
}

- (void)_moveUbiquityBooksBackToLocal
{
  objc_opt_class();
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];
  v5 = BUDynamicCast();

  v4 = [v5 ubiquitousDocumentsController];
  [v4 makeAllUbiquitousBooksLocalWithCompletion:&stru_100A06A28];
}

- (void)_handleAppRemoval
{
  v3 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.iBooks.appremoval"];
  v4 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LSAppRemovalServiceProtocol];
  [v3 setRemoteObjectInterface:v4];

  [v3 resume];
  v5 = [UIAlertController alertControllerWithTitle:@"XPC App Removal Service" message:&stru_100A30A68 preferredStyle:1];
  v6 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
  [v5 addAction:v6];
  v7 = dispatch_semaphore_create(0);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000C5FCC;
  v20[3] = &unk_100A05ED0;
  v8 = v5;
  v21 = v8;
  v22 = self;
  v9 = v7;
  v23 = v9;
  v10 = [v3 remoteObjectProxyWithErrorHandler:v20];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000C6140;
  v16 = &unk_100A05ED0;
  v17 = v8;
  v18 = self;
  v19 = v9;
  v11 = v9;
  v12 = v8;
  [v10 removeAppWithReply:&v13];
  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  [v3 invalidate];
}

- (void)_loadDefaults
{
  v2 = self;
  sub_10065CE1C();
}

- (void)_presentSessionStartOffsetChangeAlert
{
  v2 = self;
  sub_10065D648();
}

- (void)_presentREIChromeEditingMenu
{
  v2 = self;
  sub_100600740(&v5);
  v3 = objc_allocWithZone(sub_1001F1160(&qword_100AF0278));
  v4 = sub_10079CBC4();
  [(BKDebugViewController *)v2 presentViewController:v4 animated:1 completion:0];
}

- (void)_presentAddReadingSessionPickerFromIndexPath:(id)a3 duration:(double)a4
{
  v6 = sub_100796E74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796E14();
  v10 = self;
  sub_10065E02C(a4);

  (*(v7 + 8))(v9, v6);
}

- (void)_presentWantToReadSamplesBehaviorAlert
{
  v2 = self;
  sub_10065E7CC();
}

- (BKDebugViewSection)yearInReviewSection
{
  v2 = self;
  sub_10065F5BC();
  v3 = objc_allocWithZone(BKDebugViewSection);
  v4 = sub_1007A2214();
  sub_10000A7C4(0, &qword_100AD8B50);
  isa = sub_1007A25D4().super.isa;

  v6 = [v3 initWithHeaderTitle:v4 entries:isa footerTitle:0];

  return v6;
}

- (uint64_t)_clearTodaysReadingTime
{
  v0 = sub_1007986B4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&qword_100AF0260);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_100796594();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007986A4();
  sub_10065FB1C(&qword_100AF0268, &type metadata accessor for ReadingHistory.Notification.ClearToday);
  memset(v14, 0, sizeof(v14));
  sub_100799124();
  sub_100007840(v14, &unk_100AD5B40);
  (*(v1 + 8))(v3, v0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_100007840(v6, &qword_100AF0260);
  }

  (*(v8 + 32))(v10, v6, v7);
  v12 = [objc_opt_self() defaultCenter];
  isa = sub_100796554().super.isa;
  [v12 postNotification:isa];

  return (*(v8 + 8))(v10, v7);
}

@end