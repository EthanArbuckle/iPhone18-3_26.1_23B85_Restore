@interface PDEndpointInfo
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (PDEndpointInfo)init;
- (PDEndpointInfo)initWithDatabaseRow:(id)a3;
- (id)dictionaryRepresentation;
- (void)bindTo:(id)a3;
@end

@implementation PDEndpointInfo

- (PDEndpointInfo)init
{
  v3.receiver = self;
  v3.super_class = PDEndpointInfo;
  result = [(PDEndpointInfo *)&v3 init];
  if (result)
  {
    *&result->_payloadLimitItems = xmmword_1001A85A0;
    *&result->_requiresAuth = 257;
  }

  return result;
}

- (PDEndpointInfo)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PDEndpointInfo;
  v5 = [(PDEndpointInfo *)&v23 init];
  if (v5)
  {
    v6 = sub_10016D778(v4, @"lastSuccessTime");
    [v6 doubleValue];
    v5->_lastSuccessTime = v7;

    v8 = sub_10016D778(v4, @"lastFailureTime");
    [v8 doubleValue];
    v5->_lastFailureTime = v9;

    v10 = sub_10016D778(v4, @"failureCounter");
    v5->_failureCounter = [v10 integerValue];

    v11 = sub_10016D778(v4, @"serviceID");
    serviceID = v5->_serviceID;
    v5->_serviceID = v11;

    v13 = sub_10016D778(v4, @"identifier");
    identifier = v5->_identifier;
    v5->_identifier = v13;

    v15 = sub_10016D778(v4, @"url");
    urlString = v5->_urlString;
    v5->_urlString = v15;

    v17 = sub_10016D778(v4, @"payloadLimitItems");
    v5->_payloadLimitItems = [v17 integerValue];

    v18 = sub_10016D778(v4, @"payloadLimitBytes");
    v5->_payloadLimitBytes = [v18 integerValue];

    v19 = sub_10016D778(v4, @"responseTTLSeconds");
    v5->_responseTTLSeconds = [v19 integerValue];

    v20 = sub_10016D778(v4, @"requiresAuth");
    v5->_requiresAuth = [v20 BOOLValue];

    v21 = sub_10016D778(v4, @"isInternal");
    v5->_isInternal = [v21 BOOLValue];
  }

  return v5;
}

