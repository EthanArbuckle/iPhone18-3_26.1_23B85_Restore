@interface EKCalendarEventInvitationNotificationAttendee
- (EKCalendarEventInvitationNotificationAttendee)initWithParticipant:(id)a3 forEvent:(id)a4;
@end

@implementation EKCalendarEventInvitationNotificationAttendee

- (EKCalendarEventInvitationNotificationAttendee)initWithParticipant:(id)a3 forEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EKCalendarEventInvitationNotificationAttendee *)self init];
  if (v8)
  {
    v9 = [v6 name];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v6 firstName];
    firstName = v8->_firstName;
    v8->_firstName = v11;

    v13 = [v6 lastName];
    lastName = v8->_lastName;
    v8->_lastName = v13;

    v15 = [v6 emailAddress];
    emailAddress = v8->_emailAddress;
    v8->_emailAddress = v15;

    v17 = [v6 phoneNumber];
    phoneNumber = v8->_phoneNumber;
    v8->_phoneNumber = v17;

    v19 = [v6 URL];
    URL = v8->_URL;
    v8->_URL = v19;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v6;
    }

    else
    {
      v21 = 0;
    }

    if (CalAlertInviteeDeclines())
    {
      v8->_statusChanged = [v21 statusChanged];
    }

    v8->_participantType = [v6 participantType];
    v8->_participantStatus = [v6 participantStatus];
    v8->_commentChanged = [v21 commentChanged];
    v22 = [v6 comment];
    comment = v8->_comment;
    v8->_comment = v22;

    v8->_proposedStartDateChanged = [v21 proposedStartDateChanged];
    v24 = [v21 proposedStartDateForEvent:v7];
    proposedStartDate = v8->_proposedStartDate;
    v8->_proposedStartDate = v24;

    v8->_proposedStartDateDeclined = [v21 proposedStartDateStatus] == 3;
    v8->_isCurrentUser = [v6 isCurrentUser];
  }

  return v8;
}

@end