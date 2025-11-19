@interface EKJunkInvitationProtocol_Shared
+ (unint64_t)junkStatusForInvitation:(id)a3;
+ (unint64_t)junkStatusForInvitation:(id)a3 withReputationStore:(id)a4;
@end

@implementation EKJunkInvitationProtocol_Shared

+ (unint64_t)junkStatusForInvitation:(id)a3
{
  v3 = MEMORY[0x1E6992F50];
  v4 = a3;
  v5 = [v3 defaultProvider];
  v6 = [v5 reputationStore];

  v7 = [objc_opt_class() junkStatusForInvitation:v4 withReputationStore:v6];
  return v7;
}

+ (unint64_t)junkStatusForInvitation:(id)a3 withReputationStore:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 supportsJunkReporting];
  v8 = +[EKLogSubsystem junk];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if ((v7 & 1) == 0)
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

  v10 = [v5 sendersEmail];

  if (v10)
  {
    v11 = MEMORY[0x1E6992F50];
    v12 = [v5 sendersEmail];
    v13 = [v11 shouldPermitOrganizerEmailFromJunkChecks:v12 inReputationStore:v6];
  }

  else
  {
    v14 = [v5 sendersPhoneNumber];

    if (!v14)
    {
      goto LABEL_12;
    }

    v15 = MEMORY[0x1E6992F50];
    v12 = [v5 sendersPhoneNumber];
    v13 = [v15 shouldPermitOrganizerPhoneNumberFromJunkChecks:v12 inReputationStore:v6];
  }

  LOBYTE(v14) = v13;

LABEL_12:
  v16 = +[EKLogSubsystem junk];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    +[EKJunkInvitationProtocol_Shared junkStatusForInvitation:withReputationStore:];
  }

  if (v14)
  {
LABEL_15:
    v17 = 2;
    goto LABEL_26;
  }

  v18 = [v5 sendersEmail];

  if (v18)
  {
    v19 = [v5 eventStore];
    v20 = [v5 sendersEmail];
    v21 = [v19 shouldPermitOrganizerEmailFromJunkChecks:v20];
LABEL_20:
    LODWORD(v22) = v21;

    goto LABEL_21;
  }

  v22 = [v5 sendersPhoneNumber];

  if (v22)
  {
    v19 = [v5 eventStore];
    v20 = [v5 sendersPhoneNumber];
    v21 = [v19 shouldPermitOrganizerPhoneNumberFromJunkChecks:v20];
    goto LABEL_20;
  }

LABEL_21:
  v23 = +[EKLogSubsystem junk];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    +[EKJunkInvitationProtocol_Shared junkStatusForInvitation:withReputationStore:];
  }

  if (v22)
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