@interface ASFriend(SharingStringUtilities)
- (id)_competitionStartMessage:()SharingStringUtilities replacingNameAndDatePlaceholdersForCompetitionStartDate:;
- (id)as_competitionAcceptConfirmationMessageForCompetition:()SharingStringUtilities experienceType:;
- (id)as_competitionAcceptConfirmationTitle;
- (id)as_competitionAcceptErrorMessage;
- (id)as_competitionAcceptedNotificationMessageForCompetition:()SharingStringUtilities experienceType:;
- (id)as_competitionAcceptedNotificationTitle;
- (id)as_competitionLearnMoreDetailActionForExperienceType:()SharingStringUtilities;
- (id)as_competitionLearnMoreDetailMessageForExperienceType:()SharingStringUtilities;
- (id)as_competitionLearnMoreFullDescriptionForExperienceType:()SharingStringUtilities;
- (id)as_competitionLearnMoreIntroductionForExperienceType:()SharingStringUtilities;
- (id)as_competitionLearnMorePopupAction;
- (id)as_competitionLearnMoreTitleForExperienceType:()SharingStringUtilities;
- (id)as_competitionReceivedHidingAcceptAction;
- (id)as_competitionReceivedHidingWarningMessage;
- (id)as_competitionReceivedNotificationAcceptAction;
- (id)as_competitionReceivedNotificationMessageForExperienceType:()SharingStringUtilities;
- (id)as_competitionReceivedNotificationTitle;
- (id)as_competitionRequestDurationRemainingString;
- (id)as_competitionSendConfirmationMessageForExperienceType:()SharingStringUtilities;
- (id)as_competitionSendConfirmationSendAction;
- (id)as_competitionSendConfirmationTitle;
- (id)as_competitionSendErrorMessage;
- (id)as_competitionStageString;
- (id)as_competitionStatusBreadcrumbStringForExperienceType:()SharingStringUtilities;
- (id)as_detailedSharingDurationString;
- (id)as_friendListNameStringWithDotPrefix:()SharingStringUtilities keyColor:showAwaitingCompetitionResponse:;
- (id)as_invitedDurationString;
- (id)as_myCompetitionScoreStringWithContext:()SharingStringUtilities color:;
- (id)as_opponentCompetitionScoreStringWithContext:()SharingStringUtilities color:;
- (id)as_simpleHiddenFromString;
- (id)as_simpleSharingDurationString;
@end

@implementation ASFriend(SharingStringUtilities)

