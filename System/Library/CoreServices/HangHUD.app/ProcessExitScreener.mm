@interface ProcessExitScreener
+ (id)sharedInstance;
- (BOOL)allowedExitReasonsMatchRecordReasons:(id)reasons;
- (BOOL)isProcessExitRecordAllowed:(id)allowed;
- (ProcessExitScreener)init;
- (void)setFilteringConfiguration:(id)configuration;
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

- (BOOL)isProcessExitRecordAllowed:(id)allowed
{
  allowedCopy = allowed;
  processName = [allowedCopy processName];
  if (!self->_filteringConfiguration)
  {
    v8 = sub_10000A9AC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194C0();
    }

    goto LABEL_11;
  }

  if (![allowedCopy exitReasonNamespace])
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
    if ([(HTProcessExitFilteringConfiguration *)self->_filteringConfiguration allowsCriticalProcesses]&& [(NSArray *)self->_knownCriticalProcesses containsObject:processName])
    {
      v6 = sub_10000A9AC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_100019388();
      }

      goto LABEL_6;
    }

    allowedProcessNames = [(HTProcessExitFilteringConfiguration *)self->_filteringConfiguration allowedProcessNames];
    v11 = [allowedProcessNames count];

    if (v11)
    {
      allowedProcessNames2 = [(HTProcessExitFilteringConfiguration *)self->_filteringConfiguration allowedProcessNames];
      v13 = [allowedProcessNames2 containsObject:processName];

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

  v7 = [(ProcessExitScreener *)self allowedExitReasonsMatchRecordReasons:allowedCopy];
LABEL_13:

  return v7;
}

- (BOOL)allowedExitReasonsMatchRecordReasons:(id)reasons
{
  reasonsCopy = reasons;
  processName = [reasonsCopy processName];
  v6 = 1 << [reasonsCopy exitReasonNamespace];
  if ([(HTProcessExitFilteringConfiguration *)self->_filteringConfiguration allowedReasons]== 1 || ([(HTProcessExitFilteringConfiguration *)self->_filteringConfiguration allowedReasons]& v6) != 0)
  {
    v7 = sub_1000101C0(v6);
    v8 = [v7 count];

    if (v8)
    {
      allowedSubReasons = [(HTProcessExitFilteringConfiguration *)self->_filteringConfiguration allowedSubReasons];
      v10 = [NSNumber numberWithUnsignedLongLong:v6];
      v11 = [allowedSubReasons objectForKeyedSubscript:v10];

      if (v11)
      {
        unsignedLongLongValue = [v11 unsignedLongLongValue];
        v13 = sub_10000FE7C(v6, [reasonsCopy exitReasonCode]);
        v14 = sub_10000A9AC();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
        if (unsignedLongLongValue != 1 && (v13 & unsignedLongLongValue) == 0)
        {
          if (v15)
          {
            sub_100019650(processName, reasonsCopy);
          }

          v16 = 0;
          goto LABEL_21;
        }

        if (v15)
        {
          sub_1000195B0(processName, reasonsCopy);
        }
      }

      else
      {
        v14 = sub_10000A9AC();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          sub_1000196F0(processName, reasonsCopy);
        }
      }

      v16 = 1;
LABEL_21:

      goto LABEL_22;
    }

    v11 = sub_10000A9AC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100019778(processName, reasonsCopy);
    }

    v16 = 1;
  }

  else
  {
    v11 = sub_10000A9AC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100019528(processName, reasonsCopy);
    }

    v16 = 0;
  }

LABEL_22:

  return v16;
}

- (void)setFilteringConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_storeStrong(&self->_filteringConfiguration, configuration);
  v6 = sub_10000A9AC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Process Terminations: applied filtering configuration:\n%@", &v7, 0xCu);
  }
}

@end