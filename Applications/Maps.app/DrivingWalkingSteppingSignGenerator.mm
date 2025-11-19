@interface DrivingWalkingSteppingSignGenerator
- (CGSize)sizeForSignAtIndex:(int64_t)a3 fittingSize:(CGSize)a4;
- (CellVendor)cellVendor;
- (DrivingWalkingSteppingSignGenerator)initWithRoute:(id)a3 options:(int64_t)a4;
- (double)distanceFromPageControlBaselineToBottomOfSignAtIndex:(int64_t)a3 fittingSize:(CGSize)a4;
- (double)distanceFromPageControlBaselineToTopOfAuxView;
- (id)_distanceTextForStep:(id)a3;
- (id)_distanceTextForStep:(id)a3 distance:(double)a4;
- (id)_signSizeAttributesForSign:(id)a3 fittingSize:(CGSize)a4;
- (id)currentViewStateForSignAtIndex:(int64_t)a3;
- (id)signAtIndex:(int64_t)a3;
- (id)stepAtSignIndex:(int64_t)a3;
- (int64_t)signIndexForStep:(id)a3;
- (int64_t)signIndexForStepIndex:(int64_t)a3;
- (void)_configureSign:(id)a3 forSteppingWithStep:(id)a4;
- (void)_configureSign:(id)a3 withStep:(id)a4;
- (void)_configureWithRoute:(id)a3;
- (void)configureNavSignView:(id)a3 withSign:(id)a4;
- (void)rectForSignAtIndex:(int64_t)a3 currentStepIndex:(unint64_t)a4 handler:(id)a5;
- (void)resetDistanceForSignAtIndex:(int64_t)a3;
- (void)setCellVendor:(id)a3;
- (void)updateDistance:(double)a3 forStepAtIndex:(int64_t)a4;
- (void)updateInstruction:(id)a3 forSignAtIndex:(int64_t)a4;
- (void)updateSignForStepAtIndex:(int64_t)a3 maneuverInfo:(id)a4;
@end

@implementation DrivingWalkingSteppingSignGenerator

- (CellVendor)cellVendor
{
  WeakRetained = objc_loadWeakRetained(&self->_cellVendor);

  return WeakRetained;
}

- (void)rectForSignAtIndex:(int64_t)a3 currentStepIndex:(unint64_t)a4 handler:(id)a5
{
  v9 = a5;
  v7 = [(DrivingWalkingSteppingSignGenerator *)self stepAtSignIndex:a3];
  v8 = sub_100AF1870(v7);
  if (v9)
  {
    v9[2](v8);
  }
}

- (double)distanceFromPageControlBaselineToTopOfAuxView
{
  v2 = [(DrivingWalkingSteppingSignGenerator *)self _forWalkingNavigation];
  result = 17.0;
  if (v2)
  {
    return 13.0;
  }

  return result;
}

- (id)_signSizeAttributesForSign:(id)a3 fittingSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
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
  [(DrivingWalkingSteppingSignGenerator *)self configureNavSignView:self->_steppingSizingView withSign:v7];
  v11 = [(NavManeuverSignView *)self->_steppingSizingView widthAnchor];
  v12 = [v11 constraintEqualToConstant:width];

  [v12 setActive:1];
  [(NavManeuverSignView *)self->_steppingSizingView systemLayoutSizeFittingSize:width, height];
  v14 = v13;
  v16 = v15;
  [v12 setActive:0];
  v17 = [(DrivingWalkingSteppingSignGenerator *)self _forWalkingNavigation];
  v18 = [(NavSignView *)self->_steppingSizingView minorLabel];
  v19 = [v18 lineCount];

  v20 = 3.0;
  if (v17)
  {
    v20 = 6.0;
  }

  v21 = -2.0;
  if (v17)
  {
    v21 = 4.0;
  }

  if (v19 <= 1)
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

- (double)distanceFromPageControlBaselineToBottomOfSignAtIndex:(int64_t)a3 fittingSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = [SteppingSignSizeAttributesCache sizeAttributesForSignAtIndex:"sizeAttributesForSignAtIndex:fittingSize:" fittingSize:?];
  if (v8)
  {
    v9 = v8;
    [v8 signToPageControlDistance];
    v11 = v10;
LABEL_3:

    return v11;
  }

  v11 = 20.0;
  if ((a3 & 0x8000000000000000) == 0 && [(NSMutableArray *)self->_signs count]> a3)
  {
    v13 = [(NSMutableArray *)self->_signs objectAtIndexedSubscript:a3];
    v9 = [(DrivingWalkingSteppingSignGenerator *)self _signSizeAttributesForSign:v13 fittingSize:width, height];
    [(SteppingSignSizeAttributesCache *)self->_sizeCache setSizeAttributes:v9 forSignAtIndex:a3 fittingSize:width, height];
    [v9 signToPageControlDistance];
    v11 = v14;

    goto LABEL_3;
  }

  return v11;
}