- (id)as_friendListNameStringWithDotPrefix:()SharingStringUtilities keyColor:showAwaitingCompetitionResponse:
{
  v19[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([a1 isMe])
  {
    v10 = [a1 displayName];
    v11 = _AttributedNameStringWithDotPrefix(v10, v8, v9);
LABEL_3:

    goto LABEL_8;
  }

  if (a5 && [a1 isAwaitingCompetitionResponseFromMe])
  {
    v10 = [a1 displayName];
    v12 = [MEMORY[0x277D75348] as_lightCompetitionGold];
    v11 = _AttributedNameStringWithDotPrefix(v10, v8, v12);

    goto LABEL_3;
  }

  v13 = objc_alloc(MEMORY[0x277CCA898]);
  v14 = [a1 displayName];
  v18[0] = *MEMORY[0x277D740C0];
  v15 = [MEMORY[0x277D75348] whiteColor];
  v18[1] = *MEMORY[0x277D740A8];
  v19[0] = v15;
  v19[1] = v8;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v11 = [v13 initWithString:v14 attributes:v16];

LABEL_8:

  return v11;
}

- (id)as_detailedSharingDurationString
{
  if ([a1 isMe])
  {
    v2 = 0;
    goto LABEL_23;
  }

  v3 = [a1 dateForLatestRelationshipStart];
  if (v3)
  {
    v4 = [a1 displayName];
    v5 = ASDurationInDaysSinceDate(v3);
    v6 = ASSharingStartTimeStringFromDate(v3);
    if (v5)
    {
      v7 = ActivitySharingBundle();
      v8 = [v7 localizedStringForKey:@"DAYS_OTHER" value:&stru_2850F6650 table:@"Localizable"];

      if (v5 == 1)
      {
        v9 = ActivitySharingBundle();
        v10 = [v9 localizedStringForKey:@"DAYS_ONE" value:&stru_2850F6650 table:@"Localizable"];

        v8 = v10;
      }

      v11 = MEMORY[0x277CCACA8];
      v12 = ActivitySharingBundle();
      v13 = [v12 localizedStringForKey:@"DETAILED_SHARING_DURATION_INFO" value:&stru_2850F6650 table:@"Localizable"];
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
      v2 = [v11 localizedStringWithFormat:v13, v4, v14, v8, v6];
    }

    else
    {
      v15 = MEMORY[0x277CCACA8];
      v8 = ActivitySharingBundle();
      v12 = [v8 localizedStringForKey:@"DETAILED_SHARING_DURATION_INFO_ZERO_DAYS" value:&stru_2850F6650 table:@"Localizable"];
      v2 = [v15 stringWithFormat:v12, v4, v6];
    }

    v16 = [a1 dateForLatestDataHidden];
    if (([a1 canSeeMyActivityData] & 1) == 0 && v16)
    {
      v17 = ASDurationInDaysSinceDate(v16);
      v18 = ASSharingStartTimeStringFromDate(v16);
      v19 = ActivitySharingBundle();
      v20 = v19;
      if (v17)
      {
        v21 = @"SHARING_HIDDEN_SINCE_INFO";
      }

      else
      {
        v21 = @"SHARING_HIDDEN_SINCE_INFO_ZERO_DAYS";
      }

      v22 = [v19 localizedStringForKey:v21 value:&stru_2850F6650 table:@"Localizable"];

      v23 = [MEMORY[0x277CCACA8] stringWithFormat:v22, v4, v18];
      v24 = [v2 stringByAppendingString:v23];

      v2 = v24;
    }

    v25 = [MEMORY[0x277CCDD30] sharedBehavior];
    if ([v25 isStandalonePhoneFitnessMode])
    {
      v26 = [a1 mostRecentSnapshot];
      if (v26)
      {
        v27 = v26;
        v28 = [a1 mostRecentSnapshot];
        v29 = [v28 activitySummary];
        v30 = [v29 _isStandalonePhoneSummary];

        if (v30)
        {
LABEL_21:

          goto LABEL_22;
        }

        v31 = ActivitySharingBundle();
        v25 = [v31 localizedStringForKey:@"SHARING_STANDALONE_EXPLANATION_%@" value:&stru_2850F6650 table:@"Localizable"];

        v32 = [MEMORY[0x277CCACA8] stringWithFormat:v25, v4];
        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", v32];
        v34 = [v2 stringByAppendingString:v33];

        v2 = v34;
      }
    }

    goto LABEL_21;
  }

  v2 = 0;
LABEL_22:

LABEL_23:

  return v2;
}

- (id)as_simpleSharingDurationString
{
  if ([a1 isMe])
  {
    v2 = 0;
  }

  else
  {
    v3 = [a1 dateForLatestRelationshipStart];
    if (v3)
    {
      v4 = [a1 displayName];
      v5 = ASDurationInDaysSinceDate(v3);
      v6 = ASSharingStartTimeStringFromDate(v3);
      v7 = MEMORY[0x277CCACA8];
      v8 = ActivitySharingBundle();
      v9 = v8;
      if (v5)
      {
        v10 = [v8 localizedStringForKey:@"SIMPLE_SHARING_DURATION_INFO" value:&stru_2850F6650 table:@"Localizable"];
        [v7 stringWithFormat:v10, v4, v6];
      }

      else
      {
        v10 = [v8 localizedStringForKey:@"SIMPLE_SHARING_DURATION_INFO_ZERO_DAYS" value:&stru_2850F6650 table:@"Localizable"];
        [v7 stringWithFormat:v10, v4, v12];
      }
      v2 = ;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (id)as_simpleHiddenFromString
{
  if ([a1 isMe])
  {
    v2 = 0;
  }

  else
  {
    v3 = [a1 dateForLatestDataHiddenFromMe];
    v4 = v3;
    if (v3)
    {
      v5 = ASSharingStartTimeStringFromDate(v3);
      v6 = ASDurationInDaysSinceDate(v4);
      v7 = ActivitySharingBundle();
      v8 = v7;
      if (v6)
      {
        v9 = @"SHARING_HIDDEN_FROM_SINCE_INFO";
      }

      else
      {
        v9 = @"SHARING_HIDDEN_FROM_SINCE_INFO_ZERO_DAYS";
      }

      v10 = [v7 localizedStringForKey:v9 value:&stru_2850F6650 table:@"Localizable"];

      v11 = MEMORY[0x277CCACA8];
      v12 = [a1 displayName];
      v2 = [v11 stringWithFormat:v10, v12, v5];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (id)as_invitedDurationString
{
  v1 = [a1 dateForLatestOutgoingInviteRequest];
  v2 = v1;
  if (!v1)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v3 = ASDurationInDaysSinceDate(v1);
  v4 = ActivitySharingBundle();
  v5 = v4;
  if (v3 == 1)
  {
    v7 = @"DAYS_ONE";
LABEL_8:
    v8 = [v4 localizedStringForKey:v7 value:&stru_2850F6650 table:@"Localizable"];

    v9 = MEMORY[0x277CCACA8];
    v10 = ActivitySharingBundle();
    v11 = [v10 localizedStringForKey:@"SHARING_INBOX_WAITING_INFO" value:&stru_2850F6650 table:@"Localizable"];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
    v6 = [v9 stringWithFormat:v11, v12, v8];

    v5 = v8;
    goto LABEL_9;
  }

  if (v3)
  {
    v7 = @"DAYS_OTHER";
    goto LABEL_8;
  }

  v6 = [v4 localizedStringForKey:@"TODAY" value:&stru_2850F6650 table:@"Localizable"];
LABEL_9:

LABEL_10:

  return v6;
}

- (id)as_competitionStatusBreadcrumbStringForExperienceType:()SharingStringUtilities
{
  v1 = a1;
  if ([a1 hasPendingCompetitionRequestFromMe])
  {
    v2 = [v1 dateForLatestOutgoingCompetitionRequest];
    v3 = ASCompetitionRequestHoursUntilExpiration();

    if (v3 <= 0)
    {
      v22 = [v1 dateForLatestOutgoingCompetitionRequest];
      v3 = ASCompetitionRequestMinutesUntilExpiration();

      v4 = @"MINUTES";
    }

    else
    {
      v4 = @"HOURS";
    }

    v23 = MEMORY[0x277CCACA8];
    v24 = ActivitySharingBundle();
    v25 = [v24 localizedStringForKey:v4 value:&stru_2850F6650 table:@"Localizable"];
    v7 = [v23 localizedStringWithFormat:v25, v3];

    v26 = MEMORY[0x277CCACA8];
    v10 = ActivitySharingBundle();
    v15 = [v10 localizedStringForKey:@"COMPETITION_INVITE_SENT_BREADCRUMB" value:&stru_2850F6650 table:@"Localizable"];
    v20 = [v1 displayName];
    v35 = v20;
    v36 = v7;
    v21 = v26;
    v27 = v15;
  }

  else
  {
    if (![v1 isCompetitionActive])
    {
      v1 = 0;
      goto LABEL_15;
    }

    v5 = [v1 currentCompetition];
    v6 = [v5 startDate];
    v7 = FILocalizedDayName();

    v8 = [v1 currentCompetition];
    v9 = [v8 lastDayOfCompetition];
    v10 = FILocalizedDayName();

    v11 = MEMORY[0x277CCACA8];
    v12 = ActivitySharingBundle();
    v13 = [v12 localizedStringForKey:@"POINTS" value:&stru_2850F6650 table:@"Localizable"];
    v14 = [v1 currentCompetition];
    v15 = [v11 localizedStringWithFormat:v13, objc_msgSend(v14, "maximumNumberOfPointsPerDay")];

    v16 = [v1 currentCompetition];
    v17 = [v16 stage];

    if (v17 == 2)
    {
      v31 = ActivitySharingBundle();
      v32 = FILocalizationTableForExperienceType();
      v20 = FIRandomStringForPrefixWithTableName();

      v33 = MEMORY[0x277CCACA8];
      v34 = [v1 displayName];
      v1 = [v33 stringWithFormat:v20, v10, v34];

      goto LABEL_13;
    }

    if (v17 == 1)
    {
      v29 = ActivitySharingBundle();
      v30 = FILocalizationTableForExperienceType();
      v20 = FIRandomStringForPrefixWithTableName();

      v21 = MEMORY[0x277CCACA8];
      v35 = v10;
      v36 = v15;
    }

    else
    {
      if (v17)
      {
        goto LABEL_14;
      }

      v18 = ActivitySharingBundle();
      v19 = FILocalizationTableForExperienceType();
      v20 = FIRandomStringForPrefixWithTableName();

      v21 = MEMORY[0x277CCACA8];
      v35 = v7;
      v36 = v15;
    }

    v27 = v20;
  }

  v1 = [v21 stringWithFormat:v27, v35, v36];
LABEL_13:

LABEL_14:
LABEL_15:

  return v1;
}

- (id)as_competitionRequestDurationRemainingString
{
  v2 = [a1 dateForLatestOutgoingCompetitionRequest];
  if (!v2)
  {
    v6 = 0;
    goto LABEL_13;
  }

  if ([a1 ignoredCompetitionRequestFromMe])
  {
    v3 = ActivitySharingBundle();
    v4 = v3;
    v5 = @"DECLINED_COMPETITION_REQUEST";
  }

  else
  {
    if (!ASCompetitionRequestHasExpired())
    {
      v7 = ASCompetitionRequestHoursUntilExpiration();
      if (v7 < 1)
      {
        v8 = ASCompetitionRequestMinutesUntilExpiration();
        v9 = MEMORY[0x277CCACA8];
        v10 = ActivitySharingBundle();
        v4 = v10;
        v11 = @"MINUTES_REMAINING";
      }

      else
      {
        v8 = v7;
        v9 = MEMORY[0x277CCACA8];
        v10 = ActivitySharingBundle();
        v4 = v10;
        v11 = @"HOURS_REMAINING";
      }

      v12 = [v10 localizedStringForKey:v11 value:&stru_2850F6650 table:@"Localizable"];
      v6 = [v9 localizedStringWithFormat:v12, v8];

      goto LABEL_12;
    }

    v3 = ActivitySharingBundle();
    v4 = v3;
    v5 = @"EXPIRED_COMPETITION_REQUEST";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2850F6650 table:@"Localizable"];
LABEL_12:

LABEL_13:

  return v6;
}

- (id)as_competitionStageString
{
  v1 = [a1 currentCompetition];
  v2 = ASCompetitionStageStringWithCompetition(v1);

  return v2;
}

- (id)as_myCompetitionScoreStringWithContext:()SharingStringUtilities color:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 currentCompetition];
  v9 = [v8 myTotalScore];
  v10 = [v7 multilineDataFont];
  v11 = [v7 multilineUnitFont];

  v12 = ASAttributedNumberStringWithKey(v9, @"ABBREVIATED_POINTS", v10, v11, v6);

  return v12;
}

- (id)as_opponentCompetitionScoreStringWithContext:()SharingStringUtilities color:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 currentCompetition];
  v9 = [v8 opponentTotalScore];
  v10 = [v7 multilineDataFont];
  v11 = [v7 multilineUnitFont];

  v12 = ASAttributedNumberStringWithKey(v9, @"ABBREVIATED_POINTS", v10, v11, v6);

  return v12;
}

- (id)as_competitionSendConfirmationTitle
{
  v0 = ActivitySharingBundle();
  v1 = [v0 localizedStringForKey:@"COMPETITION_SEND_CONFIRMATION_TITLE" value:&stru_2850F6650 table:@"Localizable"];

  return v1;
}

- (id)as_competitionSendConfirmationMessageForExperienceType:()SharingStringUtilities
{
  if ([a1 isMyActivityDataCurrentlyHidden])
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = ActivitySharingBundle();
    v4 = [v3 localizedStringForKey:@"COMPETITION_SEND_CONFIRMATION_MESSAGE_HIDING" value:&stru_2850F6650 table:@"Localizable"];
    v5 = [a1 displayName];
    v6 = [a1 displayName];
    v7 = [v2 stringWithFormat:v4, v5, v6];
  }

  else
  {
    v8 = ActivitySharingBundle();
    v9 = FILocalizationTableForExperienceType();
    v3 = FIRandomStringForPrefixWithTableName();

    v10 = MEMORY[0x277CCACA8];
    v4 = [a1 displayName];
    v7 = [v10 stringWithFormat:v3, v4];
  }

  return v7;
}

- (id)as_competitionSendConfirmationSendAction
{
  if ([a1 isMyActivityDataCurrentlyHidden])
  {
    v2 = ActivitySharingBundle();
    v3 = [v2 localizedStringForKey:@"COMPETITION_SEND_CONFIRMATION_SEND_ACTION_HIDING" value:&stru_2850F6650 table:@"Localizable"];
  }

  else
  {
    v4 = MEMORY[0x277CCACA8];
    v2 = ActivitySharingBundle();
    v5 = [v2 localizedStringForKey:@"COMPETITION_SEND_CONFIRMATION_SEND_ACTION" value:&stru_2850F6650 table:@"Localizable"];
    v6 = [a1 displayName];
    v3 = [v4 stringWithFormat:v5, v6];
  }

  return v3;
}

- (id)as_competitionSendErrorMessage
{
  v2 = MEMORY[0x277CCACA8];
  v3 = ActivitySharingBundle();
  v4 = [v3 localizedStringForKey:@"COMPETITION_SEND_ERROR_MESSAGE" value:&stru_2850F6650 table:@"Localizable"];
  v5 = [a1 displayName];
  v6 = [v2 stringWithFormat:v4, v5];

  return v6;
}

- (id)as_competitionReceivedNotificationTitle
{
  v0 = ActivitySharingBundle();
  v1 = [v0 localizedStringForKey:@"COMPETITION_RECEIVED_NOTIFICATION_TITLE" value:&stru_2850F6650 table:@"Localizable"];

  return v1;
}

- (id)as_competitionReceivedNotificationMessageForExperienceType:()SharingStringUtilities
{
  v2 = ActivitySharingBundle();
  v3 = FILocalizationTableForExperienceType();
  v4 = FIRandomStringForPrefixWithTableName();

  v5 = MEMORY[0x277CCACA8];
  v6 = [a1 displayName];
  v7 = [v5 stringWithFormat:v4, v6];

  return v7;
}

- (id)as_competitionReceivedHidingWarningMessage
{
  v2 = MEMORY[0x277CCACA8];
  v3 = ActivitySharingBundle();
  v4 = [v3 localizedStringForKey:@"COMPETITION_RECEIVED_NOTIFICATION_MESSAGE_HIDING" value:&stru_2850F6650 table:@"Localizable"];
  v5 = [a1 displayName];
  v6 = [a1 displayName];
  v7 = [v2 stringWithFormat:v4, v5, v6];

  return v7;
}

- (id)as_competitionReceivedNotificationAcceptAction
{
  v0 = ActivitySharingBundle();
  v1 = FIRandomStringForPrefixWithTableName();

  return v1;
}

- (id)as_competitionReceivedHidingAcceptAction
{
  v0 = ActivitySharingBundle();
  v1 = [v0 localizedStringForKey:@"COMPETITION_RECEIVED_NOTIFICATION_ACCEPT_ACTION_HIDING" value:&stru_2850F6650 table:@"Localizable"];

  return v1;
}

- (id)as_competitionAcceptErrorMessage
{
  v2 = MEMORY[0x277CCACA8];
  v3 = ActivitySharingBundle();
  v4 = [v3 localizedStringForKey:@"COMPETITION_ACCEPT_ERROR_MESSAGE" value:&stru_2850F6650 table:@"Localizable"];
  v5 = [a1 displayName];
  v6 = [v2 stringWithFormat:v4, v5];

  return v6;
}

- (id)as_competitionAcceptedNotificationTitle
{
  v0 = ActivitySharingBundle();
  v1 = [v0 localizedStringForKey:@"COMPETITION_ACCEPTED_NOTIFICATION_TITLE" value:&stru_2850F6650 table:@"Localizable"];

  return v1;
}

- (id)as_competitionAcceptedNotificationMessageForCompetition:()SharingStringUtilities experienceType:
{
  v4 = a3;
  v5 = ActivitySharingBundle();
  v6 = FILocalizationTableForExperienceType();
  v7 = FIRandomStringForPrefixWithTableName();

  v8 = [v4 startDate];

  v9 = [a1 _competitionStartMessage:v7 replacingNameAndDatePlaceholdersForCompetitionStartDate:v8];

  return v9;
}

- (id)as_competitionAcceptConfirmationTitle
{
  v0 = ActivitySharingBundle();
  v1 = [v0 localizedStringForKey:@"COMPETITION_ACCEPT_CONFIRMATION_TITLE" value:&stru_2850F6650 table:@"Localizable"];

  return v1;
}

- (id)_competitionStartMessage:()SharingStringUtilities replacingNameAndDatePlaceholdersForCompetitionStartDate:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 displayName];
  v9 = [v7 stringByReplacingOccurrencesOfString:@"<friend-name>" withString:v8];

  v10 = FILocalizedDayName();

  v11 = FIStringByReplacingDynamicPlaceholder();

  return v11;
}

