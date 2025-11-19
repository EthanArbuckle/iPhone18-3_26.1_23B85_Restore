@interface Turtle
- (BOOL)configureFrequentBackgroundScan:(BOOL)a3 error:(id *)a4;
- (BOOL)gapSubtraction:(BOOL)a3 error:(id *)a4;
- (SSHBHIDSSHBTurtleDelegate)delegate;
- (Turtle)init;
- (id)_frequentScanPeriodMs:(id *)a3;
- (id)bytesToInputPacket:(id *)a3;
- (id)criticalErrors:(id *)a3;
- (void)deviceWasAdded:(__IOHIDDevice *)a3;
- (void)deviceWasRemoved:(__IOHIDDevice *)a3;
@end

@implementation Turtle

- (Turtle)init
{
  v8.receiver = self;
  v8.super_class = Turtle;
  v2 = [(Turtle *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(SSHBHIDManager);
    hidManager = v2->_hidManager;
    v2->_hidManager = v3;

    v2->_turtleRef = 0;
    v5 = v2->_hidManager;
    v6 = [[SSHBHIDUsage alloc] initWithPrimaryUsage:100 primaryUsagePage:32];
    [(SSHBHIDManager *)v5 registerDevice:v2 forNotificationsFromDeviceWithUsage:v6];
  }

  return v2;
}

- (void)deviceWasAdded:(__IOHIDDevice *)a3
{
  [(Turtle *)self setTurtleRef:a3];
  v4 = [(Turtle *)self delegate];
  [v4 turtleWasConnected];
}

- (void)deviceWasRemoved:(__IOHIDDevice *)a3
{
  [(Turtle *)self setTurtleRef:0];
  v4 = [(Turtle *)self delegate];
  [v4 turtleWasDisconnected];
}

- (id)bytesToInputPacket:(id *)a3
{
  v4 = objc_alloc_init(SSHBHIDSSHBTurtleInputPacket);
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setReportID:a3->var0];
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setFrameNumber:a3->var1];
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setTimestamp:*(&a3->var1 + 1)];
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setCookie_type:BYTE2(a3->var2)];
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setCookie:*(&a3->var2 + 3)];
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setCapValue:*(&a3->var2 + 5)];
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setGapValue:*(&a3->var4 + 1)];
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setForceValue:*(&a3->var6 + 1)];
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setMesaTemperature:*(&a3->var6 + 3)];
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setMesaFd:HIBYTE(a3->var7)];
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setMesaFdStuck:LOBYTE(a3->var8)];
  *&v5 = vcvts_n_f32_s32(*(&a3->var6 + 3), 2uLL);
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setMesaTemperatureProcessed:v5];

  return v4;
}

- (BOOL)gapSubtraction:(BOOL)a3 error:(id *)a4
{
  if (a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v13[0] = -95;
  v13[1] = v6;
  v7 = [(Turtle *)self hidManager];
  v8 = [(Turtle *)self turtleRef];
  v9 = [NSData dataWithBytes:v13 length:2];
  LODWORD(v12) = 161;
  v10 = [v7 setReportForDevice:v8 reportType:0 reportID:161 buffer:v9 error:a4 domain:@"com.apple.DiagnosticsService.Diagnostic-4492.Turtle" code:v12];

  return v10;
}

- (BOOL)configureFrequentBackgroundScan:(BOOL)a3 error:(id *)a4
{
  v7 = [(Turtle *)self _frequentScanPeriodMs:a4];
  v8 = v7;
  if (v7)
  {
    v18 = 33;
    v19 = [v7 unsignedShortValue];
    if (qword_100014410)
    {
      if (a3)
      {
LABEL_4:
        v9 = [NSData dataWithBytes:&v18 length:3];
LABEL_8:
        v14 = v9;
        v15 = [(Turtle *)self hidManager];
        LODWORD(v17) = 33;
        v10 = [v15 setReportForDevice:-[Turtle turtleRef](self reportType:"turtleRef") reportID:0 buffer:33 error:v14 domain:a4 code:{@"com.apple.DiagnosticsService.Diagnostic-4492.Turtle", v17}];

        goto LABEL_9;
      }
    }

    else
    {
      v11 = [(Turtle *)self hidManager];
      v12 = [v11 getReportForDevice:-[Turtle turtleRef](self reportType:"turtleRef") reportID:0 error:{33, a4}];
      v13 = qword_100014410;
      qword_100014410 = v12;

      if (a3)
      {
        goto LABEL_4;
      }
    }

    v9 = qword_100014410;
    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (id)_frequentScanPeriodMs:(id *)a3
{
  v5 = [(Turtle *)self hidManager];
  v6 = [v5 getReportForDevice:-[Turtle turtleRef](self reportType:"turtleRef") reportID:0 error:{34, a3}];

  if ([v6 length] == 3)
  {
    v7 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", *([v6 bytes] + 1));
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)criticalErrors:(id *)a3
{
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(Turtle *)self _getReport:224 error:a3];
  v7 = [(Turtle *)self _getReport:225 error:a3];
  v8 = [(Turtle *)self _getReport:226 error:a3];
  v9 = [(Turtle *)self _getReport:227 error:a3];
  if (v6)
  {
    v10 = *[v6 bytes];
    v37[0] = @"scan";
    v11 = [NSNumber numberWithInt:(v10 >> 1) & 1];
    v38[0] = v11;
    v37[1] = @"i2c";
    v12 = [NSNumber numberWithInt:(v10 >> 2) & 1];
    v38[1] = v12;
    v37[2] = @"calibration";
    v13 = [NSNumber numberWithInt:(v10 >> 3) & 1];
    v38[2] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:3];
    [v5 setObject:v14 forKeyedSubscript:@"general"];
  }

  if (v7)
  {
    v15 = [v7 bytes];
    v35[0] = @"startScanFailures";
    v30 = [NSNumber numberWithUnsignedChar:*v15];
    v36[0] = v30;
    v35[1] = @"stopScanFailures";
    v16 = [NSNumber numberWithUnsignedChar:v15[1]];
    v36[1] = v16;
    v35[2] = @"readScanResultFailures";
    v17 = [NSNumber numberWithUnsignedChar:v15[2]];
    v36[2] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:3];
    [v5 setObject:v18 forKeyedSubscript:@"scan"];
  }

  if (v8)
  {
    v19 = [v8 bytes];
    v33[0] = @"readFailures";
    v20 = [NSNumber numberWithUnsignedChar:*v19];
    v33[1] = @"writeFailures";
    v34[0] = v20;
    v21 = [NSNumber numberWithUnsignedChar:v19[1]];
    v34[1] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
    [v5 setObject:v22 forKeyedSubscript:@"i2c"];
  }

  if (v9)
  {
    v23 = *[v9 bytes];
    v31[0] = @"forceCal";
    v24 = [NSNumber numberWithInt:v23 & 1];
    v32[0] = v24;
    v31[1] = @"gapCal";
    v25 = [NSNumber numberWithInt:(v23 >> 1) & 1];
    v32[1] = v25;
    v31[2] = @"inverseFilterCal";
    v26 = [NSNumber numberWithInt:(v23 >> 2) & 1];
    v32[2] = v26;
    v27 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];
    [v5 setObject:v27 forKeyedSubscript:@"calibration"];
  }

  v28 = [v5 copy];

  return v28;
}

- (SSHBHIDSSHBTurtleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end