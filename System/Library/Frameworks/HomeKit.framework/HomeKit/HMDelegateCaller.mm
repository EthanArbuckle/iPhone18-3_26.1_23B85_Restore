@interface HMDelegateCaller
+ (id)delegateCallerWithOperationQueue:(id)queue;
- (HMDelegateCaller)initWithQueue:(id)queue;
- (id)_localizedError:(id)error;
- (void)callCompletion:(id)completion actionSet:(id)set error:(id)error;
- (void)callCompletion:(id)completion array:(id)array;
- (void)callCompletion:(id)completion array:(id)array additionalAccessoryInfo:(id)info error:(id)error;
- (void)callCompletion:(id)completion error:(id)error;
- (void)callCompletion:(id)completion error:(id)error BOOLValue:(BOOL)value array:(id)array;
- (void)callCompletion:(id)completion error:(id)error array:(id)array;
- (void)callCompletion:(id)completion error:(id)error dictionary:(id)dictionary;
- (void)callCompletion:(id)completion error:(id)error mediaSystem:(id)system;
- (void)callCompletion:(id)completion error:(id)error obj:(id)obj;
- (void)callCompletion:(id)completion error:(id)error proxiedDevice:(id)device;
- (void)callCompletion:(id)completion error:(id)error snapshot:(id)snapshot;
- (void)callCompletion:(id)completion errorString:(id)string;
- (void)callCompletion:(id)completion eventTrigger:(id)trigger error:(id)error;
- (void)callCompletion:(id)completion home:(id)home error:(id)error;
- (void)callCompletion:(id)completion invitations:(id)invitations error:(id)error;
- (void)callCompletion:(id)completion isUsingHomeKit:(BOOL)kit isUsingCloudServices:(BOOL)services error:(id)error;
- (void)callCompletion:(id)completion obj:(id)obj error:(id)error;
- (void)callCompletion:(id)completion room:(id)room error:(id)error;
- (void)callCompletion:(id)completion service:(id)service error:(id)error;
- (void)callCompletion:(id)completion serviceGroup:(id)group error:(id)error;
- (void)callCompletion:(id)completion timerTrigger:(id)trigger error:(id)error;
- (void)callCompletion:(id)completion user:(id)user error:(id)error;
- (void)callCompletion:(id)completion value:(BOOL)value conflictName:(id)name error:(id)error;
- (void)callCompletion:(id)completion value:(BOOL)value error:(id)error;
- (void)callCompletion:(id)completion zone:(id)zone error:(id)error;
- (void)invokeBlock:(id)block;
@end

@implementation HMDelegateCaller

- (void)callCompletion:(id)completion service:(id)service error:(id)error
{
  completionCopy = completion;
  serviceCopy = service;
  errorCopy = error;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__HMDelegateCaller_callCompletion_service_error___block_invoke;
  v14[3] = &unk_1E754E0F8;
  v16 = errorCopy;
  v17 = completionCopy;
  v15 = serviceCopy;
  v11 = errorCopy;
  v12 = serviceCopy;
  v13 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v14];
}

uint64_t __49__HMDelegateCaller_callCompletion_service_error___block_invoke(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)callCompletion:(id)completion value:(BOOL)value conflictName:(id)name error:(id)error
{
  completionCopy = completion;
  nameCopy = name;
  errorCopy = error;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __60__HMDelegateCaller_callCompletion_value_conflictName_error___block_invoke;
  v16[3] = &unk_1E754A040;
  v18 = errorCopy;
  v19 = completionCopy;
  valueCopy = value;
  v17 = nameCopy;
  v13 = errorCopy;
  v14 = nameCopy;
  v15 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v16];
}

uint64_t __60__HMDelegateCaller_callCompletion_value_conflictName_error___block_invoke(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32), *(a1 + 40));
  }

  return result;
}

- (void)callCompletion:(id)completion error:(id)error mediaSystem:(id)system
{
  completionCopy = completion;
  errorCopy = error;
  systemCopy = system;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__HMDelegateCaller_callCompletion_error_mediaSystem___block_invoke;
  v14[3] = &unk_1E754D208;
  v14[4] = self;
  v15 = errorCopy;
  v16 = systemCopy;
  v17 = completionCopy;
  v11 = systemCopy;
  v12 = errorCopy;
  v13 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v14];
}

void __53__HMDelegateCaller_callCompletion_error_mediaSystem___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    v3 = [*(a1 + 32) _localizedError:*(a1 + 40)];
    (*(v1 + 16))(v1, v3, *(a1 + 48));
  }
}

