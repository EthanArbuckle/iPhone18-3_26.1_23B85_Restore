@interface ATXContextEventSuggestionProducer
- (ATXContextEventSuggestionProducer)initWithEvent:(id)a3 validFromStartDate:(id)a4 validToEndDate:(id)a5 environment:(id)a6;
- (BOOL)_isStringValidEmail:(id)a3;
- (double)scoreWithEventParticipantStatusPenalty:(double)a3;
- (id)_dateInterval;
- (id)_spotlightActionWithParticipant:(id)a3 subtitle:(id)a4;
- (id)_stringsWithPredictionReasons:(unint64_t)a3;
- (id)suggestionForConferenceWithScore:(double)a3 predictionReasons:(unint64_t)a4;
- (id)suggestionForDNDWithScore:(double)a3 predictionReasons:(unint64_t)a4;
- (id)suggestionForEventOrganizerWithScore:(double)a3 predictionReasons:(unint64_t)a4;
- (id)suggestionForEventParticipantWithScore:(double)a3 predictionReasons:(unint64_t)a4;
@end

@implementation ATXContextEventSuggestionProducer

- (ATXContextEventSuggestionProducer)initWithEvent:(id)a3 validFromStartDate:(id)a4 validToEndDate:(id)a5 environment:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = ATXContextEventSuggestionProducer;
  v15 = [(ATXContextEventSuggestionProducer *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_event, a3);
    v17 = [v11 title];
    v18 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v19 = [v17 stringByTrimmingCharactersInSet:v18];
    eventTitle = v16->_eventTitle;
    v16->_eventTitle = v19;

    objc_storeStrong(&v16->_validFromStartDate, a4);
    objc_storeStrong(&v16->_validToEndDate, a5);
    objc_storeStrong(&v16->_environment, a6);
  }

  return v16;
}

- (id)suggestionForEventOrganizerWithScore:(double)a3 predictionReasons:(unint64_t)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = [(EKEvent *)self->_event organizer];

  if (!v7)
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

  v8 = [(EKEvent *)self->_event organizer];
  v9 = [v8 isCurrentUser];

  if (v9)
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

  v15 = [(EKEvent *)self->_event organizer];
  v16 = [v15 name];
  v17 = [(ATXContextEventSuggestionProducer *)self _isStringValidEmail:v16];

  if (v17)
  {
    v10 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(EKEvent *)self->_event organizer];
      v19 = [v18 name];
      v28 = 136446466;
      v29 = "[ATXContextEventSuggestionProducer suggestionForEventOrganizerWithScore:predictionReasons:]";
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&dword_23E3EA000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s event organizer name (%@) is an email address: No suggestion", &v28, 0x16u);
    }

    goto LABEL_8;
  }

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v10 localizedStringForKey:@"SUGGESTION_EVENT_ORGANIZER_SUBTITLE" value:&stru_2850AD368 table:0];
  v21 = [(EKEvent *)self->_event organizer];
  v22 = [(ATXContextEventSuggestionProducer *)self _spotlightActionWithParticipant:v21 subtitle:v20];

  if (v22)
  {
    v23 = self->_eventTitle;
    [(ATXContextEventSuggestionProducer *)self scoreWithEventParticipantStatusPenalty:a3];
    v25 = v24;
    v26 = [(ATXContextEventSuggestionProducer *)self _dateInterval];
    v12 = [ATXContextHeuristicSuggestionProducer suggestionWithSpotlightAction:v22 predictionReasons:a4 localizedReason:v23 score:v26 dateInterval:v25];
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

- (BOOL)_isStringValidEmail:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = MEMORY[0x277CCA948];
    v4 = a3;
    v5 = [v3 dataDetectorWithTypes:32 error:0];
    v6 = [v5 matchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];

    memset(v17, 0, sizeof(v17));
    if (![v6 countByEnumeratingWithState:v17 objects:v18 count:16])
    {
      goto LABEL_5;
    }

    v7 = **(&v17[0] + 1);
    v8 = [**(&v17[0] + 1) URL];
    v9 = [v8 scheme];
    v10 = [v9 lowercaseString];
    v11 = [v10 isEqualToString:@"mailto"];

    if (v11)
    {
      v12 = [v7 URL];
      v13 = [v12 resourceSpecifier];
      v14 = [v13 length] != 0;
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

- (id)suggestionForEventParticipantWithScore:(double)a3 predictionReasons:(unint64_t)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = objc_opt_new();
  v8 = [(EKEvent *)self->_event organizer];
  v9 = [v8 isCurrentUser];

  if ((v9 & 1) == 0)
  {
    v16 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v36 = "[ATXContextEventSuggestionProducer suggestionForEventParticipantWithScore:predictionReasons:]";
      v25 = "%{public}s You are not the organizer: No suggestion";
      v26 = v16;
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
  v10 = [(EKEvent *)self->_event attendees];
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        if (([v15 isCurrentUser] & 1) == 0 && objc_msgSend(v15, "participantType") != 2)
        {
          [v7 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v12);
  }

  if ([v7 count] != 1)
  {
    v16 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v7 count];
      *buf = 136446466;
      v36 = "[ATXContextEventSuggestionProducer suggestionForEventParticipantWithScore:predictionReasons:]";
      v37 = 2048;
      v38 = v28;
      v25 = "%{public}s %lu other participants: No suggestion";
      v26 = v16;
      v27 = 22;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v16 = [v7 firstObject];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"SUGGESTION_EVENT_PARTICIPANT_SUBTITLE" value:&stru_2850AD368 table:0];
  v19 = [(ATXContextEventSuggestionProducer *)self _spotlightActionWithParticipant:v16 subtitle:v18];
  if (v19)
  {
    v20 = self->_eventTitle;
    [(ATXContextEventSuggestionProducer *)self scoreWithEventParticipantStatusPenalty:a3];
    v22 = v21;
    v23 = [(ATXContextEventSuggestionProducer *)self _dateInterval];
    v24 = [ATXContextHeuristicSuggestionProducer suggestionWithSpotlightAction:v19 predictionReasons:a4 localizedReason:v20 score:v23 dateInterval:v22];
  }

  else
  {
    v23 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v23, OS_LOG_TYPE_DEFAULT, "_actionWithParticipant returned nil", buf, 2u);
    }

    v24 = 0;
  }

