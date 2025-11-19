@interface DADeviceState
- (BOOL)object:(id)a3 isEqualToObject:(id)a4;
- (DADeviceState)init;
- (DADeviceState)initWithCoder:(id)a3;
- (DADeviceState)initWithSerialNumber:(id)a3 attributes:(id)a4;
- (id)_stringForPhase:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)overriddenSerialNumberFor:(id)a3;
- (void)_sendChangeNotification;
- (void)_sendChangeNotificationIfNeeded;
- (void)addErrorCode:(int64_t)a3 userInfo:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)removeErrorCode:(int64_t)a3;
- (void)removeErrorCodes:(id)a3;
- (void)resetState;
- (void)setDiagnosticEventID:(id)a3;
- (void)setDurationRemaining:(double)a3;
- (void)setErrors:(id)a3;
- (void)setHistory:(id)a3;
- (void)setPhase:(int64_t)a3;
- (void)setProgress:(id)a3;
- (void)setSessionSettings:(id)a3;
- (void)setSuiteDescription:(id)a3;
- (void)setSuiteID:(id)a3;
- (void)setSuiteName:(id)a3;
- (void)setSuitesAvailable:(id)a3;
- (void)setTimestamp:(id)a3;
- (void)transactionWithBlock:(id)a3;
- (void)updateWithDeviceState:(id)a3;
@end

@implementation DADeviceState

- (DADeviceState)init
{
  v20.receiver = self;
  v20.super_class = DADeviceState;
  v2 = [(DADeviceState *)&v20 init];
  v3 = v2;
  if (v2)
  {
    v2->_phase = 0;
    diagnosticEventID = v2->_diagnosticEventID;
    v2->_diagnosticEventID = 0;

    suiteID = v3->_suiteID;
    v3->_suiteID = 0;

    suiteName = v3->_suiteName;
    v3->_suiteName = 0;

    suiteDescription = v3->_suiteDescription;
    v3->_suiteDescription = 0;

    suitesAvailable = v3->_suitesAvailable;
    v3->_suitesAvailable = &__NSArray0__struct;

    progress = v3->_progress;
    v3->_progress = &off_1001CCA28;

    v3->_durationRemaining = 0.0;
    history = v3->_history;
    v3->_history = &__NSArray0__struct;

    errors = v3->_errors;
    v3->_errors = &__NSArray0__struct;

    timestamp = v3->_timestamp;
    v3->_timestamp = 0;

    attributes = v3->_attributes;
    v3->_attributes = &__NSDictionary0__struct;

    serialNumber = v3->_serialNumber;
    v3->_serialNumber = @"unknown";

    v15 = objc_opt_new();
    sessionSettings = v3->_sessionSettings;
    v3->_sessionSettings = v15;

    v3->_pendingChanges = 0;
    v3->_freezeNotifications = 0;
    v17 = dispatch_queue_create("com.apple.Diagnostics.deviceState.notificationQueue", 0);
    notificationQueue = v3->_notificationQueue;
    v3->_notificationQueue = v17;
  }

  return v3;
}

- (DADeviceState)initWithSerialNumber:(id)a3 attributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DADeviceState *)self init];
  if (v8)
  {
    if (os_variant_has_internal_content())
    {
      v9 = [(DADeviceState *)v8 overriddenSerialNumberFor:v6];
    }

    else
    {
      v9 = v6;
    }

    serialNumber = v8->_serialNumber;
    v8->_serialNumber = v9;

    objc_storeStrong(&v8->_attributes, a4);
  }

  return v8;
}

