@interface ProcessExitScreener
+ (id)sharedInstance;
- (BOOL)allowedExitReasonsMatchRecordReasons:(id)a3;
- (BOOL)isProcessExitRecordAllowed:(id)a3;
- (ProcessExitScreener)init;
- (void)setFilteringConfiguration:(id)a3;
@end

@implementation ProcessExitScreener

+ (id)sharedInstance
{
  if (qword_10003E748 != -1)
  {
    sub_10001923C();
  }

  v3 = qword_10003E740;

  return v3;
}

- (ProcessExitScreener)init
{
  v6.receiver = self;
  v6.super_class = ProcessExitScreener;
  v2 = [(ProcessExitScreener *)&v6 init];
  v3 = v2;
  if (v2)
  {
    knownCriticalProcesses = v2->_knownCriticalProcesses;
    v2->_knownCriticalProcesses = &off_100035ED0;
  }

  return v3;
}

- (BOOL)isProcessExitRecordAllowed:(id)a3
{
  v4 = a3;
  v5 = [v4 processName];
  if (!self->_filteringConfiguration)
  {
    v8 = sub_10000A9AC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194C0();
    }

    goto LABEL_11;
  }

  if (![v4 exitReasonNamespace])
  {
    v8 = sub_10000A9AC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100019458();
    }

    goto LABEL_11;
  }

  if (![(HTProcessExitFilteringConfiguration *)self->_filteringConfiguration allowsAllProcesses])
  {
    if ([(HTProcessExitFilteringConfiguration *)self->_filteringConfiguration allowsCriticalProcesses]&& [(NSArray *)self->_knownCriticalProcesses containsObject:v5])
    {
      v6 = sub_10000A9AC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_100019388();
      }

      goto LABEL_6;
    }

    v10 = [(HTProcessExitFilteringConfiguration *)self->_filteringConfiguration allowedProcessNames];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [(HTProcessExitFilteringConfiguration *)self->_filteringConfiguration allowedProcessNames];
      v13 = [v12 containsObject:v5];

      v6 = sub_10000A9AC();
      v14 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
      if (v13)
      {
        if (v14)
        {
          sub_1000192B8();
        }

        goto LABEL_6;
      }

      if (v14)
      {
        sub_100019250();
      }

LABEL_12:
      v7 = 0;
      goto LABEL_13;
    }

    v8 = sub_10000A9AC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100019320();
    }

LABEL_11:

    goto LABEL_12;
  }

  v6 = sub_10000A9AC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1000193F0();
  }

LABEL_6:

  v7 = [(ProcessExitScreener *)self allowedExitReasonsMatchRecordReasons:v4];
LABEL_13:

  return v7;
}

- (BOOL)allowedExitReasonsMatchRecordReasons:(id)a3
{
  v4 = a3;
  v5 = [v4 processName];
  v6 = 1 << [v4 exitReasonNamespace];
  if ([(HTProcessExitFilteringConfiguration *)self->_filteringConfiguration allowedReasons]== 1 || ([(HTProcessExitFilteringConfiguration *)self->_filteringConfiguration allowedReasons]& v6) != 0)
  {
    v7 = sub_1000101C0(v6);
    v8 = [v7 count];

    if (v8)
    {
      v9 = [(HTProcessExitFilteringConfiguration *)self->_filteringConfiguration allowedSubReasons];
      v10 = [NSNumber numberWithUnsignedLongLong:v6];
      v11 = [v9 objectForKeyedSubscript:v10];

      if (v11)
      {
        v12 = [v11 unsignedLongLongValue];
        v13 = sub_10000FE7C(v6, [v4 exitReasonCode]);
        v14 = sub_10000A9AC();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
        if (v12 != 1 && (v13 & v12) == 0)
        {
          if (v15)
          {
            sub_100019650(v5, v4);
          }

          v16 = 0;
          goto LABEL_21;
        }

        if (v15)
        {
          sub_1000195B0(v5, v4);
        }
      }

      else
      {
        v14 = sub_10000A9AC();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          sub_1000196F0(v5, v4);
        }
      }

      v16 = 1;
LABEL_21:

      goto LABEL_22;
    }

    v11 = sub_10000A9AC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100019778(v5, v4);
    }

    v16 = 1;
  }

  else
  {
    v11 = sub_10000A9AC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100019528(v5, v4);
    }

    v16 = 0;
  }

LABEL_22:

  return v16;
}

- (void)setFilteringConfiguration:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_filteringConfiguration, a3);
  v6 = sub_10000A9AC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Process Terminations: applied filtering configuration:\n%@", &v7, 0xCu);
  }
}

@end