- (id)as_competitionLearnMoreTitleForExperienceType:()SharingStringUtilities
{
  v0 = ActivitySharingBundle();
  v1 = FILocalizationTableForExperienceType();
  v2 = FIRandomStringForPrefixWithTableName();

  return v2;
}

- (id)as_competitionLearnMoreDetailActionForExperienceType:()SharingStringUtilities
{
  v0 = ActivitySharingBundle();
  v1 = FILocalizationTableForExperienceType();
  v2 = FIRandomStringForPrefixWithTableName();

  return v2;
}

- (id)as_competitionLearnMoreIntroductionForExperienceType:()SharingStringUtilities
{
  v0 = ActivitySharingBundle();
  v1 = FILocalizationTableForExperienceType();
  v2 = FIRandomStringForPrefixWithTableName();

  return v2;
}

- (id)as_competitionLearnMoreDetailMessageForExperienceType:()SharingStringUtilities
{
  v0 = ASCompetitionDurationDateComponentsForNewCompetitions();
  v1 = [v0 day];

  v2 = ASCompetitionMaximumPointsPerDayForNewCompetitions();
  v3 = MEMORY[0x277CCACA8];
  v4 = ActivitySharingBundle();
  v5 = [v4 localizedStringForKey:@"POINTS" value:&stru_2850F6650 table:@"Localizable"];
  v6 = [v3 localizedStringWithFormat:v5, v2];

  v7 = v2 * v1;
  v8 = MEMORY[0x277CCACA8];
  v9 = ActivitySharingBundle();
  v10 = [v9 localizedStringForKey:@"POINTS" value:&stru_2850F6650 table:@"Localizable"];
  v11 = [v8 localizedStringWithFormat:v10, v7];

  v12 = ActivitySharingBundle();
  v13 = FILocalizationTableForExperienceType();
  v14 = FIRandomStringForPrefixWithTableName();

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:v14, v6, v11];

  return v15;
}

