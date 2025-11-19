@interface NSError(EventKit)
+ (__CFString)_defaultDescriptionForEKErrorCode:()EventKit;
+ (id)_defaultDescriptionForCADErrorCode:()EventKit;
+ (id)errorWithCADErrorCode:()EventKit;
+ (id)errorWithCADResult:()EventKit;
+ (id)errorWithDomain:()EventKit code:description:underlyingError:reason:;
+ (id)errorWithEKErrorCode:()EventKit;
+ (id)errorWithEKErrorCode:()EventKit underlyingError:;
@end

@implementation NSError(EventKit)

+ (id)_defaultDescriptionForCADErrorCode:()EventKit
{
  v4 = EKBundle();
  v5 = v4;
  if ((a3 - 1001) > 0x15 || ((0x3FFEC1u >> (a3 + 23)) & 1) == 0 || ([v4 localizedStringForKey:off_1E77FE9D8[a3 - 1001] value:&stru_1F1B49D68 table:0], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_FAULT))
    {
      [(NSError(EventKit) *)a3 _defaultDescriptionForCADErrorCode:v7];
    }

    v6 = 0;
  }

  return v6;
}

+ (__CFString)_defaultDescriptionForEKErrorCode:()EventKit
{
  v4 = EKBundle();
  v5 = v4;
  v6 = 0;
  switch(a3)
  {
    case 0:
      v7 = @"The event cannot be edited.";
      goto LABEL_53;
    case 1:
      v7 = @"No calendar has been set.";
      goto LABEL_53;
    case 2:
      v7 = @"No start date has been set.";
      goto LABEL_53;
    case 3:
      v7 = @"No end date has been set.";
      goto LABEL_53;
    case 4:
      v7 = @"The start date must be before the end date.";
      goto LABEL_53;
    case 5:
      v7 = @"An unexpected error occurred.";
      goto LABEL_53;
    case 6:
      v7 = @"The calendar is read only.";
      goto LABEL_53;
    case 7:
      v7 = @"The event is too long to repeat this often.";
      goto LABEL_53;
    case 8:
      v7 = @"The event repeats before the alert occurs.";
      goto LABEL_53;
    case 9:
      v7 = @"The event is too far in the future.";
      goto LABEL_53;
    case 10:
      v7 = @"Another instance of this event occurs on this date.";
      goto LABEL_53;
    case 11:
      v7 = @"That event does not belong to that event store.";
      goto LABEL_53;
    case 12:
      v7 = @"Invites cannot be moved to another calendar.";
      goto LABEL_53;
    case 13:
      v7 = @"An invalid span was specified.";
      goto LABEL_53;
    case 14:
      v7 = @"Calendar has no source";
      goto LABEL_53;
    case 15:
      v7 = @"That calendar may not be moved to another account.";
      goto LABEL_53;
    case 16:
      v7 = @"That calendar can not be changed or deleted.";
      goto LABEL_53;
    case 17:
      v7 = @"That account does not allow calendars to be added or removed.";
      goto LABEL_53;
    case 18:
      v7 = @"A repeating reminder must have a due date.";
      goto LABEL_53;
    case 19:
      v7 = @"Locations with geo information are not supported by this account.";
      goto LABEL_53;
    case 20:
      v7 = @"Locations for reminders are not supported by this account.";
      goto LABEL_53;
    case 21:
      v7 = @"Proximity-based alarms are not supported by this account.";
      goto LABEL_53;
    case 22:
      v7 = @"That calendar does not allow events to be added.";
      goto LABEL_53;
    case 23:
      v7 = @"That calendar does not allow reminders to be added.";
      goto LABEL_53;
    case 24:
      v7 = @"That account does not support reminders.";
      goto LABEL_53;
    case 25:
      v7 = @"That account does not support events.";
      goto LABEL_53;
    case 26:
      v9 = MEMORY[0x1E696AEC0];
      v10 = [v4 localizedStringForKey:@"Priorities must be between %d and %d." value:&stru_1F1B49D68 table:0];
      v6 = [v9 localizedStringWithFormat:v10, 0, 9];

      break;
    case 27:
      v7 = @"This is not a valid EKEntityType.";
      goto LABEL_53;
    case 36:
      v7 = @"A reminder alarm should not contain emailAddress or urlString because these properties are unsupported";
      goto LABEL_53;
    case 37:
      v6 = @"Calendar does not match parent event";
      break;
    case 38:
      v7 = @"The privacy level field cannot be changed.";
      goto LABEL_53;
    case 39:
      v7 = @"The repeat field cannot be changed.";
      goto LABEL_53;
    case 40:
      v7 = @"Alarms cannot be changed.";
      goto LABEL_53;
    case 41:
      v7 = @"Attendees cannot be changed.";
      goto LABEL_53;
    case 42:
      v7 = @"Actions are not supported by this account.";
      goto LABEL_53;
    case 43:
      v7 = @"You can’t move events with attendees between accounts.";
      goto LABEL_53;
    case 44:
      v7 = @"The Suggested Event Calendar cannot be modified.";
      v8 = @"The Suggested Event Calendar cannot be modified.";
      goto LABEL_54;
    case 45:
    case 46:
    case 47:
      v7 = @"Choose another way to repeat this event or move it to another calendar.";
      goto LABEL_53;
    case 48:
      v7 = @"That calendar does not allow events to start outside of their recurrence patterns.";
      goto LABEL_53;
    case 60:
      v7 = @"-requestAccessToEntityType:completion: has been deprecated-calling this method is no longer allowed. Instead, use -requestFullAccessToEventsWithCompletion:, -requestWriteOnlyAccessToEventsWithCompletion:, or -requestFullAccessToRemindersWithCompletion:.";
      goto LABEL_53;
    case 61:
      v7 = @"A client with write-only access cannot move event to a new created calendar";
      goto LABEL_53;
    case 62:
      v7 = @"Cannot create calendar with limited access";
      goto LABEL_53;
    case 64:
      v7 = @"You can’t move events with attachments between accounts.";
      goto LABEL_53;
    case 65:
      v7 = @"A source must have a sourceIdentifier";
      goto LABEL_53;
    case 66:
      v7 = @"A new attachment can only be created by adding to an event and saving the event";
      goto LABEL_53;
    case 67:
      v7 = @"Cannot modify detachedItems directly";
      goto LABEL_53;
    case 71:
      v7 = @"Colors cannot be shared between source.";
      goto LABEL_53;
    case 72:
      v7 = @"Colors cannot be moved to another source.";
      goto LABEL_53;
    case 73:
      v7 = @"New colors must be created by assigning them to an event and saving the event.";
      goto LABEL_53;
    case 74:
      v7 = @"Color UUID cannot be changed";
      goto LABEL_53;
    case 75:
      v7 = @"Color identifier missing";
LABEL_53:
      v8 = &stru_1F1B49D68;
LABEL_54:
      v6 = [v4 localizedStringForKey:v7 value:v8 table:0];
      break;
    default:
      break;
  }

  return v6;
}

