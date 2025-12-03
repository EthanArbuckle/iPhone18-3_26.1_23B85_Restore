@interface EKUICommunicationUtilities
+ (id)attendeesIgnoringMe:(id)me;
@end

@implementation EKUICommunicationUtilities

+ (id)attendeesIgnoringMe:(id)me
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  meCopy = me;
  v5 = objc_alloc_init(v3);
  v6 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_DEBUG, "Extracting all attendees except 'me.'", buf, 2u);
  }

  organizer = [meCopy organizer];
  attendees = [meCopy attendees];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__EKUICommunicationUtilities_attendeesIgnoringMe___block_invoke;
  v15[3] = &unk_1E843FA88;
  v9 = organizer;
  v16 = v9;
  v10 = [attendees indexesOfObjectsPassingTest:v15];
  v11 = [attendees objectsAtIndexes:v10];
  [v5 addObjectsFromArray:v11];
  isSelfOrganized = [meCopy isSelfOrganized];

  if ((isSelfOrganized & 1) == 0)
  {
    v13 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_DEBUG, "Adding the 'organizer': [%@]", buf, 0xCu);
    }

    [v5 addObject:v9];
  }

  return v5;
}

uint64_t __50__EKUICommunicationUtilities_attendeesIgnoringMe___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_DEBUG, "Inspecting attendee: [%@]", &v11, 0xCu);
  }

  if ([v3 isCurrentUser])
  {
    v5 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412290;
      v12 = v3;
      v6 = "This attendee is 'me' so it will not be extracted: [%@]";
LABEL_9:
      _os_log_impl(&dword_1D3400000, v5, OS_LOG_TYPE_DEBUG, v6, &v11, 0xCu);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v7 = [v3 isEqualToParticipant:*(a1 + 32)];
  v5 = kEKUILogHandle;
  v8 = os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v8)
    {
      v11 = 138412290;
      v12 = v3;
      v6 = "This attendee is the 'organizer' so it will be skipped for now: [%@]";
      goto LABEL_9;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_14;
  }

  if (v8)
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1D3400000, v5, OS_LOG_TYPE_DEBUG, "Extracting attendee: [%@]", &v11, 0xCu);
  }

  v9 = 1;
LABEL_14:

  return v9;
}

@end