@interface DrivingWalkingSteppingSignGenerator
- (CGSize)sizeForSignAtIndex:(int64_t)index fittingSize:(CGSize)size;
- (CellVendor)cellVendor;
- (DrivingWalkingSteppingSignGenerator)initWithRoute:(id)route options:(int64_t)options;
- (double)distanceFromPageControlBaselineToBottomOfSignAtIndex:(int64_t)index fittingSize:(CGSize)size;
- (double)distanceFromPageControlBaselineToTopOfAuxView;
- (id)_distanceTextForStep:(id)step;
- (id)_distanceTextForStep:(id)step distance:(double)distance;
- (id)_signSizeAttributesForSign:(id)sign fittingSize:(CGSize)size;
- (id)currentViewStateForSignAtIndex:(int64_t)index;
- (id)signAtIndex:(int64_t)index;
- (id)stepAtSignIndex:(int64_t)index;
- (int64_t)signIndexForStep:(id)step;
- (int64_t)signIndexForStepIndex:(int64_t)index;
- (void)_configureSign:(id)sign forSteppingWithStep:(id)step;
- (void)_configureSign:(id)sign withStep:(id)step;
- (void)_configureWithRoute:(id)route;
- (void)configureNavSignView:(id)view withSign:(id)sign;
- (void)rectForSignAtIndex:(int64_t)index currentStepIndex:(unint64_t)stepIndex handler:(id)handler;
- (void)resetDistanceForSignAtIndex:(int64_t)index;
- (void)setCellVendor:(id)vendor;
- (void)updateDistance:(double)distance forStepAtIndex:(int64_t)index;
- (void)updateInstruction:(id)instruction forSignAtIndex:(int64_t)index;
- (void)updateSignForStepAtIndex:(int64_t)index maneuverInfo:(id)info;
@end

@implementation DrivingWalkingSteppingSignGenerator

- (CellVendor)cellVendor
{
  WeakRetained = objc_loadWeakRetained(&self->_cellVendor);

  return WeakRetained;
}

- (void)rectForSignAtIndex:(int64_t)index currentStepIndex:(unint64_t)stepIndex handler:(id)handler
{
  handlerCopy = handler;
  v7 = [(DrivingWalkingSteppingSignGenerator *)self stepAtSignIndex:index];
  v8 = sub_100AF1870(v7);
  if (handlerCopy)
  {
    handlerCopy[2](v8);
  }
}

- (double)distanceFromPageControlBaselineToTopOfAuxView
{
  _forWalkingNavigation = [(DrivingWalkingSteppingSignGenerator *)self _forWalkingNavigation];
  result = 17.0;
  if (_forWalkingNavigation)
  {
    return 13.0;
  }

  return result;
}

- (id)_signSizeAttributesForSign:(id)sign fittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  signCopy = sign;
  steppingSizingView = self->_steppingSizingView;
  if (!steppingSizingView)
  {
    v9 = [(NavSignView *)[NavManeuverSignView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v10 = self->_steppingSizingView;
    self->_steppingSizingView = v9;

    [(NavManeuverSignView *)self->_steppingSizingView setTranslatesAutoresizingMaskIntoConstraints:0];
    steppingSizingView = self->_steppingSizingView;
  }

  [(NavManeuverSignView *)steppingSizingView clearContent];
  [(DrivingWalkingSteppingSignGenerator *)self configureNavSignView:self->_steppingSizingView withSign:signCopy];
  widthAnchor = [(NavManeuverSignView *)self->_steppingSizingView widthAnchor];
  v12 = [widthAnchor constraintEqualToConstant:width];

  [v12 setActive:1];
  [(NavManeuverSignView *)self->_steppingSizingView systemLayoutSizeFittingSize:width, height];
  v14 = v13;
  v16 = v15;
  [v12 setActive:0];
  _forWalkingNavigation = [(DrivingWalkingSteppingSignGenerator *)self _forWalkingNavigation];
  minorLabel = [(NavSignView *)self->_steppingSizingView minorLabel];
  lineCount = [minorLabel lineCount];

  v20 = 3.0;
  if (_forWalkingNavigation)
  {
    v20 = 6.0;
  }

  v21 = -2.0;
  if (_forWalkingNavigation)
  {
    v21 = 4.0;
  }

  if (lineCount <= 1)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  v23 = [[SteppingSignSizeAttributes alloc] initWithSize:v14 signToPageControlDistance:v16, v22];

  return v23;
}

- (double)distanceFromPageControlBaselineToBottomOfSignAtIndex:(int64_t)index fittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8 = [SteppingSignSizeAttributesCache sizeAttributesForSignAtIndex:"sizeAttributesForSignAtIndex:fittingSize:" fittingSize:?];
  if (v8)
  {
    height = v8;
    [v8 signToPageControlDistance];
    v11 = v10;
LABEL_3:

    return v11;
  }

  v11 = 20.0;
  if ((index & 0x8000000000000000) == 0 && [(NSMutableArray *)self->_signs count]> index)
  {
    v13 = [(NSMutableArray *)self->_signs objectAtIndexedSubscript:index];
    height = [(DrivingWalkingSteppingSignGenerator *)self _signSizeAttributesForSign:v13 fittingSize:width, height];
    [(SteppingSignSizeAttributesCache *)self->_sizeCache setSizeAttributes:height forSignAtIndex:index fittingSize:width, height];
    [height signToPageControlDistance];
    v11 = v14;

    goto LABEL_3;
  }

  return v11;
}

