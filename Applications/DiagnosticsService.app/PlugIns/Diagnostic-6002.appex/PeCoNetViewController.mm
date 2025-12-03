@interface PeCoNetViewController
- (BOOL)convertPrcl:(const Prcl *)prcl toJlex:(jlex_v102 *)jlex;
- (id)serializePatchItemDict:(id)dict;
- (void)cancel;
- (void)finishRun:(id)run reducedLog:(id)log result:(int)result prcl:(const Prcl *)prcl angles:;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
@end

@implementation PeCoNetViewController

- (BOOL)convertPrcl:(const Prcl *)prcl toJlex:(jlex_v102 *)jlex
{
  v16[0] = 0;
  v16[1] = 0;
  v6 = [(PeCoNetViewController *)self getCurrentUUID:v16];
  if (v6)
  {
    v7 = [[NSUUID alloc] initWithUUIDBytes:v16];
    for (i = +[NSUUID UUID];
    {
      v9 = +[NSUUID UUID];
    }

    [i getUUIDBytes:jlex->var1];
    v10 = 0;
    wideRotMatrix = prcl->wideRotMatrix;
    v12 = &jlex->var1[16];
    do
    {
      v13 = 0;
      v14 = prcl->wideFocalPoint[v10];
      do
      {
        *&v12[8 * v13] = (*wideRotMatrix)[v13];
        *(&jlex->var2[v10][2] + 4) = v14;
        ++v13;
      }

      while (v13 != 3);
      ++v10;
      ++wideRotMatrix;
      v12 += 32;
    }

    while (v10 != 3);
  }

  return v6;
}

- (id)serializePatchItemDict:(id)dict
{
  v7 = 0;
  v3 = [NSPropertyListSerialization dataWithPropertyList:dict format:100 options:0 error:&v7];
  v4 = v7;
  v5 = 0;
  if (!v4)
  {
    v5 = [v3 base64EncodedStringWithOptions:0];
  }

  return v5;
}

- (void)finishRun:(id)run reducedLog:(id)log result:(int)result prcl:(const Prcl *)prcl angles:
{
  v7 = v6;
  v9 = *&result;
  logCopy = log;
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
  lastPathComponent = [v11 lastPathComponent];
  v13 = [NSString stringWithFormat:@"PeCoNetViewController finishRun, result = %d", v9];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent, 166, v13);

  v14 = objc_alloc_init(NSMutableDictionary);
  v15 = +[NSBundle mainBundle];
  v16 = [v15 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = +[NSNull null];
  }

  v19 = v18;

  [v14 setValue:v19 forKey:@"pluginVersion"];
  if (!v9)
  {
    v75 = 0u;
    v74 = 0u;
    v73 = 0u;
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 102;
    if ([(PeCoNetViewController *)self convertPrcl:prcl toJlex:&v68])
    {
      v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
      lastPathComponent2 = [v20 lastPathComponent];
      v22 = [NSString stringWithFormat:@"PeCoNetViewController finishRun1"];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent2, 179, v22);

      sub_100007090(__p, " ");
      v66[0] = @"x";
      std::to_string(&v59, *v7);
      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v59;
      }

      else
      {
        v23 = v59.__r_.__value_.__r.__words[0];
      }

      v24 = [NSString stringWithUTF8String:v23];
      v67[0] = v24;
      v66[1] = @"y";
      std::to_string(&v58, v7[1]);
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v58;
      }

      else
      {
        v25 = v58.__r_.__value_.__r.__words[0];
      }

      v26 = [NSString stringWithUTF8String:v25];
      v67[1] = v26;
      v66[2] = @"z";
      std::to_string(&v57, v7[2]);
      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v57;
      }

      else
      {
        v27 = v57.__r_.__value_.__r.__words[0];
      }

      v28 = [NSString stringWithUTF8String:v27];
      v67[2] = v28;
      v55 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:3];

      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      [v14 setValue:v55 forKey:@"rotationalAngle"];
      v29 = [NSData dataWithBytes:&v68 length:116];
      v64 = @"jlex";
      v65 = v29;
      v53 = v29;
      v54 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      v52 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", prcl->jasperSN, +[NSString defaultCStringEncoding]);
      v51 = [NSString stringWithFormat:@"JpCl-%@", v52];
      v62 = v51;
      v63 = v54;
      v30 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      v31 = [(PeCoNetViewController *)self serializePatchItemDict:v30];
      if (v31)
      {
        [v14 setValue:v31 forKey:@"patchItem"];
        v9 = 0;
      }

      else
      {
        sub_100007090(&v59, "Failed to serialize patch item dict");
        v38 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
        lastPathComponent3 = [v38 lastPathComponent];
        v40 = &v59;
        if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v40 = v59.__r_.__value_.__r.__words[0];
        }

        v41 = [NSString stringWithFormat:@"%s", v40];
        NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent3, 193, v41);

        if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v42 = &v59;
        }

        else
        {
          v42 = v59.__r_.__value_.__r.__words[0];
        }

        v43 = [NSString stringWithUTF8String:v42];
        [logCopy addObject:v43];

        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        v9 = 4294967286;
      }

      if (v61 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      sub_100007090(__p, "Failed to create JlEx");
      v32 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
      lastPathComponent4 = [v32 lastPathComponent];
      v34 = __p;
      if (v61 < 0)
      {
        v34 = __p[0];
      }

      v35 = [NSString stringWithFormat:@"%s", v34];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent4, 174, v35);

      if (v61 >= 0)
      {
        v36 = __p;
      }

      else
      {
        v36 = __p[0];
      }

      v37 = [NSString stringWithUTF8String:v36];
      [logCopy addObject:v37];

      if (v61 < 0)
      {
        operator delete(__p[0]);
      }

      v9 = 2;
    }
  }

  v44 = [logCopy componentsJoinedByString:{@", "}];
  [v14 setValue:v44 forKey:@"log"];
  v45 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
  lastPathComponent5 = [v45 lastPathComponent];
  v47 = [NSString stringWithFormat:@"PeCoNetViewController finishRun added reduced log string"];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent5, 205, v47);

  result = [(PeCoNetViewController *)self result];
  [result setData:v14];

  v49 = [NSNumber numberWithInt:v9];
  result2 = [(PeCoNetViewController *)self result];
  [result2 setStatusCode:v49];

  [(PeCoNetViewController *)self setFinished:1];
}

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  inputsCopy = inputs;
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
  lastPathComponent = [v6 lastPathComponent];
  v8 = [NSString stringWithFormat:@"PeCoNetViewController setup"];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent, 214, v8);

  objc_storeStrong(&self->_inputs, inputs);
  [(PeCoNetViewController *)self setShouldShowPressHomeLabel:0];
}

