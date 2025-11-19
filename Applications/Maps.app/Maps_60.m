void sub_100AA38E4(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Slow Animation" get:&stru_101633B00 set:&stru_101633B20];
  v3 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Slow Transitions" get:&stru_101633B40 set:&stru_101633B60];
}

void sub_100AA3968(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setSlowTransitions:v2];
}

BOOL sub_100AA39C0(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 slowTransitions];

  return v2;
}

void sub_100AA3A00(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setSlowAnimations:v2];
}

BOOL sub_100AA3A58(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 slowAnimations];

  return v2;
}

void sub_100AA3A98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSwitchRowWithTitle:@"Freeze Camera Loading" get:&stru_1016334D8 set:&stru_1016334F8];
  v5 = [v3 addSwitchRowWithTitle:@"Relax Tilt Limits" get:&stru_101633518 set:&stru_101633538];
  v6 = [v3 addSwitchRowWithTitle:@"Simulate Globe Panning" get:&stru_101633558 set:&stru_101633578];
  LODWORD(v7) = 1128792064;
  LODWORD(v8) = -1.0;
  v9 = [v3 addSliderRowWithTitle:@"Paint Camera Path" subtitleStringFormat:@"%.1f" subtitleStringHandler:&stru_101633598 min:&stru_1016335B8 max:&stru_1016335D8 get:v8 set:v7];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100AA5F10;
  v23[3] = &unk_101633620;
  objc_copyWeak(&v24, (a1 + 32));
  LODWORD(v10) = 1.0;
  LODWORD(v11) = 20.0;
  v12 = [v3 addSliderRowWithTitle:@"Far Clip Plane Factor" subtitleStringFormat:@"%.1f" min:&stru_1016335F8 max:v23 get:v10 set:v11];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100AA5F88;
  v21[3] = &unk_101633620;
  objc_copyWeak(&v22, (a1 + 32));
  LODWORD(v13) = 1008981770;
  LODWORD(v14) = 2.0;
  v15 = [v3 addSliderRowWithTitle:@"Near Clip Plane Factor" subtitleStringFormat:@"%.1f" min:&stru_101633640 max:v21 get:v13 set:v14];
  v16 = [v3 addSwitchRowWithTitle:@"Enable Depth of Field" get:&stru_101633660 set:&stru_101633680];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100AA6000;
  v19[3] = &unk_101633620;
  objc_copyWeak(&v20, (a1 + 32));
  LODWORD(v17) = 1.0;
  v18 = [v3 addSliderRowWithTitle:@"Depth of Field Strength" subtitleStringFormat:@"%.2f" min:&stru_1016336A0 max:v19 get:0.0 set:v17];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
}

void sub_100AA3D4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  _Unwind_Resume(a1);
}

void sub_100AA3D84(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100AA588C;
  v7[3] = &unk_101653F10;
  objc_copyWeak(&v8, (a1 + 32));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100AA5974;
  v5[3] = &unk_10165D828;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addCheckmarkRowsGroupWithContent:&stru_101633820 get:v7 set:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
}

void sub_100AA3E90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100AA3EAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100AA55A0;
  v7[3] = &unk_101653F10;
  objc_copyWeak(&v8, (a1 + 32));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100AA5688;
  v5[3] = &unk_10165D828;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addCheckmarkRowsGroupWithContent:&stru_101633840 get:v7 set:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
}

void sub_100AA3FB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100AA3FD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100AA5350;
  v11[3] = &unk_101633620;
  objc_copyWeak(&v12, (a1 + 32));
  LODWORD(v4) = 1.0;
  v5 = [v3 addSliderRowWithTitle:@"Sky Offset Adjustment" subtitleStringFormat:@"%1.6f " min:&stru_101633860 max:v11 get:0.0 set:v4];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100AA5430;
  v9[3] = &unk_101633620;
  objc_copyWeak(&v10, (a1 + 32));
  LODWORD(v6) = -1035468800;
  LODWORD(v7) = 1148829696;
  v8 = [v3 addSliderRowWithTitle:@"Grid Z Adjustment" subtitleStringFormat:@"%3.6f " min:&stru_101633880 max:v9 get:v6 set:v7];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
}

void sub_100AA4130(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100AA4154(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addEmptySectionBannerRowWithTitle:@"Collision Sphere"];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100AA46EC;
  v39[3] = &unk_101633620;
  objc_copyWeak(v40, (a1 + 32));
  LODWORD(v5) = 1157234688;
  LODWORD(v6) = -1.0;
  v7 = [v3 addSliderRowWithTitle:@"Collision Radius" subtitleStringFormat:@"%.1f" subtitleStringHandler:&stru_1016338A0 min:&stru_1016338C0 max:v39 get:v6 set:v5];
  objc_destroyWeak(v40);
  v8 = [v3 addSwitchRowWithTitle:@"Draw Collision Radii" get:&stru_1016338E0 set:&stru_101633900];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100AA47CC;
  v37[3] = &unk_101633620;
  objc_copyWeak(&v38, (a1 + 32));
  LODWORD(v9) = 1.0;
  v10 = [v3 addSliderRowWithTitle:@"Collision Response Speed" subtitleStringFormat:@"%1.3f" min:&stru_101633920 max:v37 get:0.0 set:v9];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100AA48AC;
  v35[3] = &unk_101633620;
  objc_copyWeak(&v36, (a1 + 32));
  LODWORD(v11) = 1112014848;
  v12 = [v3 addSliderRowWithTitle:@"Collision Decay" subtitleStringFormat:@"%1.3f" min:&stru_101633940 max:v35 get:0.0 set:v11];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100AA498C;
  v33[3] = &unk_101633620;
  objc_copyWeak(&v34, (a1 + 32));
  LODWORD(v13) = 1.0;
  v14 = [v3 addSliderRowWithTitle:@"Collision Penetration Recovery" subtitleStringFormat:@"%1.3f" min:&stru_101633960 max:v33 get:0.0 set:v13];
  v15 = [v3 addEmptySectionBannerRowWithTitle:@"Collision Geometry"];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100AA4A6C;
  v31[3] = &unk_1016619A8;
  objc_copyWeak(&v32, (a1 + 32));
  v16 = [v3 addSwitchRowWithTitle:@"Draw Collision Geometry" get:&stru_101633980 set:v31];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100AA4B44;
  v29[3] = &unk_1016619A8;
  objc_copyWeak(&v30, (a1 + 32));
  v17 = [v3 addSwitchRowWithTitle:@"Enable Building Collision Geometry" get:&stru_1016339A0 set:v29];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100AA4C1C;
  v27[3] = &unk_1016619A8;
  objc_copyWeak(&v28, (a1 + 32));
  v18 = [v3 addSwitchRowWithTitle:@"Enable Landmark Collision Geometry" get:&stru_1016339C0 set:v27];
  v19 = [v3 addSwitchRowWithTitle:@"Enable Collision with Collision Mesh" get:&stru_1016339E0 set:&stru_101633A00];
  v20 = [v3 addSwitchRowWithTitle:@"Enable Collision with Elevation Raster" get:&stru_101633A20 set:&stru_101633A40];
  LODWORD(v21) = 4.0;
  v22 = [v3 addSliderRowWithTitle:@"Elevation Raster Generated Collision Mesh Sampling Points" subtitleStringFormat:@"%4f meters" min:&stru_101633A60 max:&stru_101633A80 get:v21 set:8589936700.0];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100AA4CF4;
  v25[3] = &unk_101633620;
  objc_copyWeak(&v26, (a1 + 32));
  LODWORD(v23) = 1.0;
  v24 = [v3 addSliderRowWithTitle:@"Altitude Smooth Factor" subtitleStringFormat:@"%1.5f" min:&stru_101633AA0 max:v25 get:0.0 set:v23];
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);
}

void sub_100AA466C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak(v1);
  _Unwind_Resume(a1);
}

void sub_100AA46EC(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setCameraCollisionRadius:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained delegate];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 allVisibleMapViewsForDebugController:v7];
  v9 = [v8 firstObject];
  v10 = [v9 _mapLayer];
  [v10 setNeedsLayout];
}

void sub_100AA47CC(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setCameraCollisionResponseSpeed:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained delegate];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 allVisibleMapViewsForDebugController:v7];
  v9 = [v8 firstObject];
  v10 = [v9 _mapLayer];
  [v10 setNeedsLayout];
}

void sub_100AA48AC(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setCameraCollisionDecaySpeed:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained delegate];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 allVisibleMapViewsForDebugController:v7];
  v9 = [v8 firstObject];
  v10 = [v9 _mapLayer];
  [v10 setNeedsLayout];
}

void sub_100AA498C(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setCameraCollisionPenetrationRecovery:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained delegate];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 allVisibleMapViewsForDebugController:v7];
  v9 = [v8 firstObject];
  v10 = [v9 _mapLayer];
  [v10 setNeedsLayout];
}

void sub_100AA4A6C(uint64_t a1, uint64_t a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 setDrawCollisionGeometries:a2];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 allVisibleMapViewsForDebugController:v6];
  v8 = [v7 firstObject];
  v9 = [v8 _mapLayer];
  [v9 setNeedsLayout];
}

void sub_100AA4B44(uint64_t a1, uint64_t a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 setEnableBuildingCollisionGeometries:a2];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 allVisibleMapViewsForDebugController:v6];
  v8 = [v7 firstObject];
  v9 = [v8 _mapLayer];
  [v9 setNeedsLayout];
}

void sub_100AA4C1C(uint64_t a1, uint64_t a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 setEnableLandmarkCollisionGeometries:a2];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 allVisibleMapViewsForDebugController:v6];
  v8 = [v7 firstObject];
  v9 = [v8 _mapLayer];
  [v9 setNeedsLayout];
}

void sub_100AA4CF4(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setAltitudeChangeFactor:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained delegate];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 allVisibleMapViewsForDebugController:v7];
  v9 = [v8 firstObject];
  v10 = [v9 _mapLayer];
  [v10 setNeedsLayout];
}

float sub_100AA4DD4(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 altitudeChangeFactor];
  v3 = v2;

  return v3;
}

void sub_100AA4E1C(id a1, float a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setCollisionMeshGridSamples:v2];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:VKShouldFlushTileCachesNotification object:0];
}

float sub_100AA4EA0(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 collisionMeshGridSamples];

  return v2;
}

void sub_100AA4EE8(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setEnableCollisionWithElevationRaster:v2];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:VKShouldFlushTileCachesNotification object:0];
}

BOOL sub_100AA4F6C(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 enableCollisionWithElevationRaster];

  return v2;
}

void sub_100AA4FAC(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setEnableCollisionWithCollisionMesh:v2];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:VKShouldFlushTileCachesNotification object:0];
}

BOOL sub_100AA5030(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 enableCollisionWithCollisionMesh];

  return v2;
}

BOOL sub_100AA5070(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 enableLandmarkCollisionGeometries];

  return v2;
}

BOOL sub_100AA50B0(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 enableBuildingCollisionGeometries];

  return v2;
}

BOOL sub_100AA50F0(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 drawCollisionGeometries];

  return v2;
}

float sub_100AA5130(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 cameraCollisionPenetrationRecovery];
  v3 = v2;

  return v3;
}

float sub_100AA5178(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 cameraCollisionDecaySpeed];
  v3 = v2;

  return v3;
}

float sub_100AA51C0(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 cameraCollisionResponseSpeed];
  v3 = v2;

  return v3;
}

void sub_100AA5208(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setDrawCollisionRadii:v2];
}

BOOL sub_100AA5260(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 drawCollisionRadii];

  return v2;
}

float sub_100AA52A0(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 cameraCollisionRadius];
  v3 = v2;

  return v3;
}

NSString *__cdecl sub_100AA52E8(id a1, float a2)
{
  v2 = a2;
  if (v2 <= -0.00001)
  {
    [NSString stringWithFormat:@"dynamic", v5];
  }

  else
  {
    [NSString stringWithFormat:@"%g meters", *&v2];
  }
  v3 = ;

  return v3;
}

void sub_100AA5350(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setSkyOffsetAdjustment:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained delegate];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 allVisibleMapViewsForDebugController:v7];
  v9 = [v8 firstObject];
  v10 = [v9 _mapLayer];
  [v10 setNeedsLayout];
}

void sub_100AA5430(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setGridZAdjustment:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained delegate];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 allVisibleMapViewsForDebugController:v7];
  v9 = [v8 firstObject];
  v10 = [v9 _mapLayer];
  [v10 setNeedsLayout];
}

float sub_100AA5510(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 gridZAdjustment];
  v3 = v2;

  return v3;
}

float sub_100AA5558(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 skyOffsetAdjustment];
  v3 = v2;

  return v3;
}

id sub_100AA55A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 allVisibleMapViewsForDebugController:v4];
  v6 = [v5 firstObject];
  v7 = [v6 _mapLayer];
  v8 = [v7 sceneConfiguration];

  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 navigationDestination]);

  return v9;
}

void sub_100AA5688(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 allVisibleMapViewsForDebugController:v6];

  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) _mapLayer];
        v13 = [v12 sceneConfiguration];

        [v13 setNavigationDestination:{objc_msgSend(v3, "integerValue")}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

void sub_100AA57F8(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v5 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Unknown" value:&off_1016E82E8];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Confirmed" value:&off_1016E8300];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Unconfirmed" value:&off_1016E8318];
}

id sub_100AA588C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 allVisibleMapViewsForDebugController:v4];
  v6 = [v5 firstObject];
  v7 = [v6 _mapLayer];
  v8 = [v7 sceneConfiguration];

  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 navCameraMode]);

  return v9;
}

void sub_100AA5974(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 allVisibleMapViewsForDebugController:v6];

  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) _mapLayer];
        v13 = [v12 sceneConfiguration];

        [v13 setNavCameraMode:{objc_msgSend(v3, "integerValue")}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

void sub_100AA5AE4(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v6 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Default" value:&off_1016E82E8];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Overview" value:&off_1016E8300];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"LegOverview" value:&off_1016E8330];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Drive" value:&off_1016E8318];
}

void sub_100AA5BD0(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v8 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"None" value:&off_1016E82E8];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"Controller" value:&off_1016E8300];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"Style Properties" value:&off_1016E8318];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"Style Attributes" value:&off_1016E8330];
  v6 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"Nav Context" value:&off_1016E8348];
  v7 = [(MapsDebugCheckmarkRowsGroup *)v8 addRowWithTitle:@"Dynamic Frame Rate" value:&off_1016E8360];
}

void sub_100AA5CC4(id a1, MapsDebugTableSection *a2)
{
  v6 = a2;
  v2 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Force Complex Intersection" get:&stru_1016336E0 set:&stru_101633700];
  v3 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Enable Force Windshield Mode Button" get:&stru_101633720 set:&stru_101633740];
  v4 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Show Overlay" get:&stru_101633760 set:&stru_101633780];
  v5 = [(MapsDebugTableSection *)v6 addSwitchRowWithTitle:@"Show Overlay Legend" get:&stru_1016337A0 set:&stru_1016337C0];
}

void sub_100AA5DE0(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setEnableWindshieldOverrideButton:v2];
}

BOOL sub_100AA5E38(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 enableWindshieldOverrideButton];

  return v2;
}

void sub_100AA5E78(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setNavCameraForceComplexIntersection:v2];
}

BOOL sub_100AA5ED0(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 navCameraForceComplexIntersection];

  return v2;
}

void sub_100AA5F10(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setFarClipPlaneFactor:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setAllMapLayersNeedLayout];
}

void sub_100AA5F88(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setNearClipPlaneFactor:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setAllMapLayersNeedLayout];
}

void sub_100AA6000(uint64_t a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v5 = a2;
  [v4 setDofStrength:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setAllMapLayersNeedLayout];
}

float sub_100AA6078(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 dofStrength];
  v3 = v2;

  return v3;
}

void sub_100AA60C0(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setEnableDOF:v2];
}

BOOL sub_100AA6118(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 enableDOF];

  return v2;
}

float sub_100AA6158(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 nearClipPlaneFactor];
  v3 = v2;

  return v3;
}

float sub_100AA61A0(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 farClipPlaneFactor];
  v3 = v2;

  return v3;
}

void sub_100AA61E8(id a1, float a2)
{
  LODWORD(v2) = vcvtms_s32_f32(a2);
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setDrawCameraPath:v2];
}

float sub_100AA6240(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 drawCameraPath];

  return v2;
}

NSString *__cdecl sub_100AA6288(id a1, float a2)
{
  LODWORD(v2) = vcvtms_s32_f32(a2);
  if ((v2 & 0x80000000) != 0)
  {
    [NSString stringWithFormat:@"Slide to record camera positions", v5];
  }

  else
  {
    [NSString stringWithFormat:@"record last %d camera positions", v2];
  }
  v3 = ;

  return v3;
}

void sub_100AA62E4(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setSimulateGlobePanning:v2];
}

BOOL sub_100AA633C(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 simulateGlobePanning];

  return v2;
}

void sub_100AA637C(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setRelaxTiltLimits:v2];
}

BOOL sub_100AA63D4(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 relaxTiltLimits];

  return v2;
}

void sub_100AA6414(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setShouldFreezeLayoutCamera:v2];
}

BOOL sub_100AA646C(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 shouldFreezeLayoutCamera];

  return v2;
}

void sub_100AA64AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSwitchRowWithTitle:@"Use Metal Renderer (Requires restart)" get:&stru_101633390 set:&stru_1016333B0];
  LODWORD(v5) = 0.5;
  LODWORD(v6) = 2.0;
  v7 = [v3 addSliderRowWithTitle:@"Ribbon Antialiasing" subtitleStringFormat:@"Antialias:  %1.2f" min:&stru_1016333D0 max:&stru_1016333F0 get:v5 set:v6];
  v8 = [v3 addSwitchRowWithTitle:@"Enable mipmaps" get:&stru_101633410 set:&stru_101633430];
  LODWORD(v9) = 1098960077;
  LODWORD(v10) = 1.0;
  v11 = [v3 addSliderRowWithTitle:@"Texture anisotropy" subtitleStringFormat:@"Anisotropy:  %1.f" min:&stru_101633450 max:&stru_101633470 get:v10 set:v9];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100AA67A0;
  v25[3] = &unk_101661B98;
  objc_copyWeak(&v26, (a1 + 32));
  v12 = [v3 addButtonRowWithTitle:@"Capture Frame" action:v25];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = [WeakRetained delegate];
  v15 = objc_loadWeakRetained((a1 + 32));
  v16 = [v14 allVisibleMapViewsForDebugController:v15];
  v17 = [v16 firstObject];
  v18 = [v17 _mapLayer];
  v19 = [v18 supportsGPUFrameCaptureToDestination];

  if (v19)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100AA6BEC;
    v23[3] = &unk_1016334B8;
    objc_copyWeak(&v24, (a1 + 32));
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100AA6C24;
    v21[3] = &unk_1016619A8;
    objc_copyWeak(&v22, (a1 + 32));
    v20 = [v3 addSwitchRowWithTitle:@"Capture Frame to File" get:v23 set:v21];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
  }

  objc_destroyWeak(&v26);
}

void sub_100AA6770(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  _Unwind_Resume(a1);
}

