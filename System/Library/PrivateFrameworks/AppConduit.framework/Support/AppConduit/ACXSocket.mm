@interface ACXSocket
- (ACXSocket)initWithIDSDeviceConnection:(id)a3 boostingMessageContext:(id)a4 streamName:(id)a5 creationTime:(id)a6 readEventHandler:(id)a7;
- (ACXSocket)initWithSocket:(int)a3 streamName:(id)a4 creationTime:(id)a5 readEventHandler:(id)a6;
- (BOOL)writeBytes:(const void *)a3 length:(unint64_t)a4 error:(id *)a5;
- (BOOL)writeData:(id)a3 error:(id *)a4;
- (BOOL)writeDictionary:(id)a3 error:(id *)a4;
- (BOOL)writePingWithError:(id *)a3;
- (BOOL)writeShutdownMessageWithError:(id *)a3;
- (NSDictionary)errorInfoDict;
- (id)readDataOrDictionaryWithError:(id *)a3;
- (id)readDataWithError:(id *)a3;
- (id)readDictionaryWithError:(id *)a3;
- (void)_setUpSocketReadSource;
- (void)invalidate;
- (void)resumeReadSource;
- (void)suspendReadSource;
@end

@implementation ACXSocket

- (ACXSocket)initWithSocket:(int)a3 streamName:(id)a4 creationTime:(id)a5 readEventHandler:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = ACXSocket;
  v14 = [(ACXSocket *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_socketFD = a3;
    v16 = objc_retainBlock(v13);
    eventHandler = v15->_eventHandler;
    v15->_eventHandler = v16;

    objc_storeStrong(&v15->_streamName, a4);
    objc_storeStrong(&v15->_creationTime, a5);
    [(ACXSocket *)v15 _setUpSocketReadSource];
  }

  return v15;
}

- (ACXSocket)initWithIDSDeviceConnection:(id)a3 boostingMessageContext:(id)a4 streamName:(id)a5 creationTime:(id)a6 readEventHandler:(id)a7
{
  v13 = a3;
  v21 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = ACXSocket;
  v17 = [(ACXSocket *)&v22 init];
  if (v17)
  {
    v17->_socketFD = [v13 socket];
    v18 = objc_retainBlock(v16);
    eventHandler = v17->_eventHandler;
    v17->_eventHandler = v18;

    objc_storeStrong(&v17->_deviceConnection, a3);
    objc_storeStrong(&v17->_boostingMessageContext, a4);
    objc_storeStrong(&v17->_streamName, a5);
    objc_storeStrong(&v17->_creationTime, a6);
    [(ACXSocket *)v17 _setUpSocketReadSource];
  }

  return v17;
}

- (void)resumeReadSource
{
  if ([(ACXSocket *)self readSourceIsRunning])
  {
    sub_100059EBC();
  }

  [(ACXSocket *)self setReadSourceIsRunning:1];
  v3 = [(ACXSocket *)self socketReadSource];
  dispatch_resume(v3);
}

- (void)suspendReadSource
{
  if (![(ACXSocket *)self readSourceIsRunning])
  {
    sub_100059EE8();
  }

  [(ACXSocket *)self setReadSourceIsRunning:0];
  v3 = [(ACXSocket *)self socketReadSource];
  dispatch_suspend(v3);
}

- (void)invalidate
{
  if (![(ACXSocket *)self invalidated])
  {
    [(ACXSocket *)self setInvalidated:1];
    if (shutdown([(ACXSocket *)self socketFD], 2) && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3))
    {
      v3 = [(ACXSocket *)self socketFD];
      v4 = __error();
      v6 = v3;
      v7 = strerror(*v4);
      MOLogWrite();
    }

    if (![(ACXSocket *)self readSourceIsRunning:v6])
    {
      v5 = [(ACXSocket *)self socketReadSource];
      dispatch_resume(v5);
    }

    v8 = [(ACXSocket *)self socketReadSource];
    dispatch_source_cancel(v8);
  }
}