- (void)start
{
  v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
  lastPathComponent = [v3 lastPathComponent];
  v5 = [NSString stringWithFormat:@"PeCoNetViewController start new"];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent, 222, v5);

  v6 = objc_alloc_init(ViewController);
  mainAppViewController = self->_mainAppViewController;
  self->_mainAppViewController = v6;

  view = [(PeCoNetViewController *)self view];
  [self->_mainAppViewController setStoryBoardView:view];

  [self->_mainAppViewController setListener:self];
  inputs = self->_inputs;
  if (inputs)
  {
    if ([(PeCoNetDKDiagnosticInputs *)inputs sessionTimeOut])
    {
      [self->_mainAppViewController setSessionMaxTimeOut:[(PeCoNetDKDiagnosticInputs *)self->_inputs sessionTimeOut]];
    }

    if ([(PeCoNetDKDiagnosticInputs *)self->_inputs sceneErrorTimeOut])
    {
      [self->_mainAppViewController setConsecutiveSceneErrorLimit:[(PeCoNetDKDiagnosticInputs *)self->_inputs sceneErrorTimeOut]];
    }

    if ([(PeCoNetDKDiagnosticInputs *)self->_inputs sceneErrorWarningThreshold])
    {
      [self->_mainAppViewController setConsecutiveSceneErrorWarningLimit:[(PeCoNetDKDiagnosticInputs *)self->_inputs sceneErrorWarningThreshold]];
    }

    if ([(PeCoNetDKDiagnosticInputs *)self->_inputs userNotMovingTimeout])
    {
      [self->_mainAppViewController setUserNotMovingTimeout:[(PeCoNetDKDiagnosticInputs *)self->_inputs userNotMovingTimeout]];
    }

    [(PeCoNetDKDiagnosticInputs *)self->_inputs noMovementAttitudeChangeMinThreshold];
    if (v10 != 0.0)
    {
      [(PeCoNetDKDiagnosticInputs *)self->_inputs noMovementAttitudeChangeMinThreshold];
      [self->_mainAppViewController setNoMovementAttitudeChangeMinThreshold:?];
    }

    if ([(PeCoNetDKDiagnosticInputs *)self->_inputs skipSummaryScreen])
    {
      [self->_mainAppViewController setSkipSummaryScreen:[(PeCoNetDKDiagnosticInputs *)self->_inputs skipSummaryScreen]];
    }
  }

  v11 = self->_mainAppViewController;

  [(ViewController *)v11 startUI];
}

- (void)cancel
{
  [self->_mainAppViewController cancel];
  v3 = [NSNumber numberWithInt:[self->_mainAppViewController getCurrentResult]];
  result = [(PeCoNetViewController *)self result];
  [result setStatusCode:v3];

  mainAppViewController = self->_mainAppViewController;
  self->_mainAppViewController = 0;

  [(PeCoNetViewController *)self setFinished:1];
}

@end