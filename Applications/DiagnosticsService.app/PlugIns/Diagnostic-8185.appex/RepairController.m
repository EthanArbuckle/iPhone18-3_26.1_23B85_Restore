@interface RepairController
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
@end

@implementation RepairController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = handleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315650;
    v16 = "[RepairController setupWithInputs:responder:]";
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: %@, %@", &v15, 0x20u);
  }

  [(RepairController *)self setInputs:v6];
  v9 = [(RepairController *)self inputs];

  if (!v9)
  {
    v10 = [(RepairController *)self result];
    [v10 setStatusCode:&off_100008A78];

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
  v3 = [(RepairController *)self result];
  [v3 setStatusCode:&off_100008A90];

  LOBYTE(v3) = MGGetBoolAnswer();
  v4 = MGGetBoolAnswer();
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    sub_1000033AC(self, buf);
    v64 = *buf;
    goto LABEL_52;
  }

  v5 = [(RepairController *)self inputs];
  v6 = [v5 partSPC];
  [v6 intersectSet:self->supportedSPCs];

  v7 = handleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(RepairController *)self inputs];
    v9 = [v8 partSPC];
    *buf = 138412290;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "selected PartSPCs:%@", buf, 0xCu);
  }

  v10 = [(RepairController *)self inputs];
  v11 = [v10 partSPC];
  if (!v11)
  {

    goto LABEL_51;
  }

  v12 = v11;
  v13 = [(RepairController *)self inputs];
  v14 = [v13 partSPC];
  v15 = [v14 count];

  if (!v15)
  {
LABEL_51:
    v64 = [(RepairController *)self result];
    [v64 setStatusCode:&off_100008AD8];
    goto LABEL_52;
  }

  v106 = dispatch_semaphore_create(0);
  v16 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.corerepair" options:0];
  v17 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CoreRepairHelperProtocol];
  [v16 setRemoteObjectInterface:v17];

  v105 = v16;
  [v16 resume];
  v18 = objc_alloc_init(NSMutableDictionary);
  v19 = [(RepairController *)self inputs];
  v20 = [v19 patchItems];

  if (v20)
  {
    v21 = [(RepairController *)self inputs];
    v22 = [v21 patchItems];
    [v18 setObject:v22 forKeyedSubscript:@"patchItems"];
  }

  v23 = [(RepairController *)self inputs];
  v24 = [v23 enableStagedSeal];

  if (v24)
  {
    v25 = [(RepairController *)self inputs];
    v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v25 enableStagedSeal]);
    [v18 setObject:v26 forKeyedSubscript:@"enableStagedSeal"];
  }

  v27 = [(RepairController *)self inputs];
  v28 = [v27 ignoreStagedData];

  if (v28)
  {
    v29 = [(RepairController *)self inputs];
    v30 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v29 ignoreStagedData]);
    [v18 setObject:v30 forKeyedSubscript:@"ignoreStagedData"];
  }

  v31 = [(RepairController *)self inputs];
  v32 = [v31 skipStageEAN];

  if (v32)
  {
    v33 = [(RepairController *)self inputs];
    v34 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v33 skipStageEAN]);
    [v18 setObject:v34 forKeyedSubscript:@"skipStageEAN"];
  }

  v35 = [(RepairController *)self inputs];
  v36 = [v35 allowSelfService];

  if (v36)
  {
    v37 = [(RepairController *)self inputs];
    v38 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v37 allowSelfService]);
    [v18 setObject:v38 forKeyedSubscript:@"allowSelfService"];
  }

  v39 = [(RepairController *)self inputs];
  v40 = [v39 allowUsedPart];

  if (v40)
  {
    v41 = [(RepairController *)self inputs];
    v42 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v41 allowUsedPart]);
    [v18 setObject:v42 forKeyedSubscript:@"allowUsedPart"];
  }

  v43 = [(RepairController *)self inputs];
  v44 = [v43 keyBlob];

  if (v44)
  {
    v45 = [NSData alloc];
    v46 = [(RepairController *)self inputs];
    v47 = [v46 keyBlob];
    v48 = [v45 initWithBase64EncodedString:v47 options:0];

    if (v48)
    {
      [v18 setObject:v48 forKeyedSubscript:@"keyBlob"];
    }
  }

  v110[0] = @"doSeal";
  v104 = [(RepairController *)self inputs];
  v103 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v104 doSeal]);
  v111[0] = v103;
  v110[1] = @"enableProxy";
  v102 = [(RepairController *)self inputs];
  v101 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v102 enableProxy]);
  v111[1] = v101;
  v110[2] = @"KBBSerialNumber";
  v100 = [(RepairController *)self inputs];
  v49 = [v100 KBBSerialNumber];
  v50 = v49;
  if (!v49)
  {
    v49 = +[NSNull null];
  }

  v83 = v49;
  v111[2] = v49;
  v110[3] = @"KGBSerialNumber";
  v98 = [(RepairController *)self inputs];
  v51 = [v98 KGBSerialNumber];
  v52 = v51;
  if (!v51)
  {
    v51 = +[NSNull null];
  }

  v82 = v51;
  v111[3] = v51;
  v110[4] = @"partSPC";
  v96 = [(RepairController *)self inputs];
  v53 = [v96 partSPC];
  v54 = v53;
  if (!v53)
  {
    v53 = +[NSNull null];
  }

  v97 = v52;
  v81 = v53;
  v111[4] = v53;
  v110[5] = @"updateProperties";
  v94 = [(RepairController *)self inputs];
  v55 = [v94 updateProperties];
  v93 = v55;
  if (!v55)
  {
    v55 = +[NSNull null];
  }

  v95 = v54;
  v99 = v50;
  v111[5] = v55;
  v110[6] = @"DisplayMaxDuration";
  v92 = [(RepairController *)self inputs];
  v91 = [v92 displayMaxDuration];
  v111[6] = v91;
  v110[7] = @"CAURL";
  v90 = [(RepairController *)self inputs];
  v89 = [v90 FDRCAURL];
  v111[7] = v89;
  v110[8] = @"DSURL";
  v88 = [(RepairController *)self inputs];
  v87 = [v88 FDRDSURL];
  v111[8] = v87;
  v110[9] = @"TrustObjectURL";
  v86 = [(RepairController *)self inputs];
  v85 = [v86 trustObjectURL];
  v111[9] = v85;
  v110[10] = @"SealingURL";
  v84 = [(RepairController *)self inputs];
  v56 = [v84 FDRSealingURL];
  v111[10] = v56;
  v110[11] = @"UseSOCKSHost";
  v57 = [(RepairController *)self inputs];
  v58 = [v57 SOCKSHost];
  v59 = v58;
  if (!v58)
  {
    v59 = +[NSNull null];
  }

  v111[11] = v59;
  v110[12] = @"UseSOCKSPort";
  v60 = [(RepairController *)self inputs];
  v61 = [v60 SOCKSPort];
  v62 = v61;
  if (!v61)
  {
    v62 = +[NSNull null];
  }

  v111[12] = v62;
  v63 = [NSDictionary dictionaryWithObjects:v111 forKeys:v110 count:13];
  [v18 addEntriesFromDictionary:v63];

  if (!v61)
  {
  }

  if (!v58)
  {
  }

  v64 = v18;
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

  v65 = [v105 remoteObjectProxy];
  v107[0] = _NSConcreteStackBlock;
  v107[1] = 3221225472;
  v107[2] = sub_100002EE4;
  v107[3] = &unk_100008198;
  v107[4] = self;
  v108 = v105;
  v66 = v106;
  v109 = v66;
  v67 = v105;
  [v65 seal:v18 withReply:v107];

  v68 = [(RepairController *)self inputs];
  v69 = [v68 timeoutPeriod];
  v70 = dispatch_time(0, 1000000000 * [v69 intValue]);
  v71 = dispatch_semaphore_wait(v66, v70);

  if (v71)
  {
    v72 = [(RepairController *)self result];
    [v72 setStatusCode:&off_100008AC0];
  }

LABEL_52:
  v73 = [(RepairController *)self result];
  v74 = [v73 data];
  v75 = [v74 mutableCopy];

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

    v79 = [(RepairController *)self result];
    [v79 setData:v75];
  }

  [(RepairController *)self setFinished:1];
}

@end