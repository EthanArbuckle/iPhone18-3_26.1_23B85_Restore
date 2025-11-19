@interface ANAccountNotification
- (ANAccountNotification)initWithCoder:(id)a3;
- (ANAccountNotification)initWithDictionaryRepresentation:(id)a3;
- (ANAccountNotification)initWithManagedObject:(id)a3;
- (id)dictionaryRepresentation;
- (id)initForAccountWithType:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ANAccountNotification

- (id)initForAccountWithType:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ANAccountNotification;
  v5 = [(ANAccountNotification *)&v12 init];
  if (v5)
  {
    v6 = [v4 identifier];
    accountTypeID = v5->_accountTypeID;
    v5->_accountTypeID = v6;

    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v8 UUIDString];
    identifier = v5->_identifier;
    v5->_identifier = v9;
  }

  return v5;
}

- (ANAccountNotification)initWithManagedObject:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = ANAccountNotification;
  v5 = [(ANAccountNotification *)&v34 init];
  if (v5)
  {
    v6 = [v4 accountTypeID];
    accountTypeID = v5->_accountTypeID;
    v5->_accountTypeID = v6;

    v8 = [v4 identifier];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [v4 callbackMachServiceName];
    callbackMachService = v5->_callbackMachService;
    v5->_callbackMachService = v10;

    v12 = [v4 title];
    title = v5->_title;
    v5->_title = v12;

    v14 = [v4 message];
    message = v5->_message;
    v5->_message = v14;

    v16 = [v4 date];
    date = v5->_date;
    v5->_date = v16;

    v18 = [v4 userInfo];
    userInfo = v5->_userInfo;
    v5->_userInfo = v18;

    v20 = [v4 eventID];
    eventIdentifier = v5->_eventIdentifier;
    v5->_eventIdentifier = v20;

    v22 = [v4 activateAction];

    if (v22)
    {
      v23 = [ANNotificationAction alloc];
      v24 = [v4 activateAction];
      v25 = [(ANNotificationAction *)v23 initWithManagedObject:v24];
      activateAction = v5->_activateAction;
      v5->_activateAction = v25;
    }

    v27 = [v4 dismissAction];

    if (v27)
    {
      v28 = [ANNotificationAction alloc];
      v29 = [v4 dismissAction];
      v30 = [(ANNotificationAction *)v28 initWithManagedObject:v29];
      dismissAction = v5->_dismissAction;
      v5->_dismissAction = v30;
    }
  }

  v32 = v5;

  return v32;
}