- (DADeviceState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DADeviceState *)self init];
  if (v5)
  {
    v5->_phase = [v4 decodeIntegerForKey:@"phase"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"diagnosticEventID"];
    diagnosticEventID = v5->_diagnosticEventID;
    v5->_diagnosticEventID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suiteID"];
    suiteID = v5->_suiteID;
    v5->_suiteID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suiteName"];
    suiteName = v5->_suiteName;
    v5->_suiteName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suiteDescription"];
    suiteDescription = v5->_suiteDescription;
    v5->_suiteDescription = v12;

    v14 = objc_opt_class();
    v15 = [NSSet setWithObjects:v14, objc_opt_class(), 0];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"suitesAvailable"];
    suitesAvailable = v5->_suitesAvailable;
    v5->_suitesAvailable = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"progress"];
    progress = v5->_progress;
    v5->_progress = v18;

    [v4 decodeDoubleForKey:@"durationRemaining"];
    v5->_durationRemaining = v20;
    v21 = objc_opt_class();
    v22 = [NSSet setWithObjects:v21, objc_opt_class(), 0];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"history"];
    history = v5->_history;
    v5->_history = v23;

    v25 = objc_opt_class();
    v26 = [NSSet setWithObjects:v25, objc_opt_class(), 0];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"errors"];
    errors = v5->_errors;
    v5->_errors = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v29;

    v5->_pendingChanges = 0;
    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v31;

    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = [NSSet setWithObjects:v33, v34, v35, v36, v37, objc_opt_class(), 0];
    v39 = [v4 decodeObjectOfClasses:v38 forKey:@"attributes"];
    attributes = v5->_attributes;
    v5->_attributes = v39;

    if (!v5->_attributes)
    {
      v5->_attributes = &__NSDictionary0__struct;
    }

    if (!v5->_serialNumber)
    {
      v5->_serialNumber = @"unknown";
    }

    v41 = +[DASessionSettings acceptableValueClasses];
    v42 = [v4 decodeObjectOfClasses:v41 forKey:@"sessionSettings"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [DASessionSettings sessionSettingsWithDictionary:v42];
      sessionSettings = v5->_sessionSettings;
      v5->_sessionSettings = v43;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[DADeviceState phase](self forKey:{"phase"), @"phase"}];
  v5 = [(DADeviceState *)self diagnosticEventID];
  [v4 encodeObject:v5 forKey:@"diagnosticEventID"];

  v6 = [(DADeviceState *)self suiteID];
  [v4 encodeObject:v6 forKey:@"suiteID"];

  v7 = [(DADeviceState *)self suiteName];
  [v4 encodeObject:v7 forKey:@"suiteName"];

  v8 = [(DADeviceState *)self suiteDescription];
  [v4 encodeObject:v8 forKey:@"suiteDescription"];

  v9 = [(DADeviceState *)self suitesAvailable];
  [v4 encodeObject:v9 forKey:@"suitesAvailable"];

  v10 = [(DADeviceState *)self progress];
  [v4 encodeObject:v10 forKey:@"progress"];

  v11 = [(DADeviceState *)self history];
  [v4 encodeObject:v11 forKey:@"history"];

  v12 = [(DADeviceState *)self errors];
  [v4 encodeObject:v12 forKey:@"errors"];

  v13 = [(DADeviceState *)self timestamp];
  [v4 encodeObject:v13 forKey:@"timestamp"];

  v14 = [(DADeviceState *)self attributes];
  [v4 encodeObject:v14 forKey:@"attributes"];

  v15 = [(DADeviceState *)self serialNumber];
  [v4 encodeObject:v15 forKey:@"serialNumber"];

  v17 = [(DADeviceState *)self sessionSettings];
  v16 = [v17 dictionary];
  [v4 encodeObject:v16 forKey:@"sessionSettings"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[4] = self->_phase;
  v6 = [(NSString *)self->_diagnosticEventID copyWithZone:a3];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(NSNumber *)self->_suiteID copyWithZone:a3];
  v9 = v5[8];
  v5[8] = v8;

  v10 = [(NSString *)self->_suiteName copyWithZone:a3];
  v11 = v5[9];
  v5[9] = v10;

  v12 = [(NSString *)self->_suiteDescription copyWithZone:a3];
  v13 = v5[10];
  v5[10] = v12;

  v14 = [(NSArray *)self->_suitesAvailable copyWithZone:a3];
  v15 = v5[12];
  v5[12] = v14;

  v16 = [(NSNumber *)self->_progress copyWithZone:a3];
  v17 = v5[13];
  v5[13] = v16;

  v5[14] = *&self->_durationRemaining;
  v18 = [(NSArray *)self->_history copyWithZone:a3];
  v19 = v5[16];
  v5[16] = v18;

  v20 = [(NSArray *)self->_errors copyWithZone:a3];
  v21 = v5[17];
  v5[17] = v20;

  v22 = [(NSNumber *)self->_timestamp copyWithZone:a3];
  v23 = v5[18];
  v5[18] = v22;

  v24 = [(NSDictionary *)self->_attributes copyWithZone:a3];
  v25 = v5[6];
  v5[6] = v24;

  v26 = [(NSString *)self->_serialNumber copyWithZone:a3];
  v27 = v5[5];
  v5[5] = v26;

  v28 = [(DASessionSettings *)self->_sessionSettings dictionary];
  v29 = [v28 copyWithZone:a3];
  v30 = [DASessionSettings sessionSettingsWithDictionary:v29];
  v31 = v5[15];
  v5[15] = v30;

  return v5;
}

