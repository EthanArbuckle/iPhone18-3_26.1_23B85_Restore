@interface MKMapCamera
+ (CLLocationCoordinate2D)_adjustCoordinateForPitch:(CLLocationCoordinate2D)pitch heading:(double)heading pitch:(double)a5 minimumPitchRequiredForAdjustment:(double)adjustment tolerance:(double)tolerance;
+ (MKMapCamera)camera;
+ (MKMapCamera)cameraLookingAtCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate fromDistance:(CLLocationDistance)distance pitch:(CGFloat)pitch heading:(CLLocationDirection)heading;
+ (MKMapCamera)cameraLookingAtCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate fromEyeCoordinate:(CLLocationCoordinate2D)eyeCoordinate eyeAltitude:(CLLocationDistance)eyeAltitude;
+ (MKMapCamera)cameraLookingAtMapItem:(MKMapItem *)mapItem forViewSize:(CGSize)viewSize allowPitch:(BOOL)allowPitch;
+ (id)_cameraLookingAtGEOMapRect:(id *)rect aspectRatio:(float)ratio;
+ (id)_cameraLookingAtMapRect:(id)rect forViewSize:(CGSize)size;
+ (id)_cameraLookingAtScene:(id)scene;
+ (unint64_t)_sizeCategoryForViewSize:(CGSize)size;
- ($9433BFB5400FDC760880D1BFD6845728)_enclosingGEOMapRectForAspectRatio:(float)ratio;
- (BOOL)_validate;
- (BOOL)isEqual:(id)equal;
- (CGFloat)pitch;
- (CLLocationCoordinate2D)centerCoordinate;
- (CLLocationDirection)heading;
- (CLLocationDistance)altitude;
- (CLLocationDistance)centerCoordinateDistance;
- (MKMapCamera)initWithCoder:(id)coder;
- (id)_mapView;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_setPrecisePitch:(double)pitch;
- (void)_updateState;
- (void)encodeWithCoder:(id)coder;
- (void)setAltitude:(CLLocationDistance)altitude;
- (void)setCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate;
- (void)setCenterCoordinateDistance:(CLLocationDistance)centerCoordinateDistance;
- (void)setHeading:(CLLocationDirection)heading;
@end

@implementation MKMapCamera

- (void)_updateState
{
  self->_needsStateUpdate = 0;
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_mapView);
    v10 = v4[83];

    [v10 centerCoordinate];
    if (fabs(v6) <= 180.0 && fabs(v5) <= 90.0)
    {
      self->_centerCoordinate.latitude = v5;
      self->_centerCoordinate.longitude = v6;
      [v10 presentationYaw];
      if (v7 < 0.0 || v7 >= 360.0)
      {
        v7 = fmod(v7, 360.0);
        if (v7 < 0.0)
        {
          v7 = v7 + 360.0;
        }
      }

      self->_heading = v7;
      [v10 pitch];
      self->_pitch = v8;
      [v10 altitude];
      self->_altitude = v9;
    }
  }
}

- (CLLocationCoordinate2D)centerCoordinate
{
  if (self->_needsStateUpdate)
  {
    [(MKMapCamera *)self _updateState];
  }

  latitude = self->_centerCoordinate.latitude;
  longitude = self->_centerCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (BOOL)_validate
{
  [(MKMapCamera *)self centerCoordinate];
  v4 = fabs(v3) <= 180.0;
  v6 = fabs(v5) <= 90.0 && v4;
  if (!v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    [(MKMapCamera *)self centerCoordinate];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", v8, v9];
    v11 = [v7 stringWithFormat:@"Invalid camera centerCoordinate %@", v10];

    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v11 userInfo:0];
    [v12 raise];
  }

  return v6;
}

- (CLLocationDirection)heading
{
  if (self->_needsStateUpdate)
  {
    [(MKMapCamera *)self _updateState];
  }

  return self->_heading;
}

- (CGFloat)pitch
{
  if (self->_needsStateUpdate)
  {
    [(MKMapCamera *)self _updateState];
  }

  return self->_pitch;
}