- (CGSize)sizeForSignAtIndex:(int64_t)a3 fittingSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = [SteppingSignSizeAttributesCache sizeAttributesForSignAtIndex:"sizeAttributesForSignAtIndex:fittingSize:" fittingSize:?];
  if (v8)
  {
    v9 = v8;
    [v8 size];
    v11 = v10;
    v13 = v12;
  }

  else if ([(NSMutableArray *)self->_signs count]<= a3)
  {
    v11 = CGSizeZero.width;
    v13 = CGSizeZero.height;
  }

  else
  {
    v14 = [(NSMutableArray *)self->_signs objectAtIndexedSubscript:a3];
    v15 = [(DrivingWalkingSteppingSignGenerator *)self _signSizeAttributesForSign:v14 fittingSize:width, height];
    [(SteppingSignSizeAttributesCache *)self->_sizeCache setSizeAttributes:v15 forSignAtIndex:a3 fittingSize:width, height];
    [v15 size];
    v11 = v16;
    v13 = v17;
  }

  v18 = v11;
  v19 = v13;
  result.height = v19;
  result.width = v18;
  return result;
}

- (int64_t)signIndexForStepIndex:(int64_t)a3
{
  if (![(NSMutableArray *)self->_signs count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = 0;
  while (1)
  {
    v6 = [(NSMutableArray *)self->_signs objectAtIndexedSubscript:v5];
    v7 = [v6 stepIndexRange];
    v9 = v8;

    if (a3 >= v7 && a3 - v7 < v9)
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

- (int64_t)signIndexForStep:(id)a3
{
  v4 = [a3 stepIndex];

  return [(DrivingWalkingSteppingSignGenerator *)self signIndexForStepIndex:v4];
}

- (id)stepAtSignIndex:(int64_t)a3
{
  if (a3 > 0x7FFFFFFFFFFFFFFELL || [(NSMutableArray *)self->_signs count]<= a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_signs objectAtIndexedSubscript:a3];
    v6 = [v5 step];
  }

  return v6;
}

- (id)signAtIndex:(int64_t)a3
{
  v5 = [(DrivingWalkingSteppingSignGenerator *)self cellVendor];
  v6 = [NSIndexPath indexPathForItem:a3 inSection:0];
  v7 = [v5 dequeueReusableCellWithReuseIdentifier:@"NavSignCellIdentifier" forIndexPath:v6];

  v8 = [(NSMutableArray *)self->_signs objectAtIndexedSubscript:a3];
  v9 = [v7 navSignView];
  [(DrivingWalkingSteppingSignGenerator *)self configureNavSignView:v9 withSign:v8];

  return v7;
}

- (id)currentViewStateForSignAtIndex:(int64_t)a3
{
  if (a3 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v5 = [(NSMutableArray *)self->_signs objectAtIndexedSubscript:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setCellVendor:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_cellVendor, v4);
  [v4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"NavSignCellIdentifier"];
}

- (void)updateInstruction:(id)a3 forSignAtIndex:(int64_t)a4
{
  v6 = a3;
  if (a4 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v11 = v6;
    v7 = [(NSMutableArray *)self->_signs count]> a4;
    v6 = v11;
    if (v7)
    {
      v8 = [(NSMutableArray *)self->_signs objectAtIndexedSubscript:a4];
      v9 = [v11 mkServerFormattedString];
      v10 = [v8 maneuverInfo];
      [v10 setMinorText:v9];

      [(SteppingSignSizeAttributesCache *)self->_sizeCache invalidateSizeAttributesForSignAtIndex:a4];
      v6 = v11;
    }
  }
}

- (void)updateDistance:(double)a3 forStepAtIndex:(int64_t)a4
{
  v6 = [(DrivingWalkingSteppingSignGenerator *)self signIndexForStepIndex:a4];
  if (v6 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v7 = v6;
    if (v6 < [(NSMutableArray *)self->_signs count])
    {
      v11 = [(NSArray *)self->_stepsWithCorrespondingSigns objectAtIndexedSubscript:v7];
      v8 = [(NSMutableArray *)self->_signs objectAtIndexedSubscript:v7];
      v9 = [(DrivingWalkingSteppingSignGenerator *)self _distanceTextForStep:v11 distance:a3];
      v10 = [v8 maneuverInfo];
      [v10 setMajorText:v9];
    }
  }
}

- (void)updateSignForStepAtIndex:(int64_t)a3 maneuverInfo:(id)a4
{
  v9 = a4;
  v6 = [(DrivingWalkingSteppingSignGenerator *)self signIndexForStepIndex:a3];
  if (v6 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v7 = v6;
    if (v6 < [(NSMutableArray *)self->_signs count])
    {
      v8 = [(NSMutableArray *)self->_signs objectAtIndexedSubscript:v7];
      [v8 setManeuverInfo:v9];
      [(SteppingSignSizeAttributesCache *)self->_sizeCache invalidateSizeAttributesForSignAtIndex:v7];
    }
  }
}

- (void)resetDistanceForSignAtIndex:(int64_t)a3
{
  if (a3 <= 0x7FFFFFFFFFFFFFFELL && [(NSMutableArray *)self->_signs count]> a3)
  {
    v8 = [(NSMutableArray *)self->_signs objectAtIndexedSubscript:a3];
    v5 = [v8 step];
    v6 = [(DrivingWalkingSteppingSignGenerator *)self _distanceTextForStep:v5];

    v7 = [v8 maneuverInfo];
    [v7 setMajorText:v6];
  }
}

- (id)_distanceTextForStep:(id)a3 distance:(double)a4
{
  v5 = a3;
  if ([v5 isStartOrResumeStep])
  {
    v6 = 0;
  }

  else
  {
    v7 = [v5 contentsForContext:1];
    v8 = [v7 stringForDistance:a4];
    v6 = [v8 mkServerFormattedString];
  }

  return v6;
}

- (id)_distanceTextForStep:(id)a3
{
  v4 = a3;
  [v4 distance];
  v5 = [(DrivingWalkingSteppingSignGenerator *)self _distanceTextForStep:v4 distance:?];

  return v5;
}

- (void)configureNavSignView:(id)a3 withSign:(id)a4
{
  v9 = a3;
  v6 = a4;
  [v9 setFlipMajorAndMinorTextInLabels:{-[DrivingWalkingSteppingSignGenerator _showDistanceInMinorText](self, "_showDistanceInMinorText")}];
  [v9 setShieldSize:6];
  v7 = [v6 maneuverInfo];

  [v9 setManeuverGuidanceInfo:v7];
  if ([(DrivingWalkingSteppingSignGenerator *)self _forWalkingNavigation])
  {
    +[NavSignLayoutDelegateManager defaultLayoutDelegateForWalking];
  }

  else
  {
    +[NavSignLayoutDelegateManager defaultLayoutDelegateForStepping];
  }
  v8 = ;
  [v9 setSignLayoutDelegate:v8];

  [v9 refreshSign];
  [v9 layoutIfNeeded];
}

- (void)_configureSign:(id)a3 forSteppingWithStep:(id)a4
{
  v31 = a3;
  v5 = a4;
  v32 = [v5 geoStep];
  [v31 setStep:v5];
  v28 = [v5 contentsForContext:1];
  if ([v5 isStartOrResumeStep])
  {
    v6 = 0;
  }

  else
  {
    [v5 distance];
    v6 = [v28 stringForDistance:?];
  }

  v26 = v6;
  v7 = [v6 _geo_serverFormattedString];
  v30 = [NSString _navigation_stringForServerFormattedString:v7];

  if ([v5 transportType] == 4)
  {
    v8 = +[NSBundle mainBundle];
    [v8 localizedStringForKey:@"Navigation_DirectionsForUnknownTransport" value:@"localized string not found" table:0];
  }

  else
  {
    v8 = [v5 contentsForContext:1];
    [v8 instruction];
  }
  v9 = ;

  v10 = [v9 _geo_serverFormattedString];
  v29 = [NSString _navigation_stringForServerFormattedString:v10];

  v11 = [v5 drivingSide];
  v12 = [[MKJunction alloc] initWithType:objc_msgSend(v32 maneuver:"junctionType") drivingSide:objc_msgSend(v32 elements:"maneuverType") count:{v11, objc_msgSend(v32, "junctionElements"), objc_msgSend(v32, "junctionElementsCount")}];
  v13 = [GuidanceManeuverArtwork alloc];
  v14 = [v32 maneuverType];
  v15 = [v5 artworkOverride];
  v16 = [(GuidanceManeuverArtwork *)v13 initWithManeuver:v14 junction:v12 drivingSide:v11 artworkDataSource:v15];

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
  [v32 shieldInfo:v33];
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
  v19 = [v30 mkServerFormattedString];
  v20 = [v29 mkServerFormattedString];
  v21 = [NavSignManeuverGuidanceInfo alloc];
  v22 = +[NSUUID UUID];
  if (v19)
  {
    v45 = v19;
    v23 = [NSArray arrayWithObjects:&v45 count:1];
    if (v20)
    {
LABEL_12:
      v44 = v20;
      v24 = [NSArray arrayWithObjects:&v44 count:1];
      goto LABEL_15;
    }
  }

  else
  {
    v23 = 0;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  v24 = 0;
LABEL_15:
  v25 = [(NavSignManeuverGuidanceInfo *)v21 initWithSignID:v22 maneuverArtwork:v16 majorTextAlternatives:v23 minorTextAlternatives:v24 shieldInfo:v18];
  [v31 setManeuverInfo:v25];

  if (v20)
  {
  }

  if (v19)
  {
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);
}

- (void)_configureSign:(id)a3 withStep:(id)a4
{
  v6 = a3;
  v7 = a4;
  v36 = v6;
  [v6 setStep:v7];
  v38 = [(DrivingWalkingSteppingSignGenerator *)self _distanceTextForStep:v7];
  if ([v7 transportType] == 4)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Navigation_DirectionsForUnknownTransport" value:@"localized string not found" table:0];
    v10 = [v9 mkServerFormattedString];
    v51 = v10;
    v37 = [NSArray arrayWithObjects:&v51 count:1];

    v35 = 0;
  }

  else
  {
    v11 = [v7 contentsForContext:1];
    v12 = [v11 instructionWithShorterAlternatives];

    v37 = sub_100021DB0(v12, &stru_101660068);
    v13 = [v7 geoStep];
    v35 = [v13 maneuverType];
  }

  v14 = [v7 drivingSide];
  v15 = [MKJunction alloc];
  v16 = [v7 geoStep];
  v17 = [v16 junctionType];
  v18 = [v7 geoStep];
  v19 = [v18 maneuverType];
  v20 = [v7 geoStep];
  v21 = [v20 junctionElements];
  v22 = [v7 geoStep];
  v23 = [v15 initWithType:v17 maneuver:v19 drivingSide:v14 elements:v21 count:{objc_msgSend(v22, "junctionElementsCount")}];

  v24 = [GuidanceManeuverArtwork alloc];
  v25 = [v7 artworkOverride];
  v26 = [(GuidanceManeuverArtwork *)v24 initWithManeuver:v35 junction:v23 drivingSide:v14 artworkDataSource:v25];

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
  v27 = [v7 geoStep];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100FB89EC;
  v39[3] = &unk_101660090;
  v39[4] = &v46;
  v39[5] = &v40;
  [v27 shieldInfo:v39];

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

- (void)_configureWithRoute:(id)a3
{
  v29 = a3;
  objc_storeStrong(&self->_route, a3);
  v5 = [v29 steps];
  v6 = +[NSMutableArray array];
  v7 = +[NSMutableArray array];
  signs = self->_signs;
  self->_signs = 0;

  stepsWithCorrespondingSigns = self->_stepsWithCorrespondingSigns;
  self->_stepsWithCorrespondingSigns = 0;

  if ([v5 count])
  {
    v10 = [v5 count];
    if (v10 >= 1)
    {
      v11 = 0;
      v12 = v10 + 1;
      do
      {
        v13 = [v5 objectAtIndexedSubscript:v12 - 2];
        v14 = [v13 geoStep];
        v15 = v14;
        if (v14 && ([v14 maneuverType] != 17 || (objc_msgSend(v13, "distance"), v16 >= 1.0)))
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

    v18 = [v6 lastObject];
    [v18 stepIndexRange];
    [v18 setStepIndexRange:{0, objc_msgSend(v18, "stepIndexRange") + v19}];
    v20 = [v6 reverseObjectEnumerator];
    v21 = [v20 allObjects];
    v22 = [NSMutableArray arrayWithArray:v21];
    v23 = self->_signs;
    self->_signs = v22;

    v24 = [v7 reverseObjectEnumerator];
    v25 = [v24 allObjects];
    v26 = self->_stepsWithCorrespondingSigns;
    self->_stepsWithCorrespondingSigns = v25;
  }

  v27 = objc_alloc_init(SteppingSignSizeAttributesCache);
  sizeCache = self->_sizeCache;
  self->_sizeCache = v27;
}

- (DrivingWalkingSteppingSignGenerator)initWithRoute:(id)a3 options:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = DrivingWalkingSteppingSignGenerator;
  v7 = [(DrivingWalkingSteppingSignGenerator *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_options = a4;
    [(DrivingWalkingSteppingSignGenerator *)v7 _configureWithRoute:v6];
  }

  return v8;
}

@end