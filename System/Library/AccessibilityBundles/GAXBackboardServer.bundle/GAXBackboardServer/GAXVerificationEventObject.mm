@interface GAXVerificationEventObject
- (NSString)eventName;
@end

@implementation GAXVerificationEventObject

- (NSString)eventName
{
  event = [(GAXVerificationEventObject *)self event];
  switch(event)
  {
    case 0uLL:
      [(GAXVerificationEventObject *)self event];
      _AXAssert();
      event = 0;
      break;
    case 1uLL:
      v4 = GAXVerificationEventRelaunchAppForGuidedAccessInitObject;
      goto LABEL_22;
    case 2uLL:
      v4 = GAXVerificationEventRelaunchAppForSingleAppModeInitObject;
      goto LABEL_22;
    case 3uLL:
      v4 = GAXVerificationEventWaitForSpringboardToRelaunchObject;
      goto LABEL_22;
    case 4uLL:
      v4 = GAXVerificationEventSpringboardDiedForGuidedAccessObject;
      goto LABEL_22;
    case 5uLL:
      v4 = GAXVerificationEventSpringboardDiedForSingleAppModeObject;
      goto LABEL_22;
    case 6uLL:
      v4 = GAXVerificationEventScreenWasUnlockedObject;
      goto LABEL_22;
    case 7uLL:
      v4 = GAXVerificationEventAppWentInvalidObject;
      goto LABEL_22;
    case 8uLL:
      v4 = GAXVerificationEventNonRelaunchingAppWentInvalidObject;
      goto LABEL_22;
    case 9uLL:
      v4 = GAXVerificationEventPurpleBuddyDidFinishObject;
      goto LABEL_22;
    case 0xAuLL:
      v4 = GAXVerificationEventDidEnableSystemAppAccessObject;
      goto LABEL_22;
    case 0xBuLL:
      v4 = GAXVerificationEventPreBoardDidFinishObject;
      goto LABEL_22;
    case 0xCuLL:
      v4 = GAXVerificationEventCheckerBoardDidFinishObject;
      goto LABEL_22;
    case 0xDuLL:
      v4 = GAXVerificationEventDidEnterSingleAppModeObject;
      goto LABEL_22;
    case 0xEuLL:
      v4 = GAXVerificationEventSingleAppModeAppDidChangeObject;
      goto LABEL_22;
    case 0xFuLL:
      v4 = GAXVerificationEventSubstantialTransitionDidOccurObject;
      goto LABEL_22;
    case 0x10uLL:
      v4 = GAXVerificationEventDidKillNonSingleAppModeAppObject;
      goto LABEL_22;
    case 0x11uLL:
      v4 = GAXVerificationEventLostModeDidChangeObject;
      goto LABEL_22;
    case 0x12uLL:
      v4 = GAXVerificationEventApplicationWasInstalledObject;
      goto LABEL_22;
    case 0x13uLL:
      v4 = GAXVerificationEventDidStartAutonomousSingleAppModeObject;
LABEL_22:
      event = v4;
      break;
    default:
      break;
  }

  return event;
}

@end