void sub_100AA67A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 allVisibleMapViewsForDebugController:v4];
  v6 = [v5 firstObject];
  v7 = [v6 _mapLayer];

  v8 = +[VKDebugSettings sharedSettingsExt];
  [v8 setDebugCaptureNextGPUFrame:1];

  if ([v7 supportsGPUFrameCaptureToDestination] && (v9 = objc_loadWeakRetained((a1 + 32)), v10 = objc_msgSend(v9, "shouldCaptureFrameToFile"), v9, v10))
  {
    v11 = +[NSDate date];
    v12 = +[NSCalendar currentCalendar];
    v30 = v11;
    v13 = [v12 components:252 fromDate:v11];

    v14 = [@"~/Library/Maps/FrameCaptures" stringByExpandingTildeInPath];
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/Maps-%ld-%02ld-%02ld.%02ld-%02ld-%02ld.gputrace", v14, [v13 year], objc_msgSend(v13, "month"), objc_msgSend(v13, "day"), objc_msgSend(v13, "hour"), objc_msgSend(v13, "minute"), objc_msgSend(v13, "second"));
    v16 = +[NSFileManager defaultManager];
    v35 = 0;
    LODWORD(v11) = [v16 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:&v35];
    v17 = v35;

    if (v11)
    {
      v18 = [NSURL fileURLWithPath:v15];
      v19 = [v18 path];
      v20 = +[VKDebugSettings sharedSettingsExt];
      [v20 setDebugGPUFrameCaptureURL:v19];

      v21 = [NSURL fileURLWithPath:v14];
      v34 = v17;
      [v21 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v34];
      v22 = v34;

      v23 = [v18 path];
      v24 = [NSString stringWithFormat:@"Frame will be captured to '%@'", v23];

      v17 = v22;
    }

    else
    {
      v18 = 0;
      v24 = @"Press OK to perform programatic capture (Must have debugger attached)";
    }
  }

  else
  {
    v18 = 0;
    v24 = @"Press OK to perform programatic capture (Must have debugger attached)";
  }

  v25 = [UIAlertController alertControllerWithTitle:@"Capture Frame" message:v24 preferredStyle:1];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100AA6C74;
  v31[3] = &unk_1016540D8;
  v26 = v7;
  v32 = v26;
  objc_copyWeak(&v33, (a1 + 32));
  v27 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:v31];
  v28 = [UIAlertAction actionWithTitle:@"Cancel" style:0 handler:&stru_101633490];
  [v25 addAction:v27];
  [v25 addAction:v28];
  v29 = objc_loadWeakRetained((a1 + 32));
  [v29 presentViewController:v25 animated:1 completion:0];

  objc_destroyWeak(&v33);
}

id sub_100AA6BEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained shouldCaptureFrameToFile];

  return v2;
}

void sub_100AA6C24(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShouldCaptureFrameToFile:a2];
}

void sub_100AA6C74(uint64_t a1)
{
  [*(a1 + 32) forceLayout];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void sub_100AA6CD4(id a1, float a2)
{
  LODWORD(v2) = vcvtms_u32_f32(a2);
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setAnisotropy:v2];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:VKShouldFlushTileCachesNotification object:0];
}

float sub_100AA6D58(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 anisotropy];

  return v2;
}

void sub_100AA6DA0(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setEnableMipMaps:v2];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:VKShouldFlushTileCachesNotification object:0];
}

BOOL sub_100AA6E24(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 enableMipMaps];

  return v2;
}

void sub_100AA6E64(id a1, float a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  *&v3 = a2;
  [v4 setRibbonCrispness:v3];
}

float sub_100AA6EBC(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  [v1 ribbonCrispness];
  v3 = v2;

  return v3;
}

void sub_100AA6F04(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[VKDebugSettings sharedSettingsExt];
  [v3 setUseMetalRenderer:v2];
}

BOOL sub_100AA6F5C(id a1)
{
  v1 = +[VKDebugSettings sharedSettingsExt];
  v2 = [v1 useMetalRenderer];

  return v2;
}

void sub_100AA6F9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addNavigationRowForViewControllerClass:objc_opt_class()];
  v5 = [NSString stringWithFormat:@"Use Test Tile Loader"];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100AA72E8;
  v23[3] = &unk_101651FD0;
  v24 = *(a1 + 32);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100AA72F0;
  v21[3] = &unk_101661738;
  v22 = *(a1 + 32);
  v6 = [v3 addSwitchRowWithTitle:v5 get:v23 set:v21];

  v7 = [v3 addButtonRowWithTitle:@"Update Resource Manifest" action:&stru_101633310];
  v8 = [v3 addButtonRowWithTitle:@"Flush Tile Cache" action:&stru_101633330];
  v9 = [v3 addButtonRowWithTitle:@"Force Dev Resources Update" action:&stru_101633350];
  v10 = [v3 addButtonRowWithTitle:@"Delete All Dev Resources" action:&stru_101633370];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100AA7354;
  v19[3] = &unk_101651FD0;
  v20 = *(a1 + 32);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100AA735C;
  v17[3] = &unk_101661738;
  v18 = *(a1 + 32);
  v11 = [v3 addSwitchRowWithTitle:@"Constantly Change Tile Group" get:v19 set:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100AA7368;
  v15[3] = &unk_101658E28;
  v16 = *(a1 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100AA73B8;
  v13[3] = &unk_10165EF00;
  v14 = *(a1 + 32);
  v12 = [v3 addTextFieldRowWithTitle:@"Tile Group Change Interval" placeholderText:@"(seconds)" inputType:1 get:v15 set:v13];
}

void sub_100AA72F0(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setShouldUseTestTileLoader:a2];
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:VKShouldFlushTileCachesNotification object:0];
}

NSString *sub_100AA7368(uint64_t a1)
{
  [*(a1 + 32) constantlyChangeTileGroupInterval];
  *&v1 = v1;
  return [NSString stringWithFormat:@"%f", *&v1];
}

id sub_100AA73B8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 doubleValue];

  return [v2 setConstantlyChangeTileGroupInterval:?];
}

void sub_100AA73F4(id a1)
{
  v1 = +[GEOResourceManifestManager modernManager];
  [v1 removeDevResources];
}

void sub_100AA743C(id a1)
{
  v1 = +[GEOResourceManifestManager modernManager];
  [v1 devResourcesFolderDidChange];
}

void sub_100AA7490(id a1)
{
  v1 = +[GEOResourceManifestManager modernManager];
  [v1 updateManifest:0];
}

void sub_100AA74DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSwitchRowWithTitle:@"Console Enabled" get:&stru_101633280 set:&stru_1016332A0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained addAllMapsSwitchRowToSection:v3 title:@"Draw Performance HUD" forVectorKitDebugKey:@"drawPerformanceHUD"];

  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = [v7 addAllMapsSwitchRowToSection:v3 title:@"Expanded Performance HUD" forVectorKitDebugKey:@"expandedPerformanceHUD"];

  v9 = [*(a1 + 32) numPerformanceGroups];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    do
    {
      v12 = [*(a1 + 32) nameForPerformanceGroup:v11];
      if (v12)
      {
        v13 = [NSString stringWithFormat:@"Show Performance Group %@", v12];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100AA76F0;
        v18[3] = &unk_1016332C8;
        v19 = *(a1 + 32);
        v20 = v11;
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100AA7700;
        v15[3] = &unk_1016332F0;
        v16 = *(a1 + 32);
        v17 = v11;
        v14 = [v3 addSwitchRowWithTitle:v13 get:v18 set:v15];
      }

      v11 = (v11 + 1);
    }

    while (v10 != v11);
  }
}

id sub_100AA7700(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    return [v3 showPerformanceGroup:v4];
  }

  else
  {
    return [v3 hidePerformanceGroup:v4];
  }
}

void sub_100AA7800(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100AA781C(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained delegate];
    v5 = objc_loadWeakRetained((a1 + 32));
    v9 = [v4 allVisibleMapViewsForDebugController:v5];

    v6 = +[MIController sharedController];
    v7 = [v9 objectAtIndexedSubscript:0];
    v8 = [v7 _mapLayer];
    [v6 activateController:v8];
  }

  else
  {
    v9 = +[MIController sharedController];
    [v9 deactivateController];
  }
}

BOOL sub_100AA7910(id a1)
{
  v1 = +[MIController sharedController];
  v2 = [v1 isActive];

  return v2;
}

void sub_100AA7BD0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

id sub_100AA7BEC(uint64_t a1)
{
  v2 = +[VKDebugSettings sharedSettingsExt];
  v3 = [v2 valueForKey:*(a1 + 32)];
  v4 = [v3 BOOLValue];

  return v4;
}

void sub_100AA7C4C(uint64_t a1, uint64_t a2)
{
  v4 = +[VKDebugSettings sharedSettingsExt];
  v5 = [NSNumber numberWithBool:a2];
  [v4 setValue:v5 forKey:*(a1 + 32)];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setAllMapLayersNeedLayout];
}

void sub_100AA7E2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100AA7E54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [NSNumber numberWithBool:MapsFeature_SetEnabled()];
  v3 = NSStringFromSelector(*(a1 + 56));
  [WeakRetained setValue:v2 forKeyInAllMapLayers:v3];
}

void sub_100AA8078(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id sub_100AA809C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained valueForKeyInAllMapLayers:*(a1 + 32)];
  v4 = [v3 BOOLValue];

  return v4;
}

void sub_100AA80F4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [NSNumber numberWithBool:a2];
  [WeakRetained setValue:v4 forKeyInAllMapLayers:*(a1 + 32)];
}

void sub_100AA8BA4(id a1, unint64_t a2)
{
  v2 = +[GEOTileLoader modernLoader];
  [v2 clearAllCaches];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:VKShouldFlushTileCachesNotification object:0];
}

void sub_100AA9448(id a1, GEORPFeedbackResponse *a2, NSData *a3, NSError *a4)
{
  v5 = a2;
  v6 = a4;
  v7 = sub_10002E924();
  v8 = v7;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
      v9 = "Failed to send TDM Notification with error %@ or response is nil";
      v10 = v8;
      v11 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = v5;
    v9 = "Successfully send TDM Fraud Notification... response status: %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEBUG;
LABEL_7:
    _os_log_impl(&_mh_execute_header, v10, v11, v9, &v12, 0xCu);
  }
}

void sub_100AA9868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100AA988C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = sub_10002E924();
    v9 = v8;
    if (!v5 || v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to retrieve Fraud Report Score with error %@ or fraudReportResponse is nil", &v10, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Successfully received Fraud Report: %@", &v10, 0xCu);
      }

      [WeakRetained _sendTdmFraudNotificationWithFraudReportResponse:v5 tdmRequestInfo:*(a1 + 32)];
    }
  }
}

uint64_t sub_100AAA208(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100AAA3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100AAA3CC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      [WeakRetained _submitOrEnqueueFeedback:*(a1 + 32) resolvedUserInfo:v8 traits:*(a1 + 40) debugSettings:*(a1 + 48) uploadPolicy:*(a1 + 80) feedbackObjectToUpdate:*(a1 + 56) completion:*(a1 + 64)];
    }
  }
}

void sub_100AAA7B4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100AAA8C4;
  block[3] = &unk_101636B70;
  v13 = a4;
  v14 = *(a1 + 32);
  v15 = v7;
  v16 = v8;
  v17 = *(a1 + 40);
  v9 = v8;
  v10 = v7;
  v11 = v13;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_100AAA8C4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = sub_10002E924();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed certificate fetch with error %@", &v9, 0xCu);
    }
  }

  v4 = [*(a1 + 48) copy];
  v5 = [*(a1 + 40) tdmUserInfo];
  [v5 setBaaCertificates:v4];

  v6 = *(a1 + 56);
  v7 = [*(a1 + 40) tdmUserInfo];
  [v7 setBaaSignature:v6];

  return (*(*(a1 + 64) + 16))();
}

void sub_100AAAFF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id location)
{
  objc_destroyWeak((v39 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100AAB014(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v9 = sub_10002E924();
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed image upload request (handshake) with error %@", buf, 0xCu);
      }

      v11 = *(a1 + 64);
      if (v11)
      {
        (*(v11 + 16))(v11, v6, v7);
      }
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Finished image upload request (handshake)", buf, 2u);
      }

      v12 = [v6 feedbackResult];
      v13 = [v12 imageUploadResult];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100AAB2B0;
      v24[3] = &unk_101636AF8;
      v14 = *(a1 + 32);
      v25 = *(a1 + 40);
      [v13 enumerateAndMatchPhotosWithMetadata:v14 withBlock:v24];

      v15 = [WeakRetained _feedbackUploaderForUploadPolicy:*(a1 + 80)];
      v21 = *(a1 + 32);
      v16 = [v6 feedbackResult];
      v17 = [v16 imageUploadResult];
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100AAB354;
      v22[3] = &unk_101636B20;
      v20 = *(a1 + 56);
      v23 = *(a1 + 64);
      [v15 submitPhotosWithMetadata:v21 withImageUploadResult:v17 withCorrectionsRequest:v18 traits:v19 parentProgress:v20 completion:v22];
    }
  }
}

void sub_100AAB2B0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v9 = [v4 feedbackRequestParameters];
  v7 = [v9 submissionParameters];
  v8 = [v6 imageId];

  [v7 appendServerImageId:v8 withMatchingPhoto:v5];
}

uint64_t sub_100AAB354(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100AAB540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  objc_destroyWeak(va);
  objc_destroyWeak((v12 - 88));
  _Unwind_Resume(a1);
}

void sub_100AAB560(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      (*(*(a1 + 72) + 16))();
    }

    else
    {
      [WeakRetained _submitOrEnqueueFeedback:*(a1 + 32) attachedImages:*(a1 + 40) resolvedUserInfo:v8 traits:*(a1 + 48) debugSettings:*(a1 + 56) uploadPolicy:*(a1 + 88) feedbackObjectToUpdate:*(a1 + 64) completion:*(a1 + 72)];
    }
  }
}

id sub_100AAB960(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 _maps_isEqualToComposedRoute:*(a1 + 32)];
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

void sub_100AAC124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100AAC148(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(*(*(a1 + 32) + 8) + 24) >= [v5 expectedTime])
  {
    *(*(*(a1 + 32) + 8) + 24) = [v5 expectedTime];
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

void sub_100AAC2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100AAC2D0(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  [v7 distance];
  if (v5 <= *(*(*(a1 + 32) + 8) + 24))
  {
    [v7 distance];
    *(*(*(a1 + 32) + 8) + 24) = v6;
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

void sub_100AB0818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100AB083C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained done];
}

RouteMarkerFormatterInfo *__cdecl sub_100AB0A2C(id a1, GEOComposedRouteLeg *a2, unint64_t a3)
{
  [(GEOComposedRouteLeg *)a2 travelDuration];
  v3 = GEOStringForDuration();
  v4 = [[RouteMarkerFormatterInfo alloc] initWithRouteDescription:v3 etaComparison:0 tollCurrency:0 styleAttributes:0];

  return v4;
}

void sub_100AB2C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100AB2CFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didTapWebsiteButton];
}

void sub_100AB2D3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained actionDelegate];
  [v1 didSelectAllGuidesMenuItem];
}

void sub_100AB37A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100AB37BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateConstraints];
    WeakRetained = v2;
  }
}

void sub_100AB55F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100AB5618(uint64_t a1, void *a2)
{
  v3 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100AB5800;
    v19 = &unk_101661600;
    v20 = WeakRetained;
    v21 = &v22;
    geo_isolate_sync_data();
    if ((v23[3] & 1) == 0)
    {
      v11 = _NSConcreteStackBlock;
      v12 = 3221225472;
      v13 = sub_100AB5814;
      v14 = &unk_101661B18;
      v15 = WeakRetained;
      geo_isolate_sync();
      v5 = [WeakRetained[2] _maps_mapsSceneDelegate];
      v6 = [v5 rapPresenter];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100AB5820;
      v9[3] = &unk_101636D88;
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9[4] = WeakRetained;
      v10 = v8;
      [v6 presentPlacecardImageryRAPWithContext:v7 layoutManager:v3 popoverPresentationBlock:v9 completion:0];
    }
  }

  _Block_object_dispose(&v22, 8);
}

void sub_100AB5820(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  [v4 setSourceView:*(*(a1 + 32) + 24)];
  [*(*(a1 + 32) + 24) bounds];
  [v4 setSourceRect:?];
  [v4 setPermittedArrowDirections:15];
}

id sub_100AB5C24(uint64_t a1, unint64_t a2)
{
  v4 = sub_100005610();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "AppLaunchNavTraceAlert: button = %ld", &v6, 0xCu);
  }

  if (a2 <= 1)
  {
    GEOConfigSetInteger();
  }

  GEOConfigSetUInteger();
  return [*(a1 + 32) _alertDidFinishProcessing];
}

void sub_100AB6264(uint64_t a1)
{
  [*(a1 + 32) startedSubTest:@"dismissARUI"];
  v2 = [*(a1 + 32) testCoordinator];
  [v2 pptTestExitAR];
}

id sub_100AB62C4(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"dismissARUI"];
  v2 = *(a1 + 32);

  return [v2 finishedTest];
}

id sub_100AB63A0(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"displayARElement"];
  v2 = *(a1 + 32);

  return [v2 _dismissARUI];
}

void sub_100AB647C(uint64_t a1, void *a2)
{
  v5 = [a2 object];
  v3 = [v5 wasLastLocalizationSuccessful];
  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 finishedSubTest:@"runARLocalization"];
    [*(a1 + 32) _displayARElement];
  }

  else
  {
    [v4 failedTestWithReason:@"AR localization failed"];
  }
}

id sub_100AB66BC(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"showARUI"];
  v2 = *(a1 + 32);

  return [v2 _runARLocalization];
}

void sub_100AB6B94(id a1)
{
  v1 = +[NSFileManager _maps_globalCachesURL];
  v2 = [v1 URLByAppendingPathComponent:@"ARTraces"];
  v5 = [v2 path];

  v3 = [v5 stringByAppendingPathComponent:@"ppt_ar_recording.mov"];
  v4 = qword_10195E3B0;
  qword_10195E3B0 = v3;
}

void sub_100AB788C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained displayCitySelectorData];
}

void sub_100AB7C70(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    [v5 configuration];

    if (v13 > 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v7 = [*(a1 + 32) logicController];
  v8 = [v7 compactCollectionsInSection:a3];

  v9 = [v8 count];
  v10 = *(a1 + 40);
  if (v9)
  {
    [v10 appendItemsWithIdentifiers:v8 intoSectionWithIdentifier:v6];
  }

  else
  {
    v14 = v6;
    v11 = [NSArray arrayWithObjects:&v14 count:1];
    [v10 deleteSectionsWithIdentifiers:v11];
  }

LABEL_9:
}

void sub_100AB7EDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

id sub_100AB7F10(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained sections];
  v12 = [v11 objectAtIndex:{objc_msgSend(v8, "section")}];

  if (v12)
  {
    [v12 configuration];
    if (v22)
    {
      [v12 configuration];

      if (v20 != 1)
      {
        v13 = 0;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v14 = +[MKPlaceCompactCollectionCell reuseIdentifier];
  v13 = [v7 dequeueReusableCellWithReuseIdentifier:v14 forIndexPath:v8];

  v15 = objc_loadWeakRetained((a1 + 32));
  v16 = [v15 logicController];
  v17 = [v16 compactCollectionAtIndex:objc_msgSend(v8 sectionIndex:{"item"), objc_msgSend(v8, "section")}];
  [v13 configureWithModel:v17];

LABEL_8:

  return v13;
}

id sub_100AB80C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained sections];
  v8 = [v7 objectAtIndex:{objc_msgSend(v5, "section")}];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 logicController];
  v11 = [v10 compactCollectionsInSection:{objc_msgSend(v5, "section")}];

  if (![v11 count] || v8 && (objc_msgSend(v8, "configuration"), v22, v23))
  {
    v12 = 0;
  }

  else
  {
    v13 = objc_loadWeakRetained((a1 + 32));
    v14 = [v13 collectionView];
    v15 = +[GuidesGenericSectionHeader reuseIdentifier];
    v16 = +[GuidesGenericSectionHeader reuseIdentifier];
    v12 = [v14 dequeueReusableSupplementaryViewOfKind:v15 withReuseIdentifier:v16 forIndexPath:v5];

    v17 = objc_loadWeakRetained((a1 + 32));
    v18 = [v17 logicController];
    v19 = [v8 sectionTitle];
    v20 = [v18 titleForSectionFromTitle:v19];
    [v12 configureWithTitle:v20];
  }

  return v12;
}

void sub_100AB8374(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"PPTTest_CitySelector_DidDisplaySections" object:*(a1 + 32)];
}

void sub_100AB881C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFScanningStateMonitor");
  v2 = qword_10195E3C0;
  qword_10195E3C0 = v1;
}