- (CLLocationDistance)altitude
{
  if (self->_needsStateUpdate)
  {
    [(MKMapCamera *)self _updateState];
  }

  return self->_altitude;
}

+ (MKMapCamera)camera
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", *&self->_centerCoordinate.latitude, *&self->_centerCoordinate.longitude];
  v7 = [v3 stringWithFormat:@"<%@ %p centerCoordinate:%@ altitude:%.0fm heading:%.0f˚ pitch:%.0f˚>", v5, self, v6, *&self->_altitude, *&self->_heading, *&self->_pitch];

  return v7;
}

- (void)setCenterCoordinateDistance:(CLLocationDistance)centerCoordinateDistance
{
  self->_pitchAdjustsAltitude = 1;
  v4 = cos(self->_pitch * 0.0174532925) * centerCoordinateDistance;
  if (vabdd_f64(self->_altitude, v4) >= 0.00000011920929)
  {
    [(MKMapCamera *)self willChangeValueForKey:@"altitude"];
    [(MKMapCamera *)self willChangeValueForKey:@"centerCoordinateDistance"];
    self->_altitude = v4;
    [(MKMapCamera *)self didChangeValueForKey:@"altitude"];
    [(MKMapCamera *)self didChangeValueForKey:@"centerCoordinateDistance"];
    WeakRetained = objc_loadWeakRetained(&self->_mapView);
    [WeakRetained _updateFromCamera:self];
  }
}

- (CLLocationDistance)centerCoordinateDistance
{
  if (self->_needsStateUpdate)
  {
    [(MKMapCamera *)self _updateState];
  }

  altitude = self->_altitude;
  return altitude / cos(self->_pitch * 0.0174532925);
}

- (void)setAltitude:(CLLocationDistance)altitude
{
  self->_pitchAdjustsAltitude = 0;
  if (vabdd_f64(self->_altitude, altitude) >= 0.00000011920929)
  {
    [(MKMapCamera *)self willChangeValueForKey:@"altitude"];
    [(MKMapCamera *)self willChangeValueForKey:@"centerCoordinateDistance"];
    self->_altitude = altitude;
    [(MKMapCamera *)self didChangeValueForKey:@"altitude"];
    [(MKMapCamera *)self didChangeValueForKey:@"centerCoordinateDistance"];
    WeakRetained = objc_loadWeakRetained(&self->_mapView);
    [WeakRetained _updateFromCamera:self];
  }
}

- (void)_setPrecisePitch:(double)pitch
{
  if (vabdd_f64(self->_pitch, pitch) >= 0.00000011920929)
  {
    if (self->_pitchAdjustsAltitude)
    {
      [(MKMapCamera *)self willChangeValueForKey:@"altitude"];
      [(MKMapCamera *)self centerCoordinateDistance];
      self->_altitude = cos(pitch * 0.0174532925) * v5;
      [(MKMapCamera *)self didChangeValueForKey:@"altitude"];
    }

    [(MKMapCamera *)self willChangeValueForKey:@"pitch"];
    self->_pitch = pitch;
    [(MKMapCamera *)self didChangeValueForKey:@"pitch"];
    WeakRetained = objc_loadWeakRetained(&self->_mapView);
    [WeakRetained _updateFromCamera:self];
  }
}

- (void)setHeading:(CLLocationDirection)heading
{
  if (vabdd_f64(self->_heading, heading) >= 0.00000011920929)
  {
    [(MKMapCamera *)self willChangeValueForKey:@"heading"];
    self->_heading = heading;
    [(MKMapCamera *)self didChangeValueForKey:@"heading"];
    WeakRetained = objc_loadWeakRetained(&self->_mapView);
    [WeakRetained _updateFromCamera:self];
  }
}