- (void)callCompletion:(id)completion error:(id)error proxiedDevice:(id)device
{
  completionCopy = completion;
  errorCopy = error;
  deviceCopy = device;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__HMDelegateCaller_callCompletion_error_proxiedDevice___block_invoke;
  v14[3] = &unk_1E754D208;
  v14[4] = self;
  v15 = errorCopy;
  v16 = deviceCopy;
  v17 = completionCopy;
  v11 = deviceCopy;
  v12 = errorCopy;
  v13 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v14];
}

void __55__HMDelegateCaller_callCompletion_error_proxiedDevice___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    v3 = [*(a1 + 32) _localizedError:*(a1 + 40)];
    (*(v1 + 16))(v1, v3, *(a1 + 48));
  }
}

- (void)callCompletion:(id)completion error:(id)error snapshot:(id)snapshot
{
  completionCopy = completion;
  errorCopy = error;
  snapshotCopy = snapshot;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__HMDelegateCaller_callCompletion_error_snapshot___block_invoke;
  v14[3] = &unk_1E754D208;
  v15 = snapshotCopy;
  selfCopy = self;
  v17 = errorCopy;
  v18 = completionCopy;
  v11 = errorCopy;
  v12 = snapshotCopy;
  v13 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v14];
}

void __50__HMDelegateCaller_callCompletion_error_snapshot___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) _localizedError:*(a1 + 48)];
    (*(v1 + 16))(v1, v2, v3);
  }
}

- (void)callCompletion:(id)completion user:(id)user error:(id)error
{
  completionCopy = completion;
  userCopy = user;
  errorCopy = error;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__HMDelegateCaller_callCompletion_user_error___block_invoke;
  v14[3] = &unk_1E754D208;
  v15 = userCopy;
  selfCopy = self;
  v17 = errorCopy;
  v18 = completionCopy;
  v11 = errorCopy;
  v12 = userCopy;
  v13 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v14];
}

void __46__HMDelegateCaller_callCompletion_user_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) _localizedError:*(a1 + 48)];
    (*(v1 + 16))(v1, v2, v3);
  }
}

- (void)callCompletion:(id)completion invitations:(id)invitations error:(id)error
{
  completionCopy = completion;
  invitationsCopy = invitations;
  errorCopy = error;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__HMDelegateCaller_callCompletion_invitations_error___block_invoke;
  v14[3] = &unk_1E754D208;
  v15 = invitationsCopy;
  selfCopy = self;
  v17 = errorCopy;
  v18 = completionCopy;
  v11 = errorCopy;
  v12 = invitationsCopy;
  v13 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v14];
}

void __53__HMDelegateCaller_callCompletion_invitations_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) _localizedError:*(a1 + 48)];
    (*(v1 + 16))(v1, v2, v3);
  }
}

- (void)callCompletion:(id)completion array:(id)array
{
  completionCopy = completion;
  arrayCopy = array;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__HMDelegateCaller_callCompletion_array___block_invoke;
  v10[3] = &unk_1E754E458;
  v11 = arrayCopy;
  v12 = completionCopy;
  v8 = arrayCopy;
  v9 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v10];
}

uint64_t __41__HMDelegateCaller_callCompletion_array___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)callCompletion:(id)completion array:(id)array additionalAccessoryInfo:(id)info error:(id)error
{
  completionCopy = completion;
  arrayCopy = array;
  infoCopy = info;
  errorCopy = error;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71__HMDelegateCaller_callCompletion_array_additionalAccessoryInfo_error___block_invoke;
  v18[3] = &unk_1E754D7A8;
  v22 = errorCopy;
  v23 = completionCopy;
  v19 = arrayCopy;
  v20 = infoCopy;
  selfCopy = self;
  v14 = errorCopy;
  v15 = infoCopy;
  v16 = arrayCopy;
  v17 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v18];
}

void __71__HMDelegateCaller_callCompletion_array_additionalAccessoryInfo_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = [*(a1 + 48) _localizedError:*(a1 + 56)];
    (*(v1 + 16))(v1, v2, v3, v4);
  }
}

- (void)callCompletion:(id)completion error:(id)error array:(id)array
{
  completionCopy = completion;
  errorCopy = error;
  arrayCopy = array;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__HMDelegateCaller_callCompletion_error_array___block_invoke;
  v14[3] = &unk_1E754D208;
  v14[4] = self;
  v15 = errorCopy;
  v16 = arrayCopy;
  v17 = completionCopy;
  v11 = arrayCopy;
  v12 = errorCopy;
  v13 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v14];
}