void sub_100ABB528(uint64_t a1)
{
  v2 = sub_100ABB8B0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      v8 = @"<nil>";
      goto LABEL_10;
    }

    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    if (objc_opt_respondsToSelector())
    {
      v6 = [v3 performSelector:"accessibilityIdentifier"];
      v7 = v6;
      if (v6 && ![v6 isEqualToString:v5])
      {
        v8 = [NSString stringWithFormat:@"%@<%p, %@>", v5, v3, v7];

        goto LABEL_8;
      }
    }

    v8 = [NSString stringWithFormat:@"%@<%p>", v5, v3];
LABEL_8:

LABEL_10:
    v9 = *(a1 + 32);
    v10 = v9[7];
    v11 = [v9 window];
    v12 = [v11 recursiveDescription];
    *buf = 138543874;
    v14 = v8;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "[%{public}@] Detected top label is truncated (%@): %@", buf, 0x20u);
  }
}

void sub_100ABB6EC(uint64_t a1)
{
  v2 = sub_100ABB8B0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      v8 = @"<nil>";
      goto LABEL_10;
    }

    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    if (objc_opt_respondsToSelector())
    {
      v6 = [v3 performSelector:"accessibilityIdentifier"];
      v7 = v6;
      if (v6 && ![v6 isEqualToString:v5])
      {
        v8 = [NSString stringWithFormat:@"%@<%p, %@>", v5, v3, v7];

        goto LABEL_8;
      }
    }

    v8 = [NSString stringWithFormat:@"%@<%p>", v5, v3];
LABEL_8:

LABEL_10:
    v9 = *(a1 + 32);
    v10 = v9[8];
    v11 = [v9 window];
    v12 = [v11 recursiveDescription];
    *buf = 138543874;
    v14 = v8;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "[%{public}@] Detected bottom label is truncated (%@): %@", buf, 0x20u);
  }
}

id sub_100ABB8B0()
{
  if (qword_10195E3E8 != -1)
  {
    dispatch_once(&qword_10195E3E8, &stru_101636E88);
  }

  v1 = qword_10195E3E0;

  return v1;
}

void sub_100ABB904(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarTwoPartLabel");
  v2 = qword_10195E3E0;
  qword_10195E3E0 = v1;
}

void sub_100ABBD78(id a1)
{
  v1 = qword_10195E410;
  qword_10195E410 = &off_1016ED3B8;
}

void sub_100ABBDE4(id a1)
{
  v1 = qword_10195E400;
  qword_10195E400 = &off_1016ED3A0;
}

void sub_100ABBFF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10079901C();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to save synced IncidentReport with error %@", &v9, 0xCu);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 16);
LABEL_10:
      v7();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Successfully synced IncidentReport!", &v9, 2u);
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v7 = *(v8 + 16);
      goto LABEL_10;
    }
  }
}

void sub_100ABC22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100ABC244(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100ABC25C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    NSLog(@"%@", v6);
    v8 = sub_10079901C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to fetch all synced IncidentReports with error %@", buf, 0xCu);
    }
  }

  [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v5];
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, *(*(*(a1 + 40) + 8) + 40));
  }
}

void sub_100ABC5D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, char a23)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_100ABC610(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))(v4, v5);
    }
  }
}

void sub_100ABC680(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    NSLog(@"%@", v6);
    v8 = sub_10079901C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to fetch synced RAPRecord with error %@", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, v7);
    }
  }

  else
  {
    if ([v5 count] >= 2)
    {
      v10 = sub_10079901C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "There is more than 1 RAP record in the sync db with the same Record Identifier", buf, 2u);
      }
    }

    v11 = [v5 firstObject];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    [*(*(*(a1 + 40) + 8) + 40) setStatus:*(a1 + 48)];
    v14 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100ABC880;
    v15[3] = &unk_1016610B8;
    v16 = *(a1 + 32);
    [v14 saveWithObjects:v5 completionHandler:v15];
  }
}

void sub_100ABC880(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10079901C();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to commit edit to synced RAP status with error %@", &v9, 0xCu);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 16);
LABEL_10:
      v7();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Successfully updated synced RAP record with status", &v9, 2u);
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v7 = *(v8 + 16);
      goto LABEL_10;
    }
  }
}

void sub_100ABCBA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_100ABCBDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v6)
    {
      NSLog(@"%@", v6);
      v8 = sub_10079901C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to fetch all synced RAP records with error %@", buf, 0xCu);
      }
    }

    [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v5];
    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, v5);
    }
  }
}

void sub_100ABCF64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10079901C();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to save synced RAP with error %@", &v9, 0xCu);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 16);
LABEL_10:
      v7();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Successfully synced RAP", &v9, 2u);
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v7 = *(v8 + 16);
      goto LABEL_10;
    }
  }
}

void sub_100ABD1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100ABD1EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = sub_10079901C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to save synced RAP with error %@", &v12, 0xCu);
      }

      v9 = *(a1 + 40);
      if (v9)
      {
        (*(v9 + 16))(v9, v6);
      }
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = [v5 firstObject];
      [WeakRetained _buildMapsSyncRAPRecord:v10 communityID:v11 completion:*(a1 + 40)];
    }
  }
}

void sub_100ABD430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100ABD448(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    NSLog(@"%@", v6);
    v8 = sub_10079901C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to fetch all synced RAP records with error %@", buf, 0xCu);
    }
  }

  [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v5];
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, *(*(*(a1 + 40) + 8) + 40));
  }
}

void sub_100ABD78C(id a1)
{
  v1 = objc_alloc_init(RAPRecordMapsSync);
  v2 = qword_10195E420;
  qword_10195E420 = v1;
}

void sub_100ABEBF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100ABEC14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startedTest];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 finishedTest];
}

id sub_100ABECEC(uint64_t a1)
{
  [*(a1 + 32) startedTest];
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100ABED70;
  v4[3] = &unk_101661B18;
  v4[4] = v2;
  return [v2 rotateDeviceWithCompletion:v4];
}

id sub_100ABF498(uint64_t a1)
{
  v2 = [UIImage systemImageNamed:@"doc.on.doc"];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100ABF600;
  v7[3] = &unk_101658910;
  v8 = *(a1 + 32);
  v3 = [UIAction actionWithTitle:@"Copy" image:v2 identifier:0 handler:v7];

  v9 = v3;
  v4 = [NSArray arrayWithObjects:&v9 count:1];
  v5 = [UIMenu menuWithTitle:&stru_1016631F0 children:v4];

  return v5;
}

void sub_100ABF600(uint64_t a1)
{
  v4 = +[UIPasteboard generalPasteboard];
  v2 = *(a1 + 32);
  v3 = [UTTypeUTF8PlainText identifier];
  [v4 setValue:v2 forPasteboardType:v3];
}

void sub_100AC00C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100AC00FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v15 = [[_URLKeyLabel alloc] initWithString:v6 color:v5];

  if (*(*(*(a1 + 40) + 8) + 24) >= 1 && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + 30.0;
  }

  [(_URLKeyLabel *)v15 frame];
  v9 = v8;
  v11 = v10;
  v12 = *(*(*(a1 + 48) + 8) + 24);
  v13 = 20.0;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    [*(a1 + 32) bounds];
    v13 = v14 * 0.5 + 10.0;
  }

  [(_URLKeyLabel *)v15 setFrame:v13, v12, v9, v11];
  [*(a1 + 32) addSubview:v15];
  ++*(*(*(a1 + 40) + 8) + 24);
}

id sub_100AC1208(uint64_t a1, uint64_t a2)
{
  v3 = [NSNumber numberWithUnsignedInteger:a2];
  v4 = *(a1 + 32);
  v5 = *(v4 + 80);
  *(v4 + 80) = v3;

  v6 = *(a1 + 32);

  return [v6 _updateSubmitButton];
}

void sub_100AC1268(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 88), a2);
  v4 = a2;
  [*(a1 + 32) _updateSubmitButton];
}

void sub_100AC14A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100AC14B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100AC14D0(double *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 4);
  v7 = a1[7];
  v8 = a1[8];
  v9 = a2;
  [v9 convertPoint:v6 fromView:{v7, v8}];
  obj = [v9 hitTest:*(a1 + 5) withEvent:?];

  v10 = obj;
  if (obj)
  {
    objc_storeStrong((*(*(a1 + 6) + 8) + 40), obj);
    v10 = obj;
    *a4 = 1;
  }
}

void sub_100AC1B38(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = -10.0;
  }

  [*(*(a1 + 32) + 40) _setTouchInsets:{-10.0, -10.0, -10.0, v2}];
  [*(*(a1 + 32) + 24) setActive:*(a1 + 48)];
  [*(*(a1 + 32) + 32) setActive:(*(a1 + 48) & 1) == 0];
  v3 = 1.0;
  if (!*(a1 + 48))
  {
    v3 = 0.0;
  }

  [*(*(a1 + 32) + 48) setAlpha:v3];
  [*(*(a1 + 32) + 48) setHidden:0];
  if (*(a1 + 48))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = -10.0;
  }

  [*(*(a1 + 32) + 80) _setTouchInsets:{-10.0, v4, -10.0, -10.0}];
  [*(*(a1 + 32) + 64) setActive:*(a1 + 48)];
  [*(*(a1 + 32) + 72) setActive:(*(a1 + 48) & 1) == 0];
  [*(a1 + 32) _setCornerRadiiWithTraitCollection:*(a1 + 40)];
  v5 = [*(a1 + 32) view];
  [v5 layoutIfNeeded];
}

void sub_100AC3088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&a19);
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100AC311C(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained delegate];
    [v5 lookAroundFloatingButtonsViewController:v4 didSelectToggleLabels:v6];
  }
}

void sub_100AC3194(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained delegate];
    [v5 lookAroundFloatingButtonsViewController:v4 didSelectImageryInfo:v6];
  }
}

void sub_100AC320C(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained delegate];
    [v5 lookAroundFloatingButtonsViewController:v4 didSelectReportAnIssue:v6];
  }
}

UIFont *__cdecl sub_100AC3A1C(id a1)
{
  v1 = +[MKFontManager sharedManager];
  v2 = [v1 boldBodyFont];
  v3 = [UIFont _maps_cappedFont:v2 withMaxPoint:24.0];

  return v3;
}

id sub_100AC3F84(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(*(a1 + 32) + 96) setAlpha:v1];
}

id sub_100AC56DC()
{
  if (qword_10195E438 != -1)
  {
    dispatch_once(&qword_10195E438, &stru_101637290);
  }

  v1 = qword_10195E430;

  return v1;
}

void sub_100AC5730(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionThermalStateMonitor");
  v2 = qword_10195E430;
  qword_10195E430 = v1;
}

id sub_100AC59E0()
{
  if (qword_10195E448 != -1)
  {
    dispatch_once(&qword_10195E448, &stru_1016372B0);
  }

  v1 = qword_10195E440;

  return v1;
}

void sub_100AC5A34(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFPuckAnimationTask");
  v2 = qword_10195E440;
  qword_10195E440 = v1;
}

id sub_100AC693C(uint64_t a1)
{
  v2 = [*(a1 + 32) loadingIndicator];
  [v2 stopAnimating];

  v3 = [*(a1 + 32) loadingIndicator];
  [v3 removeFromSuperview];

  v4 = *(a1 + 32);

  return [v4 setLoadingIndicator:0];
}

void sub_100AC6A18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v2 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  [*(a1 + 32) setLoadingIndicator:v2];

  v3 = +[UIColor grayColor];
  v4 = [*(a1 + 32) loadingIndicator];
  [v4 setColor:v3];

  [WeakRetained frame];
  v6 = v5 * 0.5;
  [WeakRetained frame];
  v8 = v7 * 0.5;
  v9 = [*(a1 + 32) loadingIndicator];
  [v9 setCenter:{v6, v8}];

  v10 = objc_loadWeakRetained((*(a1 + 32) + 16));
  v11 = [*(a1 + 32) loadingIndicator];
  [v10 addSubview:v11];

  v12 = [*(a1 + 32) loadingIndicator];
  [v12 startAnimating];
}

id sub_100AC6BCC(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100AC6C94;
  v3[3] = &unk_101661B18;
  v4 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100AC6CDC;
  v2[3] = &unk_101661738;
  v2[4] = v4;
  return [UIView animateWithDuration:v3 animations:v2 completion:0.3];
}

void sub_100AC6C94(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationBarView];
  [v1 setAlpha:0.0];
}

id sub_100AC6CDC(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationBarView];
  [v2 removeFromSuperview];

  v3 = *(a1 + 32);

  return [v3 setNavigationBarView:0];
}

id sub_100AC6DA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained safeAreaInsets];
  v4 = v3;

  v5 = objc_loadWeakRetained((*(a1 + 32) + 16));
  [v5 frame];
  v7 = v6;

  v8 = [[UIView alloc] initWithFrame:{0.0, 0.0, v4, v7}];
  [*(a1 + 32) setNavigationBarView:v8];

  v9 = [UIColor colorWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  v10 = [*(a1 + 32) navigationBarView];
  [v10 setBackgroundColor:v9];

  v11 = [*(a1 + 32) navigationBarView];
  [v11 setAlpha:0.0];

  v12 = objc_loadWeakRetained((*(a1 + 32) + 16));
  v13 = [*(a1 + 32) navigationBarView];
  [v12 addSubview:v13];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100AC6F3C;
  v15[3] = &unk_101661B18;
  v15[4] = *(a1 + 32);
  return [UIView animateWithDuration:v15 animations:0.3];
}

void sub_100AC6F3C(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationBarView];
  [v1 setAlpha:1.0];
}

id sub_100AC8440()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10195E460;
  v7 = qword_10195E460;
  if (!qword_10195E460)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100AC863C;
    v3[3] = &unk_1016608A8;
    v3[4] = &v4;
    sub_100AC863C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100AC8508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100AC8520(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 description];
    NSLog(@"Screen recording end failed with error: %@", v7);
  }

  else
  {
    v7 = +[GEOEventRecorderInstrumentation defaultInstrumentation];
    [v7 captureEventRecorderScreenVideo];
  }

  v8 = +[GEOEventRecorderInstrumentation defaultInstrumentation];
  v9 = [v8 getRecordedFilePaths];

  if ([*(a1 + 32) tapToRadarEnabled])
  {
    [*(a1 + 32) attachTapToRadarWithPaths:v9];
  }

  [*(a1 + 32) saveVideoFileToPhotoLibraryWithPaths:v9];
  +[GEOEventRecorderInstrumentation endInstrumentation];
  [*(a1 + 32) removeNavigationBarView];
  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }

  [*(a1 + 32) hideLoadingIndicator];
}

Class sub_100AC863C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10195E468)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100AC8790;
    v4[4] = &unk_1016611D0;
    v4[5] = v4;
    v5 = off_101637340;
    v6 = 0;
    qword_10195E468 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10195E468)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("RPScreenRecorder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_10195E460 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100AC8790()
{
  result = _sl_dlopen();
  qword_10195E468 = result;
  return result;
}

void sub_100AC88C0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v6 = [a2 description];
    NSLog(@"Screen recording start failed with error: %@", v6);
  }

  else
  {
    [*(a1 + 32) setRecording:1];
    [*(a1 + 32) addNavigationBarView];
    v3 = +[GEOEventRecorderInstrumentation initializeDefaultInstrumentation];
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))();
    }

    v5 = *(a1 + 32);

    [v5 hideLoadingIndicator];
  }
}

void sub_100AC8BA4(id a1)
{
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, "sendEvent:");
  v3 = objc_opt_class();
  v4 = class_getInstanceMethod(v3, "__mapsEventRecorder_sendEvent:");

  method_exchangeImplementations(InstanceMethod, v4);
}

uint64_t sub_100ACA97C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) layoutManager];
  v5 = [v3 rangeInElement];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100ACAA64;
  v8[3] = &unk_101637378;
  v9 = *(a1 + 40);
  v10 = v3;
  v6 = v3;
  [v4 enumerateTextSegmentsInRange:v5 type:0 options:0 usingBlock:v8];

  return 1;
}

uint64_t sub_100ACAA64(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [NSTextLayoutFragment alloc];
  v6 = [*(a1 + 40) textElement];
  v7 = [v5 initWithTextElement:v6 range:v4];

  [v3 addObject:v7];
  return 1;
}

void sub_100ACAD38(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  [v4 UTF8String];
  ct_green_tea_logger_create_static();
  v6 = getCTGreenTeaOsLogHandle();
  if (v6)
  {
    [v5 UTF8String];
    os_log_with_args();
  }
}

void sub_100ACADD8(id a1)
{
  v8 = +[NSBundle mainBundle];
  v1 = [v8 bundleIdentifier];
  v2 = qword_10195E470;
  qword_10195E470 = v1;

  v3 = [v8 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
  v4 = qword_10195E478;
  qword_10195E478 = v3;

  v5 = +[NSProcessInfo processInfo];
  v6 = [v5 processName];
  v7 = qword_10195E480;
  qword_10195E480 = v6;
}

UIFont *__cdecl sub_100ACB228(id a1)
{
  v1 = +[UIFont system15];
  v2 = [v1 _mapkit_fontByAddingFeaturesForTimeDisplay];

  return v2;
}

void sub_100ACB4E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (!a4 && WeakRetained)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100ACB59C;
    v9[3] = &unk_101661A90;
    v10 = v6;
    v11 = v8;
    dispatch_async(&_dispatch_main_q, v9);
  }
}

void sub_100ACB59C(uint64_t a1)
{
  v2 = [[UIImage alloc] initWithData:*(a1 + 32)];
  if (v2)
  {
    v7 = v2;
    v3 = [*(a1 + 40) iconProcessingHandler];

    if (v3)
    {
      v4 = [*(a1 + 40) iconProcessingHandler];
      v5 = (v4)[2](v4, v7);

      v6 = v5;
    }

    else
    {
      v6 = v7;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;
  [*(a1 + 40) setArtwork:v6];
}

id sub_100ACEB80(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 216);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100ACEC44;
  v5[3] = &unk_10165F7B8;
  v5[4] = v2;
  return [v3 applyToCollection:v1 completion:v5];
}

uint64_t sub_100ACEBFC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setName:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100ACEC44(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"[Collection] Error" value:@"localized string not found" table:0];
    v6 = [v3 localizedDescription];

    v10 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"[Collection] Ok" value:@"localized string not found" table:0];
    v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:&stru_101637440];

    [v10 addAction:v9];
    [*(a1 + 32) presentViewController:v10 animated:1 completion:0];
  }
}

id sub_100ACF1B0()
{
  if (qword_10195E4B8 != -1)
  {
    dispatch_once(&qword_10195E4B8, &stru_1016374A0);
  }

  v1 = qword_10195E4B0;

  return v1;
}

void sub_100ACF204(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateTintAndIconLabel];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 updateDebugText];
}

void sub_100ACF264(id a1)
{
  v1 = os_log_create("com.apple.Maps", "ThermalStateFloatingDebugViewController");
  v2 = qword_10195E4B0;
  qword_10195E4B0 = v1;
}

void sub_100ACF598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100ACF5BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained composeTTR];
}

void sub_100ACF764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100ACF788(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateDebugText];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 startDebugInfoRefreshTimer];
}

void sub_100ACFE8C(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195E4A8;
  qword_10195E4A8 = v1;

  [qword_10195E4A8 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSSSSZZZ"];
  v3 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_10195E4A8 setLocale:v3];
}

void sub_100AD0890(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195E490;
  qword_10195E490 = v1;
}

void sub_100AD19C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100AD19EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 routingAppSelectionCellRoutePressed:v3];
}

void sub_100AD1D18(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) appProxy];
  v5 = [v4 bundleIdentifier];
  LODWORD(v3) = [v3 isEqualToString:v5];

  if (v3)
  {
    v6 = *(a1 + 40);
    v7 = [v6 appProxy];
    v8 = [v6 _lockupWithAppProxy:v7 appIcon:v11];
    v9 = *(a1 + 40);
    v10 = *(v9 + 16);
    *(v9 + 16) = v8;

    [*(*(a1 + 40) + 64) setLockup:*(*(a1 + 40) + 16)];
  }
}