- (void)setCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate
{
  longitude = centerCoordinate.longitude;
  latitude = centerCoordinate.latitude;
  if (vabdd_f64(self->_centerCoordinate.latitude, centerCoordinate.latitude) >= 0.00000000999999994 || vabdd_f64(self->_centerCoordinate.longitude, centerCoordinate.longitude) >= 0.00000000999999994)
  {
    [(MKMapCamera *)self willChangeValueForKey:@"centerCoordinate"];
    self->_centerCoordinate.latitude = latitude;
    self->_centerCoordinate.longitude = longitude;
    [(MKMapCamera *)self didChangeValueForKey:@"centerCoordinate"];
    WeakRetained = objc_loadWeakRetained(&self->_mapView);
    [WeakRetained _updateFromCamera:self];
  }
}

- (id)_mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = self->_centerCoordinate.latitude == v5[1] && self->_centerCoordinate.longitude == v5[2] && self->_heading == v5[3] && self->_pitch == v5[4] && self->_altitude == v5[5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(MKMapCamera *)self centerCoordinate];
  [v4 setCenterCoordinate:?];
  [(MKMapCamera *)self heading];
  [v4 setHeading:?];
  [(MKMapCamera *)self pitch];
  [v4 setPitch:?];
  [(MKMapCamera *)self altitude];
  [v4 setAltitude:?];
  v4[56] = self->_pitchAdjustsAltitude;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self->_needsStateUpdate)
  {
    [(MKMapCamera *)self _updateState];
  }

  [coderCopy encodeDouble:@"centerCoordinate.latitude" forKey:self->_centerCoordinate.latitude];
  [coderCopy encodeDouble:@"centerCoordinate.longitude" forKey:self->_centerCoordinate.longitude];
  [coderCopy encodeDouble:@"heading" forKey:self->_heading];
  [coderCopy encodeDouble:@"pitch" forKey:self->_pitch];
  [coderCopy encodeDouble:@"altitude" forKey:self->_altitude];
  [coderCopy encodeBool:self->_pitchAdjustsAltitude forKey:@"pitchAdjustsAltitude"];
}

- (MKMapCamera)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MKMapCamera;
  v5 = [(MKMapCamera *)&v12 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"centerCoordinate.latitude"];
    v5->_centerCoordinate.latitude = v6;
    [coderCopy decodeDoubleForKey:@"centerCoordinate.longitude"];
    v5->_centerCoordinate.longitude = v7;
    [coderCopy decodeDoubleForKey:@"heading"];
    v5->_heading = v8;
    [coderCopy decodeDoubleForKey:@"pitch"];
    v5->_pitch = v9;
    [coderCopy decodeDoubleForKey:@"altitude"];
    v5->_altitude = v10;
    v5->_pitchAdjustsAltitude = [coderCopy decodeBoolForKey:@"pitchAdjustsAltitude"];
  }

  return v5;
}

- ($9433BFB5400FDC760880D1BFD6845728)_enclosingGEOMapRectForAspectRatio:(float)ratio
{
  [(MKMapCamera *)self centerCoordinate];
  [(MKMapCamera *)self heading];
  [(MKMapCamera *)self pitch];
  [(MKMapCamera *)self altitude];
  GEOMapRectEnclosingCameraProperties();
  result.var1.var1 = v7;
  result.var1.var0 = v6;
  result.var0.var1 = v5;
  result.var0.var0 = v4;
  return result;
}

+ (id)_cameraLookingAtScene:(id)scene
{
  sceneCopy = scene;
  _mapItem = [sceneCopy _mapItem];
  _geoMapItem = [_mapItem _geoMapItem];
  _storefrontPresentationInfo = [_geoMapItem _storefrontPresentationInfo];

  LOBYTE(_mapItem) = [sceneCopy _wantsCloseUpView];
  if (_mapItem)
  {
    closeUpView = [_storefrontPresentationInfo closeUpView];
  }

  else
  {
    standOffView = [_storefrontPresentationInfo standOffView];
    v9 = standOffView;
    if (standOffView)
    {
      closeUpView2 = standOffView;
    }

    else
    {
      closeUpView2 = [_storefrontPresentationInfo closeUpView];
    }

    closeUpView = closeUpView2;
  }

  VKCameraPropertiesForStoreFrontView();
  camera = [objc_opt_class() camera];
  [camera setCenterCoordinate:{0.0, 0.0}];
  [camera setAltitude:0.0];
  [camera setHeading:0.0];
  [camera setPitch:0.0];

  return camera;
}