- (id)as_competitionLearnMoreFullDescriptionForExperienceType:()SharingStringUtilities
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [a1 as_competitionLearnMoreIntroductionForExperienceType:?];
  v7 = [a1 as_competitionLearnMoreDetailMessageForExperienceType:a3];
  v8 = [v5 stringWithFormat:@"%@ %@", v6, v7];

  return v8;
}

- (id)as_competitionAcceptConfirmationMessageForCompetition:()SharingStringUtilities experienceType:
{
  v4 = [a3 startDateComponents];
  v5 = ASCompetitionCalculateStartDateComponentsForFriendWithProposedStartDate();

  v6 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v7 = [v6 dateFromComponents:v5];

  v8 = ActivitySharingBundle();
  v9 = FILocalizationTableForExperienceType();
  v10 = FIRandomStringForPrefixWithTableName();

  v11 = [a1 _competitionStartMessage:v10 replacingNameAndDatePlaceholdersForCompetitionStartDate:v7];

  return v11;
}

- (id)as_competitionLearnMorePopupAction
{
  v0 = ActivitySharingBundle();
  v1 = [v0 localizedStringForKey:@"COMPETITION_LEARN_MORE_POPUP_ACTION" value:&stru_2850F6650 table:@"Localizable"];

  return v1;
}

@end