uint64_t sub_100AD2794(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) containsObject:v5];
  if (v7 == [*(a1 + 32) containsObject:v6])
  {
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) indexOfObject:v5]);
    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) indexOfObject:v6]);
    v8 = [v9 compare:v10];
  }

  else if (v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

void sub_100AD28F8(id a1)
{
  v69[0] = @"MKDirectionsTransportTypeCar";
  v68 = +[NSBundle mainBundle];
  v67 = [v68 localizedStringForKey:@"RoutingMode.Car" value:@"localized string not found" table:0];
  v70[0] = v67;
  v69[1] = @"MKDirectionsTransportTypeBus";
  v66 = +[NSBundle mainBundle];
  v65 = [v66 localizedStringForKey:@"RoutingMode.Bus" value:@"localized string not found" table:0];
  v70[1] = v65;
  v69[2] = @"MKDirectionsTransportTypeTrain";
  v64 = +[NSBundle mainBundle];
  v63 = [v64 localizedStringForKey:@"RoutingMode.Train" value:@"localized string not found" table:0];
  v70[2] = v63;
  v69[3] = @"MKDirectionsTransportTypeSubway";
  v62 = +[NSBundle mainBundle];
  v61 = [v62 localizedStringForKey:@"RoutingMode.Subway" value:@"localized string not found" table:0];
  v70[3] = v61;
  v69[4] = @"MKDirectionsTransportTypeStreetCar";
  v60 = +[NSBundle mainBundle];
  v59 = [v60 localizedStringForKey:@"RoutingMode.StreetCar" value:@"localized string not found" table:0];
  v70[4] = v59;
  v69[5] = @"MKDirectionsTransportTypePlane";
  v58 = +[NSBundle mainBundle];
  v57 = [v58 localizedStringForKey:@"RoutingMode.Plane" value:@"localized string not found" table:0];
  v70[5] = v57;
  v69[6] = @"MKDirectionsTransportTypeBike";
  v56 = +[NSBundle mainBundle];
  v55 = [v56 localizedStringForKey:@"RoutingMode.Bike" value:@"localized string not found" table:0];
  v70[6] = v55;
  v69[7] = @"MKDirectionsTransportTypeFerry";
  v54 = +[NSBundle mainBundle];
  v53 = [v54 localizedStringForKey:@"RoutingMode.Ferry" value:@"localized string not found" table:0];
  v70[7] = v53;
  v69[8] = @"MKDirectionsTransportTypeTaxi";
  v52 = +[NSBundle mainBundle];
  v51 = [v52 localizedStringForKey:@"RoutingMode.Taxi" value:@"localized string not found" table:0];
  v70[8] = v51;
  v69[9] = @"MKDirectionsTransportTypePedestrian";
  v50 = +[NSBundle mainBundle];
  v49 = [v50 localizedStringForKey:@"RoutingMode.Pedestrian" value:@"localized string not found" table:0];
  v70[9] = v49;
  v69[10] = @"MKDirectionsTransportTypeOther";
  v48 = +[NSBundle mainBundle];
  v47 = [v48 localizedStringForKey:@"RoutingMode.Other" value:@"localized string not found" table:0];
  v70[10] = v47;
  v69[11] = @"MKDirectionsModeCar";
  v46 = +[NSBundle mainBundle];
  v45 = [v46 localizedStringForKey:@"RoutingMode.Car" value:@"localized string not found" table:0];
  v70[11] = v45;
  v69[12] = @"MKDirectionsModeBus";
  v44 = +[NSBundle mainBundle];
  v43 = [v44 localizedStringForKey:@"RoutingMode.Bus" value:@"localized string not found" table:0];
  v70[12] = v43;
  v69[13] = @"MKDirectionsModeTrain";
  v42 = +[NSBundle mainBundle];
  v41 = [v42 localizedStringForKey:@"RoutingMode.Train" value:@"localized string not found" table:0];
  v70[13] = v41;
  v69[14] = @"MKDirectionsModeSubway";
  v40 = +[NSBundle mainBundle];
  v39 = [v40 localizedStringForKey:@"RoutingMode.Subway" value:@"localized string not found" table:0];
  v70[14] = v39;
  v69[15] = @"MKDirectionsModeStreetCar";
  v38 = +[NSBundle mainBundle];
  v37 = [v38 localizedStringForKey:@"RoutingMode.StreetCar" value:@"localized string not found" table:0];
  v70[15] = v37;
  v69[16] = @"MKDirectionsModePlane";
  v36 = +[NSBundle mainBundle];
  v35 = [v36 localizedStringForKey:@"RoutingMode.Plane" value:@"localized string not found" table:0];
  v70[16] = v35;
  v69[17] = @"MKDirectionsModeBike";
  v34 = +[NSBundle mainBundle];
  v33 = [v34 localizedStringForKey:@"RoutingMode.Bike" value:@"localized string not found" table:0];
  v70[17] = v33;
  v69[18] = @"MKDirectionsModeFerry";
  v32 = +[NSBundle mainBundle];
  v31 = [v32 localizedStringForKey:@"RoutingMode.Ferry" value:@"localized string not found" table:0];
  v70[18] = v31;
  v69[19] = @"MKDirectionsModeTaxi";
  v30 = +[NSBundle mainBundle];
  v29 = [v30 localizedStringForKey:@"RoutingMode.Taxi" value:@"localized string not found" table:0];
  v70[19] = v29;
  v69[20] = @"MKDirectionsModePedestrian";
  v28 = +[NSBundle mainBundle];
  v27 = [v28 localizedStringForKey:@"RoutingMode.Pedestrian" value:@"localized string not found" table:0];
  v70[20] = v27;
  v69[21] = @"MKDirectionsModeOther";
  v26 = +[NSBundle mainBundle];
  v25 = [v26 localizedStringForKey:@"RoutingMode.Other" value:@"localized string not found" table:0];
  v70[21] = v25;
  v69[22] = @"car";
  v24 = +[NSBundle mainBundle];
  v23 = [v24 localizedStringForKey:@"RoutingMode.Car" value:@"localized string not found" table:0];
  v70[22] = v23;
  v69[23] = @"bus";
  v22 = +[NSBundle mainBundle];
  v21 = [v22 localizedStringForKey:@"RoutingMode.Bus" value:@"localized string not found" table:0];
  v70[23] = v21;
  v69[24] = @"train";
  v20 = +[NSBundle mainBundle];
  v19 = [v20 localizedStringForKey:@"RoutingMode.Train" value:@"localized string not found" table:0];
  v70[24] = v19;
  v69[25] = @"subway";
  v18 = +[NSBundle mainBundle];
  v17 = [v18 localizedStringForKey:@"RoutingMode.Subway" value:@"localized string not found" table:0];
  v70[25] = v17;
  v69[26] = @"streetCar";
  v16 = +[NSBundle mainBundle];
  v15 = [v16 localizedStringForKey:@"RoutingMode.StreetCar" value:@"localized string not found" table:0];
  v70[26] = v15;
  v69[27] = @"plane";
  v14 = +[NSBundle mainBundle];
  v13 = [v14 localizedStringForKey:@"RoutingMode.Plane" value:@"localized string not found" table:0];
  v70[27] = v13;
  v69[28] = @"bike";
  v1 = +[NSBundle mainBundle];
  v2 = [v1 localizedStringForKey:@"RoutingMode.Bike" value:@"localized string not found" table:0];
  v70[28] = v2;
  v69[29] = @"ferry";
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"RoutingMode.Ferry" value:@"localized string not found" table:0];
  v70[29] = v4;
  v69[30] = @"taxi";
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"RoutingMode.Taxi" value:@"localized string not found" table:0];
  v70[30] = v6;
  v69[31] = @"pedestrian";
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"RoutingMode.Pedestrian" value:@"localized string not found" table:0];
  v70[31] = v8;
  v69[32] = @"other";
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"RoutingMode.Other" value:@"localized string not found" table:0];
  v70[32] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:33];
  v12 = qword_10195E4D8;
  qword_10195E4D8 = v11;
}

void sub_100AD3388(id a1)
{
  v1 = [[ASCLockupViewGroup alloc] initWithName:@"RoutingApps"];
  v2 = qword_10195E4C0;
  qword_10195E4C0 = v1;
}

uint64_t sub_100AD69C0(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

id sub_100AD6E38(int a1)
{
  v1 = sub_100AD6E90(a1);
  v2 = [v1 componentsJoinedByString:{@", "}];

  return v2;
}

id sub_100AD6E90(int a1)
{
  v2 = objc_opt_new();
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"gasoline"];
    if ((a1 & 0x100) == 0)
    {
LABEL_3:
      if ((a1 & 0x10000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a1 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"diesel"];
  if ((a1 & 0x10000) == 0)
  {
LABEL_4:
    if ((a1 & 0x1000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v3 addObject:@"electric"];
  if ((a1 & 0x1000000) != 0)
  {
LABEL_5:
    [v3 addObject:@"cng"];
  }

LABEL_6:

  return v3;
}

void sub_100AD7450(id a1)
{
  v7[0] = &off_1016E8558;
  v7[1] = &off_1016E8570;
  v8[0] = EAVehicleInfoRangeGasolineKey;
  v8[1] = EAVehicleInfoRangeDieselKey;
  v7[2] = &off_1016E8588;
  v7[3] = &off_1016E85A0;
  v8[2] = EAVehicleInfoRangeElectricKey;
  v8[3] = EAVehicleInfoRangeCNGKey;
  v1 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v2 = qword_10195E518;
  qword_10195E518 = v1;

  v5[0] = &off_1016E8558;
  v5[1] = &off_1016E8570;
  v6[0] = EAVehicleInfoHasLowDistanceRangeGasolineKey;
  v6[1] = EAVehicleInfoHasLowDistanceRangeDieselKey;
  v5[2] = &off_1016E8588;
  v5[3] = &off_1016E85A0;
  v6[2] = EAVehicleInfoHasLowDistanceRangeElectricKey;
  v6[3] = EAVehicleInfoHasLowDistanceRangeCNGKey;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:4];
  v4 = qword_10195E520;
  qword_10195E520 = v3;
}

id sub_100AD7D8C()
{
  if (qword_10195E578 != -1)
  {
    dispatch_once(&qword_10195E578, &stru_101637630);
  }

  v1 = qword_10195E570;

  return v1;
}

void sub_100AD7DE0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarExternalAccessory");
  v2 = qword_10195E570;
  qword_10195E570 = v1;
}

uint64_t sub_100AD80A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  GEOConfigGetPropertiesForKey();

  return 1;
}

void sub_100AD8144(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];

  if (!v3 && _GEOConfigHasValue())
  {
    v4 = [NSNumber numberWithInteger:GEOConfigGetInteger()];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
  }
}

void sub_100AD84B0(id a1)
{
  v1 = qword_10195E528;
  qword_10195E528 = &off_1016ED430;
}

id sub_100AD94AC(void *a1)
{
  v1 = qword_10195E508;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_10195E508, &stru_101637570);
  }

  v3 = [qword_10195E500 objectForKeyedSubscript:v2];

  v4 = [v3 longLongValue];
  return v4;
}

void sub_100AD9528(id a1)
{
  v3[0] = @"gasoline";
  v3[1] = @"diesel";
  v4[0] = &off_1016E8558;
  v4[1] = &off_1016E8570;
  v3[2] = @"electric";
  v3[3] = @"cng";
  v4[2] = &off_1016E8588;
  v4[3] = &off_1016E85A0;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  v2 = qword_10195E500;
  qword_10195E500 = v1;
}

void sub_100AD95EC(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195E568;
  qword_10195E568 = v1;
}

void sub_100AD9884(id a1)
{
  v1 = objc_opt_new();
  v13 = sub_100AD6E90(16843009);
  v25[0] = @"com.apple.maps.FakeExternalAccessory.engine.type";
  v25[1] = @"com.apple.maps.FakeExternalAccessory.engine.low";
  v25[2] = @"com.apple.maps.FakeExternalAccessory.engine.full";
  [NSArray arrayWithObjects:v25 count:3];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v22 = 0u;
  v14 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v14)
  {
    v12 = *v20;
    do
    {
      v2 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v19 + 1) + 8 * v2);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v4 = v13;
        v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v16;
          do
          {
            v8 = 0;
            do
            {
              if (*v16 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = [NSString stringWithFormat:@"%@.%@", v3, *(*(&v15 + 1) + 8 * v8)];
              [v1 addObject:v9];

              v8 = v8 + 1;
            }

            while (v6 != v8);
            v6 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v6);
        }

        v2 = v2 + 1;
      }

      while (v2 != v14);
      v14 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v14);
  }

  v10 = qword_10195E550;
  qword_10195E550 = v1;
}

void sub_100ADA378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak(&a30);
  objc_destroyWeak(&a35);
  objc_destroyWeak(&a40);
  objc_destroyWeak((v41 - 144));
  _Unwind_Resume(a1);
}

void sub_100ADA420(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessoryDidConnect:v3];
}

void sub_100ADA47C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessoryDidUpdateVehicle:v3];
}

void sub_100ADA4D8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessoryDidUpdate:v3];
}

void sub_100ADA534(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessoryDidDisconnect:v3];
}

void sub_100ADA6FC(id a1)
{
  v1 = [MapsExternalAccessory alloc];
  v2 = [(MapsExternalAccessory *)v1 initWithPrivateQueue:byte_10195E548];
  v3 = qword_10195E538;
  qword_10195E538 = v2;
}

id sub_100ADA744()
{
  v0 = +[NSBundle mainBundle];
  v1 = [v0 localizedStringForKey:@"CarPlay_External_Maps" value:@"localized string not found" table:0];

  return v1;
}

void sub_100ADAC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100ADACA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v36 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_26;
  }

  v32 = WeakRetained;
  v33 = v6;
  if (v6 || (v9 = [v5 count], v9 != objc_msgSend(*(v36 + 32), "count")))
  {
    v10 = sub_100026868();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = [v5 count];
      v16 = [*(v36 + 32) count];
      *buf = 67109634;
      v48 = v15;
      v49 = 1024;
      v50 = v16;
      v51 = 2112;
      v52 = v6;
      v11 = "Only refined %d map items of %d. Error: %@";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 24;
      goto LABEL_8;
    }
  }

  else
  {
    v10 = sub_100026868();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v48 = [v5 count];
      v11 = "Refined map items for %d RAPs";
      v12 = v10;
      v13 = OS_LOG_TYPE_INFO;
      v14 = 8;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, buf, v14);
    }
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v34 = v5;
  obj = v5;
  v17 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v42;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v42 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v41 + 1) + 8 * i);
        v22 = *(v36 + 40);
        v23 = [v21 _identifier];
        v24 = [v22 objectForKeyedSubscript:v23];

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v25 = v24;
        v26 = [v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v38;
          do
          {
            for (j = 0; j != v27; j = j + 1)
            {
              if (*v38 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v37 + 1) + 8 * j);
              v31 = [v30 mapItem];

              if (!v31)
              {
                [v30 setMapItem:v21];
              }
            }

            v27 = [v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v27);
        }
      }

      v18 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v18);
  }

  v8 = v32;
  [v32[1] reportHistoryManagerDidUpdate:v32];
  v6 = v33;
  v5 = v34;
LABEL_26:
}

BOOL sub_100ADB484(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 countryCodeUponCreation];
  if ([v4 _shouldShowReportOrIncidentCreatedInCountry:v5])
  {
    v6 = a1[4];
    v7 = [v3 dateOfReportCreation];
    v8 = [v6 _daysBetweenDates:v7 currentDate:a1[5]] < a1[6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_100ADB524(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 countryCodeUponCreation];
  v4 = [v2 _shouldShowReportOrIncidentCreatedInCountry:v3];

  return v4;
}

void sub_100ADB7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100ADB7DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100ADB7F4(uint64_t a1, uint64_t a2)
{
  v3 = [NSArray arrayWithArray:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void sub_100ADB850(uint64_t a1, uint64_t a2)
{
  v3 = [NSArray arrayWithArray:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void sub_100ADB8AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _updateReports:*(*(*(a1 + 32) + 8) + 40) incidents:*(*(*(a1 + 40) + 8) + 40)];
    WeakRetained = v3;
  }
}

void sub_100ADBD18(id a1)
{
  v1 = objc_alloc_init(UserProfileReportHistoryManager);
  v2 = qword_10195E580;
  qword_10195E580 = v1;
}

void sub_100ADBFDC(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_10000BDA4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error deleting collection: %@", &v4, 0xCu);
    }
  }
}

void sub_100ADC09C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_10000BDA4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error saving changes in editor popover: %@", &v4, 0xCu);
    }
  }
}

void sub_100ADC55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100ADC598(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (a2)
    {
      [WeakRetained _deleteCollection];
    }

    [v4 _finish];
    WeakRetained = v4;
  }
}

void sub_100ADCE24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  [v4 deleteWithObjects:v3 error:0];

  v5 = objc_alloc_init(MSHistoryPlaceItem);
  v6 = [GEOMapItemStorage mapItemStorageForGEOMapItem:*(a1 + 32)];
  [v5 setMapItemStorage:v6];

  v7 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v9 = v5;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [v7 saveWithObjects:v8 error:0];
}

