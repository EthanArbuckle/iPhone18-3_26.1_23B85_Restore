@interface MPVoicemailMessageViewModel
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToVoicemailMessageViewModel:(id)model;
- (unint64_t)hash;
@end

@implementation MPVoicemailMessageViewModel

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MPVoicemailMessageViewModel *)self isEqualToVoicemailMessageViewModel:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToVoicemailMessageViewModel:(id)model
{
  modelCopy = model;
  date = [(MPVoicemailMessageViewModel *)self date];
  date2 = [modelCopy date];
  if ([date isEqualToDate:date2])
  {
    localizedDate = [(MPVoicemailMessageViewModel *)self localizedDate];
    localizedDate2 = [modelCopy localizedDate];
    if ([localizedDate isEqualToString:localizedDate2])
    {
      localizedDuration = [(MPVoicemailMessageViewModel *)self localizedDuration];
      localizedDuration2 = [modelCopy localizedDuration];
      if ([localizedDuration isEqualToString:localizedDuration2])
      {
        localizedTitle = [(MPVoicemailMessageViewModel *)self localizedTitle];
        localizedTitle2 = [modelCopy localizedTitle];
        if ([localizedTitle isEqualToString:localizedTitle2])
        {
          v37 = localizedTitle;
          localizedSubtitle = [(MPVoicemailMessageViewModel *)self localizedSubtitle];
          [modelCopy localizedSubtitle];
          v36 = v38 = localizedSubtitle;
          if ([localizedSubtitle isEqualToString:?])
          {
            localizedTranscriptionMessage = [(MPVoicemailMessageViewModel *)self localizedTranscriptionMessage];
            localizedTranscriptionMessage2 = [modelCopy localizedTranscriptionMessage];
            v35 = localizedTranscriptionMessage;
            if ([localizedTranscriptionMessage isEqualToString:?])
            {
              localizedSenderIdentityTitle = [(MPVoicemailMessageViewModel *)self localizedSenderIdentityTitle];
              localizedSenderIdentityTitle2 = [modelCopy localizedSenderIdentityTitle];
              v33 = localizedSenderIdentityTitle;
              if ([localizedSenderIdentityTitle isEqualToString:?])
              {
                localizedAttributedRestrictedAlertTitle = [(MPVoicemailMessageViewModel *)self localizedAttributedRestrictedAlertTitle];
                localizedAttributedRestrictedAlertTitle2 = [modelCopy localizedAttributedRestrictedAlertTitle];
                v31 = localizedAttributedRestrictedAlertTitle;
                v17 = [localizedAttributedRestrictedAlertTitle isEqualToAttributedString:?];
                localizedTitle = v37;
                if (v17 && (-[MPVoicemailMessageViewModel duration](self, "duration"), v19 = v18, [modelCopy duration], v19 == v20) && (v24 = -[MPVoicemailMessageViewModel showsPlayerControls](self, "showsPlayerControls"), v24 == objc_msgSend(modelCopy, "showsPlayerControls")) && (v25 = -[MPVoicemailMessageViewModel showsRestrictedAlertView](self, "showsRestrictedAlertView"), v25 == objc_msgSend(modelCopy, "showsRestrictedAlertView")) && (v26 = -[MPVoicemailMessageViewModel showsTranscriptionView](self, "showsTranscriptionView"), v26 == objc_msgSend(modelCopy, "showsTranscriptionView")) && (v27 = -[MPVoicemailMessageViewModel isRead](self, "isRead"), v27 == objc_msgSend(modelCopy, "isRead")) && (v28 = -[MPVoicemailMessageViewModel isDeleted](self, "isDeleted"), v28 == objc_msgSend(modelCopy, "isDeleted")))
                {
                  transcriptViewModel = [(MPVoicemailMessageViewModel *)self transcriptViewModel];
                  transcriptViewModel2 = [modelCopy transcriptViewModel];
                  v21 = transcriptViewModel == transcriptViewModel2;
                }

                else
                {
                  v21 = 0;
                }
              }

              else
              {
                v21 = 0;
                localizedTitle = v37;
              }
            }

            else
            {
              v21 = 0;
              localizedTitle = v37;
            }
          }

          else
          {
            v21 = 0;
            localizedTitle = v37;
          }
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (unint64_t)hash
{
  date = [(MPVoicemailMessageViewModel *)self date];
  v32 = [date hash];
  localizedDate = [(MPVoicemailMessageViewModel *)self localizedDate];
  v31 = [localizedDate hash];
  localizedDuration = [(MPVoicemailMessageViewModel *)self localizedDuration];
  v30 = [localizedDuration hash];
  localizedTitle = [(MPVoicemailMessageViewModel *)self localizedTitle];
  v29 = [localizedTitle hash];
  localizedSubtitle = [(MPVoicemailMessageViewModel *)self localizedSubtitle];
  v28 = [localizedSubtitle hash];
  localizedTranscriptionMessage = [(MPVoicemailMessageViewModel *)self localizedTranscriptionMessage];
  v27 = [localizedTranscriptionMessage hash];
  localizedSenderIdentityTitle = [(MPVoicemailMessageViewModel *)self localizedSenderIdentityTitle];
  v25 = [localizedSenderIdentityTitle hash];
  localizedAttributedRestrictedAlertTitle = [(MPVoicemailMessageViewModel *)self localizedAttributedRestrictedAlertTitle];
  v24 = [localizedAttributedRestrictedAlertTitle hash];
  [(MPVoicemailMessageViewModel *)self duration];
  if (v7 < 0.0)
  {
    v7 = -v7;
  }

  *v8.i64 = floor(v7 + 0.5);
  v10 = (v7 - *v8.i64) * 1.84467441e19;
  *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v8.i64[0] = vbslq_s8(vnegq_f64(v11), v9, v8).i64[0];
  v12 = 2654435761u * *v8.i64;
  v13 = v12 + v10;
  if (v10 <= 0.0)
  {
    v13 = 2654435761u * *v8.i64;
  }

  v14 = v12 - fabs(v10);
  if (v10 >= 0.0)
  {
    v14 = v13;
  }

  v26 = v14;
  if ([(MPVoicemailMessageViewModel *)self showsPlayerControls])
  {
    if ([(MPVoicemailMessageViewModel *)self showsPlayerControls])
    {
      v15 = 2654435761;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  if ([(MPVoicemailMessageViewModel *)self showsRestrictedAlertView])
  {
    if ([(MPVoicemailMessageViewModel *)self showsRestrictedAlertView])
    {
      v16 = 2654435761;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  if ([(MPVoicemailMessageViewModel *)self showsTranscriptionView])
  {
    if ([(MPVoicemailMessageViewModel *)self showsTranscriptionView])
    {
      v17 = 2654435761;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  if ([(MPVoicemailMessageViewModel *)self isRead])
  {
    if ([(MPVoicemailMessageViewModel *)self isRead])
    {
      v18 = 2654435761;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  if ([(MPVoicemailMessageViewModel *)self isDeleted])
  {
    if ([(MPVoicemailMessageViewModel *)self isDeleted])
    {
      v19 = 2654435761;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v31 ^ v32 ^ v30 ^ v29 ^ v28 ^ v27 ^ v25 ^ v24 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
  transcriptViewModel = [(MPVoicemailMessageViewModel *)self transcriptViewModel];
  v22 = v20 ^ [transcriptViewModel hash];

  return v22 ^ v26;
}

@end