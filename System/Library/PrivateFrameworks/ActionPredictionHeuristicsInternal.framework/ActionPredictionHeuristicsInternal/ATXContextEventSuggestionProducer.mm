@interface ATXContextEventSuggestionProducer
- (ATXContextEventSuggestionProducer)initWithEvent:(id)event validFromStartDate:(id)date validToEndDate:(id)endDate environment:(id)environment;
- (BOOL)_isStringValidEmail:(id)email;
- (double)scoreWithEventParticipantStatusPenalty:(double)penalty;
- (id)_dateInterval;
- (id)_spotlightActionWithParticipant:(id)participant subtitle:(id)subtitle;
- (id)_stringsWithPredictionReasons:(unint64_t)reasons;
- (id)suggestionForConferenceWithScore:(double)score predictionReasons:(unint64_t)reasons;
- (id)suggestionForDNDWithScore:(double)score predictionReasons:(unint64_t)reasons;
- (id)suggestionForEventOrganizerWithScore:(double)score predictionReasons:(unint64_t)reasons;
- (id)suggestionForEventParticipantWithScore:(double)score predictionReasons:(unint64_t)reasons;
@end

@implementation ATXContextEventSuggestionProducer

- (ATXContextEventSuggestionProducer)initWithEvent:(id)event validFromStartDate:(id)date validToEndDate:(id)endDate environment:(id)environment
{
  eventCopy = event;
  dateCopy = date;
  endDateCopy = endDate;
  environmentCopy = environment;
  v22.receiver = self;
  v22.super_class = ATXContextEventSuggestionProducer;
  v15 = [(ATXContextEventSuggestionProducer *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_event, event);
    title = [eventCopy title];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v19 = [title stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
    eventTitle = v16->_eventTitle;
    v16->_eventTitle = v19;

    objc_storeStrong(&v16->_validFromStartDate, date);
    objc_storeStrong(&v16->_validToEndDate, endDate);
    objc_storeStrong(&v16->_environment, environment);
  }

  return v16;
}

- (id)suggestionForEventOrganizerWithScore:(double)score predictionReasons:(unint64_t)reasons
{
  v32 = *MEMORY[0x277D85DE8];
  organizer = [(EKEvent *)self->_event organizer];

  if (!organizer)
  {
    v10 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 136446210;
      v29 = "[ATXContextEventSuggestionProducer suggestionForEventOrganizerWithScore:predictionReasons:]";
      v11 = "%{public}s null _event.organizer: No suggestion";
      goto LABEL_7;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  organizer2 = [(EKEvent *)self->_event organizer];
  isCurrentUser = [organizer2 isCurrentUser];

  if (isCurrentUser)
  {
    v10 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 136446210;
      v29 = "[ATXContextEventSuggestionProducer suggestionForEventOrganizerWithScore:predictionReasons:]";
      v11 = "%{public}s event organizer is current user: No suggestion";
LABEL_7:
      _os_log_impl(&dword_23E3EA000, v10, OS_LOG_TYPE_DEFAULT, v11, &v28, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  organizer3 = [(EKEvent *)self->_event organizer];
  name = [organizer3 name];
  v17 = [(ATXContextEventSuggestionProducer *)self _isStringValidEmail:name];

  if (v17)
  {
    v10 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      organizer4 = [(EKEvent *)self->_event organizer];
      name2 = [organizer4 name];
      v28 = 136446466;
      v29 = "[ATXContextEventSuggestionProducer suggestionForEventOrganizerWithScore:predictionReasons:]";
      v30 = 2112;
      v31 = name2;
      _os_log_impl(&dword_23E3EA000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s event organizer name (%@) is an email address: No suggestion", &v28, 0x16u);
    }

    goto LABEL_8;
  }

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v10 localizedStringForKey:@"SUGGESTION_EVENT_ORGANIZER_SUBTITLE" value:&stru_2850AD368 table:0];
  organizer5 = [(EKEvent *)self->_event organizer];
  v22 = [(ATXContextEventSuggestionProducer *)self _spotlightActionWithParticipant:organizer5 subtitle:v20];

  if (v22)
  {
    v23 = self->_eventTitle;
    [(ATXContextEventSuggestionProducer *)self scoreWithEventParticipantStatusPenalty:score];
    v25 = v24;
    _dateInterval = [(ATXContextEventSuggestionProducer *)self _dateInterval];
    v12 = [ATXContextHeuristicSuggestionProducer suggestionWithSpotlightAction:v22 predictionReasons:reasons localizedReason:v23 score:_dateInterval dateInterval:v25];
  }

  else
  {
    v27 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_23E3EA000, v27, OS_LOG_TYPE_DEFAULT, "_actionWithParticipant returned nil", &v28, 2u);
    }

    v12 = 0;
  }

LABEL_9:
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)_isStringValidEmail:(id)email
{
  v19 = *MEMORY[0x277D85DE8];
  if (email)
  {
    v3 = MEMORY[0x277CCA948];
    emailCopy = email;
    v5 = [v3 dataDetectorWithTypes:32 error:0];
    v6 = [v5 matchesInString:emailCopy options:0 range:{0, objc_msgSend(emailCopy, "length")}];

    memset(v17, 0, sizeof(v17));
    if (![v6 countByEnumeratingWithState:v17 objects:v18 count:16])
    {
      goto LABEL_5;
    }

    v7 = **(&v17[0] + 1);
    v8 = [**(&v17[0] + 1) URL];
    scheme = [v8 scheme];
    lowercaseString = [scheme lowercaseString];
    v11 = [lowercaseString isEqualToString:@"mailto"];

    if (v11)
    {
      v12 = [v7 URL];
      resourceSpecifier = [v12 resourceSpecifier];
      v14 = [resourceSpecifier length] != 0;
    }

    else
    {
LABEL_5:
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)suggestionForEventParticipantWithScore:(double)score predictionReasons:(unint64_t)reasons
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = objc_opt_new();
  organizer = [(EKEvent *)self->_event organizer];
  isCurrentUser = [organizer isCurrentUser];

  if ((isCurrentUser & 1) == 0)
  {
    firstObject = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v36 = "[ATXContextEventSuggestionProducer suggestionForEventParticipantWithScore:predictionReasons:]";
      v25 = "%{public}s You are not the organizer: No suggestion";
      v26 = firstObject;
      v27 = 12;
LABEL_19:
      _os_log_impl(&dword_23E3EA000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
    }

LABEL_20:
    v24 = 0;
    goto LABEL_25;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  attendees = [(EKEvent *)self->_event attendees];
  v11 = [attendees countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(attendees);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        if (([v15 isCurrentUser] & 1) == 0 && objc_msgSend(v15, "participantType") != 2)
        {
          [v7 addObject:v15];
        }
      }

      v12 = [attendees countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v12);
  }

  if ([v7 count] != 1)
  {
    firstObject = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v7 count];
      *buf = 136446466;
      v36 = "[ATXContextEventSuggestionProducer suggestionForEventParticipantWithScore:predictionReasons:]";
      v37 = 2048;
      v38 = v28;
      v25 = "%{public}s %lu other participants: No suggestion";
      v26 = firstObject;
      v27 = 22;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  firstObject = [v7 firstObject];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"SUGGESTION_EVENT_PARTICIPANT_SUBTITLE" value:&stru_2850AD368 table:0];
  v19 = [(ATXContextEventSuggestionProducer *)self _spotlightActionWithParticipant:firstObject subtitle:v18];
  if (v19)
  {
    v20 = self->_eventTitle;
    [(ATXContextEventSuggestionProducer *)self scoreWithEventParticipantStatusPenalty:score];
    v22 = v21;
    _dateInterval = [(ATXContextEventSuggestionProducer *)self _dateInterval];
    v24 = [ATXContextHeuristicSuggestionProducer suggestionWithSpotlightAction:v19 predictionReasons:reasons localizedReason:v20 score:_dateInterval dateInterval:v22];
  }

  else
  {
    _dateInterval = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(_dateInterval, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, _dateInterval, OS_LOG_TYPE_DEFAULT, "_actionWithParticipant returned nil", buf, 2u);
    }

    v24 = 0;
  }

LABEL_25:
  v29 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_spotlightActionWithParticipant:(id)participant subtitle:(id)subtitle
{
  v27 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  subtitleCopy = subtitle;
  name = [participantCopy name];

  if (name)
  {
    heuristicDevice = [(ATXContextHeuristicsEnvironment *)self->_environment heuristicDevice];
    v10 = [heuristicDevice contactForParticipant:participantCopy];

    name = [v10 identifier];
  }

  name2 = [participantCopy name];
  emailAddress = [participantCopy emailAddress];
  v13 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136446978;
    v20 = "[ATXContextEventSuggestionProducer _spotlightActionWithParticipant:subtitle:]";
    v21 = 2112;
    v22 = name;
    v23 = 2112;
    v24 = name2;
    v25 = 2112;
    v26 = emailAddress;
    _os_log_impl(&dword_23E3EA000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s participantID:%@ participantName:%@, participantEmail:%@", &v19, 0x2Au);
  }

  v14 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:self->_validFromStartDate endDate:self->_validToEndDate lockScreenEligible:0 predicate:0];
  if (name2 && name)
  {
    v15 = [objc_alloc(MEMORY[0x277CEB860]) initWithContactName:name2 contactIdentifier:name subtitle:subtitleCopy criteria:v14];
    goto LABEL_16;
  }

  if (name2 && emailAddress)
  {
    v15 = [objc_alloc(MEMORY[0x277CEB860]) initWithContactName:name2 contactEmail:emailAddress subtitle:subtitleCopy criteria:v14];
    if (v15)
    {
      goto LABEL_16;
    }

    v16 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_23E3EA000, v16, OS_LOG_TYPE_DEFAULT, "Updated api to create participant using email not available", &v19, 2u);
    }
  }

  else
  {
    v16 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicBirthdayContact _spotlightActionWithName:v16 email:? identifier:? startDate:? endDate:? subtitle:?];
    }
  }

  v15 = 0;
