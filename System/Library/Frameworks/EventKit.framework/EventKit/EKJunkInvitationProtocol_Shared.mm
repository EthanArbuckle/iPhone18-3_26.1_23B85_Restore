@interface EKJunkInvitationProtocol_Shared
+ (unint64_t)junkStatusForInvitation:(id)invitation;
+ (unint64_t)junkStatusForInvitation:(id)invitation withReputationStore:(id)store;
@end

@implementation EKJunkInvitationProtocol_Shared

+ (unint64_t)junkStatusForInvitation:(id)invitation
{
  v3 = MEMORY[0x1E6992F50];
  invitationCopy = invitation;
  defaultProvider = [v3 defaultProvider];
  reputationStore = [defaultProvider reputationStore];

  v7 = [objc_opt_class() junkStatusForInvitation:invitationCopy withReputationStore:reputationStore];
  return v7;
}

+ (unint64_t)junkStatusForInvitation:(id)invitation withReputationStore:(id)store
{
  invitationCopy = invitation;
  storeCopy = store;
  supportsJunkReporting = [invitationCopy supportsJunkReporting];
  v8 = +[EKLogSubsystem junk];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if ((supportsJunkReporting & 1) == 0)
  {
    if (v9)
    {
      +[EKJunkInvitationProtocol_Shared junkStatusForInvitation:withReputationStore:];
    }

    goto LABEL_15;
  }

  if (v9)
  {
    +[EKJunkInvitationProtocol_Shared junkStatusForInvitation:withReputationStore:];
  }

  sendersEmail = [invitationCopy sendersEmail];

  if (sendersEmail)
  {
    v11 = MEMORY[0x1E6992F50];
    sendersEmail2 = [invitationCopy sendersEmail];
    v13 = [v11 shouldPermitOrganizerEmailFromJunkChecks:sendersEmail2 inReputationStore:storeCopy];
  }

  else
  {
    sendersPhoneNumber = [invitationCopy sendersPhoneNumber];

    if (!sendersPhoneNumber)
    {
      goto LABEL_12;
    }

    v15 = MEMORY[0x1E6992F50];
    sendersEmail2 = [invitationCopy sendersPhoneNumber];
    v13 = [v15 shouldPermitOrganizerPhoneNumberFromJunkChecks:sendersEmail2 inReputationStore:storeCopy];
  }

  LOBYTE(sendersPhoneNumber) = v13;

LABEL_12:
  v16 = +[EKLogSubsystem junk];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    +[EKJunkInvitationProtocol_Shared junkStatusForInvitation:withReputationStore:];
  }

  if (sendersPhoneNumber)
  {
LABEL_15:
    v17 = 2;
    goto LABEL_26;
  }

  sendersEmail3 = [invitationCopy sendersEmail];

  if (sendersEmail3)
  {
    eventStore = [invitationCopy eventStore];
    sendersEmail4 = [invitationCopy sendersEmail];
    v21 = [eventStore shouldPermitOrganizerEmailFromJunkChecks:sendersEmail4];
LABEL_20:
    LODWORD(sendersPhoneNumber2) = v21;

    goto LABEL_21;
  }

  sendersPhoneNumber2 = [invitationCopy sendersPhoneNumber];

  if (sendersPhoneNumber2)
  {
    eventStore = [invitationCopy eventStore];
    sendersEmail4 = [invitationCopy sendersPhoneNumber];
    v21 = [eventStore shouldPermitOrganizerPhoneNumberFromJunkChecks:sendersEmail4];
    goto LABEL_20;
  }

LABEL_21:
  v23 = +[EKLogSubsystem junk];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    +[EKJunkInvitationProtocol_Shared junkStatusForInvitation:withReputationStore:];
  }

  if (sendersPhoneNumber2)
  {
    v17 = 2;
  }

  else
  {
    v17 = 3;
  }

LABEL_26:

  return v17;
}

+ (void)junkStatusForInvitation:withReputationStore:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)junkStatusForInvitation:withReputationStore:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end