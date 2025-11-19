@interface UnexpectedTouchInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
@end

@implementation UnexpectedTouchInputs

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27[0] = 0;
  -[UnexpectedTouchInputs setConnectedToPowerRequired:](self, "setConnectedToPowerRequired:", [v4 dk_BOOLFromKey:@"connectedToPowerRequired" defaultValue:0 failed:v27]);
  v5 = [v4 dk_stringFromRequiredKey:@"fadeColor" maxLength:7 failed:v25 + 3];
  v6 = [UIColor colorWithHexValue:v5 error:0];
  [(UnexpectedTouchInputs *)self setFadeColor:v6];

  v7 = [(UnexpectedTouchInputs *)self fadeColor];

  v8 = v25;
  if (!v7)
  {
    *(v25 + 24) = 1;
  }

  v9 = [v4 dk_stringFromRequiredKey:@"touchColor" maxLength:7 failed:v8 + 3];
  v10 = [UIColor colorWithHexValue:v9 error:0];
  [(UnexpectedTouchInputs *)self setTouchColor:v10];

  v11 = [(UnexpectedTouchInputs *)self touchColor];

  v12 = v25;
  if (!v11)
  {
    *(v25 + 24) = 1;
  }

  v13 = [v4 dk_numberFromRequiredKey:@"minutesToRun" lowerBound:&off_100008770 upperBound:&off_100008788 failed:v12 + 3];
  -[UnexpectedTouchInputs setMinutesToRun:](self, "setMinutesToRun:", [v13 intValue]);

  v14 = [v4 dk_dictionaryFromRequiredKey:@"touchMap" failed:v25 + 3];
  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v14 count]);
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10000150C;
  v21 = &unk_100008268;
  v15 = v23 = &v24;
  v22 = v15;
  [v14 enumerateKeysAndObjectsUsingBlock:&v18];
  [(UnexpectedTouchInputs *)self setTouchMap:v15, v18, v19, v20, v21];
  v16 = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  return (v16 & 1) == 0;
}

@end