LABEL_16:

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_stringsWithPredictionReasons:(unint64_t)reasons
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = objc_opt_new();
  ATXSuggestionPredictionReasonEnumerateReasonCodes();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __67__ATXContextEventSuggestionProducer__stringsWithPredictionReasons___block_invoke(uint64_t a1)
{
  v2 = stringForATXSuggestionPredictionReasonCode();
  [*(*(*(a1 + 32) + 8) + 40) addObject:v2];
}

- (id)suggestionForDNDWithScore:(double)score predictionReasons:(unint64_t)reasons
{
  endDate = [(EKEvent *)self->_event endDate];
  startDate = [(EKEvent *)self->_event startDate];
  v8 = [startDate dateByAddingTimeInterval:-900.0];

  eventTitle = self->_eventTitle;
  uUID = [(EKEvent *)self->_event UUID];
  calendarItemIdentifier = [(EKEvent *)self->_event calendarItemIdentifier];
  [(ATXContextEventSuggestionProducer *)self scoreWithEventParticipantStatusPenalty:score];
  v13 = v12;
  v14 = self->_eventTitle;
  v15 = [(NSDate *)self->_validFromStartDate laterDate:v8];
  validToEndDate = self->_validToEndDate;
  _dateInterval = [(ATXContextEventSuggestionProducer *)self _dateInterval];
  v18 = [ATXContextHeuristicSuggestionProducer suggestionForDNDWithTitle:eventTitle eventUniqueID:uUID identifier:calendarItemIdentifier until:endDate score:reasons predictionReasons:v14 localizedReason:v13 validFromStartDate:v15 validToEndDate:validToEndDate dateInterval:_dateInterval];

  return v18;
}

