@interface ANAccountNotification
- (ANAccountNotification)initWithCoder:(id)coder;
- (ANAccountNotification)initWithDictionaryRepresentation:(id)representation;
- (ANAccountNotification)initWithManagedObject:(id)object;
- (id)dictionaryRepresentation;
- (id)initForAccountWithType:(id)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ANAccountNotification

- (id)initForAccountWithType:(id)type
{
  typeCopy = type;
  v12.receiver = self;
  v12.super_class = ANAccountNotification;
  v5 = [(ANAccountNotification *)&v12 init];
  if (v5)
  {
    identifier = [typeCopy identifier];
    accountTypeID = v5->_accountTypeID;
    v5->_accountTypeID = identifier;

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v5->_identifier;
    v5->_identifier = uUIDString;
  }

  return v5;
}

- (ANAccountNotification)initWithManagedObject:(id)object
{
  objectCopy = object;
  v34.receiver = self;
  v34.super_class = ANAccountNotification;
  v5 = [(ANAccountNotification *)&v34 init];
  if (v5)
  {
    accountTypeID = [objectCopy accountTypeID];
    accountTypeID = v5->_accountTypeID;
    v5->_accountTypeID = accountTypeID;

    identifier = [objectCopy identifier];
    identifier = v5->_identifier;
    v5->_identifier = identifier;

    callbackMachServiceName = [objectCopy callbackMachServiceName];
    callbackMachService = v5->_callbackMachService;
    v5->_callbackMachService = callbackMachServiceName;

    title = [objectCopy title];
    title = v5->_title;
    v5->_title = title;

    message = [objectCopy message];
    message = v5->_message;
    v5->_message = message;

    date = [objectCopy date];
    date = v5->_date;
    v5->_date = date;

    userInfo = [objectCopy userInfo];
    userInfo = v5->_userInfo;
    v5->_userInfo = userInfo;

    eventID = [objectCopy eventID];
    eventIdentifier = v5->_eventIdentifier;
    v5->_eventIdentifier = eventID;

    activateAction = [objectCopy activateAction];

    if (activateAction)
    {
      v23 = [ANNotificationAction alloc];
      activateAction2 = [objectCopy activateAction];
      v25 = [(ANNotificationAction *)v23 initWithManagedObject:activateAction2];
      activateAction = v5->_activateAction;
      v5->_activateAction = v25;
    }

    dismissAction = [objectCopy dismissAction];

    if (dismissAction)
    {
      v28 = [ANNotificationAction alloc];
      dismissAction2 = [objectCopy dismissAction];
      v30 = [(ANNotificationAction *)v28 initWithManagedObject:dismissAction2];
      dismissAction = v5->_dismissAction;
      v5->_dismissAction = v30;
    }
  }

  v32 = v5;

  return v32;
}

- (ANAccountNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v34.receiver = self;
  v34.super_class = ANAccountNotification;
  v5 = [(ANAccountNotification *)&v34 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_accountTypeID"];
    accountTypeID = v5->_accountTypeID;
    v5->_accountTypeID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_eventIdentifier"];
    eventIdentifier = v5->_eventIdentifier;
    v5->_eventIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_message"];
    message = v5->_message;
    v5->_message = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_date"];
    date = v5->_date;
    v5->_date = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_callbackMachService"];
    callbackMachService = v5->_callbackMachService;
    v5->_callbackMachService = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_activateAction"];
    activateAction = v5->_activateAction;
    v5->_activateAction = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_dismissAction"];
    dismissAction = v5->_dismissAction;
    v5->_dismissAction = v22;

    v24 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = [v24 setWithObjects:{v25, v26, v27, v28, v29, objc_opt_class(), 0}];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"_userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v31;

    v5->_destinations = [coderCopy decodeIntegerForKey:@"_destinations"];
    v5->_sectionSubtype = [coderCopy decodeIntegerForKey:@"_sectionSubtype"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  accountTypeID = self->_accountTypeID;
  coderCopy = coder;
  [coderCopy encodeObject:accountTypeID forKey:@"_accountTypeID"];
  [coderCopy encodeObject:self->_eventIdentifier forKey:@"_eventIdentifier"];
  [coderCopy encodeObject:self->_title forKey:@"_title"];
  [coderCopy encodeObject:self->_message forKey:@"_message"];
  [coderCopy encodeObject:self->_identifier forKey:@"_identifier"];
  [coderCopy encodeObject:self->_date forKey:@"_date"];
  [coderCopy encodeObject:self->_callbackMachService forKey:@"_callbackMachService"];
  [coderCopy encodeObject:self->_activateAction forKey:@"_activateAction"];
  [coderCopy encodeObject:self->_dismissAction forKey:@"_dismissAction"];
  [coderCopy encodeObject:self->_userInfo forKey:@"_userInfo"];
  [coderCopy encodeInteger:self->_destinations forKey:@"_destinations"];
  [coderCopy encodeInteger:self->_sectionSubtype forKey:@"_sectionSubtype"];
}

- (ANAccountNotification)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v31.receiver = self;
  v31.super_class = ANAccountNotification;
  v5 = [(ANAccountNotification *)&v31 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"_accountTypeID"];
    accountTypeID = v5->_accountTypeID;
    v5->_accountTypeID = v6;

    v8 = [representationCopy objectForKeyedSubscript:@"_eventIdentifier"];
    eventIdentifier = v5->_eventIdentifier;
    v5->_eventIdentifier = v8;

    v10 = [representationCopy objectForKeyedSubscript:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [representationCopy objectForKeyedSubscript:@"_title"];
    title = v5->_title;
    v5->_title = v12;

    v14 = [representationCopy objectForKeyedSubscript:@"_message"];
    message = v5->_message;
    v5->_message = v14;

    v16 = [representationCopy objectForKeyedSubscript:@"_date"];
    date = v5->_date;
    v5->_date = v16;

    v18 = [representationCopy objectForKeyedSubscript:@"_callbackMachService"];
    callbackMachService = v5->_callbackMachService;
    v5->_callbackMachService = v18;

    v20 = [representationCopy objectForKeyedSubscript:@"_userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v20;

    v22 = [representationCopy objectForKeyedSubscript:@"_destinations"];
    v5->_destinations = [v22 integerValue];

    v23 = [representationCopy objectForKeyedSubscript:@"_sectionSubtype"];
    v5->_sectionSubtype = [v23 integerValue];

    v24 = [representationCopy objectForKeyedSubscript:@"_activateAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[ANNotificationAction alloc] initWithDictionaryRepresentation:v24];
      activateAction = v5->_activateAction;
      v5->_activateAction = v25;
    }

    v27 = [representationCopy objectForKeyedSubscript:@"_dismissAction"];

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

  dictionaryRepresentation = [(ANNotificationAction *)self->_activateAction dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"_activateAction"];

  dictionaryRepresentation2 = [(ANNotificationAction *)self->_dismissAction dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation2 forKeyedSubscript:@"_dismissAction"];

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