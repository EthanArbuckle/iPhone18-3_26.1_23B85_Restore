@interface PDPublishSurveyAnswersOperation
- (BOOL)_deleteDeletedEntityWithIDs:(id)a3;
- (BOOL)processPayloadFromResponse:(id)a3 error:(id *)a4;
- (BOOL)processResponseObject:(id)a3 error:(id *)a4;
- (id)requestData;
- (int)_assetCreateOrUpdatePayloadAction:(id)a3;
- (int)_convertActionToPayloadAction:(int64_t)a3;
@end

@implementation PDPublishSurveyAnswersOperation

- (id)requestData
{
  if ([(PDOperation *)self isFinished])
  {
    v3 = 0;
    goto LABEL_76;
  }

  v4 = [(PDOperation *)self database];
  v5 = [*(&self->super.super._responseStatusError + 3) objectID];
  v101 = v4;
  v6 = sub_1000C8950(v4, v5);

  v104 = v6;
  if ([v6 count])
  {
    v108 = objc_alloc_init(PBDataWriter);
    v109 = objc_alloc_init(PDDPPublishSurveyAnswersRequest);
    v107 = [(PDURLRequestOperation *)self operationID];
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
          v16 = [(PDDPPayload *)v13 surveyStepAnswer];
          [v16 setClassIds:v15];

          [(PDDPPublishSurveyAnswersRequest *)v109 addPayload:v13];
          [(PDDPPublishSurveyAnswersRequest *)v109 writeTo:v108];
          [(PDDPPublishSurveyAnswersRequest *)v109 clearPayloads];
          v17 = [v108 data];
          v18 = [v17 length];
          v19 = [(PDURLRequestOperation *)self stats];
          if (v19)
          {
            v19[10] = v18;
          }

          v20 = [(PDURLRequestOperation *)self stats];
          if (v20)
          {
            ++v20[14];
          }

          CLSInitLog();
          v21 = [(PDPublishSurveyAnswersOperation *)self logSubsystem];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v22 = objc_opt_class();
            v23 = v22;
            [(PDDPPayload *)v13 dictionaryRepresentation];
            v25 = v24 = v7;
            *buf = 138543874;
            v139 = v22;
            v140 = 2114;
            v141 = v107;
            v142 = 2112;
            v143 = v25;
            _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ added payload item %@ ", buf, 0x20u);

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
                v35 = [v26 data];
                v36 = [v35 length];
                v37 = [(PDURLRequestOperation *)self stats];
                if (v37)
                {
                  v37[10] = v36;
                }

                v38 = [(PDURLRequestOperation *)self stats];
                if (v38)
                {
                  ++v38[14];
                }

                CLSInitLog();
                v39 = [(PDPublishSurveyAnswersOperation *)self logSubsystem];
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                {
                  v40 = objc_opt_class();
                  v41 = v40;
                  v42 = [v34 dictionaryRepresentation];
                  *buf = 138543874;
                  v139 = v40;
                  v140 = 2114;
                  v141 = v107;
                  v142 = 2112;
                  v143 = v42;
                  _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ added payload item %@ ", buf, 0x20u);

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
    v44 = [*(&self->super.super._responseStatusError + 3) objectID];
    v135[1] = v44;
    v45 = [NSArray arrayWithObjects:v135 count:2];
    v119[0] = _NSConcreteStackBlock;
    v119[1] = 3221225472;
    v119[2] = sub_100083A20;
    v119[3] = &unk_100202A30;
    v119[4] = self;
    [v101 selectAll:v43 where:@"entityName = ? and parentObjectID = ?" bindings:v45 block:v119];

    v46 = objc_opt_class();
    v134[0] = @"CLSAsset";
    v47 = [*(&self->super.super._responseStatusError + 3) objectID];
    v134[1] = v47;
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

          v57 = [(PDDPPayload *)v55 surveyStepAnswer];
          [v57 setObjectId:v53];

          v58 = sub_1000711FC(v101);
          v59 = [v58 objectID];
          v60 = [(PDDPPayload *)v55 surveyStepAnswer];
          [v60 setCreatedBy:v59];

          v61 = [v104 copy];
          v62 = [(PDDPPayload *)v55 surveyStepAnswer];
          [v62 setClassIds:v61];

          [(PDDPPublishSurveyAnswersRequest *)v109 addPayload:v55];
          [(PDDPPublishSurveyAnswersRequest *)v109 writeTo:v108];
          [(PDDPPublishSurveyAnswersRequest *)v109 clearPayloads];
          v63 = [v108 data];
          v64 = [v63 length];
          v65 = [(PDURLRequestOperation *)self stats];
          if (v65)
          {
            v65[10] = v64;
          }

          v66 = [(PDURLRequestOperation *)self stats];
          if (v66)
          {
            ++v66[14];
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

          v76 = [(PDDPPayload *)v74 asset];
          [v76 setObjectId:v72];

          v77 = [v104 copy];
          v78 = [(PDDPPayload *)v74 asset];
          [v78 setClassIds:v77];

          [(PDDPPublishSurveyAnswersRequest *)v109 addPayload:v74];
          [(PDDPPublishSurveyAnswersRequest *)v109 writeTo:v108];
          [(PDDPPublishSurveyAnswersRequest *)v109 clearPayloads];
          v79 = [v108 data];
          v80 = [v79 length];
          v81 = [(PDURLRequestOperation *)self stats];
          if (v81)
          {
            v81[10] = v80;
          }

          v82 = [(PDURLRequestOperation *)self stats];
          if (v82)
          {
            ++v82[14];
          }

          objc_autoreleasePoolPop(v73);
        }

        v69 = [v67 countByEnumeratingWithState:&v110 objects:v132 count:16];
      }

      while (v69);
    }

    v83 = [(PDURLRequestOperation *)self stats];
    if (v83)
    {
      v84 = v83[14];

      v85 = v108;
      if (v84)
      {
        v86 = *(&self->super.super._responseStatusError + 3);
        if (v86)
        {
          v87 = [v86 studentFirstSubmissionDate];

          if (!v87)
          {
            v88 = [CLSSurvey payloadForObject:*(&self->super.super._responseStatusError + 3) action:2 database:v101];
            [(PDDPPublishSurveyAnswersRequest *)v109 addPayload:v88];
            [(PDDPPublishSurveyAnswersRequest *)v109 writeTo:v108];
            [(PDDPPublishSurveyAnswersRequest *)v109 clearPayloads];
            v89 = [v108 data];
            v90 = [v89 length];
            v91 = [(PDURLRequestOperation *)self stats];
            if (v91)
            {
              v91[10] = v90;
            }

            v92 = [(PDURLRequestOperation *)self stats];
            if (v92)
            {
              ++v92[14];
            }

            CLSInitLog();
            v93 = [(PDPublishSurveyAnswersOperation *)self logSubsystem];
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
            {
              v95 = objc_opt_class();
              v96 = v95;
              v97 = [v88 dictionaryRepresentation];
              *buf = 138543874;
              v139 = v95;
              v140 = 2114;
              v141 = v107;
              v142 = 2112;
              v143 = v97;
              _os_log_debug_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ added payload item %@ ", buf, 0x20u);
            }
          }
        }

        v3 = [v108 immutableData];
        goto LABEL_74;
      }
    }

    else
    {
      v85 = v108;
    }

    [(PDEndpointRequestOperation *)self markAsFinished];
    v3 = 0;
LABEL_74:

    goto LABEL_75;
  }

  v94 = [NSError cls_createErrorWithCode:2 description:@"missing classID."];
  [(PDOperation *)self finishWithError:v94];

  v3 = 0;
