@interface APSLog
+ (BOOL)shouldPowerLogEvent:(id)event;
+ (OS_os_log)PUSHTRACE;
+ (OS_os_log)activityTracking;
+ (OS_os_log)alert;
+ (OS_os_log)certificate;
+ (OS_os_log)connection;
+ (OS_os_log)connectionServer;
+ (OS_os_log)courier;
+ (OS_os_log)courierOversized;
+ (OS_os_log)daemon;
+ (OS_os_log)database;
+ (OS_os_log)main;
+ (OS_os_log)networking;
+ (OS_os_log)nonce;
+ (OS_os_log)offloader;
+ (OS_os_log)power;
+ (OS_os_log)preference;
+ (OS_os_log)protocolParser;
+ (OS_os_log)protocolParserDetailed;
+ (OS_os_log)proxy;
+ (OS_os_log)pubSub;
+ (OS_os_log)pushHistory;
+ (OS_os_log)simulator;
+ (OS_os_log)stream;
+ (OS_os_log)taskManager;
+ (OS_os_log)telemetry;
+ (OS_os_log)topicManager;
+ (OS_os_log)topicManagerOversized;
+ (OS_os_log)ttlCollection;
+ (OS_os_log)xpc;
+ (void)reduceLogging;
@end

@implementation APSLog

+ (OS_os_log)connection
{
  if (connection_onceToken != -1)
  {
    +[APSLog connection];
  }

  v3 = connection___log;

  return v3;
}

+ (OS_os_log)courier
{
  if (courier_onceToken != -1)
  {
    +[APSLog courier];
  }

  v3 = courier___log;

  return v3;
}

+ (OS_os_log)connectionServer
{
  if (connectionServer_onceToken != -1)
  {
    +[APSLog connectionServer];
  }

  v3 = connectionServer___log;

  return v3;
}

+ (OS_os_log)protocolParser
{
  if (protocolParser_onceToken != -1)
  {
    +[APSLog protocolParser];
  }

  v3 = protocolParser___log;

  return v3;
}

+ (OS_os_log)power
{
  if (power_onceToken != -1)
  {
    +[APSLog power];
  }

  v3 = power___log;

  return v3;
}

+ (OS_os_log)courierOversized
{
  if (courierOversized_onceToken != -1)
  {
    +[APSLog courierOversized];
  }

  v3 = courierOversized___log;

  return v3;
}

+ (OS_os_log)topicManager
{
  if (topicManager_onceToken != -1)
  {
    +[APSLog topicManager];
  }

  v3 = topicManager___log;

  return v3;
}

uint64_t __20__APSLog_connection__block_invoke()
{
  connection___log = os_log_create("com.apple.apsd", "connection");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)daemon
{
  if (daemon_onceToken != -1)
  {
    +[APSLog daemon];
  }

  v3 = daemon___log;

  return v3;
}

+ (OS_os_log)main
{
  if (main_onceToken != -1)
  {
    +[APSLog main];
  }

  v3 = main___log;

  return v3;
}

+ (OS_os_log)proxy
{
  if (proxy_onceToken != -1)
  {
    +[APSLog proxy];
  }

  v3 = proxy___log;

  return v3;
}

+ (OS_os_log)stream
{
  if (stream_onceToken != -1)
  {
    +[APSLog stream];
  }

  v3 = stream___log;

  return v3;
}

+ (OS_os_log)PUSHTRACE
{
  if (PUSHTRACE_onceToken != -1)
  {
    +[APSLog PUSHTRACE];
  }

  v3 = PUSHTRACE___log;

  return v3;
}

+ (OS_os_log)pushHistory
{
  if (pushHistory_onceToken != -1)
  {
    +[APSLog pushHistory];
  }

  v3 = pushHistory___log;

  return v3;
}

+ (OS_os_log)networking
{
  if (networking_onceToken != -1)
  {
    +[APSLog networking];
  }

  v3 = networking___log;

  return v3;
}

+ (OS_os_log)nonce
{
  if (nonce_onceToken != -1)
  {
    +[APSLog nonce];
  }

  v3 = nonce___log;

  return v3;
}

+ (OS_os_log)telemetry
{
  if (telemetry_onceToken != -1)
  {
    +[APSLog telemetry];
  }

  v3 = telemetry___log;

  return v3;
}

