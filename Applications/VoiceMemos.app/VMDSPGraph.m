@interface VMDSPGraph
+ (BOOL)writeGraphTextToFile:(id)a3 samplerate:(int)a4 bufferSize:(int)a5 error:(id *)a6;
+ (id)_noiseSuppressionParameters;
+ (id)_reverbSuppressionParameters;
+ (id)auStrip;
+ (id)nsImplementation;
+ (id)parameters;
+ (id)propertyStrip;
@end

@implementation VMDSPGraph

+ (id)nsImplementation
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"NS Implementation"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"ons4";
  }

  v5 = v4;

  return v4;
}

+ (id)_reverbSuppressionParameters
{
  LODWORD(v2) = -24.0;
  LODWORD(v3) = -1035468800;
  v4 = [VMAudioParameter parameterWithName:@"RS Pass One Gain Floor" defaultValue:0 min:@"ReverbSuppressor" max:v2 internalAddress:v3 graphName:0.0];
  LODWORD(v5) = -12.0;
  LODWORD(v6) = -1035468800;
  v7 = [VMAudioParameter parameterWithName:@"RS Pass Two Gain Floor" defaultValue:1 min:@"ReverbSuppressor" max:v5 internalAddress:v6 graphName:0.0, v4];
  v14[1] = v7;
  LODWORD(v8) = 8.0;
  LODWORD(v9) = -30.0;
  LODWORD(v10) = 30.0;
  v11 = [VMAudioParameter parameterWithName:@"RS SPL Reverb Tail Gain" defaultValue:2 min:@"ReverbSuppressor" max:v8 internalAddress:v9 graphName:v10];
  v14[2] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:3];

  return v12;
}

+ (id)_noiseSuppressionParameters
{
  LODWORD(v2) = -12.0;
  LODWORD(v3) = -24.0;
  v4 = [VMAudioParameter parameterWithName:@"NS Suppression Level" defaultValue:0 min:@"NoiseSuppressor" max:v2 internalAddress:v3 graphName:0.0];
  v17[0] = v4;
  LODWORD(v5) = -20.0;
  LODWORD(v6) = 20.0;
  v7 = [VMAudioParameter parameterWithName:@"NS AGC Post Gain" defaultValue:4 min:@"NoiseSuppressor" max:0.0 internalAddress:v5 graphName:v6];
  v17[1] = v7;
  LODWORD(v8) = 1117782016;
  LODWORD(v9) = 1120403456;
  LODWORD(v10) = -25.0;
  v11 = [VMAudioParameter parameterWithName:@"NS SPL Meter Calibration" defaultValue:6 min:@"NoiseSuppressor" max:v8 internalAddress:v10 graphName:v9];
  v17[2] = v11;
  LODWORD(v12) = 5.0;
  LODWORD(v13) = 10.0;
  v14 = [VMAudioParameter parameterWithName:@"NS SPL Time Constant" defaultValue:7 min:@"NoiseSuppressor" max:v12 internalAddress:0.0 graphName:v13];
  v17[3] = v14;
  v15 = [NSArray arrayWithObjects:v17 count:4];

  return v15;
}

+ (id)parameters
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003408C;
  block[3] = &unk_10028A308;
  block[4] = a1;
  if (qword_1002D6F88 != -1)
  {
    dispatch_once(&qword_1002D6F88, block);
  }

  v2 = qword_1002D6F80;

  return v2;
}

+ (BOOL)writeGraphTextToFile:(id)a3 samplerate:(int)a4 bufferSize:(int)a5 error:(id *)a6
{
  v7 = *&a5;
  v8 = *&a4;
  v10 = a3;
  v11 = v10;
  if (!qword_1002D6F90)
  {
    v41 = v10;
    v12 = +[NSBundle mainBundle];
    v13 = [v12 pathForResource:@"voiceMemo_NS_ReverbSuppressor_template" ofType:@"dspg"];

    v14 = [NSMutableString stringWithContentsOfFile:v13 encoding:4 error:a6];
    v15 = [v14 rangeOfString:@"noise_supression_imp_token"];
    v17 = v16;
    v18 = [a1 nsImplementation];
    [v14 replaceCharactersInRange:v15 withString:{v17, v18}];

    if (!v14)
    {

      v35 = 0;
      v11 = v41;
      goto LABEL_12;
    }

    v37 = v13;
    v38 = v8;
    v39 = v7;
    v40 = a6;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v19 = [a1 parameters];
    v20 = [v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v43;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v43 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v42 + 1) + 8 * i);
          v25 = [v24 address];
          [v24 defaultValue];
          [v14 appendFormat:@"param %i %f in\n", v25, v26];
          v27 = [v24 address];
          v28 = [v24 graphName];
          [v14 appendFormat:@"wireGraphParam %i (%@ %i 0 0)\n", v27, v28, objc_msgSend(v24, "internalAddress")];
        }

        v21 = [v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v21);
    }

    v29 = [v14 copy];
    v30 = qword_1002D6F90;
    qword_1002D6F90 = v29;

    a6 = v40;
    v11 = v41;
    v8 = v38;
    v7 = v39;
  }

  v31 = [NSString stringWithFormat:@"[def fs %i]", v8];
  v32 = [NSString stringWithFormat:@"[def sz %i]", v7];
  v33 = [qword_1002D6F90 stringByReplacingOccurrencesOfString:@"samplerate_def_token" withString:v31];
  v34 = [v33 stringByReplacingOccurrencesOfString:@"size_def_token" withString:v32];

  v35 = [v34 writeToFile:v11 atomically:1 encoding:4 error:a6];
LABEL_12:

  return v35;
}

+ (id)propertyStrip
{
  if (qword_1002D6FA0 != -1)
  {
    sub_1001B570C();
  }

  v3 = qword_1002D6F98;

  return v3;
}

+ (id)auStrip
{
  if (qword_1002D6FB0 != -1)
  {
    sub_1001B5720();
  }

  v3 = qword_1002D6FA8;

  return v3;
}

@end