- (void)_setUpSocketReadSource
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.AppConduit.SocketReadQ", v3);
  socketQueue = self->_socketQueue;
  self->_socketQueue = v4;

  v6 = [(ACXSocket *)self socketFD];
  v7 = [(ACXSocket *)self socketQueue];
  v8 = dispatch_source_create(&_dispatch_source_type_read, v6, 0, v7);
  socketReadSource = self->_socketReadSource;
  self->_socketReadSource = v8;

  v10 = self->_socketReadSource;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10002DB1C;
  handler[3] = &unk_10008CD40;
  handler[4] = self;
  dispatch_source_set_event_handler(v10, handler);
  v11 = self->_socketReadSource;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002DBAC;
  v12[3] = &unk_10008CD40;
  v12[4] = self;
  dispatch_source_set_cancel_handler(v11, v12);
  [(ACXSocket *)self setReadSourceIsRunning:0];
}

- (BOOL)writeBytes:(const void *)a3 length:(unint64_t)a4 error:(id *)a5
{
  if (!a4)
  {
    return 1;
  }

  v6 = a4;
  while (1)
  {
    v9 = (v6 >= 0x40000 ? 0x40000 : v6);
    v11 = 2;
    v12 = v9;
    if (!sub_10002DCF0(self, &v11, 5, a5) || (sub_10002DCF0(self, a3, v9, a5) & 1) == 0)
    {
      break;
    }

    a3 = &v9[a3];
    v6 -= v9;
    if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

- (BOOL)writeData:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = a3;
  v9 = [v8 bytes];
  v10 = [v8 length];

  return [(ACXSocket *)self writeBytes:v9 length:v10 error:a4];
}

- (BOOL)writeDictionary:(id)a3 error:(id *)a4
{
  memset(v20, 0, 5);
  v19 = 0;
  v6 = [NSPropertyListSerialization dataWithPropertyList:a3 format:200 options:0 error:&v19];
  v7 = v19;
  if (v6)
  {
    if ([v6 length] <= 0x40000)
    {
      LOBYTE(v20[0]) = 1;
      *(v20 + 1) = [v6 length];
      v18 = v7;
      v13 = sub_10002DCF0(self, v20, 5, &v18);
      v8 = v18;

      if (!v13)
      {
        v12 = 0;
        v7 = v8;
        if (!a4)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }

      v14 = [v6 bytes];
      v17 = v8;
      v12 = sub_10002DCF0(self, v14, *(v20 + 1), &v17);
      v7 = v17;
    }

    else
    {
      v8 = [(ACXSocket *)self errorInfoDict];
      v9 = [v6 length];
      v11 = sub_1000061DC("[ACXSocket writeDictionary:error:]", 230, @"ACXErrorDomain", 16, 0, v8, @"Dictionary was too big to send (was %lu bytes)", v10, v9);

      v12 = 0;
      v7 = v11;
    }

    if (!a4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = 0;
    if (!a4)
    {
      goto LABEL_13;
    }
  }

LABEL_11:
  if ((v12 & 1) == 0)
  {
    v15 = v7;
    *a4 = v7;
  }

LABEL_13:

  return v12;
}

- (BOOL)writePingWithError:(id *)a3
{
  v9 = 0;
  v8 = 3;
  v7 = 0;
  v4 = sub_10002DCF0(self, &v8, 5, &v7);
  v5 = v7;
  if (a3 && (v4 & 1) == 0)
  {
    v5 = v5;
    *a3 = v5;
  }

  return v4;
}

- (BOOL)writeShutdownMessageWithError:(id *)a3
{
  v9 = 0;
  v8 = 4;
  v7 = 0;
  v4 = sub_10002DCF0(self, &v8, 5, &v7);
  v5 = v7;
  if (a3 && (v4 & 1) == 0)
  {
    v5 = v5;
    *a3 = v5;
  }

  return v4;
}

- (id)readDataWithError:(id *)a3
{
  v5 = [(ACXSocket *)self readDataOrDictionaryWithError:?];
  if (v5)
  {
    objc_opt_class();
    v6 = v5;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = v6;
      goto LABEL_11;
    }

    v9 = [(ACXSocket *)self errorInfoDict];
    v11 = sub_1000061DC("[ACXSocket readDataWithError:]", 346, @"ACXErrorDomain", 14, 0, v9, @"Expected to read data but got dictionary.", v10, v14);

    if (a3)
    {
      v12 = v11;
      *a3 = v11;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)readDictionaryWithError:(id *)a3
{
  v5 = [(ACXSocket *)self readDataOrDictionaryWithError:?];
  if (v5)
  {
    objc_opt_class();
    v6 = v5;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = v6;
      goto LABEL_11;
    }

    v9 = [(ACXSocket *)self errorInfoDict];
    v11 = sub_1000061DC("[ACXSocket readDictionaryWithError:]", 360, @"ACXErrorDomain", 14, 0, v9, @"Expected to read dictionary but got data.", v10, v14);

    if (a3)
    {
      v12 = v11;
      *a3 = v11;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)readDataOrDictionaryWithError:(id *)a3
{
  v31 = 0;
  v5 = sub_10002E758(self, 5, &v31);
  v6 = v31;
  if (!v5)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    if (!a3)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  while (1)
  {
    v7 = *v5;
    v8 = *(v5 + 1);
    if (v7 != 3)
    {
      break;
    }

    if (v8)
    {
      v13 = [(ACXSocket *)self errorInfoDict];
      sub_1000061DC("[ACXSocket readDataOrDictionaryWithError:]", 386, @"ACXErrorDomain", 15, 0, v13, @"Got ping packet with non-zero (%u) length", v18, *(v5 + 1));
      v19 = LABEL_18:;

      v10 = 0;
      v11 = 0;
      goto LABEL_19;
    }

    free(v5);
    v31 = v6;
    v5 = sub_10002E758(self, 5, &v31);
    v9 = v31;

    v6 = v9;
    if (!v5)
    {
      v10 = 0;
      goto LABEL_6;
    }
  }

  if (v7 == 4)
  {
    if (v8)
    {
      v13 = [(ACXSocket *)self errorInfoDict];
      sub_1000061DC("[ACXSocket readDataOrDictionaryWithError:]", 397, @"ACXErrorDomain", 15, 0, v13, @"Got shutdown packet with non-zero (%u) length", v14, *(v5 + 1));
      goto LABEL_18;
    }

    free(v5);
    v19 = sub_100001B04("[ACXSocket readDataOrDictionaryWithError:]", 404, @"ACXErrorDomain", 4, @"Got shutdown packet", v20, v21, v22, v27);

    v10 = 0;
    v11 = 0;
    v5 = 0;
LABEL_19:
    v12 = 0;
    v6 = v19;
    if (a3)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  v30 = v6;
  v12 = sub_10002E758(self, v8, &v30);
  v9 = v30;

  if (!v12)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_23;
  }

  v15 = *v5;
  if (v15 == 2)
  {
    v10 = [NSData dataWithBytesNoCopy:v12 length:*(v5 + 1) freeWhenDone:1];
LABEL_6:
    v11 = 0;
    v12 = 0;
    goto LABEL_23;
  }

  if (v15 == 1)
  {
    v11 = [NSData dataWithBytesNoCopy:v12 length:*(v5 + 1) freeWhenDone:0];
    v29 = 0;
    v10 = [NSPropertyListSerialization propertyListWithData:v11 options:0 format:0 error:&v29];
    v6 = v29;

    if (v10)
    {
      goto LABEL_26;
    }

    v16 = [(ACXSocket *)self errorInfoDict];
    v9 = sub_1000061DC("[ACXSocket readDataOrDictionaryWithError:]", 418, @"ACXErrorDomain", 15, v6, v16, @"Failed to deserialize dictionary from data: %@", v17, v11);

    v10 = 0;
LABEL_23:
    v6 = v9;
    if (!a3)
    {
      goto LABEL_26;
    }

LABEL_24:
    if (!v10)
    {
      v23 = v6;
      *a3 = v6;
    }

    goto LABEL_26;
  }

  v25 = [(ACXSocket *)self errorInfoDict];
  v28 = *(v5 + 1);
  v6 = sub_1000061DC("[ACXSocket readDataOrDictionaryWithError:]", 424, @"ACXErrorDomain", 14, 0, v25, @"Got unknown message type %hhu (length %u)", v26, *v5);

  v10 = 0;
  v11 = 0;
  if (a3)
  {
    goto LABEL_24;
  }

LABEL_26:
  free(v5);
  free(v12);

  return v10;
}

- (NSDictionary)errorInfoDict
{
  v3 = [(ACXSocket *)self streamName];
  v4 = [(ACXSocket *)self creationTime];
  if (!v4)
  {
    v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:0.0];
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"Unknown";
  }

  v9[0] = @"ConnectionIdentifier";
  v9[1] = @"ConnectionCreationDate";
  v10[0] = v5;
  v10[1] = v4;
  v9[2] = @"WifiAsserted";
  v6 = [NSNumber numberWithBool:[(ACXSocket *)self wifiAsserted]];
  v10[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

@end