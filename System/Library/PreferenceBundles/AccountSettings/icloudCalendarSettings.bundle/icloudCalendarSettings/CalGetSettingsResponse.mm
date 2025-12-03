@interface CalGetSettingsResponse
- (CalGetSettingsResponse)initWithDictionary:(id)dictionary;
- (CalGetSettingsResponse)initWithHTTPResponse:(id)response data:(id)data;
- (id)description;
@end

@implementation CalGetSettingsResponse

- (CalGetSettingsResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v7.receiver = self;
  v7.super_class = CalGetSettingsResponse;
  v4 = [(CalGetSettingsResponse *)&v7 initWithHTTPResponse:response data:data bodyIsPlist:0];
  v5 = v4;
  if (v4 && [*&v4->super.AAResponse_opaque[OBJC_IVAR___AAResponse__httpResponse] statusCode] == stru_B8.segname)
  {
    return [(CalGetSettingsResponse *)v5 initWithDictionary:*&v5->super.AAResponse_opaque[OBJC_IVAR___AAResponse__responseDictionary]];
  }

  return v5;
}

- (CalGetSettingsResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = CalGetSettingsResponse;
  v5 = [(CalBaseResponse *)&v25 initWithDictionary:dictionaryCopy];
  v6 = v5;
  if (dictionaryCopy && v5)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"makoAccount"];
    v6->_makoAccount = [v7 BOOLValue];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"sharedCalendarEmail"];
    v6->_sharedCalendarEmail = [v8 BOOLValue];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"email"];
    v10 = objc_alloc_init(NSMutableArray);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * v15);
          v17 = [CalInviteEmail alloc];
          v18 = [(CalInviteEmail *)v17 initWithDictionary:v16, v21];
          [(NSArray *)v10 addObject:v18];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v13);
    }

    emails = v6->_emails;
    v6->_emails = v10;
  }

  return v6;
}

- (id)description
{
  v3 = [NSNumber numberWithBool:[(CalGetSettingsResponse *)self makoAccount]];
  v4 = [NSNumber numberWithBool:[(CalGetSettingsResponse *)self sharedCalendarEmail]];
  emails = [(CalGetSettingsResponse *)self emails];
  v6 = [NSString stringWithFormat:@"makoAccount => %@, sharedCalendarUpdates => %@ inviteEmailList => %@", v3, v4, emails];

  return v6;
}

@end