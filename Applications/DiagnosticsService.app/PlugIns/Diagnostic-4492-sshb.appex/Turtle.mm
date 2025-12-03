@interface Turtle
- (BOOL)configureFrequentBackgroundScan:(BOOL)scan error:(id *)error;
- (BOOL)gapSubtraction:(BOOL)subtraction error:(id *)error;
- (SSHBHIDSSHBTurtleDelegate)delegate;
- (Turtle)init;
- (id)_frequentScanPeriodMs:(id *)ms;
- (id)bytesToInputPacket:(id *)packet;
- (id)criticalErrors:(id *)errors;
- (void)deviceWasAdded:(__IOHIDDevice *)added;
- (void)deviceWasRemoved:(__IOHIDDevice *)removed;
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

- (void)deviceWasAdded:(__IOHIDDevice *)added
{
  [(Turtle *)self setTurtleRef:added];
  delegate = [(Turtle *)self delegate];
  [delegate turtleWasConnected];
}

- (void)deviceWasRemoved:(__IOHIDDevice *)removed
{
  [(Turtle *)self setTurtleRef:0];
  delegate = [(Turtle *)self delegate];
  [delegate turtleWasDisconnected];
}

- (id)bytesToInputPacket:(id *)packet
{
  v4 = objc_alloc_init(SSHBHIDSSHBTurtleInputPacket);
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setReportID:packet->var0];
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setFrameNumber:packet->var1];
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setTimestamp:*(&packet->var1 + 1)];
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setCookie_type:BYTE2(packet->var2)];
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setCookie:*(&packet->var2 + 3)];
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setCapValue:*(&packet->var2 + 5)];
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setGapValue:*(&packet->var4 + 1)];
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setForceValue:*(&packet->var6 + 1)];
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setMesaTemperature:*(&packet->var6 + 3)];
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setMesaFd:HIBYTE(packet->var7)];
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setMesaFdStuck:LOBYTE(packet->var8)];
  *&v5 = vcvts_n_f32_s32(*(&packet->var6 + 3), 2uLL);
  [(SSHBHIDSSHBTurtleInputPacket *)v4 setMesaTemperatureProcessed:v5];

  return v4;
}

- (BOOL)gapSubtraction:(BOOL)subtraction error:(id *)error
{
  if (subtraction)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v13[0] = -95;
  v13[1] = v6;
  hidManager = [(Turtle *)self hidManager];
  turtleRef = [(Turtle *)self turtleRef];
  v9 = [NSData dataWithBytes:v13 length:2];
  LODWORD(v12) = 161;
  v10 = [hidManager setReportForDevice:turtleRef reportType:0 reportID:161 buffer:v9 error:error domain:@"com.apple.DiagnosticsService.Diagnostic-4492.Turtle" code:v12];

  return v10;
}

- (BOOL)configureFrequentBackgroundScan:(BOOL)scan error:(id *)error
{
  v7 = [(Turtle *)self _frequentScanPeriodMs:error];
  v8 = v7;
  if (v7)
  {
    v18 = 33;
    unsignedShortValue = [v7 unsignedShortValue];
    if (qword_100014410)
    {
      if (scan)
      {
LABEL_4:
        v9 = [NSData dataWithBytes:&v18 length:3];
LABEL_8:
        v14 = v9;
        hidManager = [(Turtle *)self hidManager];
        LODWORD(v17) = 33;
        v10 = [hidManager setReportForDevice:-[Turtle turtleRef](self reportType:"turtleRef") reportID:0 buffer:33 error:v14 domain:error code:{@"com.apple.DiagnosticsService.Diagnostic-4492.Turtle", v17}];

        goto LABEL_9;
      }
    }

    else
    {
      hidManager2 = [(Turtle *)self hidManager];
      v12 = [hidManager2 getReportForDevice:-[Turtle turtleRef](self reportType:"turtleRef") reportID:0 error:{33, error}];
      v13 = qword_100014410;
      qword_100014410 = v12;

      if (scan)
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

- (id)_frequentScanPeriodMs:(id *)ms
{
  hidManager = [(Turtle *)self hidManager];
  v6 = [hidManager getReportForDevice:-[Turtle turtleRef](self reportType:"turtleRef") reportID:0 error:{34, ms}];

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

- (id)criticalErrors:(id *)errors
{
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(Turtle *)self _getReport:224 error:errors];
  v7 = [(Turtle *)self _getReport:225 error:errors];
  v8 = [(Turtle *)self _getReport:226 error:errors];
  v9 = [(Turtle *)self _getReport:227 error:errors];
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
    bytes = [v7 bytes];
    v35[0] = @"startScanFailures";
    v30 = [NSNumber numberWithUnsignedChar:*bytes];
    v36[0] = v30;
    v35[1] = @"stopScanFailures";
    v16 = [NSNumber numberWithUnsignedChar:bytes[1]];
    v36[1] = v16;
    v35[2] = @"readScanResultFailures";
    v17 = [NSNumber numberWithUnsignedChar:bytes[2]];
    v36[2] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:3];
    [v5 setObject:v18 forKeyedSubscript:@"scan"];
  }

  if (v8)
  {
    bytes2 = [v8 bytes];
    v33[0] = @"readFailures";
    v20 = [NSNumber numberWithUnsignedChar:*bytes2];
    v33[1] = @"writeFailures";
    v34[0] = v20;
    v21 = [NSNumber numberWithUnsignedChar:bytes2[1]];
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