- (id)suggestionForConferenceWithScore:(double)score predictionReasons:(unint64_t)reasons
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  virtualConference = [(EKEvent *)self->_event virtualConference];
  joinMethods = [virtualConference joinMethods];
  firstObject = [joinMethods firstObject];
  v11 = [firstObject URL];
  v12 = v11;
  if (v11)
  {
    conferenceURLForDisplay = v11;
  }

  else
  {
    conferenceURLForDisplay = [(EKEvent *)self->_event conferenceURLForDisplay];
  }

  v14 = conferenceURLForDisplay;

  objc_autoreleasePoolPop(v7);
  v15 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    eventIdentifier = [(EKEvent *)self->_event eventIdentifier];
    title = [(EKEvent *)self->_event title];
    v18 = [title hash];
    startDate = [(EKEvent *)self->_event startDate];
    v28 = 138413058;
    v29 = eventIdentifier;
    v30 = 2048;
    v31 = v18;
    v32 = 2112;
    v33 = startDate;
    v34 = 1024;
    v35 = v14 != 0;
    _os_log_impl(&dword_23E3EA000, v15, OS_LOG_TYPE_DEFAULT, "Event id: %@ title.hash: %lu start:%@ has conferenceURL:%{BOOL}i", &v28, 0x26u);
  }

  if (v14)
  {
    v20 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:self->_validFromStartDate endDate:self->_validToEndDate lockScreenEligible:0 predicate:0];
    [(ATXContextEventSuggestionProducer *)self scoreWithEventParticipantStatusPenalty:score];
    v22 = v21;
    eventTitle = self->_eventTitle;
    _dateInterval = [(ATXContextEventSuggestionProducer *)self _dateInterval];
    v25 = [ATXContextHeuristicSuggestionProducer suggestionForConferenceWithURL:v14 score:reasons predictionReasons:eventTitle localizedReason:v20 criteria:_dateInterval dateInterval:v22];
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (double)scoreWithEventParticipantStatusPenalty:(double)penalty
{
  p_event = &self->_event;
  participationStatus = [(EKEvent *)self->_event participationStatus];
  if (participationStatus != 2)
  {
    if (participationStatus == 4)
    {
      return penalty * 0.5;
    }

    else
    {
      v7 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(ATXContextEventSuggestionProducer *)self scoreWithEventParticipantStatusPenalty:v7];
      }
    }
  }

  return penalty;
}

- (id)_dateInterval
{
  v3 = objc_alloc(MEMORY[0x277CCA970]);
  startDate = [(EKEvent *)self->_event startDate];
  endDate = [(EKEvent *)self->_event endDate];
  v6 = [v3 initWithStartDate:startDate endDate:endDate];

  return v6;
}

- (void)scoreWithEventParticipantStatusPenalty:(NSObject *)a3 .cold.1(uint64_t a1, id *a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v5 = [*a2 participationStatus];
  v7 = 136447234;
  v8 = "[ATXContextEventSuggestionProducer scoreWithEventParticipantStatusPenalty:]";
  v9 = 2112;
  v10 = v4;
  v11 = 2048;
  v12 = v5;
  v13 = 2048;
  v14 = 2;
  v15 = 2048;
  v16 = 4;
  _os_log_fault_impl(&dword_23E3EA000, a3, OS_LOG_TYPE_FAULT, "%{public}s _event.participationStatus for %@ is %ld not one of {%ld, %ld}. No penalty aplied", &v7, 0x34u);
  v6 = *MEMORY[0x277D85DE8];
}

@end