void __47__HMDelegateCaller_callCompletion_error_array___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    v3 = [*(a1 + 32) _localizedError:*(a1 + 40)];
    (*(v1 + 16))(v1, v3, *(a1 + 48));
  }
}

- (void)callCompletion:(id)completion error:(id)error BOOLValue:(BOOL)value array:(id)array
{
  completionCopy = completion;
  errorCopy = error;
  arrayCopy = array;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__HMDelegateCaller_callCompletion_error_BOOLValue_array___block_invoke;
  v16[3] = &unk_1E754A988;
  v16[4] = self;
  v17 = errorCopy;
  valueCopy = value;
  v18 = arrayCopy;
  v19 = completionCopy;
  v13 = arrayCopy;
  v14 = errorCopy;
  v15 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v16];
}

void __57__HMDelegateCaller_callCompletion_error_BOOLValue_array___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    v3 = [*(a1 + 32) _localizedError:*(a1 + 40)];
    (*(v1 + 16))(v1, v3, *(a1 + 64), *(a1 + 48));
  }
}

- (void)callCompletion:(id)completion timerTrigger:(id)trigger error:(id)error
{
  completionCopy = completion;
  triggerCopy = trigger;
  errorCopy = error;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__HMDelegateCaller_callCompletion_timerTrigger_error___block_invoke;
  v14[3] = &unk_1E754D208;
  v15 = triggerCopy;
  selfCopy = self;
  v17 = errorCopy;
  v18 = completionCopy;
  v11 = errorCopy;
  v12 = triggerCopy;
  v13 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v14];
}

void __54__HMDelegateCaller_callCompletion_timerTrigger_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) _localizedError:*(a1 + 48)];
    (*(v1 + 16))(v1, v2, v3);
  }
}

- (void)callCompletion:(id)completion eventTrigger:(id)trigger error:(id)error
{
  completionCopy = completion;
  triggerCopy = trigger;
  errorCopy = error;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__HMDelegateCaller_callCompletion_eventTrigger_error___block_invoke;
  v14[3] = &unk_1E754D208;
  v15 = triggerCopy;
  selfCopy = self;
  v17 = errorCopy;
  v18 = completionCopy;
  v11 = errorCopy;
  v12 = triggerCopy;
  v13 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v14];
}

void __54__HMDelegateCaller_callCompletion_eventTrigger_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) _localizedError:*(a1 + 48)];
    (*(v1 + 16))(v1, v2, v3);
  }
}

- (void)callCompletion:(id)completion actionSet:(id)set error:(id)error
{
  completionCopy = completion;
  setCopy = set;
  errorCopy = error;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__HMDelegateCaller_callCompletion_actionSet_error___block_invoke;
  v14[3] = &unk_1E754D208;
  v15 = setCopy;
  selfCopy = self;
  v17 = errorCopy;
  v18 = completionCopy;
  v11 = errorCopy;
  v12 = setCopy;
  v13 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v14];
}

void __51__HMDelegateCaller_callCompletion_actionSet_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) _localizedError:*(a1 + 48)];
    (*(v1 + 16))(v1, v2, v3);
  }
}

- (void)callCompletion:(id)completion serviceGroup:(id)group error:(id)error
{
  completionCopy = completion;
  groupCopy = group;
  errorCopy = error;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__HMDelegateCaller_callCompletion_serviceGroup_error___block_invoke;
  v14[3] = &unk_1E754D208;
  v15 = groupCopy;
  selfCopy = self;
  v17 = errorCopy;
  v18 = completionCopy;
  v11 = errorCopy;
  v12 = groupCopy;
  v13 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v14];
}

void __54__HMDelegateCaller_callCompletion_serviceGroup_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) _localizedError:*(a1 + 48)];
    (*(v1 + 16))(v1, v2, v3);
  }
}

- (void)callCompletion:(id)completion zone:(id)zone error:(id)error
{
  completionCopy = completion;
  zoneCopy = zone;
  errorCopy = error;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__HMDelegateCaller_callCompletion_zone_error___block_invoke;
  v14[3] = &unk_1E754D208;
  v15 = zoneCopy;
  selfCopy = self;
  v17 = errorCopy;
  v18 = completionCopy;
  v11 = errorCopy;
  v12 = zoneCopy;
  v13 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v14];
}

void __46__HMDelegateCaller_callCompletion_zone_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) _localizedError:*(a1 + 48)];
    (*(v1 + 16))(v1, v2, v3);
  }
}