- (CGSize)sizeForSignAtIndex:(int64_t)index fittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8 = [SteppingSignSizeAttributesCache sizeAttributesForSignAtIndex:"sizeAttributesForSignAtIndex:fittingSize:" fittingSize:?];
  if (v8)
  {
    v9 = v8;
    [v8 size];
    v11 = v10;
    v13 = v12;
  }

  else if ([(NSMutableArray *)self->_signs count]<= index)
  {
    v11 = CGSizeZero.width;
    v13 = CGSizeZero.height;
  }

  else
  {
    v14 = [(NSMutableArray *)self->_signs objectAtIndexedSubscript:index];
    height = [(DrivingWalkingSteppingSignGenerator *)self _signSizeAttributesForSign:v14 fittingSize:width, height];
    [(SteppingSignSizeAttributesCache *)self->_sizeCache setSizeAttributes:height forSignAtIndex:index fittingSize:width, height];
    [height size];
    v11 = v16;
    v13 = v17;
  }

  v18 = v11;
  v19 = v13;
  result.height = v19;
  result.width = v18;
  return result;
}

- (int64_t)signIndexForStepIndex:(int64_t)index
{
  if (![(NSMutableArray *)self->_signs count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = 0;
  while (1)
  {
    v6 = [(NSMutableArray *)self->_signs objectAtIndexedSubscript:v5];
    stepIndexRange = [v6 stepIndexRange];
    v9 = v8;

    if (index >= stepIndexRange && index - stepIndexRange < v9)
    {
      break;
    }

    if (++v5 >= [(NSMutableArray *)self->_signs count])
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v5;
}

- (int64_t)signIndexForStep:(id)step
{
  stepIndex = [step stepIndex];

  return [(DrivingWalkingSteppingSignGenerator *)self signIndexForStepIndex:stepIndex];
}

- (id)stepAtSignIndex:(int64_t)index
{
  if (index > 0x7FFFFFFFFFFFFFFELL || [(NSMutableArray *)self->_signs count]<= index)
  {
    step = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_signs objectAtIndexedSubscript:index];
    step = [v5 step];
  }

  return step;
}

- (id)signAtIndex:(int64_t)index
{
  cellVendor = [(DrivingWalkingSteppingSignGenerator *)self cellVendor];
  v6 = [NSIndexPath indexPathForItem:index inSection:0];
  v7 = [cellVendor dequeueReusableCellWithReuseIdentifier:@"NavSignCellIdentifier" forIndexPath:v6];

  v8 = [(NSMutableArray *)self->_signs objectAtIndexedSubscript:index];
  navSignView = [v7 navSignView];
  [(DrivingWalkingSteppingSignGenerator *)self configureNavSignView:navSignView withSign:v8];

  return v7;
}

- (id)currentViewStateForSignAtIndex:(int64_t)index
{
  if (index <= 0x7FFFFFFFFFFFFFFELL)
  {
    v5 = [(NSMutableArray *)self->_signs objectAtIndexedSubscript:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setCellVendor:(id)vendor
{
  vendorCopy = vendor;
  objc_storeWeak(&self->_cellVendor, vendorCopy);
  [vendorCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:@"NavSignCellIdentifier"];
}

- (void)updateInstruction:(id)instruction forSignAtIndex:(int64_t)index
{
  instructionCopy = instruction;
  if (index <= 0x7FFFFFFFFFFFFFFELL)
  {
    v11 = instructionCopy;
    v7 = [(NSMutableArray *)self->_signs count]> index;
    instructionCopy = v11;
    if (v7)
    {
      v8 = [(NSMutableArray *)self->_signs objectAtIndexedSubscript:index];
      mkServerFormattedString = [v11 mkServerFormattedString];
      maneuverInfo = [v8 maneuverInfo];
      [maneuverInfo setMinorText:mkServerFormattedString];

      [(SteppingSignSizeAttributesCache *)self->_sizeCache invalidateSizeAttributesForSignAtIndex:index];
      instructionCopy = v11;
    }
  }
}

- (void)updateDistance:(double)distance forStepAtIndex:(int64_t)index
{
  v6 = [(DrivingWalkingSteppingSignGenerator *)self signIndexForStepIndex:index];
  if (v6 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v7 = v6;
    if (v6 < [(NSMutableArray *)self->_signs count])
    {
      v11 = [(NSArray *)self->_stepsWithCorrespondingSigns objectAtIndexedSubscript:v7];
      v8 = [(NSMutableArray *)self->_signs objectAtIndexedSubscript:v7];
      v9 = [(DrivingWalkingSteppingSignGenerator *)self _distanceTextForStep:v11 distance:distance];
      maneuverInfo = [v8 maneuverInfo];
      [maneuverInfo setMajorText:v9];
    }
  }
}

- (void)updateSignForStepAtIndex:(int64_t)index maneuverInfo:(id)info
{
  infoCopy = info;
  v6 = [(DrivingWalkingSteppingSignGenerator *)self signIndexForStepIndex:index];
  if (v6 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v7 = v6;
    if (v6 < [(NSMutableArray *)self->_signs count])
    {
      v8 = [(NSMutableArray *)self->_signs objectAtIndexedSubscript:v7];
      [v8 setManeuverInfo:infoCopy];
      [(SteppingSignSizeAttributesCache *)self->_sizeCache invalidateSizeAttributesForSignAtIndex:v7];
    }
  }
}

- (void)resetDistanceForSignAtIndex:(int64_t)index
{
  if (index <= 0x7FFFFFFFFFFFFFFELL && [(NSMutableArray *)self->_signs count]> index)
  {
    v8 = [(NSMutableArray *)self->_signs objectAtIndexedSubscript:index];
    step = [v8 step];
    v6 = [(DrivingWalkingSteppingSignGenerator *)self _distanceTextForStep:step];

    maneuverInfo = [v8 maneuverInfo];
    [maneuverInfo setMajorText:v6];
  }
}

- (id)_distanceTextForStep:(id)step distance:(double)distance
{
  stepCopy = step;
  if ([stepCopy isStartOrResumeStep])
  {
    mkServerFormattedString = 0;
  }

  else
  {
    v7 = [stepCopy contentsForContext:1];
    v8 = [v7 stringForDistance:distance];
    mkServerFormattedString = [v8 mkServerFormattedString];
  }

  return mkServerFormattedString;
}

- (id)_distanceTextForStep:(id)step
{
  stepCopy = step;
  [stepCopy distance];
  v5 = [(DrivingWalkingSteppingSignGenerator *)self _distanceTextForStep:stepCopy distance:?];

  return v5;
}

- (void)configureNavSignView:(id)view withSign:(id)sign
{
  viewCopy = view;
  signCopy = sign;
  [viewCopy setFlipMajorAndMinorTextInLabels:{-[DrivingWalkingSteppingSignGenerator _showDistanceInMinorText](self, "_showDistanceInMinorText")}];
  [viewCopy setShieldSize:6];
  maneuverInfo = [signCopy maneuverInfo];

  [viewCopy setManeuverGuidanceInfo:maneuverInfo];
  if ([(DrivingWalkingSteppingSignGenerator *)self _forWalkingNavigation])
  {
    +[NavSignLayoutDelegateManager defaultLayoutDelegateForWalking];
  }

  else
  {
    +[NavSignLayoutDelegateManager defaultLayoutDelegateForStepping];
  }
  v8 = ;
  [viewCopy setSignLayoutDelegate:v8];

  [viewCopy refreshSign];
  [viewCopy layoutIfNeeded];
}

- (void)_configureSign:(id)sign forSteppingWithStep:(id)step
{
  signCopy = sign;
  stepCopy = step;
  geoStep = [stepCopy geoStep];
  [signCopy setStep:stepCopy];
  v28 = [stepCopy contentsForContext:1];
  if ([stepCopy isStartOrResumeStep])
  {
    v6 = 0;
  }

  else
  {
    [stepCopy distance];
    v6 = [v28 stringForDistance:?];
  }

  v26 = v6;
  _geo_serverFormattedString = [v6 _geo_serverFormattedString];
  v30 = [NSString _navigation_stringForServerFormattedString:_geo_serverFormattedString];

  if ([stepCopy transportType] == 4)
  {
    v8 = +[NSBundle mainBundle];
    [v8 localizedStringForKey:@"Navigation_DirectionsForUnknownTransport" value:@"localized string not found" table:0];
  }

  else
  {
    v8 = [stepCopy contentsForContext:1];
    [v8 instruction];
  }
  v9 = ;

  _geo_serverFormattedString2 = [v9 _geo_serverFormattedString];
  v29 = [NSString _navigation_stringForServerFormattedString:_geo_serverFormattedString2];

  drivingSide = [stepCopy drivingSide];
  v12 = [[MKJunction alloc] initWithType:objc_msgSend(geoStep maneuver:"junctionType") drivingSide:objc_msgSend(geoStep elements:"maneuverType") count:{drivingSide, objc_msgSend(geoStep, "junctionElements"), objc_msgSend(geoStep, "junctionElementsCount")}];
  v13 = [GuidanceManeuverArtwork alloc];
  maneuverType = [geoStep maneuverType];
  artworkOverride = [stepCopy artworkOverride];
  v16 = [(GuidanceManeuverArtwork *)v13 initWithManeuver:maneuverType junction:v12 drivingSide:drivingSide artworkDataSource:artworkOverride];

  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_100FB8540;
  v38 = sub_100FB8550;
  v39 = 0;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100FB8558;
  v33[3] = &unk_101660090;
  v33[4] = &v40;
  v33[5] = &v34;
  [geoStep shieldInfo:v33];
  v17 = *(v41 + 6);
  if (v17)
  {
    v18 = [NavSignShieldInfo shieldWithID:v17 stringID:0 text:v35[5]];
  }

  else
  {
    v18 = 0;
  }

  v27 = v12;
  mkServerFormattedString = [v30 mkServerFormattedString];
  mkServerFormattedString2 = [v29 mkServerFormattedString];
  v21 = [NavSignManeuverGuidanceInfo alloc];
  v22 = +[NSUUID UUID];
  if (mkServerFormattedString)
  {
    v45 = mkServerFormattedString;
    v23 = [NSArray arrayWithObjects:&v45 count:1];
    if (mkServerFormattedString2)
    {
LABEL_12:
      v44 = mkServerFormattedString2;
      v24 = [NSArray arrayWithObjects:&v44 count:1];
      goto LABEL_15;
    }
  }

  else
  {
    v23 = 0;
    if (mkServerFormattedString2)
    {
      goto LABEL_12;
    }
  }

  v24 = 0;
LABEL_15:
  v25 = [(NavSignManeuverGuidanceInfo *)v21 initWithSignID:v22 maneuverArtwork:v16 majorTextAlternatives:v23 minorTextAlternatives:v24 shieldInfo:v18];
  [signCopy setManeuverInfo:v25];

  if (mkServerFormattedString2)
  {
  }

  if (mkServerFormattedString)
  {
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);
}

- (void)_configureSign:(id)sign withStep:(id)step
{
  signCopy = sign;
  stepCopy = step;
  v36 = signCopy;
  [signCopy setStep:stepCopy];
  v38 = [(DrivingWalkingSteppingSignGenerator *)self _distanceTextForStep:stepCopy];
  if ([stepCopy transportType] == 4)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Navigation_DirectionsForUnknownTransport" value:@"localized string not found" table:0];
    mkServerFormattedString = [v9 mkServerFormattedString];
    v51 = mkServerFormattedString;
    v37 = [NSArray arrayWithObjects:&v51 count:1];

    maneuverType = 0;
  }

  else
  {
    v11 = [stepCopy contentsForContext:1];
    instructionWithShorterAlternatives = [v11 instructionWithShorterAlternatives];

    v37 = sub_100021DB0(instructionWithShorterAlternatives, &stru_101660068);
    geoStep = [stepCopy geoStep];
    maneuverType = [geoStep maneuverType];
  }

  drivingSide = [stepCopy drivingSide];
  v15 = [MKJunction alloc];
  geoStep2 = [stepCopy geoStep];
  junctionType = [geoStep2 junctionType];
  geoStep3 = [stepCopy geoStep];
  maneuverType2 = [geoStep3 maneuverType];
  geoStep4 = [stepCopy geoStep];
  junctionElements = [geoStep4 junctionElements];
  geoStep5 = [stepCopy geoStep];
  v23 = [v15 initWithType:junctionType maneuver:maneuverType2 drivingSide:drivingSide elements:junctionElements count:{objc_msgSend(geoStep5, "junctionElementsCount")}];

  v24 = [GuidanceManeuverArtwork alloc];
  artworkOverride = [stepCopy artworkOverride];
  v26 = [(GuidanceManeuverArtwork *)v24 initWithManeuver:maneuverType junction:v23 drivingSide:drivingSide artworkDataSource:artworkOverride];

  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_100FB8540;
  v44 = sub_100FB8550;
  v45 = 0;
  geoStep6 = [stepCopy geoStep];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100FB89EC;
  v39[3] = &unk_101660090;
  v39[4] = &v46;
  v39[5] = &v40;
  [geoStep6 shieldInfo:v39];

  v28 = *(v47 + 6);
  if (v28)
  {
    [NavSignShieldInfo shieldWithID:v28 stringID:0 text:v41[5]];
    v30 = v29 = v38;
  }

  else
  {
    v30 = 0;
    v29 = v38;
  }

  v31 = [NavSignManeuverGuidanceInfo alloc];
  v32 = +[NSUUID UUID];
  if (v29)
  {
    v50 = v29;
    v33 = [NSArray arrayWithObjects:&v50 count:1];
  }

  else
  {
    v33 = 0;
  }

  v34 = [(NavSignManeuverGuidanceInfo *)v31 initWithSignID:v32 maneuverArtwork:v26 majorTextAlternatives:v33 minorTextAlternatives:v37 shieldInfo:v30];
  [v36 setManeuverInfo:v34];

  if (v29)
  {
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);
}

- (void)_configureWithRoute:(id)route
{
  routeCopy = route;
  objc_storeStrong(&self->_route, route);
  steps = [routeCopy steps];
  v6 = +[NSMutableArray array];
  v7 = +[NSMutableArray array];
  signs = self->_signs;
  self->_signs = 0;

  stepsWithCorrespondingSigns = self->_stepsWithCorrespondingSigns;
  self->_stepsWithCorrespondingSigns = 0;

  if ([steps count])
  {
    v10 = [steps count];
    if (v10 >= 1)
    {
      v11 = 0;
      v12 = v10 + 1;
      do
      {
        v13 = [steps objectAtIndexedSubscript:v12 - 2];
        geoStep = [v13 geoStep];
        v15 = geoStep;
        if (geoStep && ([geoStep maneuverType] != 17 || (objc_msgSend(v13, "distance"), v16 >= 1.0)))
        {
          v17 = objc_alloc_init(NavSignViewModel);
          if ([(DrivingWalkingSteppingSignGenerator *)self _forWalkingNavigation])
          {
            [(DrivingWalkingSteppingSignGenerator *)self _configureSign:v17 withStep:v13];
          }

          else
          {
            [(DrivingWalkingSteppingSignGenerator *)self _configureSign:v17 forSteppingWithStep:v13];
          }

          [(NavSignViewModel *)v17 setStepIndexRange:v12 - 2, v11 + 1];
          [v6 addObject:v17];
          [v7 addObject:v13];

          v11 = 0;
        }

        else
        {
          ++v11;
        }

        --v12;
      }

      while (v12 > 1);
    }

    lastObject = [v6 lastObject];
    [lastObject stepIndexRange];
    [lastObject setStepIndexRange:{0, objc_msgSend(lastObject, "stepIndexRange") + v19}];
    reverseObjectEnumerator = [v6 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    v22 = [NSMutableArray arrayWithArray:allObjects];
    v23 = self->_signs;
    self->_signs = v22;

    reverseObjectEnumerator2 = [v7 reverseObjectEnumerator];
    allObjects2 = [reverseObjectEnumerator2 allObjects];
    v26 = self->_stepsWithCorrespondingSigns;
    self->_stepsWithCorrespondingSigns = allObjects2;
  }

  v27 = objc_alloc_init(SteppingSignSizeAttributesCache);
  sizeCache = self->_sizeCache;
  self->_sizeCache = v27;
}

- (DrivingWalkingSteppingSignGenerator)initWithRoute:(id)route options:(int64_t)options
{
  routeCopy = route;
  v10.receiver = self;
  v10.super_class = DrivingWalkingSteppingSignGenerator;
  v7 = [(DrivingWalkingSteppingSignGenerator *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_options = options;
    [(DrivingWalkingSteppingSignGenerator *)v7 _configureWithRoute:routeCopy];
  }

  return v8;
}

@end