+ (id)errorWithCADResult:()EventKit
{
  if ((a3 - 1001) > 0x15)
  {
    [a1 errorWithDomain:*MEMORY[0x1E696A5A0] code:a3 userInfo:0];
  }

  else
  {
    [a1 errorWithCADErrorCode:?];
  }
  v3 = ;

  return v3;
}

+ (id)errorWithCADErrorCode:()EventKit
{
  v5 = [a1 _defaultDescriptionForCADErrorCode:?];
  v6 = [a1 errorWithCADErrorCode:a3 description:v5];

  return v6;
}

+ (id)errorWithEKErrorCode:()EventKit
{
  v5 = [a1 _defaultDescriptionForEKErrorCode:?];
  v6 = [a1 errorWithEKErrorCode:a3 description:v5];

  return v6;
}

+ (id)errorWithEKErrorCode:()EventKit underlyingError:
{
  v6 = a4;
  v7 = [a1 _defaultDescriptionForEKErrorCode:a3];
  v8 = [a1 errorWithEKErrorCode:a3 description:v7 underlyingError:v6 reason:0];

  return v8;
}

+ (id)errorWithDomain:()EventKit code:description:underlyingError:reason:
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v13 | v15)
  {
    v16 = objc_opt_new();
    v17 = v16;
    if (v13)
    {
      [v16 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696A578]];
    }

    if (v14)
    {
      [v17 setObject:v14 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }

    if (v15)
    {
      [v17 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696A588]];
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = [[a1 alloc] initWithDomain:v12 code:a4 userInfo:v17];

  return v18;
}

+ (void)_defaultDescriptionForCADErrorCode:()EventKit .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_1A805E000, a2, OS_LOG_TYPE_FAULT, "Unexpected error code given to +_defaultDescriptionForCADErrorCode: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end