- (ANAccountNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = ANAccountNotification;
  v5 = [(ANAccountNotification *)&v34 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_accountTypeID"];
    accountTypeID = v5->_accountTypeID;
    v5->_accountTypeID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_eventIdentifier"];
    eventIdentifier = v5->_eventIdentifier;
    v5->_eventIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_message"];
    message = v5->_message;
    v5->_message = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_date"];
    date = v5->_date;
    v5->_date = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_callbackMachService"];
    callbackMachService = v5->_callbackMachService;
    v5->_callbackMachService = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_activateAction"];
    activateAction = v5->_activateAction;
    v5->_activateAction = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_dismissAction"];
    dismissAction = v5->_dismissAction;
    v5->_dismissAction = v22;

    v24 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = [v24 setWithObjects:{v25, v26, v27, v28, v29, objc_opt_class(), 0}];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"_userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v31;

    v5->_destinations = [v4 decodeIntegerForKey:@"_destinations"];
    v5->_sectionSubtype = [v4 decodeIntegerForKey:@"_sectionSubtype"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  accountTypeID = self->_accountTypeID;
  v5 = a3;
  [v5 encodeObject:accountTypeID forKey:@"_accountTypeID"];
  [v5 encodeObject:self->_eventIdentifier forKey:@"_eventIdentifier"];
  [v5 encodeObject:self->_title forKey:@"_title"];
  [v5 encodeObject:self->_message forKey:@"_message"];
  [v5 encodeObject:self->_identifier forKey:@"_identifier"];
  [v5 encodeObject:self->_date forKey:@"_date"];
  [v5 encodeObject:self->_callbackMachService forKey:@"_callbackMachService"];
  [v5 encodeObject:self->_activateAction forKey:@"_activateAction"];
  [v5 encodeObject:self->_dismissAction forKey:@"_dismissAction"];
  [v5 encodeObject:self->_userInfo forKey:@"_userInfo"];
  [v5 encodeInteger:self->_destinations forKey:@"_destinations"];
  [v5 encodeInteger:self->_sectionSubtype forKey:@"_sectionSubtype"];
}

- (ANAccountNotification)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = ANAccountNotification;
  v5 = [(ANAccountNotification *)&v31 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"_accountTypeID"];
    accountTypeID = v5->_accountTypeID;
    v5->_accountTypeID = v6;

    v8 = [v4 objectForKeyedSubscript:@"_eventIdentifier"];
    eventIdentifier = v5->_eventIdentifier;
    v5->_eventIdentifier = v8;

    v10 = [v4 objectForKeyedSubscript:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [v4 objectForKeyedSubscript:@"_title"];
    title = v5->_title;
    v5->_title = v12;

    v14 = [v4 objectForKeyedSubscript:@"_message"];
    message = v5->_message;
    v5->_message = v14;

    v16 = [v4 objectForKeyedSubscript:@"_date"];
    date = v5->_date;
    v5->_date = v16;

    v18 = [v4 objectForKeyedSubscript:@"_callbackMachService"];
    callbackMachService = v5->_callbackMachService;
    v5->_callbackMachService = v18;

    v20 = [v4 objectForKeyedSubscript:@"_userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v20;

    v22 = [v4 objectForKeyedSubscript:@"_destinations"];
    v5->_destinations = [v22 integerValue];

    v23 = [v4 objectForKeyedSubscript:@"_sectionSubtype"];
    v5->_sectionSubtype = [v23 integerValue];

    v24 = [v4 objectForKeyedSubscript:@"_activateAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[ANNotificationAction alloc] initWithDictionaryRepresentation:v24];
      activateAction = v5->_activateAction;
      v5->_activateAction = v25;
    }

    v27 = [v4 objectForKeyedSubscript:@"_dismissAction"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[ANNotificationAction alloc] initWithDictionaryRepresentation:v27];
      dismissAction = v5->_dismissAction;
      v5->_dismissAction = v28;
    }
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:self->_accountTypeID forKeyedSubscript:@"_accountTypeID"];
  [v3 setObject:self->_eventIdentifier forKeyedSubscript:@"_eventIdentifier"];
  [v3 setObject:self->_identifier forKeyedSubscript:@"_identifier"];
  [v3 setObject:self->_title forKeyedSubscript:@"_title"];
  [v3 setObject:self->_message forKeyedSubscript:@"_message"];
  [v3 setObject:self->_date forKeyedSubscript:@"_date"];
  [v3 setObject:self->_callbackMachService forKeyedSubscript:@"_callbackMachService"];
  [v3 setObject:self->_userInfo forKeyedSubscript:@"_userInfo"];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_destinations];
  [v3 setObject:v4 forKeyedSubscript:@"_destinations"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_sectionSubtype];
  [v3 setObject:v5 forKeyedSubscript:@"_sectionSubtype"];

  v6 = [(ANNotificationAction *)self->_activateAction dictionaryRepresentation];
  [v3 setObject:v6 forKeyedSubscript:@"_activateAction"];

  v7 = [(ANNotificationAction *)self->_dismissAction dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"_dismissAction"];

  v8 = [v3 copy];

  return v8;
}

- (void)initWithManagedObject:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 62;
  _os_log_error_impl(&dword_23DC5E000, v0, OS_LOG_TYPE_ERROR, "%s (%d) NSObjectInaccessibleException caught inside [ANAccountNotification initWithManagedObject:]", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

@end