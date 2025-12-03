@interface RepairController
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
@end

@implementation RepairController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  inputsCopy = inputs;
  responderCopy = responder;
  v8 = handleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315650;
    v16 = "[RepairController setupWithInputs:responder:]";
    v17 = 2112;
    v18 = inputsCopy;
    v19 = 2112;
    v20 = responderCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: %@, %@", &v15, 0x20u);
  }

  [(RepairController *)self setInputs:inputsCopy];
  inputs = [(RepairController *)self inputs];

  if (!inputs)
  {
    result = [(RepairController *)self result];
    [result setStatusCode:&off_100008A78];

    [(RepairController *)self setFinished:1];
  }

  v11 = [NSSet setWithArray:&off_100008B90];
  supportedSPCs = self->supportedSPCs;
  self->supportedSPCs = v11;

  v13 = [(NSSet *)self->supportedSPCs setByAddingObjectsFromArray:&off_100008BA8];
  v14 = self->supportedSPCs;
  self->supportedSPCs = v13;
}

- (void)start
{
  result = [(RepairController *)self result];
  [result setStatusCode:&off_100008A90];

  LOBYTE(result) = MGGetBoolAnswer();
  v4 = MGGetBoolAnswer();
  if ((result & 1) == 0 && (v4 & 1) == 0)
  {
    sub_1000033AC(self, buf);
    result2 = *buf;
    goto LABEL_52;
  }

  inputs = [(RepairController *)self inputs];
  partSPC = [inputs partSPC];
  [partSPC intersectSet:self->supportedSPCs];

  v7 = handleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    inputs2 = [(RepairController *)self inputs];
    partSPC2 = [inputs2 partSPC];
    *buf = 138412290;
    *&buf[4] = partSPC2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "selected PartSPCs:%@", buf, 0xCu);
  }

  inputs3 = [(RepairController *)self inputs];
  partSPC3 = [inputs3 partSPC];
  if (!partSPC3)
  {

    goto LABEL_51;
  }

  v12 = partSPC3;
  inputs4 = [(RepairController *)self inputs];
  partSPC4 = [inputs4 partSPC];
  v15 = [partSPC4 count];

  if (!v15)
  {
LABEL_51:
    result2 = [(RepairController *)self result];
    [result2 setStatusCode:&off_100008AD8];
    goto LABEL_52;
  }

  v106 = dispatch_semaphore_create(0);
  v16 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.corerepair" options:0];
  v17 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CoreRepairHelperProtocol];
  [v16 setRemoteObjectInterface:v17];

  v105 = v16;
  [v16 resume];
  v18 = objc_alloc_init(NSMutableDictionary);
  inputs5 = [(RepairController *)self inputs];
  patchItems = [inputs5 patchItems];

  if (patchItems)
  {
    inputs6 = [(RepairController *)self inputs];
    patchItems2 = [inputs6 patchItems];
    [v18 setObject:patchItems2 forKeyedSubscript:@"patchItems"];
  }

  inputs7 = [(RepairController *)self inputs];
  enableStagedSeal = [inputs7 enableStagedSeal];

  if (enableStagedSeal)
  {
    inputs8 = [(RepairController *)self inputs];
    v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [inputs8 enableStagedSeal]);
    [v18 setObject:v26 forKeyedSubscript:@"enableStagedSeal"];
  }

  inputs9 = [(RepairController *)self inputs];
  ignoreStagedData = [inputs9 ignoreStagedData];

  if (ignoreStagedData)
  {
    inputs10 = [(RepairController *)self inputs];
    v30 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [inputs10 ignoreStagedData]);
    [v18 setObject:v30 forKeyedSubscript:@"ignoreStagedData"];
  }

  inputs11 = [(RepairController *)self inputs];
  skipStageEAN = [inputs11 skipStageEAN];

  if (skipStageEAN)
  {
    inputs12 = [(RepairController *)self inputs];
    v34 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [inputs12 skipStageEAN]);
    [v18 setObject:v34 forKeyedSubscript:@"skipStageEAN"];
  }

  inputs13 = [(RepairController *)self inputs];
  allowSelfService = [inputs13 allowSelfService];

  if (allowSelfService)
  {
    inputs14 = [(RepairController *)self inputs];
    v38 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [inputs14 allowSelfService]);
    [v18 setObject:v38 forKeyedSubscript:@"allowSelfService"];
  }

  inputs15 = [(RepairController *)self inputs];
  allowUsedPart = [inputs15 allowUsedPart];

  if (allowUsedPart)
  {
    inputs16 = [(RepairController *)self inputs];
    v42 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [inputs16 allowUsedPart]);
    [v18 setObject:v42 forKeyedSubscript:@"allowUsedPart"];
  }

  inputs17 = [(RepairController *)self inputs];
  keyBlob = [inputs17 keyBlob];

  if (keyBlob)
  {
    v45 = [NSData alloc];
    inputs18 = [(RepairController *)self inputs];
    keyBlob2 = [inputs18 keyBlob];
    v48 = [v45 initWithBase64EncodedString:keyBlob2 options:0];

    if (v48)
    {
      [v18 setObject:v48 forKeyedSubscript:@"keyBlob"];
    }
  }

  v110[0] = @"doSeal";
  inputs19 = [(RepairController *)self inputs];
  v103 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [inputs19 doSeal]);
  v111[0] = v103;
  v110[1] = @"enableProxy";
  inputs20 = [(RepairController *)self inputs];
  v101 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [inputs20 enableProxy]);
  v111[1] = v101;
  v110[2] = @"KBBSerialNumber";
  inputs21 = [(RepairController *)self inputs];
  kBBSerialNumber = [inputs21 KBBSerialNumber];
  v50 = kBBSerialNumber;
  if (!kBBSerialNumber)
  {
    kBBSerialNumber = +[NSNull null];
  }

  v83 = kBBSerialNumber;
  v111[2] = kBBSerialNumber;
  v110[3] = @"KGBSerialNumber";
  inputs22 = [(RepairController *)self inputs];
  kGBSerialNumber = [inputs22 KGBSerialNumber];
  v52 = kGBSerialNumber;
  if (!kGBSerialNumber)
  {
    kGBSerialNumber = +[NSNull null];
  }

  v82 = kGBSerialNumber;
  v111[3] = kGBSerialNumber;
  v110[4] = @"partSPC";
  inputs23 = [(RepairController *)self inputs];
  partSPC5 = [inputs23 partSPC];
  v54 = partSPC5;
  if (!partSPC5)
  {
    partSPC5 = +[NSNull null];
  }

  v97 = v52;
  v81 = partSPC5;
  v111[4] = partSPC5;
  v110[5] = @"updateProperties";
  inputs24 = [(RepairController *)self inputs];
  updateProperties = [inputs24 updateProperties];
  v93 = updateProperties;
  if (!updateProperties)
  {
    updateProperties = +[NSNull null];
  }

  v95 = v54;
  v99 = v50;
  v111[5] = updateProperties;
  v110[6] = @"DisplayMaxDuration";
  inputs25 = [(RepairController *)self inputs];
  displayMaxDuration = [inputs25 displayMaxDuration];
  v111[6] = displayMaxDuration;
  v110[7] = @"CAURL";
  inputs26 = [(RepairController *)self inputs];
  fDRCAURL = [inputs26 FDRCAURL];
  v111[7] = fDRCAURL;
  v110[8] = @"DSURL";
  inputs27 = [(RepairController *)self inputs];
  fDRDSURL = [inputs27 FDRDSURL];
  v111[8] = fDRDSURL;
  v110[9] = @"TrustObjectURL";
  inputs28 = [(RepairController *)self inputs];
  trustObjectURL = [inputs28 trustObjectURL];
  v111[9] = trustObjectURL;
  v110[10] = @"SealingURL";
  inputs29 = [(RepairController *)self inputs];
  fDRSealingURL = [inputs29 FDRSealingURL];
  v111[10] = fDRSealingURL;
  v110[11] = @"UseSOCKSHost";
  inputs30 = [(RepairController *)self inputs];
  sOCKSHost = [inputs30 SOCKSHost];
  v59 = sOCKSHost;
  if (!sOCKSHost)
  {
    v59 = +[NSNull null];
  }

  v111[11] = v59;
  v110[12] = @"UseSOCKSPort";
  inputs31 = [(RepairController *)self inputs];
  sOCKSPort = [inputs31 SOCKSPort];
  v62 = sOCKSPort;
  if (!sOCKSPort)
  {
    v62 = +[NSNull null];
  }

  v111[12] = v62;
  v63 = [NSDictionary dictionaryWithObjects:v111 forKeys:v110 count:13];
  [v18 addEntriesFromDictionary:v63];

  if (!sOCKSPort)
  {
  }

  if (!sOCKSHost)
  {
  }

  result2 = v18;
  if (!v93)
  {
  }

  if (!v95)
  {
  }

  if (!v97)
  {
  }

  if (!v99)
  {
  }

  remoteObjectProxy = [v105 remoteObjectProxy];
  v107[0] = _NSConcreteStackBlock;
  v107[1] = 3221225472;
  v107[2] = sub_100002EE4;
  v107[3] = &unk_100008198;
  v107[4] = self;
  v108 = v105;
  v66 = v106;
  v109 = v66;
  v67 = v105;
  [remoteObjectProxy seal:v18 withReply:v107];

  inputs32 = [(RepairController *)self inputs];
  timeoutPeriod = [inputs32 timeoutPeriod];
  v70 = dispatch_time(0, 1000000000 * [timeoutPeriod intValue]);
  v71 = dispatch_semaphore_wait(v66, v70);

  if (v71)
  {
    result3 = [(RepairController *)self result];
    [result3 setStatusCode:&off_100008AC0];
  }

LABEL_52:
  result4 = [(RepairController *)self result];
  data = [result4 data];
  v75 = [data mutableCopy];

  if (v75)
  {
    v76 = +[NSBundle mainBundle];
    v77 = [v76 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
    if (v77)
    {
      [v75 setObject:v77 forKeyedSubscript:@"pluginVersion"];
    }

    else
    {
      v78 = +[NSNull null];
      [v75 setObject:v78 forKeyedSubscript:@"pluginVersion"];
    }

    result5 = [(RepairController *)self result];
    [result5 setData:v75];
  }

  [(RepairController *)self setFinished:1];
}

@end