- (void)setPhase:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_phase != a3)
  {
    obj->_phase = a3;
    obj->_pendingChanges |= 1uLL;
    [(DADeviceState *)obj _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(obj);
}

- (void)setDiagnosticEventID:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![(DADeviceState *)v5 object:v5->_diagnosticEventID isEqualToObject:v6])
  {
    objc_storeStrong(&v5->_diagnosticEventID, a3);
    v5->_pendingChanges |= 0x200uLL;
    [(DADeviceState *)v5 _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(v5);
}

- (void)setSuiteID:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![(DADeviceState *)v5 object:v5->_suiteID isEqualToObject:v6])
  {
    objc_storeStrong(&v5->_suiteID, a3);
    v5->_pendingChanges |= 0x400uLL;
    [(DADeviceState *)v5 _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(v5);
}

- (void)setSuitesAvailable:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![(DADeviceState *)v5 object:v5->_suitesAvailable isEqualToObject:v6])
  {
    objc_storeStrong(&v5->_suitesAvailable, a3);
    v5->_pendingChanges |= 0x800uLL;
    [(DADeviceState *)v5 _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(v5);
}

- (void)setSuiteName:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![(DADeviceState *)v5 object:v5->_suiteName isEqualToObject:v6])
  {
    objc_storeStrong(&v5->_suiteName, a3);
    v5->_pendingChanges |= 2uLL;
    [(DADeviceState *)v5 _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(v5);
}

- (void)setSuiteDescription:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![(DADeviceState *)v5 object:v5->_suiteDescription isEqualToObject:v6])
  {
    objc_storeStrong(&v5->_suiteDescription, a3);
    v5->_pendingChanges |= 4uLL;
    [(DADeviceState *)v5 _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(v5);
}

- (void)setProgress:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![(DADeviceState *)v5 object:v5->_progress isEqualToObject:v6])
  {
    objc_storeStrong(&v5->_progress, a3);
    v5->_pendingChanges |= 8uLL;
    [(DADeviceState *)v5 _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(v5);
}

- (void)setDurationRemaining:(double)a3
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_durationRemaining != a3)
  {
    obj->_durationRemaining = a3;
    obj->_pendingChanges |= 0x100uLL;
    [(DADeviceState *)obj _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(obj);
}

- (void)setSessionSettings:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![(DADeviceState *)v5 object:v5->_sessionSettings isEqualToObject:v6])
  {
    objc_storeStrong(&v5->_sessionSettings, a3);
    v5->_pendingChanges |= 0x10uLL;
    [(DADeviceState *)v5 _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(v5);
}

- (void)setHistory:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![(DADeviceState *)v5 object:v5->_history isEqualToObject:v6])
  {
    objc_storeStrong(&v5->_history, a3);
    v5->_pendingChanges |= 0x20uLL;
    [(DADeviceState *)v5 _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(v5);
}

- (void)setErrors:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![(DADeviceState *)v5 object:v5->_errors isEqualToObject:v6])
  {
    objc_storeStrong(&v5->_errors, a3);
    v5->_pendingChanges |= 0x40uLL;
    [(DADeviceState *)v5 _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(v5);
}

- (void)setTimestamp:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![(DADeviceState *)v5 object:v5->_timestamp isEqualToObject:v6])
  {
    objc_storeStrong(&v5->_timestamp, a3);
    v5->_pendingChanges |= 0x80uLL;
    [(DADeviceState *)v5 _sendChangeNotificationIfNeeded];
  }

  objc_sync_exit(v5);
}

- (BOOL)object:(id)a3 isEqualToObject:(id)a4
{
  if (a3 | a4)
  {
    return [a3 isEqual:a4];
  }

  else
  {
    return 1;
  }
}

- (void)transactionWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(DADeviceState *)self copy];
  v5[16] = 1;
  v4[2](v4, v5);

  [(DADeviceState *)self updateWithDeviceState:v5];
}

- (void)updateWithDeviceState:(id)a3
{
  v15 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v4->_freezeNotifications = 1;
  -[DADeviceState setPhase:](v4, "setPhase:", [v15 phase]);
  v5 = [v15 diagnosticEventID];
  [(DADeviceState *)v4 setDiagnosticEventID:v5];

  v6 = [v15 suiteID];
  [(DADeviceState *)v4 setSuiteID:v6];

  v7 = [v15 suiteName];
  [(DADeviceState *)v4 setSuiteName:v7];

  v8 = [v15 suiteDescription];
  [(DADeviceState *)v4 setSuiteDescription:v8];

  v9 = [v15 suitesAvailable];
  [(DADeviceState *)v4 setSuitesAvailable:v9];

  v10 = [v15 progress];
  [(DADeviceState *)v4 setProgress:v10];

  [v15 durationRemaining];
  [(DADeviceState *)v4 setDurationRemaining:?];
  v11 = [v15 sessionSettings];
  [(DADeviceState *)v4 setSessionSettings:v11];

  v12 = [v15 history];
  [(DADeviceState *)v4 setHistory:v12];

  v13 = [v15 errors];
  [(DADeviceState *)v4 setErrors:v13];

  v14 = [v15 timestamp];
  [(DADeviceState *)v4 setTimestamp:v14];

  [(DADeviceState *)v4 _sendChangeNotification];
  v4->_freezeNotifications = 0;
  objc_sync_exit(v4);
}

