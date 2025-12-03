@interface PDPublishSurveyAnswersOperation
- (BOOL)_deleteDeletedEntityWithIDs:(id)ds;
- (BOOL)processPayloadFromResponse:(id)response error:(id *)error;
- (BOOL)processResponseObject:(id)object error:(id *)error;
- (id)requestData;
- (int)_assetCreateOrUpdatePayloadAction:(id)action;
- (int)_convertActionToPayloadAction:(int64_t)action;
@end

@implementation PDPublishSurveyAnswersOperation

- (id)requestData
{
  if ([(PDOperation *)self isFinished])
  {
    immutableData = 0;
    goto LABEL_76;
  }

  database = [(PDOperation *)self database];
  objectID = [*(&self->super.super._responseStatusError + 3) objectID];
  v101 = database;
  v6 = sub_1000C8950(database, objectID);

  v104 = v6;
  if ([v6 count])
  {
    v108 = objc_alloc_init(PBDataWriter);
    v109 = objc_alloc_init(PDDPPublishSurveyAnswersRequest);
    operationID = [(PDURLRequestOperation *)self operationID];
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v7 = *(&self->super._responseStatusPayloadFailed + 3);
    v8 = [v7 countByEnumeratingWithState:&v128 objects:v144 count:16];
    if (v8)
    {
      v9 = v8;
      v105 = *v129;
      do
      {
        v10 = 0;
        do
        {
          if (*v129 != v105)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v128 + 1) + 8 * v10);
          v12 = objc_autoreleasePoolPush();
          v13 = objc_alloc_init(PDDPPayload);
          [(PDDPPayload *)v13 setType:27];
          -[PDDPPayload setAction:](v13, "setAction:", -[PDPublishSurveyAnswersOperation _convertActionToPayloadAction:](self, "_convertActionToPayloadAction:", [v11 action]));
          v14 = sub_10001B4AC(v11);
          [(PDDPPayload *)v13 setSurveyStepAnswer:v14];

          v15 = [v104 mutableCopy];
          surveyStepAnswer = [(PDDPPayload *)v13 surveyStepAnswer];
          [surveyStepAnswer setClassIds:v15];

          [(PDDPPublishSurveyAnswersRequest *)v109 addPayload:v13];
          [(PDDPPublishSurveyAnswersRequest *)v109 writeTo:v108];
          [(PDDPPublishSurveyAnswersRequest *)v109 clearPayloads];
          data = [v108 data];
          v18 = [data length];
          stats = [(PDURLRequestOperation *)self stats];
          if (stats)
          {
            stats[10] = v18;
          }

          stats2 = [(PDURLRequestOperation *)self stats];
          if (stats2)
          {
            ++stats2[14];
          }

          CLSInitLog();
          logSubsystem = [(PDPublishSurveyAnswersOperation *)self logSubsystem];
          if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
          {
            v22 = objc_opt_class();
            v23 = v22;
            [(PDDPPayload *)v13 dictionaryRepresentation];
            v25 = v24 = v7;
            *buf = 138543874;
            v139 = v22;
            v140 = 2114;
            v141 = operationID;
            v142 = 2112;
            v143 = v25;
            _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ added payload item %@ ", buf, 0x20u);

            v7 = v24;
          }

          objc_autoreleasePoolPop(v12);
          v10 = v10 + 1;
        }

        while (v9 != v10);
        v9 = [v7 countByEnumeratingWithState:&v128 objects:v144 count:16];
      }

      while (v9);
    }

    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    obj = *(&self->_survey + 3);
    v26 = v108;
    v102 = [obj countByEnumeratingWithState:&v124 objects:v137 count:16];
    if (v102)
    {
      v100 = *v125;
      do
      {
        v27 = 0;
        do
        {
          if (*v125 != v100)
          {
            objc_enumerationMutation(obj);
          }

          v103 = v27;
          v28 = *(*(&v124 + 1) + 8 * v27);
          v29 = [v28 payloadsWithClassIDs:v104 dependencies:0];
          v120 = 0u;
          v121 = 0u;
          v122 = 0u;
          v123 = 0u;
          v30 = [v29 countByEnumeratingWithState:&v120 objects:v136 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v121;
            do
            {
              v33 = 0;
              do
              {
                if (*v121 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v34 = *(*(&v120 + 1) + 8 * v33);
                [v34 setAction:{-[PDPublishSurveyAnswersOperation _assetCreateOrUpdatePayloadAction:](self, "_assetCreateOrUpdatePayloadAction:", v28)}];
                [(PDDPPublishSurveyAnswersRequest *)v109 addPayload:v34];
                [(PDDPPublishSurveyAnswersRequest *)v109 writeTo:v26];
                [(PDDPPublishSurveyAnswersRequest *)v109 clearPayloads];
                data2 = [v26 data];
                v36 = [data2 length];
                stats3 = [(PDURLRequestOperation *)self stats];
                if (stats3)
                {
                  stats3[10] = v36;
                }

                stats4 = [(PDURLRequestOperation *)self stats];
                if (stats4)
                {
                  ++stats4[14];
                }

                CLSInitLog();
                logSubsystem2 = [(PDPublishSurveyAnswersOperation *)self logSubsystem];
                if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_DEBUG))
                {
                  v40 = objc_opt_class();
                  v41 = v40;
                  dictionaryRepresentation = [v34 dictionaryRepresentation];
                  *buf = 138543874;
                  v139 = v40;
                  v140 = 2114;
                  v141 = operationID;
                  v142 = 2112;
                  v143 = dictionaryRepresentation;
                  _os_log_debug_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ added payload item %@ ", buf, 0x20u);

                  v26 = v108;
                }

                v33 = v33 + 1;
              }

              while (v31 != v33);
              v31 = [v29 countByEnumeratingWithState:&v120 objects:v136 count:16];
            }

            while (v31);
          }

          v27 = v103 + 1;
        }

        while ((v103 + 1) != v102);
        v102 = [obj countByEnumeratingWithState:&v124 objects:v137 count:16];
      }

      while (v102);
    }

    v43 = objc_opt_class();
    v135[0] = @"CLSSurveyAnswerItem";
    objectID2 = [*(&self->super.super._responseStatusError + 3) objectID];
    v135[1] = objectID2;
    v45 = [NSArray arrayWithObjects:v135 count:2];
    v119[0] = _NSConcreteStackBlock;
    v119[1] = 3221225472;
    v119[2] = sub_100083A20;
    v119[3] = &unk_100202A30;
    v119[4] = self;
    [v101 selectAll:v43 where:@"entityName = ? and parentObjectID = ?" bindings:v45 block:v119];

    v46 = objc_opt_class();
    v134[0] = @"CLSAsset";
    objectID3 = [*(&self->super.super._responseStatusError + 3) objectID];
    v134[1] = objectID3;
    v48 = [NSArray arrayWithObjects:v134 count:2];
    v118[0] = _NSConcreteStackBlock;
    v118[1] = 3221225472;
    v118[2] = sub_100083A8C;
    v118[3] = &unk_100202A30;
    v118[4] = self;
    [v101 selectAll:v46 where:@"entityName = ? and parentObjectID = ?" bindings:v48 block:v118];

    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v49 = *(&self->_answersFromServer + 3);
    v50 = [v49 countByEnumeratingWithState:&v114 objects:v133 count:16];
    if (v50)
    {
      v51 = v50;
      v106 = *v115;
      do
      {
        for (i = 0; i != v51; i = i + 1)
        {
          if (*v115 != v106)
          {
            objc_enumerationMutation(v49);
          }

          v53 = *(*(&v114 + 1) + 8 * i);
          v54 = objc_autoreleasePoolPush();
          v55 = objc_alloc_init(PDDPPayload);
          [(PDDPPayload *)v55 setType:27];
          [(PDDPPayload *)v55 setAction:3];
          v56 = objc_opt_new();
          [(PDDPPayload *)v55 setSurveyStepAnswer:v56];

          surveyStepAnswer2 = [(PDDPPayload *)v55 surveyStepAnswer];
          [surveyStepAnswer2 setObjectId:v53];

          v58 = sub_1000711FC(v101);
          objectID4 = [v58 objectID];
          surveyStepAnswer3 = [(PDDPPayload *)v55 surveyStepAnswer];
          [surveyStepAnswer3 setCreatedBy:objectID4];

          v61 = [v104 copy];
          surveyStepAnswer4 = [(PDDPPayload *)v55 surveyStepAnswer];
          [surveyStepAnswer4 setClassIds:v61];

          [(PDDPPublishSurveyAnswersRequest *)v109 addPayload:v55];
          [(PDDPPublishSurveyAnswersRequest *)v109 writeTo:v108];
          [(PDDPPublishSurveyAnswersRequest *)v109 clearPayloads];
          data3 = [v108 data];
          v64 = [data3 length];
          stats5 = [(PDURLRequestOperation *)self stats];
          if (stats5)
          {
            stats5[10] = v64;
          }

          stats6 = [(PDURLRequestOperation *)self stats];
          if (stats6)
          {
            ++stats6[14];
          }

          objc_autoreleasePoolPop(v54);
        }

        v51 = [v49 countByEnumeratingWithState:&v114 objects:v133 count:16];
      }

      while (v51);
    }

    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v67 = *(&self->_answersByError + 3);
    v68 = [v67 countByEnumeratingWithState:&v110 objects:v132 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v111;
      do
      {
        for (j = 0; j != v69; j = j + 1)
        {
          if (*v111 != v70)
          {
            objc_enumerationMutation(v67);
          }

          v72 = *(*(&v110 + 1) + 8 * j);
          v73 = objc_autoreleasePoolPush();
          v74 = objc_alloc_init(PDDPPayload);
          [(PDDPPayload *)v74 setType:15];
          [(PDDPPayload *)v74 setAction:3];
          v75 = objc_opt_new();
          [(PDDPPayload *)v74 setAsset:v75];

          asset = [(PDDPPayload *)v74 asset];
          [asset setObjectId:v72];

          v77 = [v104 copy];
          asset2 = [(PDDPPayload *)v74 asset];
          [asset2 setClassIds:v77];

          [(PDDPPublishSurveyAnswersRequest *)v109 addPayload:v74];
          [(PDDPPublishSurveyAnswersRequest *)v109 writeTo:v108];
          [(PDDPPublishSurveyAnswersRequest *)v109 clearPayloads];
          data4 = [v108 data];
          v80 = [data4 length];
          stats7 = [(PDURLRequestOperation *)self stats];
          if (stats7)
          {
            stats7[10] = v80;
          }

          stats8 = [(PDURLRequestOperation *)self stats];
          if (stats8)
          {
            ++stats8[14];
          }

          objc_autoreleasePoolPop(v73);
        }

        v69 = [v67 countByEnumeratingWithState:&v110 objects:v132 count:16];
      }

      while (v69);
    }

    stats9 = [(PDURLRequestOperation *)self stats];
    if (stats9)
    {
      v84 = stats9[14];

      v85 = v108;
      if (v84)
      {
        v86 = *(&self->super.super._responseStatusError + 3);
        if (v86)
        {
          studentFirstSubmissionDate = [v86 studentFirstSubmissionDate];

          if (!studentFirstSubmissionDate)
          {
            v88 = [CLSSurvey payloadForObject:*(&self->super.super._responseStatusError + 3) action:2 database:v101];
            [(PDDPPublishSurveyAnswersRequest *)v109 addPayload:v88];
            [(PDDPPublishSurveyAnswersRequest *)v109 writeTo:v108];
            [(PDDPPublishSurveyAnswersRequest *)v109 clearPayloads];
            data5 = [v108 data];
            v90 = [data5 length];
            stats10 = [(PDURLRequestOperation *)self stats];
            if (stats10)
            {
              stats10[10] = v90;
            }

            stats11 = [(PDURLRequestOperation *)self stats];
            if (stats11)
            {
              ++stats11[14];
            }

            CLSInitLog();
            logSubsystem3 = [(PDPublishSurveyAnswersOperation *)self logSubsystem];
            if (os_log_type_enabled(logSubsystem3, OS_LOG_TYPE_DEBUG))
            {
              v95 = objc_opt_class();
              v96 = v95;
              dictionaryRepresentation2 = [v88 dictionaryRepresentation];
              *buf = 138543874;
              v139 = v95;
              v140 = 2114;
              v141 = operationID;
              v142 = 2112;
              v143 = dictionaryRepresentation2;
              _os_log_debug_impl(&_mh_execute_header, logSubsystem3, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ added payload item %@ ", buf, 0x20u);
            }
          }
        }

        immutableData = [v108 immutableData];
        goto LABEL_74;
      }
    }

    else
    {
      v85 = v108;
    }

    [(PDEndpointRequestOperation *)self markAsFinished];
    immutableData = 0;
LABEL_74:

    goto LABEL_75;
  }

  v94 = [NSError cls_createErrorWithCode:2 description:@"missing classID."];
  [(PDOperation *)self finishWithError:v94];

  immutableData = 0;
