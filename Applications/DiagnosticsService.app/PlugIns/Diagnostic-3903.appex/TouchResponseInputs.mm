@interface TouchResponseInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
@end

@implementation TouchResponseInputs

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27[0] = 0;
  -[TouchResponseInputs setConnectedToPowerRequired:](self, "setConnectedToPowerRequired:", [v4 dk_BOOLFromKey:@"connectedToPowerRequired" defaultValue:0 failed:v27]);
  v5 = [v4 dk_numberFromKey:@"noInputTimeout" lowerBound:&off_1000086F0 upperBound:&off_100008700 defaultValue:&off_100008710 failed:v25 + 3];
  [v5 doubleValue];
  [(TouchResponseInputs *)self setNoInputTimeout:?];

  v6 = [v4 dk_numberFromRequiredKey:@"timeoutSeconds" lowerBound:&off_1000086F0 upperBound:&off_100008700 failed:v25 + 3];
  [v6 doubleValue];
  [(TouchResponseInputs *)self setTimeoutSeconds:?];

  v7 = [v4 dk_stringFromRequiredKey:@"blockColor" maxLength:7 failed:v25 + 3];
  v8 = [UIColor colorWithHexValue:v7 error:0];
  [(TouchResponseInputs *)self setBlockColor:v8];

  v9 = [(TouchResponseInputs *)self blockColor];

  v10 = v25;
  if (!v9)
  {
    *(v25 + 24) = 1;
  }

  v11 = [v4 dk_dictionaryFromRequiredKey:@"touchMap" failed:v10 + 3];
  [(TouchResponseInputs *)self setTouchMapDictionary:v11];

  v12 = [(TouchResponseInputs *)self touchMapDictionary];
  v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);

  v14 = [(TouchResponseInputs *)self touchMapDictionary];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100002C9C;
  v21 = &unk_1000082C8;
  v23 = &v24;
  v15 = v13;
  v22 = v15;
  [v14 enumerateKeysAndObjectsUsingBlock:&v18];

  [(TouchResponseInputs *)self setTouchMap:v15, v18, v19, v20, v21];
  v16 = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  return (v16 & 1) == 0;
}

@end