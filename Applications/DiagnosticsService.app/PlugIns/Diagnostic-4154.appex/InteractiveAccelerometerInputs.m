@interface InteractiveAccelerometerInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
- (BOOL)validateAndInitializePredicates:(id)a3;
- (BOOL)validateAndInitializeSpecifications:(id)a3;
@end

@implementation InteractiveAccelerometerInputs

- (BOOL)validateAndInitializePredicates:(id)a3
{
  v12 = 0;
  v4 = a3;
  [(InteractiveAccelerometerInputs *)self setPredicates:v4];
  v5 = [NSSet setWithObjects:@"Accelerometer", @"Gyro", 0];
  v6 = [v4 dk_stringFromRequiredKey:@"type" inSet:v5 failed:&v12];

  if ([v6 isEqualToString:@"Accelerometer"])
  {
    v7 = 0;
    v8 = &off_100010B78;
    v9 = &off_100010B68;
LABEL_5:
    [(InteractiveAccelerometerInputs *)self setComponentSensor:v7];
    [(InteractiveAccelerometerInputs *)self setBoundOffsetMin:v9];
    [(InteractiveAccelerometerInputs *)self setBoundOffsetMax:v8];
    goto LABEL_6;
  }

  if ([v6 isEqualToString:@"Gyro"])
  {
    v8 = &off_100010B98;
    v7 = 1;
    v9 = &off_100010B88;
    goto LABEL_5;
  }

LABEL_6:
  v10 = v12;

  return (v10 & 1) == 0;
}

- (BOOL)validateAndInitializeSpecifications:(id)a3
{
  v4 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  [(InteractiveAccelerometerInputs *)self setSpecifications:v4];
  v5 = [NSSet setWithObjects:@"portrait", @"portraitUpsideDown", @"landscapeLeft", @"landscapeRight", @"faceUp", @"faceDown", 0];
  v6 = [v4 dk_dictionaryFromRequiredKey:@"orientations" limitedToKeys:v5 failed:v28 + 3];
  v7 = [v6 allKeys];
  v8 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v7 count]);

  v9 = [(InteractiveAccelerometerInputs *)self componentSensor];
  v10 = @"gyroscope";
  if (!v9)
  {
    v10 = @"accelerometer";
  }

  v11 = v10;
  v12 = [NSSet setWithObjects:@"zeroRangeThreshold", @"degreesShiftRangeThreshold", @"lowerBoundOffsetX", @"upperBoundOffsetX", @"lowerBoundOffsetY", @"upperBoundOffsetY", @"lowerBoundOffsetZ", @"upperBoundOffsetZ", 0];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100001590;
  v21[3] = &unk_1000103F0;
  v13 = v11;
  v22 = v13;
  v14 = v12;
  v26 = &v27;
  v23 = v14;
  v24 = self;
  v15 = v8;
  v25 = v15;
  [v6 enumerateKeysAndObjectsUsingBlock:v21];
  [(InteractiveAccelerometerInputs *)self setComponentOrientationSpecifications:v15];
  v16 = [v4 dk_numberFromRequiredKey:@"outputDataRate" lowerBound:&off_100010BB8 upperBound:&off_100010BD0 failed:v28 + 3];
  -[InteractiveAccelerometerInputs setOutputDataRate:](self, "setOutputDataRate:", [v16 intValue]);

  v17 = [v4 dk_numberFromRequiredKey:@"secondsToRunOrientation" lowerBound:&off_100010E58 upperBound:&off_100010E68 failed:v28 + 3];
  [v17 floatValue];
  [(InteractiveAccelerometerInputs *)self setSecondsToRunOrientation:v18];

  v19 = *(v28 + 24);
  _Block_object_dispose(&v27, 8);

  return (v19 & 1) == 0;
}

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v12 = 0;
  v4 = a3;
  [(InteractiveAccelerometerInputs *)self setParameters:v4];
  v5 = [(InteractiveAccelerometerInputs *)self componentOrientationSpecifications];
  v6 = [v5 allKeys];
  v7 = [NSSet setWithArray:v6];
  v8 = [v4 dk_arrayFromRequiredKey:@"orientations" inSet:v7 maxLength:100 failed:&v12];
  [(InteractiveAccelerometerInputs *)self setOrientationsParameter:v8];

  v9 = [v4 dk_numberFromRequiredKey:@"notStationaryTimeout" lowerBound:&off_100010E58 upperBound:&off_100010E68 failed:&v12];
  [v9 doubleValue];
  [(InteractiveAccelerometerInputs *)self setNotStationaryTimeout:?];

  v10 = [v4 dk_numberFromRequiredKey:@"holdStationaryTimeout" lowerBound:&off_100010E58 upperBound:&off_100010E68 failed:&v12];

  [v10 doubleValue];
  [(InteractiveAccelerometerInputs *)self setHoldStationaryTimeout:?];

  return (v12 & 1) == 0;
}

@end