void sub_100ADD0BC(id *a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100ADD194;
  v4[3] = &unk_101660380;
  v5 = a2;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

uint64_t sub_100ADD194(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        v9 = v7;
        v10 = [v9 mapItemStorage];
        v11 = v10;
        if (v8)
        {
          v12 = v10 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
        }

        else
        {
          v13 = [v9 mapItemStorage];
          IsEqualToMapItemForPurpose = GEOMapItemIsEqualToMapItemForPurpose();

          if (IsEqualToMapItemForPurpose)
          {
            [*(a1 + 48) addObject:v9];
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  return (*(*(a1 + 56) + 16))();
}

uint64_t sub_100ADE0F4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100ADE10C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100ADE358(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100ADE370(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100ADE53C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100ADE720(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100ADE7CC;
  v6[3] = &unk_101661090;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

uint64_t sub_100ADE7CC(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_100ADE8C4(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100ADE988;
  block[3] = &unk_1016605F8;
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100ADE988(id *a1)
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      v6 = 0;
      do
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v21 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          v9 = [v8 curatedCollectionIdentifier];
          v10 = [a1[5] collectionIdentifier];
          v11 = [v10 muid];

          if (v9 == v11)
          {
            v12 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
            v26 = v8;
            v13 = [NSArray arrayWithObjects:&v26 count:1];
            [v12 deleteWithObjects:v13 error:0];
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v4);
  }

  v14 = objc_alloc_init(MSHistoryCuratedCollection);
  v15 = [a1[5] collectionIdentifier];
  [v14 setCuratedCollectionIdentifier:{objc_msgSend(v15, "muid")}];

  v16 = [a1[5] collectionIdentifier];
  [v14 setResultProviderIdentifier:{objc_msgSend(v16, "resultProviderID")}];

  v17 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v25 = v14;
  v18 = [NSArray arrayWithObjects:&v25 count:1];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100ADEC20;
  v19[3] = &unk_1016610B8;
  v20 = a1[6];
  [v17 saveWithObjects:v18 completionHandler:v19];
}

void sub_100ADEC20(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100ADECCC;
  v6[3] = &unk_101661090;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

uint64_t sub_100ADECCC(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_100ADEDBC(uint64_t a1, void *a2)
{
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v47;
    v40 = *v47;
    do
    {
      v6 = 0;
      v41 = v4;
      do
      {
        if (*v47 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v46 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          v9 = a1;
          v10 = [*(a1 + 32) query];
          v11 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
          v12 = [v10 stringByTrimmingCharactersInSet:v11];
          v13 = v12;
          if (v12)
          {
            v14 = v12;
          }

          else
          {
            v14 = &stru_1016631F0;
          }

          v15 = v14;

          v16 = [v8 query];
          v17 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
          v18 = [v16 stringByTrimmingCharactersInSet:v17];
          v19 = v18;
          if (v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = &stru_1016631F0;
          }

          v21 = v20;

          v22 = [(__CFString *)v15 localizedCaseInsensitiveCompare:v21];
          if (!v22)
          {
            v23 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
            v57 = v8;
            v24 = [NSArray arrayWithObjects:&v57 count:1];
            [v23 deleteWithObjects:v24 error:0];
          }

          a1 = v9;
          v5 = v40;
          v4 = v41;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v4);
  }

  v25 = [*(a1 + 32) query];
  v26 = [v25 length];

  if (v26)
  {
    v27 = objc_alloc_init(MSHistorySearchItem);
    v28 = [*(a1 + 32) query];
    [v27 setQuery:v28];

    v29 = [*(a1 + 32) mapRegion];
    v30 = [v29 data];
    [v27 setGeoMapRegion:v30];

    v31 = [*(a1 + 32) languageCode];
    [v27 setLanguage:v31];

    v32 = [*(a1 + 32) locationDisplayString];
    [v27 setLocationDisplay:v32];

    v33 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v50 = v27;
    v34 = [NSArray arrayWithObjects:&v50 count:1];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100ADF220;
    v43[3] = &unk_10165E240;
    v35 = *(a1 + 40);
    v44 = v27;
    v45 = v35;
    v36 = v27;
    [v33 saveWithObjects:v34 completionHandler:v43];
  }

  else
  {
    v36 = sub_100067540();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = [*(a1 + 32) query];
      v38 = [*(a1 + 32) locationDisplayString];
      v39 = [*(a1 + 32) languageCode];
      *buf = 138412802;
      v52 = v37;
      v53 = 2112;
      v54 = v38;
      v55 = 2112;
      v56 = v39;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Not saving to history because the search title is empty. The Search Details -> %@, Location: %@, Language: %@", buf, 0x20u);
    }
  }
}

void sub_100ADF220(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100ADF2E4;
  block[3] = &unk_1016605F8;
  v8 = *(a1 + 40);
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100ADF2E4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) storageIdentifier];
    (*(v1 + 16))(v1, v2, v3);
  }
}

void sub_100ADF42C(uint64_t a1, void *a2)
{
  v3 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          v10 = [v9 muid];
          if (v10 == [*(a1 + 32) muid])
          {
            v11 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
            v25 = v9;
            v12 = [NSArray arrayWithObjects:&v25 count:1];
            [v11 deleteWithObjects:v12 error:0];
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v5);
  }

  v13 = objc_alloc_init(MSHistoryTransitItem);
  v14 = [[MSPTransitStorageLineItem alloc] initWithLineItem:*(a1 + 32)];
  v15 = [v14 data];
  [v13 setTransitLineStorage:v15];

  [v13 setMuid:{objc_msgSend(*(a1 + 32), "muid")}];
  v16 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v24 = v13;
  v17 = [NSArray arrayWithObjects:&v24 count:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100ADF6AC;
  v18[3] = &unk_1016610B8;
  v19 = *(a1 + 40);
  [v16 saveWithObjects:v17 completionHandler:v18];
}

void sub_100ADF6AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100ADF758;
  v6[3] = &unk_101661090;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

uint64_t sub_100ADF758(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_100ADF850(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100ADF924;
  v5[3] = &unk_10165D300;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v4 deleteWithObjects:v3 completionHandler:v5];
}

void sub_100ADF924(uint64_t a1)
{
  v2 = objc_alloc_init(MSHistoryPlaceItem);
  v3 = [*(a1 + 32) _geoMapItem];
  v4 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v3];
  [v2 setMapItemStorage:v4];

  [v2 setSupersededSearchId:*(a1 + 40)];
  v5 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v7 = v2;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v5 saveWithObjects:v6 completionHandler:&stru_101637848];
}

void sub_100ADFAE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  [v4 deleteWithObjects:v3 error:0];

  v5 = objc_alloc_init(MSHistoryDirectionsItem);
  v6 = objc_alloc_init(GEOStorageRouteRequestStorage);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 addWaypoints:{*(*(&v14 + 1) + 8 * v11), v14}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }

  [v6 setTransportType:*(a1 + 40)];
  [v5 setRouteRequestStorage:v6];
  v12 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v18 = v5;
  v13 = [NSArray arrayWithObjects:&v18 count:1];
  [v12 saveWithObjects:v13 error:0];
}

void sub_100ADFD58(uint64_t a1, void *a2)
{
  v2 = a2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v36 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v26;
    v7 = MUPlacePhotoHeaderAttributionFormatter_ptr;
    v8 = &_mh_execute_header;
    v9 = "Setting item to not be interrupted: %@";
    *&v4 = 138412802;
    v22 = v4;
    v23 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v11 setNavigationInterrupted:{0, v22}];
          v12 = sub_100035E6C();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v31 = v11;
            _os_log_impl(v8, v12, OS_LOG_TYPE_INFO, v9, buf, 0xCu);
          }

          v13 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
          v29 = v11;
          v14 = [NSArray arrayWithObjects:&v29 count:1];
          [v13 saveWithObjects:v14 completionHandler:&stru_101637828];
        }

        else
        {
          v13 = sub_100035E6C();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [*(a1 + 32) name];
            v15 = v7;
            v16 = v2;
            v17 = v9;
            v19 = v18 = v8;
            v20 = [*(a1 + 32) uniqueRouteID];
            *buf = v22;
            v31 = v11;
            v32 = 2112;
            v33 = v19;
            v34 = 2112;
            v35 = v20;
            _os_log_impl(v18, v13, OS_LOG_TYPE_ERROR, "Unhandled history item: %@ for route: %@ (%@)", buf, 0x20u);

            v8 = v18;
            v9 = v17;
            v2 = v16;
            v7 = v15;
            v6 = v23;
          }
        }

        v10 = v10 + 1;
      }

      while (v5 != v10);
      v21 = [v2 countByEnumeratingWithState:&v25 objects:v36 count:16];
      v5 = v21;
    }

    while (v21);
  }
}

void sub_100AE0004(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100035E6C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Will not mark route as complete because of error: %@", &v4, 0xCu);
    }
  }
}

uint64_t sub_100AE05D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100AE05EC(uint64_t a1, void *a2)
{
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v38 objects:v49 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v39;
    *&v4 = 138412290;
    v35 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v39 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v38 + 1) + 8 * i);
        v9 = [v8 isEqual:{*(a1 + 32), v35}];
        v10 = sub_100035E6C();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
        if (v9)
        {
          if (v11)
          {
            v12 = *(a1 + 32);
            *buf = 138412546;
            v45 = v8;
            v46 = 2112;
            v47 = v12;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Not deleting a duplicate item: %@ matching directionItem:%@", buf, 0x16u);
          }
        }

        else
        {
          if (v11)
          {
            *buf = v35;
            v45 = v8;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Found a duplicate item: %@", buf, 0xCu);
          }

          if ([*(*(*(a1 + 64) + 8) + 40) isEqual:v8])
          {
            v13 = *(*(a1 + 64) + 8);
            v14 = *(v13 + 40);
            *(v13 + 40) = 0;

            v15 = sub_100035E6C();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Already deleting the oldDirectionItem so we don't need to clean it up later", buf, 2u);
            }
          }

          v10 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
          v48 = v8;
          v16 = [NSArray arrayWithObjects:&v48 count:1];
          v37[0] = _NSConcreteStackBlock;
          v37[1] = 3221225472;
          v37[2] = sub_100AE0C1C;
          v37[3] = &unk_10165F7B8;
          v37[4] = v8;
          [v10 deleteWithObjects:v16 completionHandler:v37];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v38 objects:v49 count:16];
    }

    while (v5);
  }

  v17 = sub_100035E6C();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = *(a1 + 32);
    *buf = 138412290;
    v45 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Adding editBlock for directionItem: %@", buf, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    v19 = objc_opt_new();
    [v19 addWaypoints:*(a1 + 40)];
    [v19 addWaypoints:*(a1 + 48)];
    [v19 setTransportType:{objc_msgSend(*(a1 + 56), "transportType")}];
    v20 = [[GEOURLRouteHandle alloc] initWithRoute:*(a1 + 56)];
    [v19 setRouteHandle:v20];

    v21 = [*(a1 + 48) route];
    v22 = [v21 persistentData];
    [v19 setDestinationRouteData:v22];

    v23 = [*(a1 + 56) transportType];
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = [*(a1 + 56) routeAttributes];
        v25 = [v24 walkingOptions];
        [v19 setWalkingOptions:v25];
        goto LABEL_30;
      }

      if (v23 == 3)
      {
        v24 = [*(a1 + 56) routeAttributes];
        v25 = [v24 cyclingOptions];
        [v19 setCyclingOptions:v25];
        goto LABEL_30;
      }
    }

    else
    {
      if (!v23)
      {
        v24 = [*(a1 + 56) routeAttributes];
        v25 = [v24 automobileOptions];
        [v19 setAutomobileOptions:v25];
        goto LABEL_30;
      }

      if (v23 == 1)
      {
        v24 = [*(a1 + 56) routeAttributes];
        v25 = [v24 transitOptions];
        [v19 setTransitOptions:v25];
LABEL_30:
      }
    }

    [*(a1 + 32) setRouteRequestStorage:v19];
  }

  v26 = sub_100035E6C();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = *(a1 + 32);
    *buf = 138412290;
    v45 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Commiting editBlock for directionItem: %@", buf, 0xCu);
  }

  v28 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v43 = *(a1 + 32);
  v29 = [NSArray arrayWithObjects:&v43 count:1];
  [v28 saveWithObjects:v29 completionHandler:&stru_1016377C0];

  v30 = sub_100035E6C();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = *(*(*(a1 + 64) + 8) + 40);
    *buf = 138412290;
    v45 = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Deleting oldDirectionItem: %@", buf, 0xCu);
  }

  v32 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v33 = v32;
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v42 = *(*(*(a1 + 64) + 8) + 40);
    v34 = [NSArray arrayWithObjects:&v42 count:1];
    [v33 deleteWithObjects:v34 completionHandler:&stru_1016377E0];
  }

  else
  {
    [v32 deleteWithObjects:&__NSArray0__struct completionHandler:&stru_1016377E0];
  }
}

void sub_100AE0C1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_100035E6C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error deleting item: %@", &v5, 0xCu);
    }
  }
}

void sub_100AE0CC8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100035E6C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed saveRoute: could not delete old direction item: %@", &v4, 0xCu);
    }
  }
}

void sub_100AE0D78(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100035E6C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed saveRoute: could not commit edits to new direction item: %@", &v4, 0xCu);
    }
  }
}

void sub_100AE1598(uint64_t a1, void *a2)
{
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v62 objects:v75 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v63;
    *&v4 = 138412802;
    v55 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v63 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v62 + 1) + 8 * i);
        v9 = [v8 isEqual:{*(a1 + 32), v55}];
        v10 = sub_100035E6C();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
        if (v9)
        {
          if (v11)
          {
            v12 = *(a1 + 32);
            *buf = 138412546;
            v70 = v8;
            v71 = 2112;
            v72 = v12;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Not deleting a duplicate item: %@ matching directionItem:%@", buf, 0x16u);
          }
        }

        else
        {
          if (v11)
          {
            v13 = [*(a1 + 40) uniqueRouteID];
            v14 = [*(a1 + 40) name];
            *buf = v55;
            v70 = v13;
            v71 = 2112;
            v72 = v14;
            v73 = 2112;
            v74 = v8;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Found a duplicate matching routeID (%@ : %@); Deleting item: %@", buf, 0x20u);
          }

          if ([*(*(*(a1 + 88) + 8) + 40) isEqual:v8])
          {
            v15 = *(*(a1 + 88) + 8);
            v16 = *(v15 + 40);
            *(v15 + 40) = 0;

            v17 = sub_100035E6C();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Already deleting the oldDirectionItem so we don't need to clean it up later", buf, 2u);
            }
          }

          v18 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
          v68 = v8;
          v19 = [NSArray arrayWithObjects:&v68 count:1];
          v61[0] = _NSConcreteStackBlock;
          v61[1] = 3221225472;
          v61[2] = sub_100AE1EA8;
          v61[3] = &unk_10165F7B8;
          v61[4] = v8;
          [v18 deleteWithObjects:v19 completionHandler:v61];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v62 objects:v75 count:16];
    }

    while (v5);
  }

  v20 = sub_100035E6C();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = *(a1 + 32);
    *buf = 138412290;
    v70 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Adding editBlock for directionItem: %@", buf, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    v22 = objc_alloc_init(GEOStorageRouteRequestStorage);
    v23 = *(a1 + 48);
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_100AE1F54;
    v59[3] = &unk_101637758;
    v24 = v22;
    v60 = v24;
    [v23 enumerateObjectsUsingBlock:v59];
    [v24 setTransportType:{objc_msgSend(*(a1 + 40), "transportType")}];
    v25 = [[GEOURLRouteHandle alloc] initWithRoute:*(a1 + 40)];
    [v24 setRouteHandle:v25];

    v26 = [v24 waypoints];
    v27 = [v26 lastObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [v27 route];
      v29 = [v28 persistentData];
      [v24 setDestinationRouteData:v29];
    }

    v30 = [*(a1 + 40) transportType];
    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v31 = [*(a1 + 40) routeAttributes];
        v32 = [v31 walkingOptions];
        [v24 setWalkingOptions:v32];
        goto LABEL_33;
      }

      if (v30 == 3)
      {
        v31 = [*(a1 + 40) routeAttributes];
        v32 = [v31 cyclingOptions];
        [v24 setCyclingOptions:v32];
        goto LABEL_33;
      }
    }

    else
    {
      if (!v30)
      {
        v31 = [*(a1 + 40) routeAttributes];
        v32 = [v31 automobileOptions];
        [v24 setAutomobileOptions:v32];
        goto LABEL_33;
      }

      if (v30 == 1)
      {
        v31 = [*(a1 + 40) routeAttributes];
        v32 = [v31 transitOptions];
        [v24 setTransitOptions:v32];
LABEL_33:
      }
    }

    [*(a1 + 32) setRouteRequestStorage:v24];
  }

  if (*(a1 + 96) == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = *(a1 + 56);
      v34 = *(a1 + 32);
      [v33 batteryPercentageAfterCharging];
      [v34 setRequiredCharge:v35 * 0.01];
      [v34 setVehicleIdentifier:*(a1 + 64)];
    }
  }

  if (*(a1 + 97) == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = *(a1 + 32);
      v37 = [v36 routeRequestStorage];
      v38 = [v37 waypointsCount];

      if (v38)
      {
        [v36 setRouteProgressWaypointIndex:1];
      }

      v39 = [*(a1 + 40) legs];
      v40 = [v39 firstObject];
      v41 = [v40 destination];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (*(a1 + 98) == 1 && (isKindOfClass & 1) != 0)
      {
        [*(a1 + 56) batteryPercentageAfterCharging];
        v44 = [NSNumber numberWithDouble:v43 * 0.01];
        [v36 setRequiredCharge:v44];

        [v36 setVehicleIdentifier:*(a1 + 64)];
      }

      [v36 setType:{objc_msgSend(*(a1 + 40), "isEVRoute")}];
    }
  }

  v45 = *(a1 + 72);
  if (v45)
  {
    (*(v45 + 16))(v45, *(a1 + 32));
  }

  v46 = sub_100035E6C();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
  {
    v47 = *(a1 + 32);
    *buf = 138412290;
    v70 = v47;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Commiting editBlock for directionItem: %@", buf, 0xCu);
  }

  v48 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v67 = *(a1 + 32);
  v49 = [NSArray arrayWithObjects:&v67 count:1];
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100AE2120;
  v57[3] = &unk_1016610B8;
  v58 = *(a1 + 80);
  [v48 saveWithObjects:v49 completionHandler:v57];

  v50 = sub_100035E6C();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
  {
    v51 = *(*(*(a1 + 88) + 8) + 40);
    *buf = 138412290;
    v70 = v51;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "Deleting oldDirectionItem: %@", buf, 0xCu);
  }

  v52 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v53 = v52;
  if (*(*(*(a1 + 88) + 8) + 40))
  {
    v66 = *(*(*(a1 + 88) + 8) + 40);
    v54 = [NSArray arrayWithObjects:&v66 count:1];
    [v53 deleteWithObjects:v54 completionHandler:&stru_101637778];
  }

  else
  {
    [v52 deleteWithObjects:&__NSArray0__struct completionHandler:&stru_101637778];
  }
}

void sub_100AE1EA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_100035E6C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error deleting item: %@", &v5, 0xCu);
    }
  }
}

void sub_100AE1F54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 && [v5 isCurrentLocation])
  {
    v7 = sub_100035E6C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v14 = 134217984;
      v15 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "- Converting dynamic current location waypoint %lu into static location", &v14, 0xCu);
    }

    v8 = [v6 convertToStaticLocation];

    v6 = v8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_12;
  }

  v9 = [v6 mapItemStorage];
  if (v9)
  {

    goto LABEL_10;
  }

  if ([v6 isCurrentLocation])
  {
LABEL_10:
    v10 = [v6 findMyHandleID];

    if (v10)
    {
      v11 = [v6 copy];

      [v11 clearFindMyData];
      v6 = v11;
    }

LABEL_12:
    [*(a1 + 32) addWaypoints:v6];
    goto LABEL_13;
  }

  v12 = sub_100035E6C();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = [v6 shortDescription];
    v14 = 138412290;
    v15 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Trying to save waypoint without a mapItem in a HistoryEntry: %@", &v14, 0xCu);
  }

LABEL_13:
}

void sub_100AE2120(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100035E6C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed saveRoute: could not commit edits to new direction item: %@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_100AE21F4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100035E6C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed saveRoute: could not delete old direction item: %@", &v4, 0xCu);
    }
  }
}

void sub_100AE2400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100AE2418(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100AE2604(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 firstObject];
  (*(v2 + 16))(v2, v3);
}

void sub_100AE275C(uint64_t a1, void *a2)
{
  v3 = a2;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v82 objects:v86 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v83;
    v73 = v3;
    v76 = *v83;
    v77 = a1;
    do
    {
      v7 = 0;
      v78 = v5;
      do
      {
        if (*v83 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 32);
        v9 = *(*(&v82 + 1) + 8 * v7);
        v10 = v8;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_44;
          }

          v11 = v9;
          v12 = [v10 firstObject];
          v79 = [v10 lastObject];
          v13 = [v11 endWaypoint];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

LABEL_23:
            v40 = [v11 startWaypoint];
            v41 = [v40 geoMapItem];
            v42 = [v41 isValid];

            v81 = v9;
            if ((v42 & 1) == 0)
            {

              v40 = 0;
            }

            v43 = [v11 endWaypoint];
            v44 = [v43 geoMapItem];
            v45 = [v44 isValid];

            if ((v45 & 1) == 0)
            {

              v43 = 0;
            }

            if (v12)
            {
              v46 = [v12 isCurrentLocation] ^ 1;
            }

            else
            {
              v46 = 0;
            }

            v75 = v11;
            if (v40)
            {
              v47 = [v40 isCurrentLocation] ^ 1;
            }

            else
            {
              v47 = 0;
            }

            v48 = v12;
            if ((v46 | v47))
            {
              v49 = 1;
              v50 = v79;
              if (v48 && v40)
              {
                v51 = [v48 geoMapItem];
                v52 = [v40 geoMapItem];
                IsEqualToMapItemForPurpose = GEOMapItemIsEqualToMapItemForPurpose();

                v49 = IsEqualToMapItemForPurpose ^ 1;
                v5 = v78;
                v50 = v79;
              }
            }

            else
            {
              v49 = 0;
              v50 = v79;
            }

            if ([v50 isCurrentLocation] && (objc_msgSend(v50, "isCurrentLocation") & 1) != 0)
            {
              v54 = 0;
            }

            else
            {
              v55 = [v50 geoMapItem];
              v56 = [v43 geoMapItem];
              v57 = GEOMapItemIsEqualToMapItemForPurpose();

              v5 = v78;
              v54 = v57 ^ 1;
            }

            v9 = v81;
            v58 = v49 | v54;

            v3 = v73;
            v6 = v76;
            a1 = v77;
            if (v58)
            {
LABEL_44:

              goto LABEL_51;
            }

            goto LABEL_45;
          }

          v14 = [v10 lastObject];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_23;
          }

          v16 = v11;
          v17 = v10;
          v18 = [v16 endWaypoint];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