- (void)bindTo:(id)a3
{
  lastSuccessTime = self->_lastSuccessTime;
  v5 = a3;
  v6 = [NSNumber numberWithDouble:lastSuccessTime];
  sub_1000982FC(v5, v6, @"lastSuccessTime");

  v7 = [NSNumber numberWithDouble:self->_lastFailureTime];
  sub_1000982FC(v5, v7, @"lastFailureTime");

  v8 = [NSNumber numberWithInteger:self->_failureCounter];
  sub_1000982FC(v5, v8, @"failureCounter");

  sub_1000982FC(v5, self->_serviceID, @"serviceID");
  sub_1000982FC(v5, self->_identifier, @"identifier");
  sub_1000982FC(v5, self->_urlString, @"url");
  v9 = [NSNumber numberWithInteger:self->_payloadLimitItems];
  sub_1000982FC(v5, v9, @"payloadLimitItems");

  v10 = [NSNumber numberWithInteger:self->_payloadLimitBytes];
  sub_1000982FC(v5, v10, @"payloadLimitBytes");

  v11 = [NSNumber numberWithInteger:self->_responseTTLSeconds];
  sub_1000982FC(v5, v11, @"responseTTLSeconds");

  v12 = [NSNumber numberWithBool:self->_requiresAuth];
  sub_1000982FC(v5, v12, @"requiresAuth");

  v13 = [NSNumber numberWithBool:self->_isInternal];
  sub_1000982FC(v5, v13, @"isInternal");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3 == 1)
  {
    goto LABEL_27;
  }

  if (a3)
  {
LABEL_10:
    v28 = a4;
    v12 = [[NSMutableArray alloc] initWithCapacity:10];
    v13 = +[PDOrionBootstrapOperation defaultEndpointInfo];
    [v12 addObjectsFromArray:v13];

    v14 = +[PDASMBootstrapOperation defaultEndpointInfo];
    [v12 addObjectsFromArray:v14];

    v15 = +[PDPublishAdminRequest defaultEndpointInfo];
    [v12 addObjectsFromArray:v15];

    v16 = +[PDASMOrganizationSearchOperation defaultEndpointInfo];
    [v12 addObjectsFromArray:v16];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = v12;
    v17 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v9);
          }

          v21 = *(*(&v29 + 1) + 8 * i);
          v22 = objc_autoreleasePoolPush();
          v23 = objc_opt_class();
          v24 = [v21 identityValue];
          v25 = [v8 select:v23 identity:v24];

          if (!v25 && ![v8 insertObject:v21])
          {
            objc_autoreleasePoolPop(v22);

            goto LABEL_22;
          }

          objc_autoreleasePoolPop(v22);
        }

        v18 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    *v28 = a3;
    v26 = 1;
    goto LABEL_23;
  }

  if (sub_1000B9298(v7, @"create table PDEndpointInfo(   lastSuccessTime        real default 0,    lastFailureTime        real default 0,    failureCounter         integer default 0,    identifier             text not null,    url                    text not null,    payloadLimitItems      integer default 0,    payloadLimitBytes      integer default 0,    responseTTLSeconds     integer default 0,    requiresAuth           integer default 0,    mescalSignRequests     integer default 0,    mescalVerifyResponses  integer default 0,    isInternal             integer default 1)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index PDEndpointInfo_appIdentifier on PDEndpointInfo (identifier)", 0, 0, 0))
  {
LABEL_27:
    if (sub_1000B9298(v8, @"alter table PDEndpointInfo add column serviceID text", 0, 0, 0) && sub_1000B9298(v8, @"create index PDEndpointInfo_serviceID on PDEndpointInfo (serviceID)", 0, 0, 0))
    {
      v35 = @"bootstrap";
      v9 = [NSArray arrayWithObjects:&v35 count:1];
      if (!sub_1000B9298(v8, @"delete from PDEndpointInfo where identifier=?", 0, v9, 0))
      {
LABEL_22:
        v26 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v34 = @"orion";
      v10 = [NSArray arrayWithObjects:&v34 count:1];

      v11 = sub_1000B9298(v8, @"update PDEndpointInfo set serviceID = ? where serviceID is null", 0, v10, 0);
      if (v11)
      {
        a3 = 2;
        goto LABEL_10;
      }
    }
  }

  v26 = 0;
LABEL_24:

  return v26;
}

- (id)dictionaryRepresentation
{
  v14[0] = @"lastSuccessTime";
  v3 = [NSNumber numberWithDouble:self->_lastSuccessTime];
  v15[0] = v3;
  v14[1] = @"lastFailureTime";
  v4 = [NSNumber numberWithDouble:self->_lastFailureTime];
  v15[1] = v4;
  v14[2] = @"failureCounter";
  v5 = [NSNumber numberWithInteger:self->_failureCounter];
  v15[2] = v5;
  v16 = *&self->_serviceID;
  v14[3] = @"serviceID";
  v14[4] = @"identifier";
  payloadLimitItems = self->_payloadLimitItems;
  urlString = self->_urlString;
  v14[5] = @"url";
  v14[6] = @"payloadLimitItems";
  v7 = [NSNumber numberWithInteger:payloadLimitItems];
  v18 = v7;
  v14[7] = @"payloadLimitBytes";
  v8 = [NSNumber numberWithInteger:self->_payloadLimitBytes];
  v19 = v8;
  v14[8] = @"responseTTLSeconds";
  v9 = [NSNumber numberWithInteger:self->_responseTTLSeconds];
  v20 = v9;
  v14[9] = @"requiresAuth";
  v10 = [NSNumber numberWithBool:self->_requiresAuth];
  v21 = v10;
  v14[10] = @"isInternal";
  v11 = [NSNumber numberWithBool:self->_isInternal];
  v22 = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:11];

  return v12;
}

@end