+ (id)_cameraLookingAtMapRect:(id)rect forViewSize:(CGSize)size
{
  rectCopy = rect;
  v4 = size.width / size.height;
  *&v4 = size.width / size.height;
  v5 = [self _cameraLookingAtGEOMapRect:&rectCopy aspectRatio:v4];

  return v5;
}

+ (id)_cameraLookingAtGEOMapRect:(id *)rect aspectRatio:(float)ratio
{
  VKCameraPropertiesForRect();
  camera = [self camera];
  [camera setCenterCoordinate:{0.0, 0.0}];
  [camera setAltitude:0.0];

  return camera;
}

+ (unint64_t)_sizeCategoryForViewSize:(CGSize)size
{
  if (size.width < 200.0)
  {
    return 0;
  }

  if (size.width > 428.0)
  {
    return 2;
  }

  if (size.width >= size.height)
  {
    return 1;
  }

  if (size.width <= 300.0)
  {
    return 1;
  }

  return 2;
}

+ (CLLocationCoordinate2D)_adjustCoordinateForPitch:(CLLocationCoordinate2D)pitch heading:(double)heading pitch:(double)a5 minimumPitchRequiredForAdjustment:(double)adjustment tolerance:(double)tolerance
{
  longitude = pitch.longitude;
  latitude = pitch.latitude;
  v9 = a5 / adjustment / -tolerance;
  v10 = __sincos_stret((360.0 - heading) * 3.14159265 / 180.0);

  v13 = CLLocationCoordinate2DMake(latitude - v9 * v10.__cosval, longitude + v9 * v10.__sinval);
  v12 = v13.longitude;
  v11 = v13.latitude;
  result.longitude = v12;
  result.latitude = v11;
  return result;
}

