@interface MPVoicemailMessageViewModel
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToVoicemailMessageViewModel:(id)a3;
- (unint64_t)hash;
@end

@implementation MPVoicemailMessageViewModel

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MPVoicemailMessageViewModel *)self isEqualToVoicemailMessageViewModel:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToVoicemailMessageViewModel:(id)a3
{
  v4 = a3;
  v5 = [(MPVoicemailMessageViewModel *)self date];
  v6 = [v4 date];
  if ([v5 isEqualToDate:v6])
  {
    v7 = [(MPVoicemailMessageViewModel *)self localizedDate];
    v8 = [v4 localizedDate];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(MPVoicemailMessageViewModel *)self localizedDuration];
      v10 = [v4 localizedDuration];
      if ([v9 isEqualToString:v10])
      {
        v11 = [(MPVoicemailMessageViewModel *)self localizedTitle];
        v12 = [v4 localizedTitle];
        if ([v11 isEqualToString:v12])
        {
          v37 = v11;
          v13 = [(MPVoicemailMessageViewModel *)self localizedSubtitle];
          [v4 localizedSubtitle];
          v36 = v38 = v13;
          if ([v13 isEqualToString:?])
          {
            v14 = [(MPVoicemailMessageViewModel *)self localizedTranscriptionMessage];
            v34 = [v4 localizedTranscriptionMessage];
            v35 = v14;
            if ([v14 isEqualToString:?])
            {
              v15 = [(MPVoicemailMessageViewModel *)self localizedSenderIdentityTitle];
              v32 = [v4 localizedSenderIdentityTitle];
              v33 = v15;
              if ([v15 isEqualToString:?])
              {
                v16 = [(MPVoicemailMessageViewModel *)self localizedAttributedRestrictedAlertTitle];
                v30 = [v4 localizedAttributedRestrictedAlertTitle];
                v31 = v16;
                v17 = [v16 isEqualToAttributedString:?];
                v11 = v37;
                if (v17 && (-[MPVoicemailMessageViewModel duration](self, "duration"), v19 = v18, [v4 duration], v19 == v20) && (v24 = -[MPVoicemailMessageViewModel showsPlayerControls](self, "showsPlayerControls"), v24 == objc_msgSend(v4, "showsPlayerControls")) && (v25 = -[MPVoicemailMessageViewModel showsRestrictedAlertView](self, "showsRestrictedAlertView"), v25 == objc_msgSend(v4, "showsRestrictedAlertView")) && (v26 = -[MPVoicemailMessageViewModel showsTranscriptionView](self, "showsTranscriptionView"), v26 == objc_msgSend(v4, "showsTranscriptionView")) && (v27 = -[MPVoicemailMessageViewModel isRead](self, "isRead"), v27 == objc_msgSend(v4, "isRead")) && (v28 = -[MPVoicemailMessageViewModel isDeleted](self, "isDeleted"), v28 == objc_msgSend(v4, "isDeleted")))
                {
                  v29 = [(MPVoicemailMessageViewModel *)self transcriptViewModel];
                  v23 = [v4 transcriptViewModel];
                  v21 = v29 == v23;
                }

                else
                {
                  v21 = 0;
                }
              }

              else
              {
                v21 = 0;
                v11 = v37;
              }
            }

            else
            {
              v21 = 0;
              v11 = v37;
            }
          }

          else
          {
            v21 = 0;
            v11 = v37;
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
  v36 = [(MPVoicemailMessageViewModel *)self date];
  v32 = [v36 hash];
  v35 = [(MPVoicemailMessageViewModel *)self localizedDate];
  v31 = [v35 hash];
  v34 = [(MPVoicemailMessageViewModel *)self localizedDuration];
  v30 = [v34 hash];
  v33 = [(MPVoicemailMessageViewModel *)self localizedTitle];
  v29 = [v33 hash];
  v3 = [(MPVoicemailMessageViewModel *)self localizedSubtitle];
  v28 = [v3 hash];
  v4 = [(MPVoicemailMessageViewModel *)self localizedTranscriptionMessage];
  v27 = [v4 hash];
  v5 = [(MPVoicemailMessageViewModel *)self localizedSenderIdentityTitle];
  v25 = [v5 hash];
  v6 = [(MPVoicemailMessageViewModel *)self localizedAttributedRestrictedAlertTitle];
  v24 = [v6 hash];
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
  v21 = [(MPVoicemailMessageViewModel *)self transcriptViewModel];
  v22 = v20 ^ [v21 hash];

  return v22 ^ v26;
}

@end