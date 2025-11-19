@interface AKAvailability
+ (id)logger;
- (AKAvailability)initWithAvailable:(BOOL)a3 activityIdentifierString:(id)a4;
- (AKAvailability)initWithPublishedStatus:(id)a3;
- (AKAvailability)initWithStatusPayload:(id)a3 invitationPayload:(id)a4;
- (NSUUID)activityIdentifier;
- (id)_payloadDictionary;
- (id)statusPublishRequest;
@end

@implementation AKAvailability

- (AKAvailability)initWithAvailable:(BOOL)a3 activityIdentifierString:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AKAvailability;
  v8 = [(AKAvailability *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_available = a3;
    objc_storeStrong(&v8->_activityIdentifierString, a4);
  }

  return v9;
}

- (NSUUID)activityIdentifier
{
  if (self->_activityIdentifierString)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:self->_activityIdentifierString];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (AKAvailability)initWithPublishedStatus:(id)a3
{
  v4 = a3;
  v5 = [v4 statusPayload];
  v6 = [v4 invitationPayload];

  if (v5)
  {
    v7 = [(AKAvailability *)self initWithStatusPayload:v5 invitationPayload:v6];
    self = v7;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)statusPublishRequest
{
  v2 = [(AKAvailability *)self _payloadDictionary];
  v3 = [objc_alloc(MEMORY[0x277D68128]) initWithDictionary:v2];
  v4 = [objc_alloc(MEMORY[0x277D68138]) initWithStatusPayload:v3];

  return v4;
}

- (id)_payloadDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[AKAvailability isAvailable](self, "isAvailable")}];
  [v3 setObject:v4 forKeyedSubscript:@"a"];

  v5 = [(AKAvailability *)self activityIdentifierString];
  if ([v5 length])
  {
    [v3 setObject:v5 forKeyedSubscript:@"i"];
  }

  v6 = [v3 copy];

  return v6;
}

- (AKAvailability)initWithStatusPayload:(id)a3 invitationPayload:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 payloadDictionary];
  v8 = [v7 availabilityKit_BOOLForKey:@"a" defaultValue:1];
  v9 = [v7 availabilityKit_stringForKey:@"i"];
  v10 = [v9 length];
  p_super = +[AKAvailability logger];
  v12 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      *buf = 138412290;
      v32 = v9;
      _os_log_impl(&dword_24192F000, p_super, OS_LOG_TYPE_DEFAULT, "Availability payload has an activity identifier %@, looking at invitation to see if they may be available or unavailable to me for this activity", buf, 0xCu);
    }

    if (v6)
    {
      v13 = [[AKAvailabilityInvitation alloc] initWithStatusKitInvitationPayload:v6];
      p_super = &v13->super;
      if (!v13)
      {
        v14 = +[AKAvailability logger];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_24192F000, v14, OS_LOG_TYPE_DEFAULT, "Not overriding personalizedAvailability, users invitation payload is not a well formed AKAvailabilityInvitation", buf, 2u);
        }

        v18 = v8;
        goto LABEL_37;
      }

      v14 = [(AKAvailabilityInvitation *)v13 availableDuringActivityIdentifiers];
      if ([v14 count])
      {
        v15 = [v14 containsObject:v9];
        v16 = +[AKAvailability logger];
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if (v15)
        {
          if (v17)
          {
            *buf = 138412546;
            v32 = v9;
            v33 = 2112;
            v34 = v14;
            _os_log_impl(&dword_24192F000, v16, OS_LOG_TYPE_DEFAULT, "Overriding personalizedAvailability, users active activity identifier %@ is on my list of invited availableDuringActivityIdentifiers: %@", buf, 0x16u);
          }

          v18 = 1;
          goto LABEL_26;
        }

        if (v17)
        {
          *buf = 138412546;
          v32 = v9;
          v33 = 2112;
          v34 = v14;
          v20 = "Not overriding personalizedAvailability, users active activity identifier %@ is not on my list of invited availableDuringActivityIdentifiers: %@";
          v21 = v16;
          v22 = 22;
          goto LABEL_24;
        }
      }

      else
      {
        v16 = +[AKAvailability logger];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v20 = "Not overriding personalizedAvailability, users has not invited me to be available to them during any activity identifiers";
          v21 = v16;
          v22 = 2;
LABEL_24:
          _os_log_impl(&dword_24192F000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
        }
      }

      v18 = v8;
LABEL_26:

      v23 = [p_super unavailableDuringActivityIdentifiers];
      if ([v23 count])
      {
        v30 = self;
        v24 = [v23 containsObject:v9];
        v25 = +[AKAvailability logger];
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (v24)
        {
          if (v26)
          {
            *buf = 138412546;
            v32 = v9;
            v33 = 2112;
            v34 = v14;
            _os_log_impl(&dword_24192F000, v25, OS_LOG_TYPE_DEFAULT, "Overriding personalizedAvailability, users active activity identifier %@ is on my list of invited unavailableDuringActivityIdentifiers: %@", buf, 0x16u);
          }

          v18 = 0;
        }

        else if (v26)
        {
          *buf = 138412546;
          v32 = v9;
          v33 = 2112;
          v34 = v14;
          _os_log_impl(&dword_24192F000, v25, OS_LOG_TYPE_DEFAULT, "Not overriding personalizedAvailability, users active activity identifier %@ is not on my list of invited unavailableDuringActivityIdentifiers: %@", buf, 0x16u);
        }

        self = v30;
      }

      else
      {
        v25 = +[AKAvailability logger];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_24192F000, v25, OS_LOG_TYPE_DEFAULT, "Not overriding personalizedAvailability, users has not invited me to be unavailable to them during any activity identifiers", buf, 2u);
        }
      }

LABEL_37:
      goto LABEL_38;
    }

    p_super = +[AKAvailability logger];
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v19 = "Not overriding personalizedAvailability, users has not provided an invitation payload";
      goto LABEL_15;
    }
  }

  else if (v12)
  {
    *buf = 0;
    v19 = "Not overriding personalizedAvailability, users has not provided an activity identifier for their active activity";
LABEL_15:
    _os_log_impl(&dword_24192F000, p_super, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
  }

  v18 = v8;
LABEL_38:

  v27 = [(AKAvailability *)self _initWithAvailable:v8 activityIdentifierString:v9 personalizedAvailability:v18];
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

+ (id)logger
{
  if (logger_onceToken != -1)
  {
    +[AKAvailability(StatusKit) logger];
  }

  v3 = logger__logger;

  return v3;
}

uint64_t __35__AKAvailability_StatusKit__logger__block_invoke()
{
  logger__logger = os_log_create("com.apple.StatusKit", "AKAvailability");

  return MEMORY[0x2821F96F8]();
}

@end