LABEL_75:

LABEL_76:

  return v3;
}

- (BOOL)processResponseObject:(id)a3 error:(id *)a4
{
  v12.receiver = self;
  v12.super_class = PDPublishSurveyAnswersOperation;
  v5 = [(PDAbstractClassZoneOperation *)&v12 processResponseObject:a3 error:a4];
  if (v5)
  {
    v6 = [*(&self->_answersFromServer + 3) setByAddingObjectsFromSet:*(&self->_answersByError + 3)];
    if ([v6 count])
    {
      v7 = [v6 allObjects];
      v8 = [(PDPublishSurveyAnswersOperation *)self _deleteDeletedEntityWithIDs:v7];

      if ((v8 & 1) == 0)
      {
        CLSInitLog();
        v9 = [(PDPublishSurveyAnswersOperation *)self logSubsystem];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *v11 = 0;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to remove deleted survey answer from PDDeletedEntityID table", v11, 2u);
        }
      }
    }
  }

  return v5;
}

- (BOOL)processPayloadFromResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  v37.receiver = self;
  v37.super_class = PDPublishSurveyAnswersOperation;
  v7 = [(PDAbstractClassZoneOperation *)&v37 processPayloadFromResponse:v6 error:a4];
  if ([v6 type] == 27)
  {
    v8 = [v6 surveyStepAnswer];
    v9 = sub_10001B6E8(v8);

    if (!v9)
    {
      CLSInitLog();
      v9 = [(PDPublishSurveyAnswersOperation *)self logSubsystem];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v27 = objc_opt_class();
        v28 = v27;
        v29 = [(PDURLRequestOperation *)self operationID];
        v30 = [v6 dictionaryRepresentation];
        *buf = 138543874;
        v39 = v27;
        v40 = 2114;
        v41 = v29;
        v42 = 2112;
        v43 = v30;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ ignoring response payload item %@ due to invalid converted object", buf, 0x20u);
      }

      LOBYTE(v7) = 0;
      goto LABEL_24;
    }

    if ([v6 hasStatus])
    {
      v10 = [v6 status];
      v11 = [v10 code] != 1;

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
      [*(&self->_answers + 3) addObject:v9];
LABEL_24:

      goto LABEL_25;
    }