- (void)callCompletion:(id)completion room:(id)room error:(id)error
{
  completionCopy = completion;
  roomCopy = room;
  errorCopy = error;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__HMDelegateCaller_callCompletion_room_error___block_invoke;
  v14[3] = &unk_1E754D208;
  v15 = roomCopy;
  selfCopy = self;
  v17 = errorCopy;
  v18 = completionCopy;
  v11 = errorCopy;
  v12 = roomCopy;
  v13 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v14];
}

void __46__HMDelegateCaller_callCompletion_room_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) _localizedError:*(a1 + 48)];
    (*(v1 + 16))(v1, v2, v3);
  }
}

- (void)callCompletion:(id)completion home:(id)home error:(id)error
{
  completionCopy = completion;
  homeCopy = home;
  errorCopy = error;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__HMDelegateCaller_callCompletion_home_error___block_invoke;
  v14[3] = &unk_1E754D208;
  v15 = homeCopy;
  selfCopy = self;
  v17 = errorCopy;
  v18 = completionCopy;
  v11 = errorCopy;
  v12 = homeCopy;
  v13 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v14];
}

void __46__HMDelegateCaller_callCompletion_home_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) _localizedError:*(a1 + 48)];
    (*(v1 + 16))(v1, v2, v3);
  }
}

- (void)callCompletion:(id)completion isUsingHomeKit:(BOOL)kit isUsingCloudServices:(BOOL)services error:(id)error
{
  completionCopy = completion;
  errorCopy = error;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__HMDelegateCaller_callCompletion_isUsingHomeKit_isUsingCloudServices_error___block_invoke;
  v14[3] = &unk_1E7547058;
  v15 = errorCopy;
  v16 = completionCopy;
  kitCopy = kit;
  servicesCopy = services;
  v14[4] = self;
  v12 = errorCopy;
  v13 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v14];
}

void __77__HMDelegateCaller_callCompletion_isUsingHomeKit_isUsingCloudServices_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v2 = *(a1 + 56);
    v3 = *(a1 + 57);
    v4 = [*(a1 + 32) _localizedError:*(a1 + 40)];
    (*(v1 + 16))(v1, v2, v3, v4);
  }
}

- (void)callCompletion:(id)completion error:(id)error dictionary:(id)dictionary
{
  completionCopy = completion;
  errorCopy = error;
  dictionaryCopy = dictionary;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__HMDelegateCaller_callCompletion_error_dictionary___block_invoke;
  v14[3] = &unk_1E754D208;
  v14[4] = self;
  v15 = errorCopy;
  v16 = dictionaryCopy;
  v17 = completionCopy;
  v11 = dictionaryCopy;
  v12 = errorCopy;
  v13 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v14];
}

void __52__HMDelegateCaller_callCompletion_error_dictionary___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    v3 = [*(a1 + 32) _localizedError:*(a1 + 40)];
    (*(v1 + 16))(v1, v3, *(a1 + 48));
  }
}

- (void)callCompletion:(id)completion errorString:(id)string
{
  completionCopy = completion;
  stringCopy = string;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__HMDelegateCaller_callCompletion_errorString___block_invoke;
  v10[3] = &unk_1E754E458;
  v11 = stringCopy;
  v12 = completionCopy;
  v8 = stringCopy;
  v9 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v10];
}

uint64_t __47__HMDelegateCaller_callCompletion_errorString___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)callCompletion:(id)completion value:(BOOL)value error:(id)error
{
  completionCopy = completion;
  errorCopy = error;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__HMDelegateCaller_callCompletion_value_error___block_invoke;
  v12[3] = &unk_1E754A040;
  v13 = errorCopy;
  v14 = completionCopy;
  valueCopy = value;
  v12[4] = self;
  v10 = errorCopy;
  v11 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v12];
}

void __47__HMDelegateCaller_callCompletion_value_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v2 = *(a1 + 56);
    v3 = [*(a1 + 32) _localizedError:*(a1 + 40)];
    (*(v1 + 16))(v1, v2, v3);
  }
}

- (void)callCompletion:(id)completion obj:(id)obj error:(id)error
{
  completionCopy = completion;
  objCopy = obj;
  errorCopy = error;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __45__HMDelegateCaller_callCompletion_obj_error___block_invoke;
  v14[3] = &unk_1E754D208;
  v15 = objCopy;
  selfCopy = self;
  v17 = errorCopy;
  v18 = completionCopy;
  v11 = errorCopy;
  v12 = objCopy;
  v13 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v14];
}

