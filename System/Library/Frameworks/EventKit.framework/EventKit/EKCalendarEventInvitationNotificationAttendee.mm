@interface EKCalendarEventInvitationNotificationAttendee
- (EKCalendarEventInvitationNotificationAttendee)initWithParticipant:(id)participant forEvent:(id)event;
@end

@implementation EKCalendarEventInvitationNotificationAttendee

- (EKCalendarEventInvitationNotificationAttendee)initWithParticipant:(id)participant forEvent:(id)event
{
  participantCopy = participant;
  eventCopy = event;
  v8 = [(EKCalendarEventInvitationNotificationAttendee *)self init];
  if (v8)
  {
    name = [participantCopy name];
    name = v8->_name;
    v8->_name = name;

    firstName = [participantCopy firstName];
    firstName = v8->_firstName;
    v8->_firstName = firstName;

    lastName = [participantCopy lastName];
    lastName = v8->_lastName;
    v8->_lastName = lastName;

    emailAddress = [participantCopy emailAddress];
    emailAddress = v8->_emailAddress;
    v8->_emailAddress = emailAddress;

    phoneNumber = [participantCopy phoneNumber];
    phoneNumber = v8->_phoneNumber;
    v8->_phoneNumber = phoneNumber;

    v19 = [participantCopy URL];
    URL = v8->_URL;
    v8->_URL = v19;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = participantCopy;
    }

    else
    {
      v21 = 0;
    }

    if (CalAlertInviteeDeclines())
    {
      v8->_statusChanged = [v21 statusChanged];
    }

    v8->_participantType = [participantCopy participantType];
    v8->_participantStatus = [participantCopy participantStatus];
    v8->_commentChanged = [v21 commentChanged];
    comment = [participantCopy comment];
    comment = v8->_comment;
    v8->_comment = comment;

    v8->_proposedStartDateChanged = [v21 proposedStartDateChanged];
    v24 = [v21 proposedStartDateForEvent:eventCopy];
    proposedStartDate = v8->_proposedStartDate;
    v8->_proposedStartDate = v24;

    v8->_proposedStartDateDeclined = [v21 proposedStartDateStatus] == 3;
    v8->_isCurrentUser = [participantCopy isCurrentUser];
  }

  return v8;
}

@end