LABEL_75:

LABEL_76:

  return immutableData;
}

- (BOOL)processResponseObject:(id)object error:(id *)error
{
  v12.receiver = self;
  v12.super_class = PDPublishSurveyAnswersOperation;
  v5 = [(PDAbstractClassZoneOperation *)&v12 processResponseObject:object error:error];
  if (v5)
  {
    v6 = [*(&self->_answersFromServer + 3) setByAddingObjectsFromSet:*(&self->_answersByError + 3)];
    if ([v6 count])
    {
      allObjects = [v6 allObjects];
      v8 = [(PDPublishSurveyAnswersOperation *)self _deleteDeletedEntityWithIDs:allObjects];

      if ((v8 & 1) == 0)
      {
        CLSInitLog();
        logSubsystem = [(PDPublishSurveyAnswersOperation *)self logSubsystem];
        if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_ERROR))
        {
          *v11 = 0;
          _os_log_error_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_ERROR, "failed to remove deleted survey answer from PDDeletedEntityID table", v11, 2u);
        }
      }
    }
  }

  return v5;
}

- (BOOL)processPayloadFromResponse:(id)response error:(id *)error
{
  responseCopy = response;
  v37.receiver = self;
  v37.super_class = PDPublishSurveyAnswersOperation;
  v7 = [(PDAbstractClassZoneOperation *)&v37 processPayloadFromResponse:responseCopy error:error];
  if ([responseCopy type] == 27)
  {
    surveyStepAnswer = [responseCopy surveyStepAnswer];
    logSubsystem = sub_10001B6E8(surveyStepAnswer);

    if (!logSubsystem)
    {
      CLSInitLog();
      logSubsystem = [(PDPublishSurveyAnswersOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
      {
        v27 = objc_opt_class();
        v28 = v27;
        operationID = [(PDURLRequestOperation *)self operationID];
        dictionaryRepresentation = [responseCopy dictionaryRepresentation];
        *buf = 138543874;
        v39 = v27;
        v40 = 2114;
        v41 = operationID;
        v42 = 2112;
        v43 = dictionaryRepresentation;
        _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ ignoring response payload item %@ due to invalid converted object", buf, 0x20u);
      }

      LOBYTE(v7) = 0;
      goto LABEL_24;
    }

    if ([responseCopy hasStatus])
    {
      status = [responseCopy status];
      v11 = [status code] != 1;

      if (!v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = 0;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    if (!v11)
    {
      [*(&self->_answers + 3) addObject:logSubsystem];
LABEL_24:

      goto LABEL_25;
    }

LABEL_12:
    status2 = [responseCopy status];

    if (status2)
    {
      if (!*(&self->_assets + 3))
      {
        v13 = objc_opt_new();
        v14 = *(&self->_assets + 3);
        *(&self->_assets + 3) = v13;
      }

      status3 = [responseCopy status];
      v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", sub_100105358([status3 code]));
      stringValue = [v16 stringValue];

      CLSInitLog();
      logSubsystem2 = [(PDPublishSurveyAnswersOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_DEBUG))
      {
        v31 = objc_opt_class();
        v36 = v31;
        operationID2 = [(PDURLRequestOperation *)self operationID];
        dictionaryRepresentation2 = [responseCopy dictionaryRepresentation];
        v34 = *error;
        *buf = 138544386;
        v39 = v31;
        v40 = 2114;
        v41 = operationID2;
        v42 = 2112;
        v43 = stringValue;
        v44 = 2112;
        v45 = dictionaryRepresentation2;
        v35 = dictionaryRepresentation2;
        v46 = 2112;
        v47 = v34;
        _os_log_debug_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ errorKey %@ for payload item %@ with error %@", buf, 0x34u);
      }

      v19 = [*(&self->_assets + 3) objectForKey:stringValue];

      if (v19)
      {
        v20 = [*(&self->_assets + 3) valueForKey:stringValue];
        [v20 addObject:logSubsystem];
      }

      else
      {
        v20 = objc_alloc_init(NSMutableArray);
        [v20 addObject:logSubsystem];
        [*(&self->_assets + 3) setObject:v20 forKey:stringValue];
      }
    }

    else
    {
      CLSInitLog();
      stringValue = [(PDPublishSurveyAnswersOperation *)self logSubsystem];
      if (os_log_type_enabled(stringValue, OS_LOG_TYPE_DEBUG))
      {
        v21 = objc_opt_class();
        v22 = v21;
        operationID3 = [(PDURLRequestOperation *)self operationID];
        dictionaryRepresentation3 = [responseCopy dictionaryRepresentation];
        v25 = *error;
        *buf = 138544130;
        v39 = v21;
        v40 = 2114;
        v41 = operationID3;
        v42 = 2112;
        v43 = dictionaryRepresentation3;
        v44 = 2112;
        v45 = v25;
        _os_log_debug_impl(&_mh_execute_header, stringValue, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ ignoring response payload item %@ with error %@", buf, 0x2Au);
      }
    }

    goto LABEL_24;
  }

LABEL_25:

  return v7;
}

- (BOOL)_deleteDeletedEntityWithIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    v5 = +[PDDeletedEntityID identityColumnName];
    v6 = [v5 stringByAppendingString:@" in "];

    v7 = [PDDatabase whereSQLForArray:dsCopy prefix:v6];

    database = [(PDOperation *)self database];
    v9 = [database deleteAll:objc_opt_class() where:v7 bindings:dsCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (int)_convertActionToPayloadAction:(int64_t)action
{
  if (action >= 4)
  {
    return 1;
  }

  else
  {
    return action;
  }
}

- (int)_assetCreateOrUpdatePayloadAction:(id)action
{
  if ([action hasNotBeenRereferencedByServer])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end