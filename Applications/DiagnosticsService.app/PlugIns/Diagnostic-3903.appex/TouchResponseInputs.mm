@interface TouchResponseInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation TouchResponseInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  parametersCopy = parameters;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27[0] = 0;
  -[TouchResponseInputs setConnectedToPowerRequired:](self, "setConnectedToPowerRequired:", [parametersCopy dk_BOOLFromKey:@"connectedToPowerRequired" defaultValue:0 failed:v27]);
  v5 = [parametersCopy dk_numberFromKey:@"noInputTimeout" lowerBound:&off_1000086F0 upperBound:&off_100008700 defaultValue:&off_100008710 failed:v25 + 3];
  [v5 doubleValue];
  [(TouchResponseInputs *)self setNoInputTimeout:?];

  v6 = [parametersCopy dk_numberFromRequiredKey:@"timeoutSeconds" lowerBound:&off_1000086F0 upperBound:&off_100008700 failed:v25 + 3];
  [v6 doubleValue];
  [(TouchResponseInputs *)self setTimeoutSeconds:?];

  v7 = [parametersCopy dk_stringFromRequiredKey:@"blockColor" maxLength:7 failed:v25 + 3];
  v8 = [UIColor colorWithHexValue:v7 error:0];
  [(TouchResponseInputs *)self setBlockColor:v8];

  blockColor = [(TouchResponseInputs *)self blockColor];

  v10 = v25;
  if (!blockColor)
  {
    *(v25 + 24) = 1;
  }

  v11 = [parametersCopy dk_dictionaryFromRequiredKey:@"touchMap" failed:v10 + 3];
  [(TouchResponseInputs *)self setTouchMapDictionary:v11];

  touchMapDictionary = [(TouchResponseInputs *)self touchMapDictionary];
  v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [touchMapDictionary count]);

  touchMapDictionary2 = [(TouchResponseInputs *)self touchMapDictionary];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100002C9C;
  v21 = &unk_1000082C8;
  v23 = &v24;
  v15 = v13;
  v22 = v15;
  [touchMapDictionary2 enumerateKeysAndObjectsUsingBlock:&v18];

  [(TouchResponseInputs *)self setTouchMap:v15, v18, v19, v20, v21];
  v16 = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  return (v16 & 1) == 0;
}

@end