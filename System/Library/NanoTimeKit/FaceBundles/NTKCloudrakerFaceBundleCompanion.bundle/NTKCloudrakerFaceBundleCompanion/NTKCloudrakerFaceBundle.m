@interface NTKCloudrakerFaceBundle
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryEditOptionsForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
- (void)_addGalleryFaceWithTopComplication:(unint64_t)a3 centerComplicationType:(unint64_t)a4 bottomComplicationType:(unint64_t)a5 toCollection:(id)a6 withBaseFace:(id)a7;
@end

@implementation NTKCloudrakerFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() identifier];
  v5 = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKCloudrakerFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v3 initCustomization:0];

  return v6;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [objc_opt_class() identifier];
  v7 = [objc_opt_class() analyticsIdentifier];
  v101[0] = _NSConcreteStackBlock;
  v101[1] = 3221225472;
  v101[2] = sub_2344;
  v101[3] = &unk_82E8;
  v8 = [[NTKPigmentEditOption alloc] initWithOptionName:@"multicolor" collectionName:@"special"];
  v102 = v8;
  v9 = [NTKCloudrakerFace bundledFaceWithIdentifier:v6 analyticsIdentifier:v7 forDevice:v4 initCustomization:v101];
  if ([v4 isRunningNapiliGMOrLater])
  {
    v100.receiver = self;
    v100.super_class = NTKCloudrakerFaceBundle;
    v10 = [(NTKCloudrakerFaceBundle *)&v100 galleryFacesForDevice:v4];
    [v5 addObjectsFromArray:v10];

    v98[0] = _NSConcreteStackBlock;
    v98[1] = 3221225472;
    v98[2] = sub_2358;
    v98[3] = &unk_8310;
    v99 = v4;
    [v5 enumerateObjectsUsingBlock:v98];
  }

  else if ([v4 supportsPDRCapability:3669496134])
  {
    if (v9)
    {
      v69 = v6;
      v93 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.boardwalk.watchapp.widgets" containerBundleIdentifier:@"com.apple.boardwalk.watchapp" kind:@"Tides" intent:0];
      v92 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.Mind.MindComplication" containerBundleIdentifier:@"com.apple.Mind" kind:@"MentalHealthLauncherComplication" intent:0];
      v91 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.nanomusicrecognition.NanoMusicRecognitionWidget" containerBundleIdentifier:@"com.apple.nanomusicrecognition" kind:@"com.apple.nanomusicrecognition.NanoMusicRecognitionWidget" intent:0];
      v67 = [[INAppIntent alloc] initWithAppBundleIdentifier:@"com.apple.NanoTranslate.Widget" appIntentIdentifier:@"ConfigurationAppIntent" serializedParameters:&__NSDictionary0__struct];
      v90 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.NanoTranslate.Widget" containerBundleIdentifier:@"com.apple.NanoTranslate" kind:@"NanoTranslateWidget" intent:v67];
      v89 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.weather.watchapp.widgets" containerBundleIdentifier:@"com.apple.weather.watchapp" kind:@"com.apple.weather.widget.threeup" intent:0];
      v88 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.ActivityMonitorApp.ActivityComplication" containerBundleIdentifier:@"com.apple.ActivityMonitorApp" kind:@"ActivityGraphComplication" intent:0];
      v66 = [[INAppIntent alloc] initWithAppBundleIdentifier:@"com.apple.ActivityMonitorApp.ActivityComplication" appIntentIdentifier:@"WorkoutDistanceConfigurationIntent" serializedParameters:&off_8D40];
      v87 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.ActivityMonitorApp.ActivityComplication" containerBundleIdentifier:@"com.apple.ActivityMonitorApp" kind:@"WorkoutDistanceComplication" intent:v66];
      v65 = [[INAppIntent alloc] initWithAppBundleIdentifier:@"com.apple.NanoHome.NanoHomeWidgets" appIntentIdentifier:@"NHOSmartStackActionIntent" serializedParameters:&off_8D68];
      v86 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.NanoHome.NanoHomeWidgets" containerBundleIdentifier:@"com.apple.NanoHome" kind:@"com.apple.NanoHome.NHOSmartStackActionWidget" intent:v65];
      v11 = [NTKComplication anyComplicationOfType:10];
      v85 = _complicationOrDie(v11);

      v12 = [NTKComplication anyComplicationOfType:7];
      v84 = _complicationOrDie(v12);

      v83 = [NTKComplication anyComplicationOfType:18];
      if ([v4 supportsUrsa])
      {
        v13 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:NTKComplicationCompassSmartWaypointIdentifier appBundleIdentifier:NTKBundleComplicationUrsaAppBundleIdentifier complicationDescriptor:0];
        v82 = _complicationOrDie(v13);
      }

      else
      {
        v82 = _complicationOrDie(0);
      }

      if ([v4 supportsUrsa])
      {
        v21 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:NTKBundleComplicationUrsaCompassBundleIdentifier appBundleIdentifier:NTKBundleComplicationUrsaAppBundleIdentifier complicationDescriptor:0];
        v81 = _complicationOrDie(v21);
      }

      else
      {
        v81 = _complicationOrDie(0);
      }

      if ([v4 supportsUrsa])
      {
        v22 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:NTKBundleComplicationUrsaBearingBundleIdentifier appBundleIdentifier:NTKBundleComplicationUrsaAppBundleIdentifier complicationDescriptor:0];
        v94 = _complicationOrDie(v22);
      }

      else
      {
        v94 = _complicationOrDie(0);
      }

      v23 = [NTKComplication anyComplicationOfType:43];
      v80 = _complicationOrDie(v23);

      v68 = v7;
      v63 = v9;
      v64 = v8;
      if ([v4 supportsUrsa])
      {
        v24 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.NanoCompass.complications.altitude" appBundleIdentifier:NTKBundleComplicationUrsaAppBundleIdentifier complicationDescriptor:0];
        v79 = _complicationOrDie(v24);
      }

      else
      {
        v79 = _complicationOrDie(0);
      }

      v25 = [NTKComplication anyComplicationOfType:1];
      v78 = _complicationOrDie(v25);

      v26 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.Depth.depth" appBundleIdentifier:@"com.apple.Depth" complicationDescriptor:0];
      v27 = _complicationOrDie(v26);

      v28 = [NTKWidgetComplication complicationWithDescriptor:v93];
      v72 = _complicationOrDie(v28);

      v29 = [NTKWidgetComplication complicationWithDescriptor:v92];
      v77 = _complicationOrDie(v29);

      v30 = [NTKWidgetComplication complicationWithDescriptor:v91];
      v76 = _complicationOrDie(v30);

      v31 = [NTKWidgetComplication complicationWithDescriptor:v90];
      v75 = _complicationOrDie(v31);

      v32 = [NTKComplication anyComplicationOfType:14];
      v74 = _complicationOrDie(v32);

      v33 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.Depth.temperature" appBundleIdentifier:@"com.apple.Depth" complicationDescriptor:0];
      v34 = _complicationOrDie(v33);

      v35 = [NTKWidgetComplication complicationWithDescriptor:v89];
      v59 = _complicationOrDie(v35);

      v36 = [NTKComplication anyComplicationOfType:5];
      v73 = _complicationOrDie(v36);

      v37 = [NTKWidgetComplication complicationWithDescriptor:v88];
      v71 = _complicationOrDie(v37);

      v38 = [NTKWidgetComplication complicationWithDescriptor:v86];
      v70 = _complicationOrDie(v38);

      v62 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.NanoHealthBalance.NanoHealthBalanceWidgetExtension" containerBundleIdentifier:@"com.apple.NanoHealthBalance" kind:@"BalanceOneDayWidgetKind" intent:0];
      v61 = [NTKWidgetComplication complicationWithDescriptor:v62];
      v39 = [NTKWidgetComplication complicationWithDescriptor:v87];
      v60 = _complicationOrDie(v39);

      v40 = [NSMutableArray arrayWithCapacity:12];
      v41 = NTKComplicationSlotTopLeft;
      v119[0] = NTKComplicationSlotTopLeft;
      if ([v4 supportsCharon])
      {
        v42 = v34;
      }

      else
      {
        v42 = v84;
      }

      v43 = NTKComplicationSlotCenter;
      v120[0] = v42;
      v120[1] = v94;
      v44 = NTKComplicationSlotBottom;
      v119[1] = NTKComplicationSlotCenter;
      v119[2] = NTKComplicationSlotBottom;
      if ([v4 supportsCharon])
      {
        v45 = v27;
      }

      else
      {
        v45 = v83;
      }

      v120[2] = v45;
      v46 = [NSDictionary dictionaryWithObjects:v120 forKeys:v119 count:3];
      [v40 addObject:v46];

      v117[0] = v41;
      v117[1] = v43;
      v118[0] = v81;
      v118[1] = v79;
      v117[2] = v44;
      v118[2] = v82;
      v47 = [NSDictionary dictionaryWithObjects:v118 forKeys:v117 count:3];
      [v40 addObject:v47];

      v115[0] = v41;
      if ([v4 supportsCharon])
      {
        v48 = v34;
      }

      else
      {
        v48 = v84;
      }

      v116[0] = v48;
      v116[1] = v72;
      v115[1] = v43;
      v115[2] = v44;
      if ([v4 supportsCharon])
      {
        v49 = v27;
      }

      else
      {
        v49 = v83;
      }

      v116[2] = v49;
      v50 = [NSDictionary dictionaryWithObjects:v116 forKeys:v115 count:3];
      [v40 addObject:v50];

      v113[0] = v41;
      v113[1] = v43;
      v114[0] = v78;
      v114[1] = v80;
      v113[2] = v44;
      v114[2] = v59;
      v51 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:3];
      [v40 addObject:v51];

      v111[0] = v41;
      v111[1] = v43;
      v112[0] = v74;
      v112[1] = v75;
      v111[2] = v44;
      v112[2] = v73;
      v52 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:3];
      [v40 addObject:v52];

      v109[0] = v41;
      v109[1] = v43;
      v110[0] = v85;
      v110[1] = v70;
      v109[2] = v44;
      v110[2] = v76;
      v53 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:3];
      [v40 addObject:v53];

      v107[0] = v41;
      v107[1] = v43;
      v108[0] = v84;
      v108[1] = v71;
      v107[2] = v44;
      v108[2] = v77;
      v54 = [NSDictionary dictionaryWithObjects:v108 forKeys:v107 count:3];
      [v40 addObject:v54];

      v105[0] = v41;
      v105[1] = v43;
      v106[0] = v72;
      v106[1] = v94;
      v105[2] = v44;
      v106[2] = v59;
      v55 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:3];
      [v40 addObject:v55];

      v103[0] = v41;
      v103[1] = v43;
      v104[0] = v84;
      v104[1] = v61;
      v103[2] = v44;
      v104[2] = v60;
      v56 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:3];
      [v40 addObject:v56];

      v95[0] = _NSConcreteStackBlock;
      v95[1] = 3221225472;
      v95[2] = sub_2888;
      v95[3] = &unk_8360;
      v9 = v63;
      v96 = v63;
      v97 = v5;
      [v40 enumerateObjectsUsingBlock:v95];

      v7 = v68;
      v6 = v69;
      v8 = v64;
    }
  }

  else
  {
    if (NTKShowCarbonara())
    {
      v14 = [CLKWidgetComplicationDescriptor alloc];
      v15 = NTKCarbonaraWidgetIntent();
      v16 = [v14 initWithExtensionBundleIdentifier:@"com.apple.NanoHome.NanoHomeWidgets" containerBundleIdentifier:@"com.apple.NanoHome" kind:@"com.apple.HomeEnergyUI.EnergyForecastComplication" intent:v15];

      v17 = [NTKWidgetComplication complicationWithDescriptor:v16];
      [v9 setComplication:v17 forSlot:NTKComplicationSlotCenter];
      [v5 addObject:v9];
    }

    [(NTKCloudrakerFaceBundle *)self _addGalleryFaceWithTopComplication:10 centerComplicationType:7 bottomComplicationType:43 toCollection:v5 withBaseFace:v9];
    [(NTKCloudrakerFaceBundle *)self _addGalleryFaceWithTopComplication:39 centerComplicationType:40 bottomComplicationType:5 toCollection:v5 withBaseFace:v9];
    [(NTKCloudrakerFaceBundle *)self _addGalleryFaceWithTopComplication:19 centerComplicationType:15 bottomComplicationType:7 toCollection:v5 withBaseFace:v9];
    [(NTKCloudrakerFaceBundle *)self _addGalleryFaceWithTopComplication:10 centerComplicationType:43 bottomComplicationType:22 toCollection:v5 withBaseFace:v9];
    v18 = [v4 pdrDevice];
    v19 = [v18 pairingID];

    if (v19)
    {
      v20 = 9;
    }

    else
    {
      v20 = 8;
    }

    [(NTKCloudrakerFaceBundle *)self _addGalleryFaceWithTopComplication:1 centerComplicationType:5 bottomComplicationType:v20 toCollection:v5 withBaseFace:v9];
  }

  v57 = [v5 copy];

  return v57;
}