- (void)addErrorCode:(int64_t)a3 userInfo:(id)a4
{
  v10 = a4;
  v6 = [NSError errorWithDomain:@"DADeviceStateErrorDomain" code:a3 userInfo:?];
  v7 = [(DADeviceState *)self errors];
  objc_sync_enter(v7);
  v8 = [(DADeviceState *)self errors];
  v9 = [v8 arrayByAddingObject:v6];
  [(DADeviceState *)self setErrors:v9];

  objc_sync_exit(v7);
}

- (void)removeErrorCode:(int64_t)a3
{
  v5 = [NSNumber numberWithInteger:a3];
  v4 = [NSSet setWithObject:v5];
  [(DADeviceState *)self removeErrorCodes:v4];
}

- (void)removeErrorCodes:(id)a3
{
  v4 = a3;
  obj = [(DADeviceState *)self errors];
  objc_sync_enter(obj);
  v5 = [(DADeviceState *)self errors];
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(DADeviceState *)self errors];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 code]);
        v13 = [v4 containsObject:v12];

        if ((v13 & 1) == 0)
        {
          [v6 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v6 copy];
  [(DADeviceState *)self setErrors:v14];

  objc_sync_exit(obj);
}

- (id)description
{
  v18 = [(DADeviceState *)self _stringForPhase:[(DADeviceState *)self phase]];
  v17 = [(DADeviceState *)self diagnosticEventID];
  v3 = [(DADeviceState *)self suiteID];
  v4 = [(DADeviceState *)self suiteName];
  v5 = [(DADeviceState *)self suiteDescription];
  v6 = [(DADeviceState *)self suitesAvailable];
  v7 = [(DADeviceState *)self progress];
  [(DADeviceState *)self durationRemaining];
  v9 = v8;
  v10 = [(DADeviceState *)self sessionSettings];
  v11 = [(DADeviceState *)self history];
  v12 = [(DADeviceState *)self errors];
  v13 = [(DADeviceState *)self timestamp];
  v14 = [(DADeviceState *)self attributes];
  v16 = [NSString stringWithFormat:@"phase: %@ diagnosticEventID: %@; suiteID: %@; suiteName: %@; suiteDescription: %@; suitesAvailable: %@; progress: %@; durationRemaining: %f; sessionSettings: %@; history: %@; errors: %@; timestamp: %@; attributes: %@", v18, v17, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14];;

  return v16;
}

- (id)_stringForPhase:(int64_t)a3
{
  if (a3 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1001BD5B8[a3];
  }
}

- (void)_sendChangeNotificationIfNeeded
{
  if (!self->_freezeNotifications)
  {
    [(DADeviceState *)self _sendChangeNotification];
  }
}

- (void)_sendChangeNotification
{
  pendingChanges = self->_pendingChanges;
  v4 = [(DADeviceState *)self copy];
  v5 = [DADeviceStateChangeNotificationInfo infoWithChangedProperties:pendingChanges snapshot:v4];

  self->_pendingChanges = 0;
  notificationQueue = self->_notificationQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100026960;
  v8[3] = &unk_1001BC5F8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(notificationQueue, v8);
}

- (void)resetState
{
  obj = self;
  objc_sync_enter(obj);
  diagnosticEventID = obj->_diagnosticEventID;
  obj->_diagnosticEventID = 0;

  suiteID = obj->_suiteID;
  obj->_suiteID = 0;

  suiteName = obj->_suiteName;
  obj->_suiteName = 0;

  suiteDescription = obj->_suiteDescription;
  obj->_suiteDescription = 0;

  suitesAvailable = obj->_suitesAvailable;
  obj->_suitesAvailable = &__NSArray0__struct;

  progress = obj->_progress;
  obj->_progress = &off_1001CCA28;

  obj->_durationRemaining = 0.0;
  errors = obj->_errors;
  obj->_errors = &__NSArray0__struct;

  timestamp = obj->_timestamp;
  obj->_timestamp = 0;

  obj->_pendingChanges = 0;
  obj->_freezeNotifications = 0;
  objc_sync_exit(obj);
}

- (id)overriddenSerialNumberFor:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 valueForKey:@"SNOverrideTable"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 objectForKeyedSubscript:v3];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = v3;
      }

      v9 = v8;
    }

    else
    {
      v9 = v3;
    }
  }

  else
  {
    v9 = v3;
  }

  return v9;
}

@end