LABEL_50:
            v3 = v73;
            v6 = v76;
            a1 = v77;
            goto LABEL_51;
          }

          v19 = [v17 lastObject];
          objc_opt_class();
          v20 = objc_opt_isKindOfClass();

          if ((v20 & 1) == 0)
          {
            goto LABEL_50;
          }

          v21 = [v17 firstObject];
          v22 = [v16 startWaypoint];
          v74 = v21;
          if ([v21 isCurrentLocation] && objc_msgSend(v22, "isCurrentLocation"))
          {
            v23 = [v16 endWaypoint];
            v24 = [v17 lastObject];
            v72 = v23;
            v25 = [v23 route];
            v68 = [v25 anchorPoints];

            v71 = v24;
            v26 = [v24 route];
            v27 = [v26 anchorPoints];

            v28 = v68;
            v70 = [v68 isEqual:v27];
          }

          else
          {
            v59 = [v21 geoMapItem];
            v67 = v22;
            v60 = [v22 geoMapItem];
            v61 = v60;
            if (v59 && v60)
            {
              GEOMapItemIsEqualToMapItemForPurpose();
            }

            v71 = v61;
            v72 = v59;
            v69 = [v16 endWaypoint];
            v27 = [v17 lastObject];
            v62 = [v69 route];
            v63 = [v62 anchorPoints];

            v64 = [v27 route];
            v65 = [v64 anchorPoints];

            v28 = v69;
            v70 = [v63 isEqual:v65];

            v22 = v67;
          }

          v3 = v73;
          v6 = v76;
          a1 = v77;
          if (v70)
          {
            goto LABEL_46;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_44;
          }

          v80 = v9;
          v29 = v9;
          v30 = [v29 waypoints];
          v31 = [v30 count];
          v32 = [v10 count];

          if (v31 == v32)
          {
            if (![v10 count])
            {
LABEL_21:

              v6 = v76;
              a1 = v77;
              v5 = v78;
              v9 = v80;
LABEL_45:

LABEL_46:
              [*(a1 + 40) addObject:v9];
              goto LABEL_51;
            }

            v33 = 0;
            while (1)
            {
              v34 = [v10 objectAtIndexedSubscript:v33];
              v35 = [v29 waypoints];
              v36 = [v35 objectAtIndexedSubscript:v33];

              v37 = [v34 geoMapItem];
              v38 = [v36 geoMapItem];
              v39 = GEOMapItemIsEqualToMapItemForPurpose();

              if ((v39 & 1) == 0)
              {
                break;
              }

              if (++v33 >= [v10 count])
              {
                goto LABEL_21;
              }
            }

            v6 = v76;
            a1 = v77;
          }

          else
          {
          }

          v5 = v78;
        }

LABEL_51:
        v7 = v7 + 1;
      }

      while (v7 != v5);
      v66 = [v3 countByEnumeratingWithState:&v82 objects:v86 count:16];
      v5 = v66;
    }

    while (v66);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100AE3764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100AE377C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v4 = @" & ";
  }

  else
  {
    v4 = &stru_1016631F0;
  }

  result = [v3 appendFormat:@"%@%@", v4, a2];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

void sub_100AE66E0(uint64_t a1)
{
  v1 = [*(a1 + 32) registrationWithCellClass:objc_opt_class() configurationHandler:&stru_1016378B0];
  v2 = qword_10195E5A0;
  qword_10195E5A0 = v1;
}

void sub_100AE67E4(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10195E590;
  qword_10195E590 = v1;
}

void sub_100AE74CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100AE74F0(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100AE7588;
  v3[3] = &unk_101661368;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(&_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
}

void sub_100AE7588(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ((WeakRetained[2] & 1) == 0 && ((*(a1 + 40) & 1) != 0 || ([WeakRetained loggedIn] & 1) == 0))
    {
      v4 = sub_100026868();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "retrieveUserProfilePicture has not been called yet, calling it now.", buf, 2u);
      }

      [v3 _retrieveUserProfilePicture];
      *(v3 + 16) = 1;
    }

    if (v3[1])
    {
      v5 = sub_100026868();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Invalidate current throttle timer", v11, 2u);
      }

      [v3[1] invalidate];
      v6 = v3[1];
      v3[1] = 0;
    }

    v7 = [NSTimer scheduledTimerWithTimeInterval:v3 target:"_throttledProfilePictureTimerUpdate:" selector:0 userInfo:0 repeats:10.0];
    v8 = v3[1];
    v3[1] = v7;

    v9 = sub_100026868();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10[0] = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Create a new timer to throttle the next call to retrieve profile picture by 10 seconds. Retrieving the picture again will only be retried when the 10 second interval has passed without receiving any new notifications that the profile picture has changed.", v10, 2u);
    }
  }
}

void sub_100AE7818(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v11 = v5;
    v7 = [v5 count];
    v6 = v11;
    if (v7)
    {
      v8 = [v11 firstObject];
      v9 = *(a1 + 32);
      v10 = [v8 _addressFormattedAsCity];
      (*(v9 + 16))(v9, v10);

      v6 = v11;
    }
  }
}

void sub_100AE79E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100AE7B3C;
  block[3] = &unk_1016605F8;
  v11 = v5;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_100AE7AB8(uint64_t a1)
{
  v2 = sub_100026868();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "User is not logged in, assigning loggedOutIcon as profile picture", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_100AE7B3C(void *a1)
{
  v2 = a1[4];
  v3 = sub_100026868();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Successfully fetched profile picture from the ProfilePictureStore", &v7, 2u);
    }
  }

  else if (v4)
  {
    v5 = a1[5];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "When fetching profile picture from the ProfilePictureStore, no icon was returned - %@", &v7, 0xCu);
  }

  return (*(a1[6] + 16))();
}

void sub_100AE90E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100AE9100(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([v5 isPureElectricVehicle])
  {
    v6 = +[VGVirtualGarageService sharedService];
    v7 = [v5 identifier];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100AE9200;
    v8[3] = &unk_101637970;
    v9[1] = a3;
    objc_copyWeak(v9, (a1 + 32));
    [v6 virtualGarageGetLatestStateOfVehicleWithIdentifier:v7 syncAcrossDevices:1 withReply:v8];

    objc_destroyWeak(v9);
  }
}

void sub_100AE9200(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = sub_100022C48();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      *buf = 138412802;
      v17 = v5;
      v18 = 2112;
      v19 = v7;
      v20 = 2048;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to get latest SoC for vehicle: %@ error: %@ index: %lu", buf, 0x20u);
    }

    v12 = +[MKMapService sharedService];
    [v12 captureUserAction:6094 onTarget:0 eventValue:0];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100AE9398;
    block[3] = &unk_101651D38;
    objc_copyWeak(v15, (a1 + 32));
    v8 = v5;
    v9 = *(a1 + 40);
    v14 = v8;
    v15[1] = v9;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(v15);
  }
}

void sub_100AE9398(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateVehicle:*(a1 + 32) atIndex:*(a1 + 48)];
}

id sub_100AE94F0(uint64_t a1)
{
  v2 = [*(a1 + 32) unpairedVehicles];
  v3 = *(a1 + 40);
  v4 = v2;
  v5 = v3;
  v6 = [v4 count];
  if (v6 == [v5 count])
  {
    v7 = v4;
    v8 = v5;
    if (!(v7 | v8) || (v9 = [v7 isEqual:v8], v8, v7, (v9 & 1) != 0))
    {

      v10 = *(a1 + 32);
      v11 = *(a1 + 40);

      return [v10 setUnpairedVehicles:v11];
    }

    v14 = sub_100AE965C(v7);
    v15 = sub_100AE965C(v8);
    v16 = [v14 isEqualToSet:v15];

    result = [*(a1 + 32) setUnpairedVehicles:*(a1 + 40)];
    if (v16)
    {
      return result;
    }
  }

  else
  {

    [*(a1 + 32) setUnpairedVehicles:*(a1 + 40)];
  }

  v13 = *(*(a1 + 32) + 144);

  return [v13 reloadData];
}

id sub_100AE965C(void *a1)
{
  v1 = a1;
  +[NSMutableSet set];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100AE9718;
  v2 = v4[3] = &unk_1016379C0;
  v5 = v2;
  [v1 enumerateObjectsUsingBlock:v4];

  return v2;
}

void sub_100AE9718(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  [v2 addObject:v3];
}

void sub_100AE9808(uint64_t a1)
{
  v2 = [*(a1 + 32) savedVehicles];
  v3 = [*(a1 + 40) vehicles];
  v4 = v2;
  v5 = v3;
  v6 = [v4 count];
  if (v6 != [v5 count])
  {

    v12 = [*(a1 + 40) vehicles];
    [*(a1 + 32) setSavedVehicles:v12];

LABEL_6:
    [*(*(a1 + 32) + 144) reloadData];
    return;
  }

  v7 = v4;
  v8 = v5;
  if (!(v7 | v8) || (v9 = v8, v10 = [v7 isEqual:v8], v9, v7, (v10 & 1) != 0))
  {

    v11 = [*(a1 + 40) vehicles];
    [*(a1 + 32) setSavedVehicles:v11];

    return;
  }

  v13 = sub_100AE965C(v7);
  v14 = sub_100AE965C(v9);
  v15 = [v7 sortedArrayUsingComparator:&stru_101637A00];
  [v9 sortedArrayUsingComparator:&stru_101637A00];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100AE9A90;
  v16 = v19[3] = &unk_101637A68;
  v20 = v16;
  v21 = &stru_101637A40;
  v22 = &v23;
  [v15 enumerateObjectsUsingBlock:v19];
  v17 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  v18 = [*(a1 + 40) vehicles];
  [*(a1 + 32) setSavedVehicles:v18];

  if (v17)
  {
    goto LABEL_6;
  }
}

void sub_100AE9A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100AE9A90(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a1[4];
  v8 = a2;
  v9 = [v7 objectAtIndex:a3];
  LODWORD(a3) = (*(a1[5] + 16))();

  if (a3)
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
  }
}

BOOL sub_100AE9B3C(id a1, VGVehicle *a2, VGVehicle *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(VGVehicle *)v4 identifier];
  v7 = [(VGVehicle *)v5 identifier];
  v8 = v6;
  v9 = v7;
  if (v8 | v9 && (v10 = [v8 isEqual:v9], v9, v8, !v10))
  {
    v45 = 1;
  }

  else
  {
    v11 = [(VGVehicle *)v4 iapIdentifier];
    v12 = [(VGVehicle *)v5 iapIdentifier];
    v13 = v11;
    v14 = v12;
    if (v13 | v14 && (v15 = [v13 isEqual:v14], v14, v13, !v15))
    {
      v45 = 1;
    }

    else
    {
      v16 = [(VGVehicle *)v4 siriIntentsIdentifier];
      v17 = [(VGVehicle *)v5 siriIntentsIdentifier];
      v18 = v16;
      v19 = v17;
      v62 = v18;
      if (v18 | v19 && (v20 = [v18 isEqual:v19], v19, v18, !v20))
      {
        v45 = 1;
      }

      else
      {
        v21 = [(VGVehicle *)v4 displayName];
        v22 = [(VGVehicle *)v5 displayName];
        v23 = v21;
        v60 = v22;
        v61 = v23;
        if (v23 | v60 && (v24 = [v23 isEqual:v60], v60, v61, !v24))
        {
          v45 = 1;
        }

        else
        {
          v25 = [(VGVehicle *)v4 manufacturer];
          v26 = [(VGVehicle *)v5 manufacturer];
          v27 = v25;
          v58 = v26;
          v59 = v27;
          if (v27 | v58 && (v28 = [v27 isEqual:v58], v58, v59, !v28))
          {
            v45 = 1;
          }

          else
          {
            v29 = [(VGVehicle *)v4 model];
            v30 = [(VGVehicle *)v5 model];
            v31 = v29;
            v32 = v30;
            if (v31 | v32 && (v33 = [v31 isEqual:v32], v32, v31, !v33))
            {
              v45 = 1;
            }

            else
            {
              v55 = v32;
              v34 = [(VGVehicle *)v4 colorHex];
              v35 = [(VGVehicle *)v5 colorHex];
              v36 = v34;
              v56 = v35;
              v57 = v36;
              if (v36 | v56 && (v53 = [v36 isEqual:v56], v56, v36, !v53))
              {
                v45 = 1;
                v32 = v55;
              }

              else
              {
                v37 = [(VGVehicle *)v4 licensePlate];
                v38 = [(VGVehicle *)v5 licensePlate];
                v39 = v37;
                v52 = v38;
                v54 = v39;
                if (v39 | v52 && (v50 = [v39 isEqual:v52], v52, v39, !v50))
                {
                  v45 = 1;
                  v32 = v55;
                }

                else
                {
                  v40 = [(VGVehicle *)v4 preferredChargingNetworks];
                  v41 = [(VGVehicle *)v5 preferredChargingNetworks];
                  v42 = v40;
                  v49 = v41;
                  v51 = v42;
                  if ((!(v42 | v49) || (v47 = [v42 isEqual:v49], v49, v42, v47)) && (v43 = -[VGVehicle supportedConnectors](v4, "supportedConnectors"), v43 == -[VGVehicle supportedConnectors](v5, "supportedConnectors")))
                  {
                    v48 = [(VGVehicle *)v4 currentVehicleState];
                    v44 = [(VGVehicle *)v5 currentVehicleState];
                    v45 = [v48 isSignificantlyDifferentFromVehicleState:v44];
                  }

                  else
                  {
                    v45 = 1;
                  }

                  v32 = v55;
                }
              }
            }
          }
        }
      }
    }
  }

  return v45;
}

int64_t sub_100AE9FF8(id a1, VGVehicle *a2, VGVehicle *a3)
{
  v4 = a3;
  v5 = [(VGVehicle *)a2 identifier];
  v6 = [(VGVehicle *)v4 identifier];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_100AEB278(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100AEB2B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v9 = sub_100022C48();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "VehicleListVC - failed to get virtual garage with error: %@", &v10, 0xCu);
      }
    }

    else
    {
      [WeakRetained _consumeUpdatedVirtualGarage:v5];
    }
  }
}

void sub_100AEB3A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v9 = sub_100022C48();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "VehicleListVC - failed to get unpairedVehicles with error: %@", &v10, 0xCu);
      }
    }

    else
    {
      [WeakRetained _consumeUpdatedUnpairedVehicles:v5];
    }
  }
}

UIFont *__cdecl sub_100AEB954(id a1)
{
  v1 = +[MKFontManager sharedManager];
  v2 = [v1 subtitleFont];
  v3 = [UIFont _maps_cappedFont:v2 withMaxPoint:22.0];

  return v3;
}

UIFont *__cdecl sub_100AEB9D4(id a1)
{
  v1 = +[MKFontManager sharedManager];
  v2 = [v1 largeTitleFont];
  v3 = [UIFont _maps_cappedFont:v2 withMaxPoint:30.0];

  return v3;
}

id sub_100AEDCD4(uint64_t a1)
{
  v2 = [*(a1 + 32) floorCollectionView];
  [v2 reloadData];

  v3 = *(a1 + 32);

  return [v3 updateFloorOptimalOpenHeightConstraint];
}

id sub_100AEDD20(uint64_t a1)
{
  v2 = [*(a1 + 32) floorCollectionView];
  [v2 layoutIfNeeded];

  v3 = *(a1 + 32);

  return [v3 updateDisplayedFloorAnimated:0];
}

id sub_100AEE350(uint64_t a1)
{
  [*(a1 + 32) didChangeConstraints];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];

  [*(a1 + 32) scrollToDisplayedFloorAnimated:0];
  v3 = *(a1 + 32);

  return [v3 updateCloseButtonVisibility];
}

id sub_100AEE3B0(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 updateShowSelectionWithForceClipCorners:1];
}

void sub_100AEE950(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) view];
  v4 = v3;
  if (v2 == 1)
  {
    [v3 setAlpha:0.0];

    [*(a1 + 32) didStartHiding];
    v6 = [*(a1 + 32) view];
    [v6 layoutIfNeeded];
  }

  else
  {
    [v3 setAlpha:1.0];

    v5 = *(a1 + 32);

    [v5 didStartShowing];
  }
}

void sub_100AEEA14(uint64_t a1)
{
  [*(a1 + 32) setOpen:0 animated:0];
  if (qword_10195E5C0 && [*(a1 + 32) isVisible])
  {
    [NSLayoutConstraint deactivateConstraints:qword_10195E5C0];
    v2 = [*(a1 + 32) isOpen];
    v3 = *(a1 + 32);
    if (v2)
    {
      [v3 openConstraints];
    }

    else
    {
      [v3 closedConstraints];
    }
    v4 = ;
    [NSLayoutConstraint activateConstraints:v4];
  }

  if (*(a1 + 48) == 1)
  {
    v5 = [*(a1 + 32) view];
    [v5 setAlpha:1.0];

    [*(a1 + 32) setHidden:1];
  }

  [*(a1 + 32) setUpdateHiddenAnimationActive:0];
  v6 = [*(a1 + 32) updateHiddenAnimationCompletionBlocks];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [*(a1 + 32) updateHiddenAnimationCompletionBlocks];
    v9 = [v8 copy];

    v10 = [*(a1 + 32) updateHiddenAnimationCompletionBlocks];
    [v10 removeAllObjects];

    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100AEEC08;
    v18 = &unk_101661090;
    v11 = *(a1 + 40);
    v19 = v9;
    v20 = v11;
    v12 = v9;
    v13 = objc_retainBlock(&v15);
  }

  else
  {
    v13 = objc_retainBlock(*(a1 + 40));
  }

  v14 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    [v14 didFinishHiding];
  }

  else
  {
    [v14 didFinishShowing];
  }

  [*(a1 + 32) updateHiddenAnimated:1 completion:{v13, v15, v16, v17, v18}];
}

void sub_100AEEC08(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_100AF0FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100AF0FD4(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    (*(WeakRetained[16] + 16))();
    [WeakRetained dismissModal];
  }
}

id sub_100AF1310(id a1, NSNumber *a2)
{
  v2 = [(NSNumber *)a2 integerValue];
  if (v2 == 2)
  {
    v3 = +[WelcomeScreenBullet landmarksIn3D];
  }

  else if (v2 == 1)
  {
    v3 = +[WelcomeScreenBullet transitCards];
  }

  else if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = +[WelcomeScreenBullet multiStopRouting];
  }

  return v3;
}

double sub_100AF171C(void *a1)
{
  if (!a1)
  {
    return MKMapRectNull.origin.x;
  }

  v1 = a1;
  [v1 startGeoCoordinate];
  CLLocationCoordinate2DFromGEOLocationCoordinate2D();
  MKMapPointForCoordinate(v13);
  [v1 endGeoCoordinate];
  CLLocationCoordinate2DFromGEOLocationCoordinate2D();
  MKMapPointForCoordinate(v14);
  MKMapRectBoundingMapPoints();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v1 startGeoCoordinate];
  [v1 endGeoCoordinate];

  GEOCalculateDistance();
  if (v10 < 150.0)
  {
    v15.x = v3 + v7 * 0.5;
    v15.y = v5 + v9 * 0.5;
    MKCoordinateForMapPoint(v15);
    MKMapRectMakeWithRadialDistance();
    return v11;
  }

  return v3;
}