LABEL_25:
  v29 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_spotlightActionWithParticipant:(id)a3 subtitle:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 name];

  if (v8)
  {
    v9 = [(ATXContextHeuristicsEnvironment *)self->_environment heuristicDevice];
    v10 = [v9 contactForParticipant:v6];

    v8 = [v10 identifier];
  }

  v11 = [v6 name];
  v12 = [v6 emailAddress];
  v13 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136446978;
    v20 = "[ATXContextEventSuggestionProducer _spotlightActionWithParticipant:subtitle:]";
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_23E3EA000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s participantID:%@ participantName:%@, participantEmail:%@", &v19, 0x2Au);
  }

  v14 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:self->_validFromStartDate endDate:self->_validToEndDate lockScreenEligible:0 predicate:0];
  if (v11 && v8)
  {
    v15 = [objc_alloc(MEMORY[0x277CEB860]) initWithContactName:v11 contactIdentifier:v8 subtitle:v7 criteria:v14];
    goto LABEL_16;
  }

  if (v11 && v12)
  {
    v15 = [objc_alloc(MEMORY[0x277CEB860]) initWithContactName:v11 contactEmail:v12 subtitle:v7 criteria:v14];
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

- (id)_stringsWithPredictionReasons:(unint64_t)a3
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

- (id)suggestionForDNDWithScore:(double)a3 predictionReasons:(unint64_t)a4
{
  v6 = [(EKEvent *)self->_event endDate];
  v7 = [(EKEvent *)self->_event startDate];
  v8 = [v7 dateByAddingTimeInterval:-900.0];

  eventTitle = self->_eventTitle;
  v10 = [(EKEvent *)self->_event UUID];
  v11 = [(EKEvent *)self->_event calendarItemIdentifier];
  [(ATXContextEventSuggestionProducer *)self scoreWithEventParticipantStatusPenalty:a3];
  v13 = v12;
  v14 = self->_eventTitle;
  v15 = [(NSDate *)self->_validFromStartDate laterDate:v8];
  validToEndDate = self->_validToEndDate;
  v17 = [(ATXContextEventSuggestionProducer *)self _dateInterval];
  v18 = [ATXContextHeuristicSuggestionProducer suggestionForDNDWithTitle:eventTitle eventUniqueID:v10 identifier:v11 until:v6 score:a4 predictionReasons:v14 localizedReason:v13 validFromStartDate:v15 validToEndDate:validToEndDate dateInterval:v17];

  return v18;
}

- (id)suggestionForConferenceWithScore:(double)a3 predictionReasons:(unint64_t)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v8 = [(EKEvent *)self->_event virtualConference];
  v9 = [v8 joinMethods];
  v10 = [v9 firstObject];
  v11 = [v10 URL];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [(EKEvent *)self->_event conferenceURLForDisplay];
  }

  v14 = v13;

  objc_autoreleasePoolPop(v7);
  v15 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(EKEvent *)self->_event eventIdentifier];
    v17 = [(EKEvent *)self->_event title];
    v18 = [v17 hash];
    v19 = [(EKEvent *)self->_event startDate];
    v28 = 138413058;
    v29 = v16;
    v30 = 2048;
    v31 = v18;
    v32 = 2112;
    v33 = v19;
    v34 = 1024;
    v35 = v14 != 0;
    _os_log_impl(&dword_23E3EA000, v15, OS_LOG_TYPE_DEFAULT, "Event id: %@ title.hash: %lu start:%@ has conferenceURL:%{BOOL}i", &v28, 0x26u);
  }

  if (v14)
  {
    v20 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:self->_validFromStartDate endDate:self->_validToEndDate lockScreenEligible:0 predicate:0];
    [(ATXContextEventSuggestionProducer *)self scoreWithEventParticipantStatusPenalty:a3];
    v22 = v21;
    eventTitle = self->_eventTitle;
    v24 = [(ATXContextEventSuggestionProducer *)self _dateInterval];
    v25 = [ATXContextHeuristicSuggestionProducer suggestionForConferenceWithURL:v14 score:a4 predictionReasons:eventTitle localizedReason:v20 criteria:v24 dateInterval:v22];
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (double)scoreWithEventParticipantStatusPenalty:(double)a3
{
  p_event = &self->_event;
  v6 = [(EKEvent *)self->_event participationStatus];
  if (v6 != 2)
  {
    if (v6 == 4)
    {
      return a3 * 0.5;
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

  return a3;
}

- (id)_dateInterval
{
  v3 = objc_alloc(MEMORY[0x277CCA970]);
  v4 = [(EKEvent *)self->_event startDate];
  v5 = [(EKEvent *)self->_event endDate];
  v6 = [v3 initWithStartDate:v4 endDate:v5];

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