void __45__HMDelegateCaller_callCompletion_obj_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) _localizedError:*(a1 + 48)];
    (*(v1 + 16))(v1, v2, v3);
  }
}

- (void)callCompletion:(id)completion error:(id)error obj:(id)obj
{
  completionCopy = completion;
  errorCopy = error;
  objCopy = obj;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __45__HMDelegateCaller_callCompletion_error_obj___block_invoke;
  v14[3] = &unk_1E754D208;
  v14[4] = self;
  v15 = errorCopy;
  v16 = objCopy;
  v17 = completionCopy;
  v11 = objCopy;
  v12 = errorCopy;
  v13 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v14];
}

void __45__HMDelegateCaller_callCompletion_error_obj___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    v3 = [*(a1 + 32) _localizedError:*(a1 + 40)];
    (*(v1 + 16))(v1, v3, *(a1 + 48));
  }
}

- (void)callCompletion:(id)completion error:(id)error
{
  completionCopy = completion;
  errorCopy = error;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__HMDelegateCaller_callCompletion_error___block_invoke;
  v10[3] = &unk_1E754E0F8;
  v11 = errorCopy;
  v12 = completionCopy;
  v10[4] = self;
  v8 = errorCopy;
  v9 = completionCopy;
  [(HMDelegateCaller *)self invokeBlock:v10];
}

void __41__HMDelegateCaller_callCompletion_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v2 = [*(a1 + 32) _localizedError:*(a1 + 40)];
    (*(v1 + 16))(v1, v2);
  }
}

- (void)invokeBlock:(id)block
{
  if (block)
  {
    (*(block + 2))(block);
  }
}