double sub_100AF1870(void *a1)
{
  v1 = a1;
  v2 = [v1 composedRoute];
  v3 = [v1 stepIndex];
  v4 = [v2 steps];
  v5 = [v4 count] - 1;

  if (v3 == v5)
  {
    v6 = 0;
  }

  else
  {
    if ([v1 stepIndex])
    {
      [v1 getPreviousStep];
    }

    else
    {
      [v1 getNextStep];
    }
    v6 = ;
  }

  [v2 pointAt:{objc_msgSend(v1, "endPointIndex")}];
  if (v3 != v5 && v6)
  {
    [v2 pointAt:{objc_msgSend(v6, "endPointIndex")}];
  }

  CLLocationCoordinate2DFromGEOLocationCoordinate2D();
  v7 = MKMapPointForCoordinate(v14);
  CLLocationCoordinate2DFromGEOLocationCoordinate2D();
  v8 = MKMapPointForCoordinate(v15);
  if (v3 == v5 || (v7.x == v8.x ? (v9 = v7.y == v8.y) : (v9 = 0), v9 || (v16.x = (v8.x + v7.x) * 0.5, v16.y = (v8.y + v7.y) * 0.5, MKCoordinateForMapPoint(v16), GEOCalculateDistance(), v10 > 0.0)))
  {
    MKMapRectMakeWithRadialDistance();
    x = v11;
  }

  else
  {
    x = MKMapRectNull.origin.x;
  }

  return x;
}

uint64_t sub_100AF1A60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100AF1A78(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100AF1C54;
  v8[3] = &unk_101637B38;
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v9 = v3;
  v11 = v4;
  v10 = *(a1 + 32);
  v6 = v3;
  v7 = [v5 findTransitGeometryForPoint:v6 completionHandler:v8];
}

uint64_t sub_100AF1B50(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = *(*(*(a1 + 40) + 8) + 40);
  if (v6)
  {
    [v6 boundingRect];
    x = v7;
    y = v9;
    width = v11;
    height = v13;
    CLLocationCoordinate2DFromGEOLocationCoordinate2D();
    v15 = MKMapPointForCoordinate(v19);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    if (!MKMapRectContainsPoint(v20, v15))
    {
      v22.size.width = 0.0;
      v22.size.height = 0.0;
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      v22.origin.x = v15.x;
      v22.origin.y = v15.y;
      *a2.n128_u64 = MKMapRectUnion(v21, v22);
      x = a2.n128_f64[0];
      y = a3.n128_f64[0];
      width = a4.n128_f64[0];
      height = a5.n128_f64[0];
    }
  }

  else
  {
    x = MKMapRectNull.origin.x;
    y = MKMapRectNull.origin.y;
    width = MKMapRectNull.size.width;
    height = MKMapRectNull.size.height;
  }

  v16 = *(*(a1 + 32) + 16);
  a2.n128_f64[0] = x;
  a3.n128_f64[0] = y;
  a4.n128_f64[0] = width;
  a5.n128_f64[0] = height;

  return v16(a2, a3, a4, a5);
}

void sub_100AF1C54(uint64_t a1)
{
  [*(a1 + 32) boundingRect];
  if ((GEOMapRectIsNull() & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 32));
  }

  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void sub_100AF1CAC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v23 = sub_100AF2018;
    v24 = &unk_101637BB0;
    v25 = v3;
    v26 = v4;
    v5 = v25;
    v6 = v22;
    v7 = v6;
    if (v5)
    {
      [v5 startGeoCoordinate];
      v9 = v8;
      v11 = v10;
      v12 = [v5 endingStop];
      v13 = [v5 composedRoute];
      v14 = [v13 getStationForStop:v12];

      if (v14)
      {
        v15 = objc_alloc_init(GEOMapFeatureAccess);
        [v15 setAllowNetworkTileLoad:1];
        v38[0] = 0;
        v38[1] = v38;
        v38[2] = 0x3032000000;
        v38[3] = sub_100AF1A60;
        v38[4] = sub_100AF1A70;
        v39 = 0;
        v16 = dispatch_group_create();
        dispatch_group_enter(v16);
        v17 = [v14 muid];
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_100AF1A78;
        v34[3] = &unk_101637B60;
        v18 = v16;
        v35 = v18;
        v19 = v15;
        v36 = v19;
        v37 = v38;
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100AF1B48;
        v32[3] = &unk_10165F7B8;
        v20 = v18;
        v33 = v20;
        v21 = [v19 findTransitPointWithID:v17 near:v34 pointHandler:v32 completionHandler:{v9, v11}];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100AF1B50;
        block[3] = &unk_101637B88;
        v29 = v38;
        v30 = v9;
        v31 = v11;
        v28 = v7;
        dispatch_group_notify(v20, &_dispatch_main_q, block);

        _Block_object_dispose(v38, 8);
      }

      else
      {
        (v23)(v7, MKMapRectNull.origin.x, MKMapRectNull.origin.y, MKMapRectNull.size.width, MKMapRectNull.size.height);
      }
    }

    else
    {
      (v23)(v6, MKMapRectNull.origin.x, MKMapRectNull.origin.y, MKMapRectNull.size.width, MKMapRectNull.size.height);
    }
  }
}

uint64_t sub_100AF2018(uint64_t a1, __n128 a2, double a3)
{
  if (a2.n128_f64[0] == MKMapRectNull.origin.x && a3 == MKMapRectNull.origin.y)
  {
    a2.n128_f64[0] = sub_100AF171C(*(a1 + 32));
  }

  v5 = *(*(a1 + 40) + 16);

  return v5(a2);
}

void sub_100AF338C(uint64_t a1, void *a2, uint64_t a3)
{
  if ([a2 visibility] == 1)
  {
    if ([*(a1 + 32) isHovering])
    {
      v5 = 1;
    }

    else
    {
      v7 = [*(a1 + 32) cellModel];
      v8 = [v7 actionModel];
      v5 = v8 != 0;
    }

    v6 = [*(a1 + 32) isHovering];
  }

  else
  {
    v6 = 1;
    v5 = 1;
  }

  if ([*(a1 + 32) useLightForegroundColors])
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor tertiaryLabelColor];
  }
  v12 = ;
  if ((v6 & 1) == 0)
  {
    v9 = +[UIColor clearColor];

    v12 = v9;
  }

  v10 = [*(*(a1 + 32) + 72) objectAtIndexedSubscript:a3];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      [v11 setTintColor:v12];
      [*(a1 + 40) addObject:v11];
    }

    else if (v10)
    {
      [v10 setTintColor:v12];
      [*(a1 + 40) addObject:v10];
    }
  }
}

void sub_100AF37B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100AF37DC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 sender];

  [WeakRetained _accessoryButtonTapped:v4 accessoryModel:*(a1 + 32)];
}

void sub_100AF3C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100AF3C74(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 40) == *(WeakRetained + 12))
    {
      objc_storeStrong(WeakRetained + 5, a2);
      if (v6)
      {
        [v5 _updateFromModel];
      }
    }
  }
}

void sub_100AF47CC(uint64_t a1)
{
  v1 = [*(a1 + 32) registrationWithCellClass:objc_opt_class() configurationHandler:&stru_101637C40];
  v2 = qword_10195E5C8;
  qword_10195E5C8 = v1;
}

void sub_100AF482C(id a1, TwoLinesOutlineCell *a2, NSIndexPath *a3, MapsUIDiffableDataSourceOutlineNodeSnapshot *a4)
{
  v8 = a2;
  v5 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)a4 viewModel];
  if ([v5 conformsToProtocol:&OBJC_PROTOCOL___TwoLinesOutlineCellModel])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [(TwoLinesOutlineCell *)v8 setCellModel:v7];
}

uint64_t sub_100AF4AAC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100AF4D30(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100AF5D98(uint64_t a1, void *a2)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100AF62E8;
  v9[3] = &unk_1016611D0;
  v9[4] = *(a1 + 32);
  v3 = a2;
  v4 = [v3 addButtonRowWithTitle:@"Show Venue Notification" action:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100AF6304;
  v8[3] = &unk_1016611D0;
  v8[4] = *(a1 + 32);
  v5 = [v3 addButtonRowWithTitle:@"Show MapsSuggestions Notification" action:v8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100AF6320;
  v7[3] = &unk_1016611D0;
  v7[4] = *(a1 + 32);
  v6 = [v3 addButtonRowWithTitle:@"Show Low Fuel Notification" action:v7];
  [v3 setFooter:@"WARNING! These toggles produce notifications without exercising most of the logic involved in populating the content of the real world equivilent."];
}

void sub_100AF5F00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSData alloc] initWithContentsOfURL:*(a1 + 32)];
  if (v4 && (v5 = [[GEOAvailableAnnouncements alloc] initWithData:v4]) != 0)
  {
    v6 = v5;
    v22 = v4;
    v7 = [v5 languageCode];
    v8 = [v3 addReadOnlyRowWithTitle:@"Language Code" value:v7];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [v6 announcements];
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [v14 title];
          v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (%u)", v15, [v14 announcementID]);
          v17 = [v14 userMessage];
          v18 = [v3 addReadOnlyRowWithTitle:v16 subtitle:v17];
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    v4 = v22;
  }

  else if (*(a1 + 32))
  {
    v19 = [v3 addReadOnlyRowWithTitle:@"No announcements found" subtitle:@"Path not set"];
  }

  else
  {
    v20 = [0 path];
    v21 = [v3 addReadOnlyRowWithTitle:@"No announcements found" subtitle:v20];
  }
}

void sub_100AF6190(id a1)
{
  v1 = objc_alloc_init(NSDictionary);
  GEOConfigSetDictionary();
}

void sub_100AF61E4(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addButtonRowWithTitle:@"Clear Current Announcement" action:&stru_101637D28];
  v3 = [(MapsDebugTableSection *)v4 addButtonRowWithTitle:@"Reset Announcements" action:&stru_101637D48];
}

void sub_100AF6258(id a1)
{
  v1 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v1 resetAnnouncements];
}

void sub_100AF62A0(id a1)
{
  v1 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v1 clearCurrentAnnouncement];
}

void sub_100AF633C(id a1)
{
  v2 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  v1 = [[MSPLowFuelDetails alloc] initWithTitle:@"Low EV Battery" subtitle:@"Find an EV Charger" engineType:&off_1016E8648];
  [v2 showLowFuelAlertBulletinForLowFuelDetails:v1];
}

void sub_100AF63C4(id a1)
{
  v2 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  v1 = [[NSURL alloc] initWithString:@"http://maps.apple.com/?daddr=Space+Needle"];
  [v2 showMapsSuggestionsBulletinWithTitle:@"17 min to Space Needle" message:@"Take Aurora Ave N actionURL:{traffic is moderate", v1}];
}

void sub_100AF644C(id a1)
{
  v2 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  v1 = [[NSURL alloc] initWithString:@"https://maps.apple.com/?auid=16375256398390226749&lsp=0"];
  [v2 showVenueBulletinWithTitle:@"Welcome to SJC" message:@"Explore a detailed airport map to quickly find your gate actionURL:{baggage claim, shops, and more.", v1}];
}

void sub_100AF6630(uint64_t a1)
{
  NSLog(@"UIBackgroundTask reached timeout");
  v2 = +[UIApplication sharedApplication];
  [v2 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

  *(*(*(a1 + 32) + 8) + 24) = UIBackgroundTaskInvalid;
}

void sub_100AF669C(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = +[UIApplication sharedApplication];
  [v2 endBackgroundTask:*(*(*(a1 + 40) + 8) + 24)];

  *(*(*(a1 + 40) + 8) + 24) = UIBackgroundTaskInvalid;
}

void sub_100AF699C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100AF69C4(uint64_t a1, CLLocationDegrees a2, CLLocationDegrees a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9.latitude = a2;
    v9.longitude = a3;
    if (CLLocationCoordinate2DIsValid(v9))
    {
      [WeakRetained[6] selectedCoordinate];
      if (vabdd_f64(a2, v6) >= 0.00000000999999994 || vabdd_f64(a3, v5) >= 0.00000000999999994)
      {
        [WeakRetained[6] setSelectedCoordinate:{a2, a3}];
        [WeakRetained[8] updateCoordinate:{a2, a3}];
      }
    }
  }
}

void sub_100AF6E14(id a1)
{
  v1 = +[NSBundle mainBundle];
  v2 = [v1 bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.Maps"];

  if (v3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
  }

  else
  {
    v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Maps"];
  }

  v5 = qword_10195E5E8;
  qword_10195E5E8 = v4;
}

void sub_100AF6F08(id a1)
{
  v1 = +[NSBundle mainBundle];
  v2 = [v1 bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.NanoMaps"];

  if (v3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
  }

  else
  {
    v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.NanoMaps"];
  }

  v5 = qword_10195E5D8;
  qword_10195E5D8 = v4;
}

void sub_100AF70C8(id a1)
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v1 = [&off_1016ED4C0 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = &__kCFBooleanFalse;
    p_cache = &OBJC_METACLASS___RoutePlanningFeatureDiscoveryProvider.cache;
    v5 = *v24;
    v6 = &off_1016E8660;
    do
    {
      v7 = 0;
      v22 = v2;
      do
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(&off_1016ED4C0);
        }

        v8 = [p_cache + 398 valueForDefaultsKey:*(*(&v23 + 1) + 8 * v7)];
        if (!v8)
        {
          v10 = 0;
          goto LABEL_10;
        }

        v9 = v8;
        if ([v8 isEqualToNumber:v6])
        {
          v10 = v9;
LABEL_10:
          v9 = v3;
          goto LABEL_12;
        }

        BiomeLibrary();
        v11 = v5;
        v12 = p_cache;
        v13 = v3;
        v15 = v14 = v6;
        v16 = [v15 Discoverability];
        v17 = [v16 Signals];
        v10 = [v17 source];

        v18 = [BMDiscoverabilitySignals alloc];
        v19 = +[NSProcessInfo processInfo];
        v20 = [v19 operatingSystemVersionString];
        v21 = [v18 initWithContentIdentifier:@"com.apple.Maps.UserHasNonStandardPreferences" context:@"System-Settings-App" osBuild:v20 userInfo:0];

        [v10 sendEvent:v21];
        v6 = v14;
        v3 = v13;
        p_cache = v12;
        v5 = v11;
        v2 = v22;
LABEL_12:

        v7 = v7 + 1;
      }

      while (v2 != v7);
      v2 = [&off_1016ED4C0 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v2);
  }
}

void sub_100AF7F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100AF7F30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100AF99D4()
{
  if (qword_10195E600 != -1)
  {
    dispatch_once(&qword_10195E600, &stru_101637EE0);
  }

  v1 = qword_10195E5F8;

  return v1;
}

void sub_100AF9A28(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VIOSessionTask");
  v2 = qword_10195E5F8;
  qword_10195E5F8 = v1;
}

void sub_100AF9B9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) configuration];
  [v1 createMonitorsForConfiguration:v2];
}

void sub_100AF9C64(uint64_t a1)
{
  v1 = [*(a1 + 32) monitors];
  [v1 removeAllObjects];
}

void sub_100AF9D1C(uint64_t a1)
{
  [*(a1 + 32) pauseVIOSession];
  v2 = [*(a1 + 32) monitors];
  [v2 removeAllObjects];
}

void sub_100AFCDDC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100005610();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "PresentFlyoverAction resolveMapItem: %@", &v11, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v9 = [v5 firstObject];
    v8 = [[Flyover alloc] initWithAnnouncement:a1[4] mapItem:v9 animationID:a1[6]];
  }

  v10 = a1[5];
  if (v10)
  {
    (*(v10 + 16))(v10, v8);
  }
}

void sub_100AFDCA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100AFDCC8(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && WeakRetained[6] == *(a1 + 40))
  {
    [WeakRetained[2] setImage:v5];
  }
}

void sub_100AFE5F0(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100AFE6A0;
  block[3] = &unk_1016605F8;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100AFE6A0(uint64_t a1)
{
  v2 = [*(a1 + 40) firstObject];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = [*(a1 + 32) droppedPin];
    (*(v5 + 16))(v5, v6);
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = [*(a1 + 40) firstObject];
  LOBYTE(v7) = [v7 isEqualToMarkedLocation:v8];

  if ((v7 & 1) == 0)
  {
    v9 = *(a1 + 32);

    [v9 _notifySearchManager];
  }
}

id sub_100AFEAF0()
{
  v0 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    v1 = objc_opt_class();
    v2 = NSStringFromClass(v1);
    v3 = +[CLLocationManager navdLocationBundleSource];
    v10 = 138478083;
    v11 = v2;
    v12 = 2113;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "initializing a %{private}@ with bundle source: %{private}@", &v10, 0x16u);
  }

  v4 = [MNHybridLocationProvider alloc];
  v5 = +[CLLocationManager navdLocationBundleSource];
  v6 = [NSBundle bundleWithPath:v5];
  v7 = [v4 initWithEffectiveBundle:v6];
  v8 = qword_10195E618;
  qword_10195E618 = v7;

  return [qword_10195E618 setMode:1];
}

void sub_100AFEC58(uint64_t a1)
{
  if (qword_10195E620 != -1)
  {
    dispatch_once(&qword_10195E620, *(a1 + 32));
  }
}

void sub_100AFEE40(id a1)
{
  v1 = [NSOrderedSet orderedSetWithObjects:&OBJC_PROTOCOL___HomeActionDelegateEvents, &OBJC_PROTOCOL___HomeActionDelegate, 0];
  v2 = qword_10195E628;
  qword_10195E628 = v1;
}

id sub_100AFFE24(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v21 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v19 = WeakRetained;
    v6 = [WeakRetained delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [v19 delegate];
      v9 = [v8 ticketingSegmentsForRoutePlanningFooterView:*(a1 + 32)];

      v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      obj = v9;
      v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v11)
      {
        v12 = *v26;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v25 + 1) + 8 * i);
            v15 = [v14 segmentName];
            v23[0] = _NSConcreteStackBlock;
            v23[1] = 3221225472;
            v23[2] = sub_100B000F0;
            v23[3] = &unk_101660418;
            objc_copyWeak(&v24, (a1 + 40));
            v23[4] = v14;
            v16 = [UIAction actionWithTitle:v15 image:0 identifier:0 handler:v23];
            [v10 addObject:v16];

            objc_destroyWeak(&v24);
          }

          v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v11);
      }

      v17 = [UIMenu menuWithTitle:&stru_1016631F0 children:v10];
    }

    else
    {
      v17 = 0;
    }

    WeakRetained = v19;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void sub_100B000F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didTapTicketingSegmentInfo:*(a1 + 32)];
}

id sub_100B00780(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    [a2 keyColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v2 = ;

  return v2;
}

void sub_100B012BC(id a1)
{
  +[RoutePlanningFooterCollectionViewCell _contentViewClass];
  v1 = objc_opt_new();
  v2 = qword_10195E640;
  qword_10195E640 = v1;
}

uint64_t sub_100B01308(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"_"];
  if ([v1 count])
  {
    v2 = [v1 objectAtIndexedSubscript:0];
    v3 = [v2 componentsSeparatedByString:@"_"];
    if ([v3 count])
    {
      v4 = sub_10002E924();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v2;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Value is %@", &v8, 0xCu);
      }

      v5 = [v3 objectAtIndexedSubscript:0];
      if ([v5 isEqualToString:@"RAPIMAGEUPLOAD"])
      {
        v6 = 1;
      }

      else if ([v5 isEqualToString:@"RAPCORRECTIONSUPLOAD"])
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v8) = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: components.count > 0", &v8, 2u);
    }

    v6 = 0;
  }

  return v6;
}

uint64_t sub_100B014BC(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = [a1 componentsSeparatedByString:@"_"];
  if ([v9 count] != 5)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
LABEL_8:
      v12 = 0;
      goto LABEL_4;
    }

    v18 = 0;
    v15 = "Assertion failed: components.count == 5";
    v16 = &v18;
LABEL_10:
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, v15, v16, 2u);
    goto LABEL_8;
  }

  v10 = [v9 objectAtIndexedSubscript:0];
  v11 = [v10 isEqualToString:@"RAPIMAGEUPLOAD"];

  if ((v11 & 1) == 0)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    v17 = 0;
    v15 = "Assertion failed: [components[0] isEqualToString:@RAPIMAGEUPLOAD]";
    v16 = &v17;
    goto LABEL_10;
  }

  v12 = 1;
  *a2 = [v9 objectAtIndexedSubscript:1];
  *a3 = [v9 objectAtIndexedSubscript:2];
  *a4 = [v9 objectAtIndexedSubscript:3];
  v13 = [v9 objectAtIndexedSubscript:4];
  *a5 = [v13 integerValue];