+ (MKMapCamera)cameraLookingAtMapItem:(MKMapItem *)mapItem forViewSize:(CGSize)viewSize allowPitch:(BOOL)allowPitch
{
  v5 = allowPitch;
  height = viewSize.height;
  width = viewSize.width;
  v223 = *MEMORY[0x1E69E9840];
  v9 = mapItem;
  _viewportFrame = [(MKMapItem *)v9 _viewportFrame];

  if (_viewportFrame)
  {
    _viewportFrame2 = [(MKMapItem *)v9 _viewportFrame];
    [_viewportFrame2 latitude];
    v13 = v12;
    [_viewportFrame2 longitude];
    v17 = CLLocationCoordinate2DMake(v13, v14);
    longitude = v17.longitude;
    latitude = v17.latitude;
    if (!v5)
    {
      [(MKMapItem *)v9 _coordinate];
    }

    v18 = MKTilePointForCoordinate(latitude, longitude, 21.0);
    v20 = v19;
    [_viewportFrame2 distance];
    v22 = v21;
    v23 = +[MKSystemController sharedInstance];
    [v23 screenSize];
    v25 = v24;
    v27 = v26;

    v28 = exp2(21.0 - v22);
    v29 = [MKMapCamera _cameraLookingAtMapRect:(v18 - v25 / (1.0 / v28) * 0.5) forViewSize:(v20 - v27 / (1.0 / v28) * 0.5), (v25 / (1.0 / v28)), (v27 / (1.0 / v28)), v25, v27];
    [_viewportFrame2 heading];
    [v29 setHeading:v30];
    v31 = 0.0;
    if (v5)
    {
      [_viewportFrame2 pitch];
      v31 = v32;
    }

    [v29 setPitch:v31];
    if (width == v25 && height == v27)
    {
      v212 = v29;
LABEL_100:

      goto LABEL_101;
    }

    v58 = [v29 copy];
    [v58 setHeading:0.0];
    [v58 setPitch:0.0];
    v59 = width / height;
    *&v60 = width / height;
    [v58 enclosingMapRectForAspectRatio:v60];
    v62 = log2(width / v61) + 21.0;
    if (v62 >= 0.0)
    {
      v63 = v62;
    }

    else
    {
      v63 = 0.0;
    }

    [(MKMapItem *)v9 _coordinate];
    v65 = v64;
    v67 = v66;
    v68 = [self _sizeCategoryForViewSize:{width, height}];
    switch(v68)
    {
      case 2:
        [_viewportFrame2 distance];
        v63 = v87;
        break;
      case 1:
        v69 = 80.0 / width + -0.300000012;
        v70 = v59 / 1.75;
        goto LABEL_27;
      case 0:
        v69 = 30.0 / width + 1.29999995;
        v70 = v59 * 0.125;
LABEL_27:
        v84 = v69 + v70;
        [_viewportFrame2 distance];
        v63 = v85 - v84;
        *&v86 = 40.0;
        goto LABEL_30;
    }

    *&v86 = 1.79769313e308;
LABEL_30:
    v88 = *&v86;
    [_viewportFrame2 pitch];
    if (v88 < v89 && v5)
    {
      [_viewportFrame2 heading];
      v91 = v90;
      [_viewportFrame2 pitch];
      [self _adjustCoordinateForPitch:v65 heading:v67 pitch:v91 minimumPitchRequiredForAdjustment:v92 tolerance:{v88, 5000.0}];
      v65 = v93;
      v67 = v94;
    }

    v95 = MKTilePointForCoordinate(v65, v67, 21.0);
    v97 = v96;
    v98 = 1.0 / exp2(21.0 - fmax(v63, 15.0));
    v206 = width;
    v99 = width / v98;
    v212 = height;
    v100 = height / v98;
    v101 = v95 - v99 * 0.5;
    v102 = v97 - v100 * 0.5;
    if ([_viewportFrame2 hasViewTargetBounds])
    {
      v204 = v67;
      [_viewportFrame2 minViewTargetBounds];
      v104 = v103;
      [_viewportFrame2 maxViewTargetBounds];
      v106 = v104 - v105;
      GEOCalculateDistance();
      v108 = sqrt(v106 * v106 + v107 * v107);
      [_viewportFrame2 maxViewTargetBounds];
      v110 = v109;
      if (v108 <= v109)
      {
        v111 = v109;
      }

      else
      {
        v111 = v108;
      }

      v112 = 0.699999988;
      if (v108 < v109)
      {
        v112 = 0.5;
      }

      MKMapRectMakeWithRadialDistance(v17.latitude, v17.longitude, v112 * (v111 * 0.5));
      if (v114 <= v99)
      {
        v67 = v204;
      }

      else
      {
        if (v113 > v100)
        {
          v115 = dbl_1A30F71A0[v108 < v110];
          v99 = v99 * v115;
          v100 = v100 * v115;
        }

        v67 = v204;
      }
    }

    v212 = [MKMapCamera _cameraLookingAtMapRect:v101 forViewSize:v102, v99, v100, v206, v212];
    [_viewportFrame2 heading];
    [v212 setHeading:v189];
    [v212 setCenterCoordinate:{v65, v67}];
    v190 = 0.0;
    if (v5)
    {
      [_viewportFrame2 pitch];
      v190 = v191;
    }

    [v212 setPitch:v190];

    goto LABEL_100;
  }

  [(MKMapItem *)v9 _coordinate];
  v35 = v34;
  v37 = v36;
  if (fabs(v36) > 180.0 || fabs(v34) > 90.0)
  {
    v212 = +[MKMapCamera camera];
    goto LABEL_101;
  }

  v38 = [self _sizeCategoryForViewSize:{width, height}];
  v39 = 0.0;
  v209 = 0.0;
  v40 = 0.0;
  if (v38 <= 2)
  {
    v39 = dbl_1A30F7780[v38];
    v40 = dbl_1A30F7798[v38];
  }

  v201 = v39;
  v41 = MKTilePointForCoordinate(v35, v37, 21.0);
  v43 = v42;
  v200 = v40;
  v44 = 1.0 / exp2(21.0 - v40);
  placemark = [(MKMapItem *)v9 placemark];
  region = [placemark region];

  objc_opt_class();
  v202 = v41;
  v203 = v43;
  if (objc_opt_isKindOfClass())
  {
    v47 = region;
    [v47 center];
    v49 = v48;
    v51 = v50;
    [v47 radius];
    v53 = v52;

    v54 = MKMapRectMakeWithRadialDistance(v49, v51, v53);
    rect = v55;
    v208 = v56;
    v209 = v57;
  }

  else
  {
    v54 = INFINITY;
    v208 = 0.0;
    rect = INFINITY;
  }

  v71 = width / v44;
  v211 = height;
  v72 = height / v44;
  _geoMapItem = [(MKMapItem *)v9 _geoMapItem];
  displayMapRegionOrNil = [_geoMapItem displayMapRegionOrNil];

  if (displayMapRegionOrNil)
  {
    v75 = displayMapRegionOrNil;
    GEOMapRectForMapRegion();
    MKCoordinateRegionForMapRect(v225);

    v71 = width / v44;
    v72 = height / v44;
    GEOMapRectForCoordinateRegion();
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;
  }

  else
  {
    v81 = 0.0;
    v77 = INFINITY;
    v79 = INFINITY;
    v83 = 0.0;
  }

  v116 = v71 * 0.5;
  v117 = v72 * 0.5;
  v118 = v77 == INFINITY;
  if (v79 != INFINITY)
  {
    v118 = 0;
  }

  v119 = rect;
  if (v54 == INFINITY && rect == INFINITY)
  {
    v207 = v83;
    v210 = v81;
    v121 = v202;
    v120 = v203;
    if (v118)
    {
      v208 = 0.0;
      v209 = 0.0;
      v54 = INFINITY;
      v122 = INFINITY;
      goto LABEL_72;
    }

    v198 = v72 * 0.5;
    v199 = v71 * 0.5;
    v146 = MKGetMKMapCameraLog();
    if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
    {
      v147 = MEMORY[0x1E696AEC0];
      v148 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v77, *&v79];
      v149 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v210, *&v207];
      [v147 stringWithFormat:@"{%@, %@}", v148, v149];
      v150 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

      *buf = 138477827;
      v218 = v150;
      _os_log_impl(&dword_1A2EA0000, v146, OS_LOG_TYPE_INFO, "Only display framing data is present - display:%{private}@", buf, 0xCu);
    }

    v54 = v77;
    v122 = v79;
    v208 = v210;
    v209 = v207;
  }

  else
  {
    v198 = v72 * 0.5;
    v199 = v71 * 0.5;
    if (v118)
    {
      v123 = MKGetMKMapCameraLog();
      v121 = v202;
      v120 = v203;
      if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
      {
        v124 = MEMORY[0x1E696AEC0];
        v125 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v54, *&rect];
        v126 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v208, *&v209];
        [v124 stringWithFormat:@"{%@, %@}", v125, v126];
        v127 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

        *buf = 138477827;
        v218 = v127;
        _os_log_impl(&dword_1A2EA0000, v123, OS_LOG_TYPE_INFO, "Only placemark framing data is present - placemark:%{private}@", buf, 0xCu);
      }

      v122 = rect;
    }

    else
    {
      v197 = v71;
      v215 = 0.0;
      v216 = 0.0;
      v213 = 0.0;
      v214 = 0.0;
      v128 = v54;
      v129 = v208;
      v130 = v209;
      MKCoordinateRegionForMapRect(*(&v119 - 1));
      __61__MKMapCamera_cameraLookingAtMapItem_forViewSize_allowPitch___block_invoke(&v216, &v215);
      v131 = displayMapRegionOrNil;
      GEOMapRectForMapRegion();
      MKCoordinateRegionForMapRect(v226);

      v132 = v208;
      __61__MKMapCamera_cameraLookingAtMapItem_forViewSize_allowPitch___block_invoke(&v214, &v213);
      v133 = v213 < v215 || v214 < v216;
      v134 = MKGetMKMapCameraLog();
      if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
      {
        *&v135 = COERCE_DOUBLE(@"placemark");
        if (v133)
        {
          *&v135 = COERCE_DOUBLE(@"display");
        }

        v193 = v135;
        v136 = MEMORY[0x1E696AEC0];
        v196 = region;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v77, *&v79];
        v137 = v195 = displayMapRegionOrNil;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v81, *&v83];
        v138 = v194 = v133;
        v138 = [v136 stringWithFormat:@"{%@, %@}", v137, v138];

        v140 = MEMORY[0x1E696AEC0];
        v141 = v138;
        v142 = [v140 stringWithFormat:@"{%.1f, %.1f}", *&v54, *&rect];
        v143 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v208, *&v209];
        v143 = [v140 stringWithFormat:@"{%@, %@}", v142, v143];

        region = v196;
        displayMapRegionOrNil = v195;
        *buf = 138543875;
        v218 = *&v193;
        v219 = 2113;
        v220 = v138;
        v221 = 2113;
        v222 = v143;
        _os_log_impl(&dword_1A2EA0000, v134, OS_LOG_TYPE_INFO, "Will prefer %{public}@ framing data - display:%{private}@ placemark:%{private}@", buf, 0x20u);

        v133 = v194;
      }

      if (v133)
      {
        v54 = v77;
      }

      v122 = rect;
      if (v133)
      {
        v122 = v79;
        v132 = v81;
      }

      v145 = v209;
      if (v133)
      {
        v145 = v83;
      }

      v208 = v132;
      v209 = v145;
      v121 = v202;
      v120 = v203;
      v71 = v197;
    }
  }

  v117 = v198;
  v116 = v199;
