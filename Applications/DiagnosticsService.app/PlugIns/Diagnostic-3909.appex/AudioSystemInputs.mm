@interface AudioSystemInputs
- (BOOL)_applyComponentArrayParameter:(id)a3 requiredFiles:(id)a4;
- (BOOL)validateAndInitializeParameters:(id)a3;
@end

@implementation AudioSystemInputs

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v4 = a3;
  v17 = 0;
  v5 = [NSSet setWithObject:objc_opt_class()];
  v6 = [v4 dk_arrayFromRequiredKey:@"requiredFiles" types:v5 maxLength:80 failed:&v17 validator:&stru_100010490];
  [(AudioSystemInputs *)self setRequiredFiles:v6];

  v7 = [(AudioSystemInputs *)self requiredFiles];
  v8 = [v7 count];

  if (!v8)
  {
    v17 = 1;
  }

  v9 = [NSSet setWithObject:objc_opt_class()];
  v10 = [v4 dk_arrayFromRequiredKey:@"audioFilesPerOutputComponent" types:v9 maxLength:2 failed:&v17];

  if ([v10 count] < 2 || (v17 & 1) != 0)
  {
    v17 = 1;
  }

  else
  {
    v11 = [(AudioSystemInputs *)self requiredFiles];
    v17 = [(AudioSystemInputs *)self _applyComponentArrayParameter:v10 requiredFiles:v11];
  }

  v12 = [NSSet setWithObject:objc_opt_class()];
  v13 = [v4 dk_arrayFromRequiredKey:@"accessoryModelNumbers" types:v12 maxLength:50 failed:&v17 validator:&stru_1000104B0];
  [(AudioSystemInputs *)self setAccessoryModelNumbers:v13];

  -[AudioSystemInputs setSequentialAudioInput:](self, "setSequentialAudioInput:", [v4 dk_BOOLFromRequiredKey:@"sequentialAudioInput" failed:&v17]);
  -[AudioSystemInputs setSendRawData:](self, "setSendRawData:", [v4 dk_BOOLFromKey:@"sendRawData" defaultValue:0 failed:&v17]);
  v14 = [v4 dk_numberFromKey:@"xComponentAccelOrientationThreshold" lowerBound:&off_1000108E0 upperBound:&off_1000108F0 defaultValue:0 failed:&v17];
  [(AudioSystemInputs *)self setXComponentAccelThreshold:v14];

  v15 = v17;
  return (v15 & 1) == 0;
}

- (BOOL)_applyComponentArrayParameter:(id)a3 requiredFiles:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = [NSSet setWithArray:v7];
  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100006D7C;
  v13[3] = &unk_1000104D8;
  v10 = v8;
  v14 = v10;
  v16 = &v17;
  v11 = v9;
  v15 = v11;
  [v6 enumerateObjectsUsingBlock:v13];
  [(AudioSystemInputs *)self setAudioFilesPerOutputComponent:v11];
  LOBYTE(self) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return self;
}

@end