LABEL_4:
  return v12;
}

uint64_t sub_100B0164C(void *a1, void *a2, void *a3)
{
  v5 = [a1 componentsSeparatedByString:@"_"];
  if ([v5 count] != 3)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
LABEL_8:
      v8 = 0;
      goto LABEL_4;
    }

    v14 = 0;
    v11 = "Assertion failed: components.count == 3";
    v12 = &v14;
LABEL_10:
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, v11, v12, 2u);
    goto LABEL_8;
  }

  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 isEqualToString:@"RAPCORRECTIONSUPLOAD"];

  if ((v7 & 1) == 0)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    v13 = 0;
    v11 = "Assertion failed: [components[0] isEqualToString:@RAPCORRECTIONSUPLOAD]";
    v12 = &v13;
    goto LABEL_10;
  }

  v8 = 1;
  *a2 = [v5 objectAtIndexedSubscript:1];
  v9 = [v5 objectAtIndexedSubscript:2];
  *a3 = [v9 integerValue];

LABEL_4:
  return v8;
}

void sub_100B023EC(id a1)
{
  v3[0] = UIContentSizeCategoryAccessibilityLarge;
  v3[1] = UIContentSizeCategoryAccessibilityExtraLarge;
  v3[2] = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v3[3] = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v1 = [NSArray arrayWithObjects:v3 count:4];
  v2 = qword_10195E658;
  qword_10195E658 = v1;
}

void sub_100B02C64(id a1)
{
  v3 = +[NSBundle mainBundle];
  v1 = [v3 localizedStringForKey:@" · [No Query State view details separator]" value:@"localized string not found" table:0];
  v2 = qword_10195E648;
  qword_10195E648 = v1;
}

void sub_100B059B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43)
{
  objc_destroyWeak(&a43);
  objc_destroyWeak((v43 - 176));
  _Unwind_Resume(a1);
}

void sub_100B05A10(uint64_t a1, double a2)
{
  v3 = *(a1 + 48) + (*(a1 + 64) - *(a1 + 48)) * a2;
  v4 = *(a1 + 56) + (*(a1 + 72) - *(a1 + 56)) * a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained frame];
  v7 = v6;
  v9 = v8;

  v10 = objc_loadWeakRetained((a1 + 40));
  [v10 setFrame:{v7, v9, v3, v4}];

  if (*(a1 + 80) == 1)
  {
    y = CGRectZero.origin.y;
    v12 = *(a1 + 32);

    [v12 setFrame:{CGRectZero.origin.x, y, v3, v4}];
  }
}

void sub_100B05AF8(uint64_t a1, double a2)
{
  [*(a1 + 32) setAlpha:1.0 - a2];
  [*(a1 + 40) setAlpha:a2];
  v6 = vmlaq_n_f64(*(a1 + 48), vsubq_f64(*(a1 + 64), *(a1 + 48)), a2);
  v4 = [*(a1 + 40) layer];
  [v4 setPosition:?];
  v3 = [*(a1 + 32) layer];
  [v3 setPosition:*&v6];
}

void sub_100B063A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100B063D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pasteAndNavigate];
}

void sub_100B06418(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pasteAndNavigate];
}

void sub_100B0847C(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  if (!a5 && a4)
  {
    v6 = [a2 _applicationIconImageForFormat:2 precomposed:1];
    [*(*(a1 + 32) + 56) setImage:v6];
  }
}

void sub_100B0A024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100B0A04C(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100B0A1A8;
    block[3] = &unk_1016611D0;
    block[4] = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, block);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_100B0A0EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100B0A104(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_100B0A118(uint64_t a1)
{
  v5 = [NSURL URLWithString:@"prefs:root=Privacy&path=CONTACTS"];
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  [v2 openSensitiveURL:v5 withOptions:0];

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_100B0A1A8(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MapsContactsAuthorizationGrantedNotification" object:*(a1 + 32)];
}

void sub_100B0A84C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 appCoordinator];
  [v7 openSearch:v6 andResults:v5];
}

uint64_t sub_100B0AD20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [NSSet alloc];
  v9 = [v5 transitModes];
  v10 = [v8 initWithArray:v9];
  v11 = [v7 intersectsSet:v10];

  v12 = *(a1 + 32);
  v13 = [NSSet alloc];
  v14 = [v6 transitModes];
  v15 = [v13 initWithArray:v14];
  LODWORD(v12) = [v12 intersectsSet:v15];

  if (v11 == v12)
  {
    v17 = [*(a1 + 40) suggestedStoreApps];
    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 indexOfObject:v5]);
    v19 = [*(a1 + 40) suggestedStoreApps];
    v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 indexOfObject:v6]);
    v16 = [v18 compare:v20];
  }

  else if (v11)
  {
    v16 = -1;
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

uint64_t sub_100B0AFF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [NSSet alloc];
  v9 = [v5 directionsModes];
  v10 = [v8 initWithArray:v9];
  v11 = [v7 intersectsSet:v10];

  v12 = *(a1 + 32);
  v13 = [NSSet alloc];
  v14 = [v6 directionsModes];
  v15 = [v13 initWithArray:v14];
  LODWORD(v12) = [v12 intersectsSet:v15];

  if (v11 == v12)
  {
    v17 = [*(a1 + 40) suggestedInstalledApps];
    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 indexOfObject:v5]);
    v19 = [*(a1 + 40) suggestedInstalledApps];
    v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 indexOfObject:v6]);
    v16 = [v18 compare:v20];
  }

  else if (v11)
  {
    v16 = -1;
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

id sub_100B0B518()
{
  if (qword_10195E670 != -1)
  {
    dispatch_once(&qword_10195E670, &stru_101638230);
  }

  v1 = qword_10195E668;

  return v1;
}

void sub_100B0B56C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RoutingAppSelectionController");
  v2 = qword_10195E668;
  qword_10195E668 = v1;
}

id sub_100B0C6EC(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setLocation:0];
  [v3 setLatLng:0];
  v4 = *(*(a1 + 32) + 72);
  v5 = sub_100B0B518();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"destination";
    if (v4 == v3)
    {
      v6 = @"source";
    }

    *buf = 138543362;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Requesting location update for %{public}@.", buf, 0xCu);
  }

  objc_initWeak(buf, *(a1 + 32));
  v7 = +[MKLocationManager sharedLocationManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100B0C8F8;
  v11[3] = &unk_101638198;
  v14 = v4 == v3;
  v8 = v3;
  v12 = v8;
  objc_copyWeak(&v13, buf);
  v9 = [v7 singleLocationUpdateWithHandler:v11];

  [v9 start];
  objc_destroyWeak(&v13);

  objc_destroyWeak(buf);

  return v9;
}

void sub_100B0C8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B0C8F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = sub_100B0B518();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 48))
      {
        v8 = @"source";
      }

      else
      {
        v8 = @"destination";
      }

      v14 = 138543362;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Updated location for %{public}@.", &v14, 0xCu);
    }

    v9 = [[GEOLocation alloc] initWithCLLocation:v5];
    [*(a1 + 32) setLocation:v9];

    v10 = [*(a1 + 32) location];
    v11 = [v10 latLng];
    [*(a1 + 32) setLatLng:v11];

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _updateSuggestions];
  }

  else
  {
    v13 = objc_loadWeakRetained((a1 + 40));
    [v13 _handleSearchResultError:*(a1 + 48) error:v6];
  }
}

void sub_100B0D8F4(uint64_t a1)
{
  if (*(a1 + 32) && *(a1 + 40))
  {
    v1 = *(a1 + 48);

    [v1 closeViewController:?];
  }

  else
  {
    v2 = *(a1 + 48);
    v3 = v2[10];
    if (v3)
    {
      v4 = [*(a1 + 40) contactCardButton];
      [v2 showMeCardWithAddress:v3 from:v4];
    }
  }
}

void sub_100B0DCC4(uint64_t a1)
{
  if (*(a1 + 32) && (v2 = *(a1 + 40)) != 0)
  {
    v3 = *(a1 + 48);
  }

  else
  {
    if (sub_10000FA08(*(a1 + 56)) != 5)
    {
      goto LABEL_7;
    }

    v3 = *(a1 + 48);
    v2 = v3[2];
  }

  [v3 closeViewController:v2];
LABEL_7:
  v4 = *(*(a1 + 48) + 96);
  if (v4)
  {
    (*(v4 + 16))();
    v5 = *(a1 + 48);
    v6 = *(v5 + 96);
    *(v5 + 96) = 0;
  }
}

void sub_100B0E094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(va);
  objc_destroyWeak((v17 - 104));
  _Unwind_Resume(a1);
}

void sub_100B0E0F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _createNewContactCard];
}

void sub_100B0E130(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showContactPicker];
}

void sub_100B0E170(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[10])
  {
    v2 = WeakRetained;
    [WeakRetained[2] resetToMapItemType];
    WeakRetained = v2;
  }
}

void sub_100B0E2DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100B0E300(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained containerViewController];
    [v3 _maps_topMostPresentViewController:*(a1 + 32) animated:1 completion:0];

    WeakRetained = v4;
  }
}

void sub_100B0EC94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100B0ECB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [CNContactViewController viewControllerForContact:*(a1 + 32)];
    [v3 setActions:{objc_msgSend(v3, "actions") | 0x100}];
    [v3 setEditMode:2];
    [v4 _showContactCard:v3];

    WeakRetained = v4;
  }
}

void sub_100B0F300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B0F31C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained containerViewController];
    [v3 _maps_topMostPresentViewController:*(a1 + 32) animated:1 completion:0];

    WeakRetained = v4;
  }
}

void sub_100B0F600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B0F61C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained closeViewController:*(a1 + 32)];
}

void sub_100B0F840(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100B0F868(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = objc_loadWeakRetained(WeakRetained + 15);
    [v1 popLastViewControllerFromViewController:WeakRetained[5] animated:1 useDefaultContaineeLayout:0];

    v2 = objc_loadWeakRetained(WeakRetained + 15);
    if (v2)
    {
      v3 = WeakRetained[6];

      if (v3)
      {
        v4 = objc_loadWeakRetained(WeakRetained + 15);
        [v4 presentController:WeakRetained[6] animated:1];
      }
    }

    [WeakRetained endSession];
  }
}

void sub_100B0F92C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained closeViewController:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_100B0FCEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B0FD0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 15);
    [v2 popLastViewControllerFromViewController:v3[5] animated:1 useDefaultContaineeLayout:0];

    WeakRetained = v3;
    if (!v3[2])
    {
      [v3 endSession];
      WeakRetained = v3;
    }
  }
}

void sub_100B0FE5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100B0FE80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _closeLocationRefinement];
}

void sub_100B0FF78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100B0FF9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if ([WeakRetained[7] editOnlyLocation])
    {
      [v3 closeViewController:v3[3]];
    }

    v2 = v3[3];
    v3[3] = 0;

    WeakRetained = v3;
  }
}

void sub_100B10280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100B1029C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 15);
    [v3 _maps_topMostPresentViewController:*(a1 + 32) animated:1 completion:0];

    WeakRetained = v4;
  }
}

void sub_100B103E4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (qword_10195E688 != -1)
    {
      dispatch_once(&qword_10195E688, &stru_1016382E0);
    }

    v3 = qword_10195E680;
    if (os_log_type_enabled(qword_10195E680, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to save shortcut %@. with refined coordinate", &v5, 0xCu);
    }
  }
}

void sub_100B104B4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RAPPersonalPlaceCategory");
  v2 = qword_10195E680;
  qword_10195E680 = v1;
}

void sub_100B11290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100B112BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100B112D4(uint64_t a1, uint64_t a2)
{
  v3 = [_TtC4Maps36PlaceSummaryViewModelTemplateFactory viewModelWithHistoryEntrySearch:a2 highlightConfiguration:*(a1 + 32) searchAlongRoute:0 recentUnit:0];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100B11334(double *a1, void *a2)
{
  v3 = a1[7];
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = a2;
  v10 = [v5 currentLocation];
  v7 = [_TtC4Maps36PlaceSummaryViewModelTemplateFactory viewModelWithHistoryEntryPlaceDisplay:v6 highlightConfiguration:v4 availableWidth:v10 currentLocation:0 searchAlongRoute:0 recentUnit:v3];

  v8 = *(*(a1 + 6) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_100B14EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100B14ECC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100B14EE4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v6 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
    if (!v6)
    {
      v6 = [NSMutableArray arrayWithCapacity:1];
      [*(*(a1 + 32) + 24) setObject:? forKeyedSubscript:?];
    }

    v5 = objc_retainBlock(*(a1 + 48));
    [v6 addObject:v5];
  }
}

void sub_100B1517C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100B15194(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 8);
  if (v2)
  {
    [v3 setObject:v2 forKey:a1[6]];
  }

  else
  {
    [v3 removeObjectForKey:a1[6]];
  }

  [*(a1[5] + 16) removeObject:a1[6]];
  v4 = [*(a1[5] + 24) objectForKeyedSubscript:a1[6]];
  v5 = [v4 copy];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = a1[6];
  v9 = *(a1[5] + 24);

  return [v9 removeObjectForKey:v8];
}

void sub_100B15228(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(*(*(a1 + 40) + 8) + 40);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_100B15420(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];

  if (!v2 && ([*(*(a1 + 32) + 16) containsObject:*(a1 + 40)] & 1) == 0)
  {
    [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
    if (*(a1 + 56) == 1)
    {
      v3 = dispatch_get_global_queue(25, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100B15508;
      block[3] = &unk_101661760;
      v5 = *(a1 + 48);
      dispatch_async(v3, block);
    }
  }
}

void sub_100B15508(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100B156C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) screenScale];
  v4 = [v2 imageForScale:objc_msgSend(*(a1 + 40) isCarPlay:{"isCarPlay"), v3}];
  [*(a1 + 40) setImage:v4 forKey:*(a1 + 32)];
}

void sub_100B15740(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    if ([*(a1 + 32) useSearchImageFallback])
    {
      v3 = [*(a1 + 40) searchImage];
    }

    else
    {
      v3 = 0;
    }
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = v3;
    (*(v4 + 16))();
    v3 = v5;
  }
}

id sub_100B162DC(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeAllObjects];
  [*(*(a1 + 32) + 16) removeAllObjects];
  v2 = *(*(a1 + 32) + 24);

  return [v2 removeAllObjects];
}

void sub_100B1656C(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithCarPlay:1];
  v2 = qword_10195E6A0;
  qword_10195E6A0 = v1;
}

int64_t sub_100B16BD4(id a1, PersonalizedAutocompleteItem *a2, PersonalizedAutocompleteItem *a3)
{
  v4 = a3;
  v5 = [(PersonalizedAutocompleteItem *)a2 serverItemIndexInSection];
  v6 = [(PersonalizedAutocompleteItem *)v4 serverItemIndexInSection];

  if (v5 >= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

void sub_100B178B4(uint64_t a1)
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:6020 onTarget:647 eventValue:0];

  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:6050 onTarget:647 eventValue:*(a1 + 32)];

  v4 = +[MKSystemController sharedInstance];
  [v4 openURL:*(a1 + 40) completionHandler:0];
}

uint64_t sub_100B17AF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100B17B0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(*(a1 + 40) + 16) setObject:v2 forKeyedSubscript:*(a1 + 48)];
  }

  v3 = [*(*(a1 + 40) + 8) objectForKeyedSubscript:*(a1 + 48)];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [*(*(a1 + 40) + 8) setObject:0 forKeyedSubscript:*(a1 + 48)];
  v6 = sub_100799DD8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(*(*(a1 + 64) + 8) + 40) count];
    v8 = [*(a1 + 48) name];
    v9 = [*(a1 + 48) identifier];
    *buf = 134218498;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "resolveRTMapItem perform %ld blocks %@ %@", buf, 0x20u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(*(*(a1 + 64) + 8) + 40);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        (*(*(*(&v15 + 1) + 8 * v14) + 16))(*(*(&v15 + 1) + 8 * v14));
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

void sub_100B17DD4(uint64_t a1)
{
  v2 = sub_100799DD8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) name];
    v4 = [*(a1 + 32) identifier];
    *buf = 138412546;
    v26 = v3;
    v27 = 2112;
    v28 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "resolveRTMapItem %@ %@", buf, 0x16u);
  }

  v5 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:*(a1 + 32)];

  if (v5)
  {
    v6 = sub_100799DD8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) name];
      v8 = [*(a1 + 32) identifier];
      *buf = 138412546;
      v26 = v7;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "resolveRTMapItem in cache %@ %@", buf, 0x16u);
    }

    v9 = *(a1 + 48);
    v10 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:*(a1 + 32)];
    (*(v9 + 16))(v9, v10, 0);
  }

  else
  {
    v11 = [*(*(a1 + 40) + 8) objectForKeyedSubscript:*(a1 + 32)];

    if (v11)
    {
      v12 = sub_100799DD8();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [*(a1 + 32) name];
        v14 = [*(a1 + 32) identifier];
        *buf = 138412546;
        v26 = v13;
        v27 = 2112;
        v28 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "resolveRTMapItem add in progress %@ %@", buf, 0x16u);
      }

      v10 = [*(*(a1 + 40) + 8) objectForKeyedSubscript:*(a1 + 32)];
      v15 = objc_retainBlock(*(a1 + 48));
      [v10 addObject:v15];

      [*(*(a1 + 40) + 8) setObject:v10 forKeyedSubscript:*(a1 + 32)];
    }

    else
    {
      v16 = objc_retainBlock(*(a1 + 48));
      v10 = [NSMutableArray arrayWithObject:v16];

      [*(*(a1 + 40) + 8) setObject:v10 forKeyedSubscript:*(a1 + 32)];
      v17 = +[GEOMapService sharedService];
      v18 = [*(a1 + 32) geoMapItemHandle];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100B1814C;
      v21[3] = &unk_101638428;
      v24 = *(a1 + 56);
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      v22 = v19;
      v23 = v20;
      [v17 resolveMapItemFromHandle:v18 completionHandler:v21];
    }
  }
}

void sub_100B1814C(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  if (!v5 && *(a1 + 48) == 1)
  {
    v6 = [v18 _clientAttributes];

    if (v6)
    {
      v7 = v18;
    }

    else
    {
      v8 = objc_alloc_init(GEOMapItemClientAttributes);
      v9 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v18 clientAttributes:v8];

      v7 = v9;
    }

    v18 = v7;
    v10 = [v7 _clientAttributes];
    v11 = [v10 addressBookAttributes];

    if (!v11)
    {
      v12 = objc_alloc_init(GEOMapItemAddressBookAttributes);
      v13 = [v18 _clientAttributes];
      [v13 setAddressBookAttributes:v12];
    }

    v14 = [*(a1 + 32) extendedAttributes];
    v15 = [v14 addressIdentifier];
    v16 = [v18 _clientAttributes];
    v17 = [v16 addressBookAttributes];
    [v17 setAddressIdentifier:v15];
  }

  [*(a1 + 40) performCompletionsFor:*(a1 + 32) mapItem:v18 error:v5];
}

void sub_100B183C8(id a1)
{
  v1 = objc_alloc_init(HydrateGeoMapItemCache);
  v2 = qword_10195E6B0;
  qword_10195E6B0 = v1;
}

void sub_100B1A844(id a1)
{
  v1 = qword_10195E6C8;
  qword_10195E6C8 = &off_1016ED508;

  v4[0] = &off_1016E8708;
  v4[1] = &off_1016E8720;
  v5[0] = &off_1016ED520;
  v5[1] = &off_1016ED538;
  v4[2] = &off_1016E8738;
  v5[2] = &off_1016ED550;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];
  v3 = qword_10195E6D0;
  qword_10195E6D0 = v2;
}

void sub_100B1B580(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSelectionStyle:v3];
  [v4 setAccessoryType:*(a1 + 32)];
  v5 = [v4 textLabel];
  [v5 setTextAlignment:4];

  v6 = [UIFont _maps_systemFontWithSize:16.0];
  v7 = [v4 textLabel];
  [v7 setFont:v6];

  v8 = [v4 textLabel];

  [v8 setNumberOfLines:2];
}