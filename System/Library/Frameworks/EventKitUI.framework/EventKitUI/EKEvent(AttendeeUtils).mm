@interface EKEvent(AttendeeUtils)
- (id)sortedEKParticipantsDisplayStringsIgnoringNonHumans:()AttendeeUtils;
- (uint64_t)hasHumanInviteesToDisplay;
@end

@implementation EKEvent(AttendeeUtils)

- (id)sortedEKParticipantsDisplayStringsIgnoringNonHumans:()AttendeeUtils
{
  v52[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6993398] sortedEKParticipantsForSortingIgnoringNonHumans:a3 event:self];
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  v51 = *MEMORY[0x1E69DB648];
  v52[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = v3;
  v7 = v5;
  v8 = v6;
  v9 = [v6 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = &kEKUILogHandle;
    v42 = *v45;
    do
    {
      v12 = 0;
      v41 = v10;
      do
      {
        if (*v45 != v42)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v44 + 1) + 8 * v12);
        participant = [v13 participant];
        displayName = [v13 displayName];

        if (displayName)
        {
          v16 = objc_alloc(MEMORY[0x1E696AD40]);
          displayName2 = [v13 displayName];
          v18 = [v16 initWithString:displayName2 attributes:v7];

          v19 = MEMORY[0x1E6993410];
          comment = [participant comment];
          v21 = [v19 stringWithAutoCommentRemoved:comment];

          v43 = v21;
          if ([v21 length])
          {
            v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
            [v18 appendAttributedString:v22];

            mEMORY[0x1E6993478] = [MEMORY[0x1E6993478] sharedInstance];
            v24 = [mEMORY[0x1E6993478] commentIconStringForFont:v4];
            [v18 appendAttributedString:v24];
          }

          v25 = objc_alloc_init(EKParticipantForDisplay);
          [(EKParticipantForDisplay *)v25 setOptionalParticipant:0];
          [(EKParticipantForDisplay *)v25 setBlocked:0];
          if (v18)
          {
            if ([participant participantRole] == 2)
            {
              v38 = MEMORY[0x1E696AEC0];
              v26 = EventKitUIBundle();
              [v26 localizedStringForKey:@"optional" value:&stru_1F4EF6790 table:0];
              v27 = v11;
              v28 = v8;
              v29 = v7;
              v31 = v30 = v4;
              v39 = [v38 stringWithFormat:@" (%@)", v31];

              v4 = v30;
              v7 = v29;
              v8 = v28;
              v11 = v27;

              v32 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v39 attributes:v7];
              [v18 appendAttributedString:v32];
              [(EKParticipantForDisplay *)v25 setOptionalParticipant:1];
            }

            emailAddress = [participant emailAddress];
            [(EKParticipantForDisplay *)v25 setEmail:emailAddress];

            phoneNumber = [participant phoneNumber];
            [(EKParticipantForDisplay *)v25 setPhone:phoneNumber];

            [(EKParticipantForDisplay *)v25 setDisplayString:v18];
            [v40 addObject:v25];
            v10 = v41;
          }

          else
          {
            v36 = *v11;
            if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v49 = participant;
              _os_log_impl(&dword_1D3400000, v36, OS_LOG_TYPE_ERROR, "Unable to get display name for participant %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v35 = *v11;
          if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v49 = participant;
            _os_log_impl(&dword_1D3400000, v35, OS_LOG_TYPE_ERROR, "Unable to get display name for participant %@", buf, 0xCu);
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v10);
  }

  return v40;
}

- (uint64_t)hasHumanInviteesToDisplay
{
  v23 = *MEMORY[0x1E69E9840];
  if (![self hasAttendees])
  {
    return 0;
  }

  [self attendees];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v21 = 0u;
  v2 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v19;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v18 + 1) + 8 * i);
        participantType = [v6 participantType];
        name = [v6 name];
        if ([name length])
        {
          v9 = 0;
        }

        else
        {
          v10 = [v6 URL];
          resourceSpecifier = [v10 resourceSpecifier];
          v9 = [resourceSpecifier length] == 0;
        }

        organizer = [self organizer];
        v13 = [v6 isEqualToParticipant:organizer];

        if ((v13 & 1) == 0 && (participantType & 0xFFFFFFFFFFFFFFFELL) != 2 && !v9)
        {
          v15 = 1;
          goto LABEL_20;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_20:

  return v15;
}

@end