LABEL_72:
  v151 = v121 - v116;
  v152 = v120 - v117;
  if (v54 == INFINITY && v122 == INFINITY)
  {
    v153 = MKGetMKMapCameraLog();
    if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
    {
      v154 = MEMORY[0x1E696AEC0];
      v155 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v151, *&v152];
      v156 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v71, *&v72];
      v156 = [v154 stringWithFormat:@"{%@, %@}", v155, v156];

      *buf = 134349315;
      v218 = v200;
      v219 = 2113;
      v220 = v156;
      _os_log_impl(&dword_1A2EA0000, v153, OS_LOG_TYPE_INFO, "No framing data is present - zoomLevel:%{public}f zoom:%{private}@", buf, 0x16u);
    }

    v158 = v72;

    v159 = v201;
  }

  else
  {
    v227.origin.x = v151;
    v227.origin.y = v120 - v117;
    v227.size.width = v71;
    v227.size.height = v72;
    v160 = v54;
    v161 = v54;
    v162 = v122;
    v163 = v208;
    v164 = v209;
    v165 = MKMapRectContainsRect(v227, *(&v122 - 1));
    v166 = MKGetMKMapCameraLog();
    v167 = os_log_type_enabled(v166, OS_LOG_TYPE_INFO);
    if (v165)
    {
      if (v167)
      {
        v168 = MEMORY[0x1E696AEC0];
        v169 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v151, *&v152];
        v170 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v71, *&v72];
        v170 = [v168 stringWithFormat:@"{%@, %@}", v169, v170];

        *buf = 134349315;
        v218 = v200;
        v219 = 2113;
        v220 = v170;
        _os_log_impl(&dword_1A2EA0000, v166, OS_LOG_TYPE_INFO, "Framing data rect fits within zoom level rect - zoomLevel:%{public}f zoom:%{private}@", buf, 0x16u);
      }

      v158 = v72;
    }

    else
    {
      if (v167)
      {
        v172 = MEMORY[0x1E696AEC0];
        v173 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v151, *&v152];
        v174 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v71, *&v72];
        v174 = [v172 stringWithFormat:@"{%@, %@}", v173, v174];

        *buf = 134349315;
        v218 = v200;
        v219 = 2113;
        v220 = v174;
        _os_log_impl(&dword_1A2EA0000, v166, OS_LOG_TYPE_INFO, "Framing data rect is too large to fit in zoom level rect - zoomLevel:%{public}f zoom:%{private}@", buf, 0x16u);
      }

      v151 = v160;
      v152 = v162;
      v71 = v208;
      v158 = v209;
    }

    v159 = v201;
    v120 = v203;
  }

  v212 = [self _cameraLookingAtMapRect:v151 forViewSize:{v152, v71, v158, width, v211}];
  if (v159 > 0.0 && v5)
  {
    v176 = [self _cameraLookingAtMapRect:v202 - width / 0.14358737 * 0.5 forViewSize:{v120 - v211 / 0.14358737 * 0.5, width / 0.14358737, v211 / 0.14358737, width, v211}];
    [v212 centerCoordinateDistance];
    v178 = v177;
    [v176 centerCoordinateDistance];
    v180 = v179;
    v181 = MKGetMKMapCameraLog();
    v182 = os_log_type_enabled(v181, OS_LOG_TYPE_INFO);
    if (v178 <= v180)
    {
      if (v182)
      {
        [v212 centerCoordinateDistance];
        v187 = v186;
        [v176 centerCoordinateDistance];
        *buf = 134349568;
        v218 = v159;
        v219 = 2050;
        v220 = v187;
        v221 = 2050;
        v222 = v188;
        _os_log_impl(&dword_1A2EA0000, v181, OS_LOG_TYPE_INFO, "Pitching the camera %{public}f degrees - camera:%{public}f max:%{public}f", buf, 0x20u);
      }

      [v212 setPitch:v159];
    }

    else
    {
      if (v182)
      {
        [v212 centerCoordinateDistance];
        v184 = v183;
        [v176 centerCoordinateDistance];
        *buf = 134349312;
        v218 = v184;
        v219 = 2050;
        v220 = v185;
        _os_log_impl(&dword_1A2EA0000, v181, OS_LOG_TYPE_INFO, "Not pitching the camera - camera:%{public}f max:%{public}f", buf, 0x16u);
      }
    }
  }