- (id)_localizedError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (!errorCopy)
  {
    v10 = 0;
    goto LABEL_152;
  }

  userInfo = [errorCopy userInfo];
  v6 = *MEMORY[0x1E696A578];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A578]];

  if (!v7)
  {
    v8 = v4;
    if (![v8 isHMError])
    {
LABEL_144:
      v9 = @"UNKNOWN_ERROR_CODE";
      goto LABEL_145;
    }

    v9 = @"UNEXPECTED_ERROR";
    switch([v8 code])
    {
      case -1:
        goto LABEL_145;
      case 1:
        v9 = @"ALREADY_EXISTS";
        goto LABEL_145;
      case 2:
        v9 = @"NOT_FOUND";
        goto LABEL_145;
      case 3:
        v9 = @"INVALID_PARAMETER";
        goto LABEL_145;
      case 4:
        v9 = @"ACCESSORY_NOT_REACHABLE";
        goto LABEL_145;
      case 5:
        v9 = @"READ_ONLY_CHARACTERISTIC";
        goto LABEL_145;
      case 6:
        v9 = @"WRITE_ONLY_CHARACTERISTIC";
        goto LABEL_145;
      case 7:
        v9 = @"NOTIFICATION_NOT_SUPPORTED";
        goto LABEL_145;
      case 8:
        v9 = @"OPERATION_TIMED_OUT";
        goto LABEL_145;
      case 9:
        v9 = @"ACCESSORY_POWERED_OFF";
        goto LABEL_145;
      case 10:
        v9 = @"ACCESS_DENIED";
        goto LABEL_145;
      case 11:
        v9 = @"OBJECT_ASSOCIATED_TO_ANOTHER_HOME";
        goto LABEL_145;
      case 12:
        v9 = @"OBJECT_NOT_ASSOCIATED_TO_ANY_HOME";
        goto LABEL_145;
      case 13:
        v9 = @"OBJECT_ALREADY_ASSOCIATED_TO_HOME";
        goto LABEL_145;
      case 14:
        v9 = @"ACCESSORY_IS_BUSY";
        goto LABEL_145;
      case 15:
        v9 = @"OPERATION_IN_PROGRESS";
        goto LABEL_145;
      case 16:
        v9 = @"ACCESSORY_OUT_OF_RESOURCES";
        goto LABEL_145;
      case 17:
        v9 = @"INSUFFICIENT_PRIVILEGES";
        goto LABEL_145;
      case 18:
        v9 = @"ACCESSORY_PAIRING_FAILED";
        goto LABEL_145;
      case 19:
        v9 = @"INVALID_DATA_FORMAT_SPECIFIED";
        goto LABEL_145;
      case 20:
        v9 = @"NIL_PARAMETER";
        goto LABEL_145;
      case 21:
        v9 = @"UNCONFIGURED_PARAMETER";
        goto LABEL_145;
      case 22:
        v9 = @"INVALID_CLASS";
        goto LABEL_145;
      case 23:
        v9 = @"OPERATION_CANCELLED";
        goto LABEL_145;
      case 24:
        v9 = @"ROOM_FOR_HOME_CANNOT_BE_IN_ZONE";
        goto LABEL_145;
      case 25:
        v9 = @"NO_ACTIONS_IN_ACTION_SET";
        goto LABEL_145;
      case 26:
        v9 = @"NO_REGISTERED_ACTION_SETS";
        goto LABEL_145;
      case 27:
        v9 = @"MISSING_PARAMETER";
        goto LABEL_145;
      case 28:
        v9 = @"FIRE_DATE_IN_PAST";
        goto LABEL_145;
      case 29:
        v9 = @"ROOM_FOR_HOME_CANNOT_BE_UPDATED";
        goto LABEL_145;
      case 30:
        v9 = @"ACTION_IN_ANOTHER_ACTION_SET";
        goto LABEL_145;
      case 31:
        v9 = @"OBJECT_WITH_SIMILAR_NAME_EXISTS_IN_HOME";
        goto LABEL_145;
      case 32:
        v9 = @"HOME_WITH_SIMILAR_NAME_EXISTS";
        goto LABEL_145;
      case 33:
        v9 = @"RENAME_WITH_SIMILAR_NAME";
        goto LABEL_145;
      case 34:
        v9 = @"CANNOT_REMOVE_NON_BRIDGE_ACCESSORY";
        goto LABEL_145;
      case 35:
        v9 = @"NAME_CONTAINS_PROHIBITED_CHARACTERS";
        goto LABEL_145;
      case 36:
        v9 = @"NAME_DOES_NOT_START_WITH_VALID_CHARACTERS";
        goto LABEL_145;
      case 37:
        v9 = @"USER_ID_NOT_EMAIL_ADDRESS";
        goto LABEL_145;
      case 38:
        v9 = @"USER_DECLINED_ADDING_USER";
        goto LABEL_145;
      case 39:
        v9 = @"USER_DECLINED_REMOVING_USER";
        goto LABEL_145;
      case 40:
        v9 = @"USER_DECLINED_INVITE";
        goto LABEL_145;
      case 41:
        v9 = @"USER_MANAGEMENT_FAILED";
        goto LABEL_145;
      case 42:
        v9 = @"RECURRENCE_TOO_SMALL";
        goto LABEL_145;
      case 43:
        v9 = @"INVALID_VALUE_TYPE";
        goto LABEL_145;
      case 44:
        v9 = @"VALUE_LOWER_THAN_MINIMUM";
        goto LABEL_145;
      case 45:
        v9 = @"VALUE_HIGHER_THAN_MAXIMUM";
        goto LABEL_145;
      case 46:
        v9 = @"STRING_LONGER_THAN_MAXIMUM";
        goto LABEL_145;
      case 47:
        v9 = @"HOME_ACCESS_NOT_AUTHORIZED";
        goto LABEL_145;
      case 48:
        v9 = @"OPERATION_NOT_SUPPORTED";
        goto LABEL_145;
      case 49:
        v9 = @"MAXIMUM_OBJECT_LIMIT_REACHED";
        goto LABEL_145;
      case 50:
        v9 = @"ACCESSORY_SENT_INVALID_RESPONSE";
        goto LABEL_145;
      case 51:
        v9 = @"STRING_SHORTER_THAN_MINIMUM";
        goto LABEL_145;
      case 52:
        v9 = @"GENERIC_ERROR";
        goto LABEL_145;
      case 53:
        v9 = @"SECURITY_FAILURE";
        goto LABEL_145;
      case 54:
        v9 = @"COMMUNICATION_FAILURE";
        goto LABEL_145;
      case 55:
        v9 = @"MESSAGE_AUTHENTICATION_FAILED";
        goto LABEL_145;
      case 56:
        v9 = @"INVALID_MESSAGE_SIZE";
        goto LABEL_145;
      case 57:
        v9 = @"ACCESSORY_DISCOVERY_FAILED";
        goto LABEL_145;
      case 58:
        v9 = @"CLIENT_REQUEST_ERROR";
        goto LABEL_145;
      case 59:
        v9 = @"ACCESSORY_RESPONSE_ERROR";
        goto LABEL_145;
      case 60:
        v9 = @"NAME_DOES_NOT_END_WITH_VALID_CHARACTERS";
        goto LABEL_145;
      case 61:
        v9 = @"ACCESSORY_IS_BLOCKED";
        goto LABEL_145;
      case 62:
        v9 = @"INVALID_ASSOCIATED_SERVICE_TYPE";
        goto LABEL_145;
      case 63:
        v9 = @"ACTION_SET_EXECUTION_FAILED";
        goto LABEL_145;
      case 64:
        v9 = @"ACTION_SET_EXECUTION_PARTIAL_SUCCESS";
        goto LABEL_145;
      case 65:
        v9 = @"ACTION_SET_EXECUTION_IN_PROGRESS";
        goto LABEL_145;
      case 66:
        v9 = @"ACCESSORY_OUT_OF_COMPLIANCE";
        goto LABEL_145;
      case 67:
        v9 = @"DATA_RESET_FAILURE";
        goto LABEL_145;
      case 68:
        v9 = @"NOTIFICATION_ALREADY_ENABLED";
        goto LABEL_145;
      case 69:
        v9 = @"RECURRENCE_MUST_BE_ON_SPECIFIED_BOUNDARIES";
        goto LABEL_145;
      case 70:
        v9 = @"DATE_MUST_BE_ON_SPECIFIED_BOUNDARIES";
        goto LABEL_145;
      case 71:
        v9 = @"CANNOT_ACTIVATE_TRIGGER_TOO_FAR_IN_FUTURE";
        goto LABEL_145;
      case 72:
        v9 = @"RECURRENCE_TOO_LARGE";
        goto LABEL_145;
      case 73:
        v9 = @"READ_WRITE_PARTIAL_SUCCESS";
        goto LABEL_145;
      case 74:
        v9 = @"READ_WRITE_FAILURE";
        goto LABEL_145;
      case 75:
        v9 = @"NOT_SIGNED_INTO_ICLOUD";
        goto LABEL_145;
      case 76:
        v9 = @"KEYCHAIN_SYNC_NOT_ENABLED";
        goto LABEL_145;
      case 77:
        v9 = @"CLOUD_DATA_SYNC_IN_PROGRESS";
        goto LABEL_145;
      case 78:
        v9 = @"NETWORK_UNAVAILABLE";
        goto LABEL_145;
      case 79:
        v9 = @"ADD_ACCESSORY_FAILED";
        goto LABEL_145;
      case 80:
        v9 = @"MISSING_ENTITLEMENT";
        goto LABEL_145;
      case 81:
        v9 = @"CANNOT_UNBLOCK_NON_BRIDGE_ACCESSORY";
        goto LABEL_145;
      case 82:
        v9 = @"DEVICE_LOCKED";
        goto LABEL_145;
      case 83:
        v9 = @"CANNOT_REMOVE_BUILTIN_ACTION_SET";
        goto LABEL_145;
      case 84:
        v9 = @"LOCATION_FOR_HOME_DISABLED";
        goto LABEL_145;
      case 85:
        v9 = @"NOT_AUTHORIZED_FOR_LOCATION_SERVICES";
        goto LABEL_145;
      case 86:
        v9 = @"REFER_TO_USER_MANUAL";
        goto LABEL_145;
      case 87:
        v9 = @"MISSING_OR_INVALID_AUTHORIZATION_DATA";
        goto LABEL_145;
      case 88:
        v9 = @"BRIDGED_ACCESSORY_NOT_REACHABLE";
        goto LABEL_145;
      case 89:
        v9 = @"NOT_AUTHORIZED_FOR_MICROPHONE_ACCESS";
        goto LABEL_145;
      case 90:
        v9 = @"INCOMPATIBLE_WIFI_NETWORK";
        goto LABEL_145;
      case 91:
        v9 = @"NO_HOME_HUB";
        goto LABEL_145;
      case 92:
        v9 = @"NO_COMPATIBLE_HOME_HUB";
        goto LABEL_145;
      case 93:
        v9 = @"INCOMPATIBLE_ACCESSORY";
        goto LABEL_145;
      case 95:
        v9 = @"OBJECT_WITH_SIMILAR_NAME_EXISTS";
        goto LABEL_145;
      case 96:
        v9 = @"OWNERSHIP_FAILURE";
        goto LABEL_145;
      case 97:
        v9 = @"MAXIMUM_ACCESSORIES_OF_TYPE_IN_HOME";
        goto LABEL_145;
      case 98:
        v9 = @"WIFI_CREDENTIAL_GENERATION_FAILED";
        goto LABEL_145;
      default:
        code = [v8 code];
        if (code <= 2200)
        {
          if (code > 2004)
          {
            if (code > 2099)
            {
              if (code == 2100)
              {
                v9 = @"NO_TARGET_ACCESSORY";
                goto LABEL_145;
              }

              if (code == 2200)
              {
                v9 = @"INVALID_CHARACTERS";
                goto LABEL_145;
              }
            }

            else
            {
              if (code == 2005)
              {
                v9 = @"MEDIA_REMOTE_ERROR";
                goto LABEL_145;
              }

              if (code == 2007)
              {
                v9 = @"CLOUD_PHOTO_LIBRARY_NOT_ENABLED";
                goto LABEL_145;
              }
            }
          }

          else
          {
            if (code > 2002)
            {
              if (code == 2003)
              {
                v9 = @"SECURE_ACCESS_DENIED";
              }

              else
              {
                v9 = @"UNSUPPORTED_SETUP_PAYLOAD";
              }

              goto LABEL_145;
            }

            if (code == 2001)
            {
              v9 = @"OPERATION_CANCELED_BY_USER";
              goto LABEL_145;
            }

            if (code == 2002)
            {
              v9 = @"INCORRECT_SETUP_CODE";
              goto LABEL_145;
            }
          }
        }

        else if (code <= 2499)
        {
          if (code > 2403)
          {
            if (code == 2404)
            {
              v9 = @"OPERATION_STARTED";
              goto LABEL_145;
            }

            if (code == 2405)
            {
              v9 = @"ACCESSORY_IS_CALIBRATING";
              goto LABEL_145;
            }
          }

          else
          {
            if (code == 2201)
            {
              v9 = @"PASSWORD_WEAK";
              goto LABEL_145;
            }

            if (code == 2300)
            {
              v9 = @"VOICE_SHORTCUT_WITH_SIMILAR_NAME_EXISTS";
              goto LABEL_145;
            }
          }
        }

        else
        {
          if (code <= 2501)
          {
            if (code == 2500)
            {
              v9 = @"CONFIG_RESET";
            }

            else
            {
              v9 = @"HOME_UI_SERVICE_TERMINATED";
            }

            goto LABEL_145;
          }

          switch(code)
          {
            case 2502:
              v9 = @"HOME_UI_SERVICE_BACKGROUNDED";
              goto LABEL_145;
            case 2503:
              v9 = @"NO_CLIENTS";
              goto LABEL_145;
            case 2504:
              v9 = @"ACCESSORY_BROWSER_STOPPED";
LABEL_145:

              v13 = v9;
              v14 = +[HMLocalization sharedManager];
              v15 = [v14 getLocalizedString:v13];

              if ([(__CFString *)v13 isEqualToString:@"UNKNOWN_ERROR_CODE"])
              {
                v16 = MEMORY[0x1E696AEC0];
                v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "code")}];
                v18 = [v16 stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:0, v17];

                v15 = v18;
              }

              v19 = [userInfo mutableCopy];
              v20 = v19;
              if (v19)
              {
                dictionary = v19;
              }

              else
              {
                dictionary = [MEMORY[0x1E695DF90] dictionary];
              }

              v22 = dictionary;

              [v22 setObject:v15 forKeyedSubscript:v6];
              v23 = [v22 copy];

              userInfo = v23;
              goto LABEL_151;
          }
        }

        code2 = [v8 code];
        if ((code2 - 1001) > 8)
        {
          goto LABEL_144;
        }

        v9 = off_1E75473A8[code2 - 1001];
        goto LABEL_145;
    }
  }

LABEL_151:
  v24 = objc_alloc(MEMORY[0x1E696ABC0]);
  domain = [v4 domain];
  v10 = [v24 initWithDomain:domain code:objc_msgSend(v4 userInfo:{"code"), userInfo}];

LABEL_152:

  return v10;
}

- (HMDelegateCaller)initWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    if (queueCopy)
    {
      v6 = [[__HMQueueDelegateCaller alloc] initWithQueue:queueCopy];
    }

    else
    {
      v6 = objc_alloc_init(__HMMainThreadDelegateCaller);
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HMDelegateCaller;
    v6 = [(HMDelegateCaller *)&v9 init];
    self = &v6->super;
  }

  p_super = &v6->super;

  return p_super;
}

+ (id)delegateCallerWithOperationQueue:(id)queue
{
  queueCopy = queue;
  v4 = [[__HMOperationQueueDelegateCaller alloc] initWithOperationQueue:queueCopy];

  return v4;
}

@end