- (id)galleryEditOptionsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
  {
    v5 = &off_8A70;
    v6 = &off_8D10;
    v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)galleryPigmentsForDevice:(id)a3
{
  v4 = a3;
  if ([v4 isRunningNapiliGMOrLater])
  {
    v5 = [(NTKCloudrakerFaceBundle *)self defaultFaceForDevice:v4];
    v6 = [v5 defaultOptionForCustomEditMode:10 slot:0];
    v7 = ntk_special_multicolor;
    v11[0] = ntk_special_multicolor;
    v11[1] = ntk_special_multicolor;
    v11[2] = ntk_special_multicolor;
    v11[3] = ntk_special_multicolor;
    v8 = [v6 fullname];
    v11[4] = v8;
    v11[5] = v7;
    v9 = [NSArray arrayWithObjects:v11 count:6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_addGalleryFaceWithTopComplication:(unint64_t)a3 centerComplicationType:(unint64_t)a4 bottomComplicationType:(unint64_t)a5 toCollection:(id)a6 withBaseFace:(id)a7
{
  v11 = a6;
  v15 = [a7 copy];
  v12 = [NTKComplication anyComplicationOfType:a3];
  [v15 setComplication:v12 forSlot:NTKComplicationSlotTopLeft];

  v13 = [NTKComplication anyComplicationOfType:a4];
  [v15 setComplication:v13 forSlot:NTKComplicationSlotCenter];

  v14 = [NTKComplication anyComplicationOfType:a5];
  [v15 setComplication:v14 forSlot:NTKComplicationSlotBottom];

  [v11 addObject:v15];
}

- (id)heroFacesForDevice:(id)a3
{
  v4 = a3;
  if (([v4 supportsPDRCapability:360081074] & 1) == 0 && objc_msgSend(v4, "supportsPDRCapability:", 4094027452) && objc_msgSend(v4, "deviceCategory") == &dword_0 + 3)
  {
    v5 = [(NTKCloudrakerFaceBundle *)self defaultFaceForDevice:v4];
    v6 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v5 priority:300];
    v7 = v6;
    if (v6)
    {
      v10 = v6;
      v8 = [NSArray arrayWithObjects:&v10 count:1];
    }

    else
    {
      v8 = &__NSArray0__struct;
    }
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

@end