uint64_t __19__APSLog_telemetry__block_invoke()
{
  telemetry___log = os_log_create("com.apple.apsd", "telemetry");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __22__APSLog_topicManager__block_invoke()
{
  topicManager___log = os_log_create("com.apple.apsd", "topicManager");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)topicManagerOversized
{
  if (topicManagerOversized_onceToken != -1)
  {
    +[APSLog topicManagerOversized];
  }

  v3 = topicManagerOversized___log;

  return v3;
}

uint64_t __31__APSLog_topicManagerOversized__block_invoke()
{
  topicManagerOversized___log = os_log_create("com.apple.apsd", "topicManager-oversized");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __16__APSLog_daemon__block_invoke()
{
  daemon___log = os_log_create("com.apple.apsd", "daemon");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __21__APSLog_pushHistory__block_invoke()
{
  pushHistory___log = os_log_create("com.apple.apsd", "pushHistory");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)database
{
  if (database_onceToken != -1)
  {
    +[APSLog database];
  }

  v3 = database___log;

  return v3;
}

uint64_t __18__APSLog_database__block_invoke()
{
  database___log = os_log_create("com.apple.apsd", "database");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)xpc
{
  if (xpc_onceToken != -1)
  {
    +[APSLog xpc];
  }

  v3 = xpc___log;

  return v3;
}

uint64_t __13__APSLog_xpc__block_invoke()
{
  xpc___log = os_log_create("com.apple.apsd", "xpc");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)certificate
{
  if (certificate_onceToken != -1)
  {
    +[APSLog certificate];
  }

  v3 = certificate___log;

  return v3;
}

uint64_t __21__APSLog_certificate__block_invoke()
{
  certificate___log = os_log_create("com.apple.apsd", "certificate");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __20__APSLog_networking__block_invoke()
{
  networking___log = os_log_create("com.apple.apsd", "networking");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __15__APSLog_nonce__block_invoke()
{
  nonce___log = os_log_create("com.apple.apsd", "nonce");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)alert
{
  if (alert_onceToken != -1)
  {
    +[APSLog alert];
  }

  v3 = alert___log;

  return v3;
}

uint64_t __15__APSLog_alert__block_invoke()
{
  alert___log = os_log_create("com.apple.apsd", "alert");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __16__APSLog_stream__block_invoke()
{
  stream___log = os_log_create("com.apple.apsd", "stream");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __17__APSLog_courier__block_invoke()
{
  courier___log = os_log_create("com.apple.apsd", "courier");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __26__APSLog_courierOversized__block_invoke()
{
  courierOversized___log = os_log_create("com.apple.apsd", "courier-oversized");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)preference
{
  if (preference_onceToken != -1)
  {
    +[APSLog preference];
  }

  v3 = preference___log;

  return v3;
}

uint64_t __20__APSLog_preference__block_invoke()
{
  preference___log = os_log_create("com.apple.apsd", "preference");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __14__APSLog_main__block_invoke()
{
  main___log = os_log_create("com.apple.apsd", "main");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __26__APSLog_connectionServer__block_invoke()
{
  connectionServer___log = os_log_create("com.apple.apsd", "connectionServer");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)taskManager
{
  if (taskManager_onceToken != -1)
  {
    +[APSLog taskManager];
  }

  v3 = taskManager___log;

  return v3;
}

uint64_t __21__APSLog_taskManager__block_invoke()
{
  taskManager___log = os_log_create("com.apple.apsd", "taskManager");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)ttlCollection
{
  if (ttlCollection_onceToken != -1)
  {
    +[APSLog ttlCollection];
  }

  v3 = ttlCollection___log;

  return v3;
}

uint64_t __23__APSLog_ttlCollection__block_invoke()
{
  ttlCollection___log = os_log_create("com.apple.apsd", "ttlCollection");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)pubSub
{
  if (pubSub_onceToken != -1)
  {
    +[APSLog pubSub];
  }

  v3 = pubSub___log;

  return v3;
}

uint64_t __16__APSLog_pubSub__block_invoke()
{
  pubSub___log = os_log_create("com.apple.apsd", "pubSub");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __19__APSLog_PUSHTRACE__block_invoke()
{
  PUSHTRACE___log = os_log_create("com.apple.apsd", "PUSHTRACE");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)simulator
{
  if (simulator_onceToken != -1)
  {
    +[APSLog simulator];
  }

  v3 = simulator___log;

  return v3;
}

uint64_t __19__APSLog_simulator__block_invoke()
{
  simulator___log = os_log_create("com.apple.apsd", "simulator");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)activityTracking
{
  if (activityTracking_onceToken != -1)
  {
    +[APSLog activityTracking];
  }

  v3 = activityTracking___log;

  return v3;
}

uint64_t __26__APSLog_activityTracking__block_invoke()
{
  activityTracking___log = os_log_create("com.apple.apsd", "activityTracking");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __15__APSLog_proxy__block_invoke()
{
  proxy___log = os_log_create("com.apple.apsd", "proxy");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __24__APSLog_protocolParser__block_invoke()
{
  protocolParser___log = os_log_create("com.apple.apsd", "protocolParser");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)protocolParserDetailed
{
  if (protocolParserDetailed_onceToken != -1)
  {
    +[APSLog protocolParserDetailed];
  }

  v3 = protocolParserDetailed___log;

  return v3;
}

uint64_t __32__APSLog_protocolParserDetailed__block_invoke()
{
  protocolParserDetailed___log = os_log_create("com.apple.apsd", "protocolParserDetail");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __15__APSLog_power__block_invoke()
{
  power___log = os_log_create("com.apple.apsd", "power");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)offloader
{
  if (offloader_onceToken != -1)
  {
    +[APSLog offloader];
  }

  v3 = offloader___log;

  return v3;
}

uint64_t __19__APSLog_offloader__block_invoke()
{
  offloader___log = os_log_create("com.apple.apsd", "offload");

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)shouldPowerLogEvent:(id)event
{
  eventCopy = event;
  if (shouldPowerLogEvent___pred_PLShouldLogRegisteredEventPowerLog != -1)
  {
    +[APSLog shouldPowerLogEvent:];
  }

  if (shouldPowerLogEvent___PLShouldLogRegisteredEvent)
  {
    v4 = shouldPowerLogEvent___PLShouldLogRegisteredEvent(2, eventCopy);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t (*__30__APSLog_shouldPowerLogEvent___block_invoke())(void, void)
{
  result = CUTWeakLinkSymbol();
  shouldPowerLogEvent___PLShouldLogRegisteredEvent = result;
  return result;
}

+ (void)reduceLogging
{
  v2 = +[APSLog main];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1B233B000, v2, OS_LOG_TYPE_DEFAULT, "reduced logging has been requested", v3, 2u);
  }

  _shouldReduceLogging = 1;
}

@end