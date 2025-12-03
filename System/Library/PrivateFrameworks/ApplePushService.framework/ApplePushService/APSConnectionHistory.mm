@interface APSConnectionHistory
- (APSConnectionHistory)init;
- (double)connectedTimeInPastOneDayOnInterface:(int64_t)interface;
- (id)connectionHistoryOnInterface:(int64_t)interface;
- (int64_t)connectionQualityOnInterface:(int64_t)interface;
- (void)adjustQualityOfConnectionOnInterface:(int64_t)interface;
- (void)noteDisconnectOnInterface:(int64_t)interface;
- (void)noteNewConnectionOnInterface:(int64_t)interface;
@end

@implementation APSConnectionHistory

- (APSConnectionHistory)init
{
  v9.receiver = self;
  v9.super_class = APSConnectionHistory;
  v2 = [(APSConnectionHistory *)&v9 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 8) = xmmword_10015CBA0;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = v3->_connectionHistory[0];
    v3->_connectionHistory[0] = v4;

    v6 = objc_alloc_init(NSMutableArray);
    v7 = v3->_connectionHistory[1];
    v3->_connectionHistory[1] = v6;
  }

  return v3;
}

- (void)noteNewConnectionOnInterface:(int64_t)interface
{
  if (interface < 2)
  {
    v6 = +[NSDate date];
    v7 = [APSPair pairWithFirst:v6 second:0];

    [(NSMutableArray *)self->_connectionHistory[interface] addObject:v7];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_1000067F8(interface);
    *buf = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to note new connection  with invalid interface %@", buf, 0x16u);
  }
}

- (void)noteDisconnectOnInterface:(int64_t)interface
{
  if (interface < 2)
  {
    connectionHistory = self->_connectionHistory;
    lastObject = [(NSMutableArray *)self->_connectionHistory[interface] lastObject];
    if (lastObject)
    {
      v8 = lastObject;
      lastObject2 = [(NSMutableArray *)connectionHistory[interface] lastObject];
      second = [lastObject2 second];

      if (!second)
      {
        v12 = +[NSDate date];
        lastObject3 = [(NSMutableArray *)connectionHistory[interface] lastObject];
        [lastObject3 setSecond:v12];
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_1000067F8(interface);
    *buf = 138412546;
    selfCopy = self;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to note disconnect with invalid interface %@", buf, 0x16u);
  }
}

- (int64_t)connectionQualityOnInterface:(int64_t)interface
{
  if (interface < 2)
  {
    return self->_connectionQuality[interface];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_1000067F8(interface);
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to get connection quality with invalid interface %@", &v7, 0x16u);
  }

  return 0;
}

- (void)adjustQualityOfConnectionOnInterface:(int64_t)interface
{
  if (interface >= 2)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v5 = sub_1000067F8(interface);
    v12 = 138412546;
    selfCopy2 = self;
    v14 = 2112;
    v15 = v5;
    v6 = "%@ asked to recalculate quality of connection with invalid interface %@";
    v7 = 22;
    goto LABEL_11;
  }

  [(APSConnectionHistory *)self connectedTimeInPastOneDayOnInterface:interface];
  v9 = &self->super.isa + interface;
  if (v8 <= self->_highQualityThresholdConnectedTime)
  {
    connectionQuality = self->_connectionQuality;
    connectionQuality[interface] = v8 >= self->_lowQualityThresholdConnectedTime;
  }

  else
  {
    v9[3] = 2;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v9[3];
    v5 = sub_1000067F8(interface);
    v12 = 138412802;
    selfCopy2 = self;
    v14 = 2048;
    v15 = v11;
    v16 = 2112;
    v17 = v5;
    v6 = "%@ calculated current connection quality. {Quality:%lu, Interface: %@}";
    v7 = 32;
LABEL_11:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v6, &v12, v7);
  }
}

- (double)connectedTimeInPastOneDayOnInterface:(int64_t)interface
{
  if (interface < 2)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v24 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = -1;
    connectionHistory = self->_connectionHistory;
    v8 = self->_connectionHistory[interface];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100031CC4;
    v12[3] = &unk_100186D28;
    v12[4] = &v13;
    v12[5] = buf;
    [(NSMutableArray *)v8 enumerateObjectsWithOptions:2 usingBlock:v12];
    if ((v14[3] & 0x8000000000000000) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v14[3];
        v10 = connectionHistory[interface];
        *v17 = 138412802;
        selfCopy = self;
        v19 = 2048;
        v20 = v9;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ removing connection history pair before index %lu, history %@", v17, 0x20u);
      }

      [(NSMutableArray *)connectionHistory[interface] removeObjectsInRange:0, v14[3] + 1];
    }

    v5 = *(*&buf[8] + 24);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v5 = 0.0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1000067F8(interface);
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to get connected time in past one day with invalid interface %@", buf, 0x16u);
    }
  }

  return v5;
}

- (id)connectionHistoryOnInterface:(int64_t)interface
{
  if (interface < 2)
  {
    v6 = self->_connectionHistory[interface];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_1000067F8(interface);
      v8 = 138412546;
      selfCopy = self;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to get connection history with invalid interface %@", &v8, 0x16u);
    }

    v6 = 0;
  }

  return v6;
}

@end