LABEL_12:
    v12 = [v6 status];

    if (v12)
    {
      if (!*(&self->_assets + 3))
      {
        v13 = objc_opt_new();
        v14 = *(&self->_assets + 3);
        *(&self->_assets + 3) = v13;
      }

      v15 = [v6 status];
      v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", sub_100105358([v15 code]));
      v17 = [v16 stringValue];

      CLSInitLog();
      v18 = [(PDPublishSurveyAnswersOperation *)self logSubsystem];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v31 = objc_opt_class();
        v36 = v31;
        v32 = [(PDURLRequestOperation *)self operationID];
        v33 = [v6 dictionaryRepresentation];
        v34 = *a4;
        *buf = 138544386;
        v39 = v31;
        v40 = 2114;
        v41 = v32;
        v42 = 2112;
        v43 = v17;
        v44 = 2112;
        v45 = v33;
        v35 = v33;
        v46 = 2112;
        v47 = v34;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ errorKey %@ for payload item %@ with error %@", buf, 0x34u);
      }

      v19 = [*(&self->_assets + 3) objectForKey:v17];

      if (v19)
      {
        v20 = [*(&self->_assets + 3) valueForKey:v17];
        [v20 addObject:v9];
      }

      else
      {
        v20 = objc_alloc_init(NSMutableArray);
        [v20 addObject:v9];
        [*(&self->_assets + 3) setObject:v20 forKey:v17];
      }
    }

    else
    {
      CLSInitLog();
      v17 = [(PDPublishSurveyAnswersOperation *)self logSubsystem];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v21 = objc_opt_class();
        v22 = v21;
        v23 = [(PDURLRequestOperation *)self operationID];
        v24 = [v6 dictionaryRepresentation];
        v25 = *a4;
        *buf = 138544130;
        v39 = v21;
        v40 = 2114;
        v41 = v23;
        v42 = 2112;
        v43 = v24;
        v44 = 2112;
        v45 = v25;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ ignoring response payload item %@ with error %@", buf, 0x2Au);
      }
    }

    goto LABEL_24;
  }

LABEL_25:

  return v7;
}

- (BOOL)_deleteDeletedEntityWithIDs:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = +[PDDeletedEntityID identityColumnName];
    v6 = [v5 stringByAppendingString:@" in "];

    v7 = [PDDatabase whereSQLForArray:v4 prefix:v6];

    v8 = [(PDOperation *)self database];
    v9 = [v8 deleteAll:objc_opt_class() where:v7 bindings:v4];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (int)_convertActionToPayloadAction:(int64_t)a3
{
  if (a3 >= 4)
  {
    return 1;
  }

  else
  {
    return a3;
  }
}

- (int)_assetCreateOrUpdatePayloadAction:(id)a3
{
  if ([a3 hasNotBeenRereferencedByServer])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end