LABEL_101:

  return v212;
}

uint64_t __61__MKMapCamera_cameraLookingAtMapItem_forViewSize_allowPitch___block_invoke(void *a1, void *a2)
{
  v8.latitude = 0.0;
  v8.longitude = 0.0;
  v7.latitude = 0.0;
  v7.longitude = 0.0;
  MKCoordinatesForRegion(&v8, &v7);
  GEOCalculateDistance();
  *a2 = v4;
  result = GEOCalculateDistance();
  *a1 = v6;
  return result;
}

+ (MKMapCamera)cameraLookingAtCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate fromDistance:(CLLocationDistance)distance pitch:(CGFloat)pitch heading:(CLLocationDirection)heading
{
  longitude = centerCoordinate.longitude;
  latitude = centerCoordinate.latitude;
  camera = [objc_opt_class() camera];
  [camera setCenterCoordinate:{latitude, longitude}];
  [camera setHeading:heading];
  [camera _setPrecisePitch:pitch];
  [camera setAltitude:(cos(pitch * 0.0174532925) * distance)];

  return camera;
}

+ (MKMapCamera)cameraLookingAtCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate fromEyeCoordinate:(CLLocationCoordinate2D)eyeCoordinate eyeAltitude:(CLLocationDistance)eyeAltitude
{
  longitude = eyeCoordinate.longitude;
  latitude = eyeCoordinate.latitude;
  v8 = centerCoordinate.longitude;
  v9 = centerCoordinate.latitude;
  camera = [objc_opt_class() camera];
  [camera setCenterCoordinate:{v9, v8}];
  MKDirectionBetween(latitude, longitude, v9, v8);
  [camera setHeading:?];
  CLLocationCoordinate2DGetDistanceFrom();
  v12 = v11;
  if (eyeAltitude < 50.0)
  {
    eyeAltitude = 50.0;
  }

  while (atan2(v12, eyeAltitude) * 57.2957795 > 85.0)
  {
    eyeAltitude = eyeAltitude + eyeAltitude;
  }

  [camera _setPrecisePitch:?];
  [camera setAltitude:eyeAltitude];

  return camera;
}

@end