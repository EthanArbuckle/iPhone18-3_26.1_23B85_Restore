@interface PDDevEndpointServer
- (BOOL)copyClass:(id)a3 fromDB:(id)a4 toDB:(id)a5;
- (BOOL)copyHandout:(id)a3 fromDB:(id)a4 toDB:(id)a5;
- (BOOL)insertDefaultCollaborationStatesFor:(id)a3 forClassID:(id)a4 toPersonIDs:(id)a5 fromPersonID:(id)a6;
- (PDDatabase)studentDB;
- (PDDatabase)teacherDB;
- (id)_applyCollaborationStateChanges:(id)a3;
- (id)_createHandoutAssignedItemFrom:(id)a3 withError:(id *)a4;
- (id)database;
- (id)statusReport;
- (void)generateReports;
- (void)handleCollaborationStateChangesForMarkActivityAsComplete:(id)a3;
- (void)populateDevDB:(id)a3 forStudent:(BOOL)a4;
- (void)processSavedObjects:(id)a3;
- (void)remote_deleteAdminRequestID:(id)a3 completion:(id)a4;
- (void)remote_fetchAndCompleteActiveAssignedActivitiesForContextPath:(id)a3 withCompletion:(id)a4;
- (void)remote_fetchHandoutAttachmentForDocumentURL:(id)a3 withCompletion:(id)a4;
- (void)remote_publishAdminRequests:(id)a3 withRequestor:(id)a4 adminRequestAccounts:(id)a5 completion:(id)a6;
- (void)remote_publishClass:(id)a3 membersToInsert:(id)a4 membersToDelete:(id)a5 completion:(id)a6;
- (void)remote_publishCollaborationStateChanges:(id)a3 completion:(id)a4;
- (void)remote_publishHandoutGraph:(id)a3 completion:(id)a4;
- (void)remote_publishSurveyAnswers:(id)a3 completion:(id)a4;
- (void)remote_saveObjects:(id)a3 saveResponse:(id)a4 completion:(id)a5;
- (void)remote_validateAndCreateHandoutAssignedItem:(id)a3 withCompletion:(id)a4;
@end

@implementation PDDevEndpointServer

- (id)statusReport
{
  v4.receiver = self;
  v4.super_class = PDDevEndpointServer;
  v2 = [(PDEndpointServer *)&v4 statusReport];
  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"is connected as dev"];

  return v2;
}

- (void)remote_publishClass:(id)a3 membersToInsert:(id)a4 membersToDelete:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  sub_100023888(self, a2);
  v15 = [(PDDevEndpointServer *)self database];
  v16 = [(PDEndpointServer *)self daemon];
  v17 = [v16 mode];

  v18 = [(PDEndpointServer *)self client];
  if (v18)
  {
    v19 = v18[26];
  }

  else
  {
    v19 = 0;
  }

  if (v15)
  {
    v20 = sub_1000717E8(v15);
    if (((v17 == 2) & v19) == 1 && (v20 & 2) != 0)
    {
      v21 = [(PDEndpointServer *)self client];
      v22 = sub_1000B2528(v21);

      v43[0] = 0;
      v43[1] = v43;
      v43[2] = 0x3032000000;
      v43[3] = sub_1000BAD08;
      v43[4] = sub_1000BAD18;
      v23 = v11;
      v44 = v23;
      v33 = _NSConcreteStackBlock;
      v34 = 3221225472;
      v35 = sub_1000BAD20;
      v36 = &unk_1002045A0;
      v42 = v43;
      v24 = v22;
      v37 = v24;
      v25 = v15;
      v38 = v25;
      v39 = v13;
      v40 = v12;
      v26 = v23;
      v41 = v26;
      v27 = [v25 performTransaction:&v33 forWriting:1];
      if (v26)
      {
        v28 = [(PDDevEndpointServer *)self studentDB:v33];
        v29 = [(PDDevEndpointServer *)self copyClass:v26 fromDB:v25 toDB:v28];

        if (v29)
        {
LABEL_8:
          v30 = 0;
          v31 = 1;
LABEL_12:
          v14[2](v14, v31, v30);

          _Block_object_dispose(v43, 8);
          goto LABEL_13;
        }
      }

      else if (v27)
      {
        goto LABEL_8;
      }

      v30 = [NSError cls_createErrorWithCode:100 description:@"Failed to create class.", v33, v34, v35, v36];
      v31 = 0;
      goto LABEL_12;
    }
  }

  v32 = [NSError cls_createErrorWithCode:4 description:@"Creating classes not allowed."];
  v14[2](v14, 0, v32);

LABEL_13:
}

- (void)remote_publishHandoutGraph:(id)a3 completion:(id)a4
{
  v41 = a3;
  v42 = a4;
  sub_100023888(self, a2);
  v43 = self;
  v44 = [(PDDevEndpointServer *)self database];
  v7 = [(PDEndpointServer *)self daemon];
  v8 = [v7 mode];

  v9 = [(PDEndpointServer *)self client];
  if (v9)
  {
    v10 = v9[26];
  }

  else
  {
    v10 = 0;
  }

  if (v44)
  {
    v11 = sub_1000717E8(v44);
    if (((v8 == 2) & v10) == 1 && (v11 & 2) != 0)
    {
      v79 = 0;
      v12 = [(PDDevEndpointServer *)v43 validateHandoutGraph:v41 error:&v79];
      v13 = v79;
      v40 = v13;
      if ((v12 & 1) == 0)
      {
        v42[2](v42, 0, v13);
LABEL_28:

        goto LABEL_29;
      }

      v14 = [(PDEndpointServer *)v43 client];
      v39 = sub_1000B2528(v14);

      v77[0] = 0;
      v77[1] = v77;
      v77[2] = 0x3032000000;
      v77[3] = sub_1000BAD08;
      v77[4] = sub_1000BAD18;
      v15 = sub_1000711FC(v44);
      v78 = [v15 objectID];

      v71 = 0;
      v72 = &v71;
      v73 = 0x3032000000;
      v74 = sub_1000BAD08;
      v75 = sub_1000BAD18;
      v76 = 0;
      v65 = 0;
      v66 = &v65;
      v67 = 0x3032000000;
      v68 = sub_1000BAD08;
      v69 = sub_1000BAD18;
      v70 = objc_opt_new();
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v16 = v41;
      v17 = [v16 countByEnumeratingWithState:&v61 objects:v81 count:16];
      if (v17)
      {
        v18 = *v62;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v62 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v61 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = v20;
              v22 = [v21 personID];

              if (v22)
              {
                v23 = v66[5];
                v24 = [v21 personID];
                [v23 addObject:v24];
              }

              v25 = [v21 classID];

              if (v25)
              {
                v26 = [v21 classID];
                v27 = v72[5];
                v72[5] = v26;

                v80[0] = v72[5];
                v80[1] = &off_10021B6F0;
                v28 = [NSArray arrayWithObjects:v80 count:2];
                v29 = objc_opt_class();
                v60[0] = _NSConcreteStackBlock;
                v60[1] = 3221225472;
                v60[2] = sub_1000BB61C;
                v60[3] = &unk_1002045C8;
                v60[4] = &v65;
                [v44 selectAll:v29 where:@"parentObjectID = ? AND roles = ?" bindings:v28 block:v60];
              }
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v61 objects:v81 count:16];
        }

        while (v17);
      }

      v54 = 0;
      v55 = &v54;
      v56 = 0x3032000000;
      v57 = sub_1000BAD08;
      v58 = sub_1000BAD18;
      v59 = 0;
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_1000BB67C;
      v45[3] = &unk_1002045F0;
      v46 = v16;
      v50 = &v54;
      v30 = v39;
      v47 = v30;
      v31 = v44;
      v48 = v31;
      v49 = v43;
      v51 = &v71;
      v52 = &v65;
      v53 = v77;
      v32 = [v31 performTransaction:v45 forWriting:1];
      v33 = v55[5];
      if (v33)
      {
        v34 = [(PDDevEndpointServer *)v43 studentDB];
        v35 = [(PDDevEndpointServer *)v43 copyHandout:v33 fromDB:v31 toDB:v34];

        if (v35)
        {
LABEL_22:
          v36 = 0;
          v37 = 1;
LABEL_27:
          v42[2](v42, v37, v36);

          _Block_object_dispose(&v54, 8);
          _Block_object_dispose(&v65, 8);

          _Block_object_dispose(&v71, 8);
          _Block_object_dispose(v77, 8);

          goto LABEL_28;
        }
      }

      else if (v32)
      {
        goto LABEL_22;
      }

      v36 = [NSError cls_createErrorWithCode:100 description:@"Failed to publish handout."];
      v37 = 0;
      goto LABEL_27;
    }
  }

  v38 = [NSError cls_createErrorWithCode:4 description:@"Publishing handouts not allowed."];
  v42[2](v42, 0, v38);

LABEL_29:
}

- (BOOL)copyHandout:(id)a3 fromDB:(id)a4 toDB:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 insertOrUpdateObject:v7])
  {
    v100[0] = 0;
    v100[1] = v100;
    v100[2] = 0x3032000000;
    v100[3] = sub_1000BAD08;
    v100[4] = sub_1000BAD18;
    v10 = sub_1000711FC(v9);
    v101 = [v10 objectID];

    v96 = 0;
    v97 = &v96;
    v98 = 0x2020000000;
    v99 = 0;
    v11 = [v7 objectID];
    v102 = v11;
    v12 = [NSArray arrayWithObjects:&v102 count:1];

    v13 = objc_opt_class();
    v93[0] = _NSConcreteStackBlock;
    v93[1] = 3221225472;
    v93[2] = sub_1000BC55C;
    v93[3] = &unk_100204618;
    v95 = &v96;
    v14 = v9;
    v94 = v14;
    [v8 selectAll:v13 where:@"parentObjectID = ?" bindings:v12 block:v93];
    if (v97[3])
    {
      v15 = 0;
      v16 = @"parentObjectID = ?";
    }

    else
    {
      v17 = objc_opt_new();
      v18 = objc_opt_new();
      v19 = objc_opt_new();
      v20 = [v7 objectID];
      [v17 addObject:v20];

      v21 = objc_opt_class();
      v87[0] = _NSConcreteStackBlock;
      v87[1] = 3221225472;
      v87[2] = sub_1000BC5AC;
      v87[3] = &unk_100204640;
      v92 = &v96;
      v22 = v14;
      v88 = v22;
      v23 = v17;
      v89 = v23;
      v24 = v18;
      v90 = v24;
      v25 = v19;
      v91 = v25;
      [v8 selectAll:v21 where:@"parentObjectID = ?" bindings:v12 block:v87];
      if (v97[3])
      {
        v15 = 0;
        v16 = @"parentObjectID = ?";
      }

      else
      {
        v26 = objc_opt_class();
        v84[0] = _NSConcreteStackBlock;
        v84[1] = 3221225472;
        v84[2] = sub_1000BC6C0;
        v84[3] = &unk_100204668;
        v86 = &v96;
        v50 = v22;
        v85 = v50;
        [v8 selectAll:v26 where:@"parentObjectID = ?" bindings:v12 block:v84];
        if (v97[3])
        {
          v15 = 0;
          v16 = @"parentObjectID = ?";
        }

        else
        {
          if ([v24 count])
          {
            v27 = [PDDatabase whereSQLForArray:v24 prefix:@"parentObjectID in "];
            v28 = objc_opt_class();
            v80[0] = _NSConcreteStackBlock;
            v80[1] = 3221225472;
            v80[2] = sub_1000BC710;
            v80[3] = &unk_100204690;
            v83 = &v96;
            v81 = v50;
            v82 = v23;
            [v8 selectAll:v28 where:v27 bindings:v24 block:v80];
          }

          else
          {
            v27 = @"parentObjectID = ?";
          }

          v49 = objc_opt_new();
          if ([v25 count])
          {
            v29 = [PDDatabase whereSQLForArray:v24 prefix:@"parentObjectID in "];

            v30 = objc_opt_class();
            v76[0] = _NSConcreteStackBlock;
            v76[1] = 3221225472;
            v76[2] = sub_1000BC7A4;
            v76[3] = &unk_1002046B8;
            v79 = &v96;
            v77 = v50;
            v78 = v49;
            [v8 selectAll:v30 where:v29 bindings:v25 block:v76];
          }

          else
          {
            v29 = v27;
          }

          v48 = objc_opt_new();
          v45 = objc_opt_new();
          v47 = objc_opt_new();
          if ([v49 count])
          {
            v31 = [PDDatabase whereSQLForArray:v24 prefix:@"parentObjectID in "];

            v32 = objc_opt_class();
            v69[0] = _NSConcreteStackBlock;
            v69[1] = 3221225472;
            v69[2] = sub_1000BC848;
            v69[3] = &unk_1002046E0;
            v75 = &v96;
            v70 = v50;
            v71 = v23;
            v72 = v48;
            v73 = v45;
            v74 = v47;
            [v8 selectAll:v32 where:v31 bindings:v49 block:v69];
          }

          else
          {
            v31 = v29;
          }

          v33 = objc_opt_new();
          if ([v48 count])
          {
            v34 = [PDDatabase whereSQLForArray:v24 prefix:@"parentObjectID in "];

            v35 = objc_opt_class();
            v65[0] = _NSConcreteStackBlock;
            v65[1] = 3221225472;
            v65[2] = sub_1000BC968;
            v65[3] = &unk_100204708;
            v68 = &v96;
            v66 = v50;
            v67 = v33;
            [v8 selectAll:v35 where:v34 bindings:v48 block:v65];
          }

          else
          {
            v34 = v31;
          }

          if ([v47 count])
          {
            v36 = [PDDatabase whereSQLForArray:v24 prefix:@"parentObjectID in "];

            v37 = objc_opt_class();
            v62[0] = _NSConcreteStackBlock;
            v62[1] = 3221225472;
            v62[2] = sub_1000BCA0C;
            v62[3] = &unk_100204618;
            v64 = &v96;
            v63 = v50;
            [v8 selectAll:v37 where:v36 bindings:v47 block:v62];
          }

          else
          {
            v36 = v34;
          }

          if ([v46 count])
          {
            v38 = [PDDatabase whereSQLForArray:v24 prefix:@"parentObjectID in "];

            v39 = objc_opt_class();
            v59[0] = _NSConcreteStackBlock;
            v59[1] = 3221225472;
            v59[2] = sub_1000BCA5C;
            v59[3] = &unk_100204618;
            v61 = &v96;
            v60 = v50;
            [v8 selectAll:v39 where:v38 bindings:v46 block:v59];
          }

          else
          {
            v38 = v36;
          }

          if ([v33 count])
          {
            v40 = [PDDatabase whereSQLForArray:v24 prefix:@"parentObjectID in "];

            v41 = objc_opt_class();
            v55[0] = _NSConcreteStackBlock;
            v55[1] = 3221225472;
            v55[2] = sub_1000BCAAC;
            v55[3] = &unk_100204730;
            v58 = &v96;
            v56 = v50;
            v57 = v23;
            [v8 selectAll:v41 where:v40 bindings:v33 block:v55];
          }

          else
          {
            v40 = v38;
          }

          if ([v23 count])
          {
            v16 = [PDDatabase whereSQLForArray:v23 prefix:@"parentObjectID in "];

            v42 = objc_opt_class();
            v51[0] = _NSConcreteStackBlock;
            v51[1] = 3221225472;
            v51[2] = sub_1000BCB40;
            v51[3] = &unk_100204758;
            v53 = v100;
            v54 = &v96;
            v52 = v50;
            [v8 selectAll:v42 where:v16 bindings:v23 block:v51];
          }

          else
          {
            v16 = v40;
          }

          v43 = *(v97 + 24);

          v15 = v43 ^ 1;
        }
      }
    }

    _Block_object_dispose(&v96, 8);
    _Block_object_dispose(v100, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

- (BOOL)copyClass:(id)a3 fromDB:(id)a4 toDB:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 insertOrUpdateObject:v7])
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v10 = [v7 objectID];
    v28 = v10;
    v11 = [NSArray arrayWithObjects:&v28 count:1];

    v12 = objc_opt_class();
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000BCE14;
    v21[3] = &unk_100204618;
    v23 = &v24;
    v13 = v9;
    v22 = v13;
    [v8 selectAll:v12 where:@"parentObjectID = ?" bindings:v11 block:v21];
    if (v25[3])
    {
      v14 = 0;
    }

    else
    {
      v15 = objc_opt_class();
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000BCE64;
      v18[3] = &unk_100204780;
      v20 = &v24;
      v19 = v13;
      [v8 selectAll:v15 where:@"parentObjectID = ?" bindings:v11 block:v18];
      v16 = *(v25 + 24);

      v14 = v16 ^ 1;
    }

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (void)remote_saveObjects:(id)a3 saveResponse:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(PDDevEndpointServer *)self processSavedObjects:v10];
  v11.receiver = self;
  v11.super_class = PDDevEndpointServer;
  [(PDEndpointServer *)&v11 remote_saveObjects:v10 saveResponse:v9 completion:v8];

  [(PDDevEndpointServer *)self generateReports];
}

- (void)processSavedObjects:(id)a3
{
  v4 = a3;
  v5 = [(PDEndpointServer *)self daemon];
  v6 = [v5 mode];

  if (v6 == 2)
  {
    v7 = [(PDDevEndpointServer *)self studentDB];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = v4;
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v21 + 1) + 8 * i);
          if ([v20 canCopyToDatabase:{v7, v21}])
          {
            [v20 writeInDatabase:v7];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v17);
    }

LABEL_28:
  }

  else if (v6 == 1)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (!v8)
    {
      goto LABEL_28;
    }

    v9 = v8;
    v10 = *v26;
    while (1)
    {
      for (j = 0; j != v9; j = j + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          if ([v13 completionStatus] == 1)
          {
            v14 = 3;
            goto LABEL_13;
          }

          if ([v13 completionStatus] == 2)
          {
            v14 = 0;
LABEL_13:
            [v13 setCompletionStatus:v14];
          }

          continue;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (!v9)
      {
        goto LABEL_28;
      }
    }
  }
}

- (void)generateReports
{
  v3 = [(PDEndpointServer *)self daemon];
  v4 = [v3 mode];

  if (v4 == 1)
  {
    v5 = [(PDDevEndpointServer *)self studentDB];
    v6 = [(PDDevEndpointServer *)self teacherDB];
    v7 = objc_opt_class();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000BD27C;
    v10[3] = &unk_1002047A8;
    v11 = v5;
    v12 = v6;
    v8 = v6;
    v9 = v5;
    [v9 selectAll:v7 block:v10];
  }
}

- (id)_applyCollaborationStateChanges:(id)a3
{
  v4 = a3;
  v5 = [(PDDevEndpointServer *)self database];
  v6 = sub_1000711FC(v5);

  if (v6)
  {
    v7 = sub_1000711FC(v5);
    v31 = [v7 objectID];

    v8 = [(PDDevEndpointServer *)self teacherDB];
    v9 = sub_1000711FC(v8);
    v35 = [v9 objectID];

    v38 = objc_opt_new();
    v37 = objc_opt_new();
    v10 = objc_opt_new();
    v11 = sub_1000711FC(v5);

    if (v11)
    {
      v28 = self;
      v29 = v5;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v30 = v4;
      obj = v4;
      v34 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v34)
      {
        v33 = *v44;
        do
        {
          v12 = 0;
          do
          {
            if (*v44 != v33)
            {
              objc_enumerationMutation(obj);
            }

            v36 = v12;
            v13 = *(*(&v43 + 1) + 8 * v12);
            v14 = [v13 senderPersonID];

            if (!v14)
            {
              [v13 setSenderPersonID:v31];
            }

            v15 = [v13 senderPersonID];
            v16 = v15;
            v17 = (v35 | v15) == 0;
            if (v35 && v15)
            {
              v18 = [v13 senderPersonID];
              v17 = [v35 isEqualToString:v18];
            }

            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v19 = [v13 changedDomains];
            v20 = [v19 countByEnumeratingWithState:&v39 objects:v47 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v40;
              do
              {
                for (i = 0; i != v21; i = i + 1)
                {
                  if (*v40 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = [v13 stateForDomain:{objc_msgSend(*(*(&v39 + 1) + 8 * i), "integerValue")}];
                  if (v24)
                  {
                    [v38 addObject:v24];
                    +[PDSchoolworkCollaborationStateAdaptor devMode_MutateStateChanges:forDomain:](PDSchoolworkCollaborationStateAdaptor, "devMode_MutateStateChanges:forDomain:", v13, [v24 domain]);
                    [PDSchoolworkCollaborationStateAdaptor devMode_DistributeState:v24 sentByTeacher:v17 toTeacherStates:v10 toStudentStates:v37];
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v39 objects:v47 count:16];
              }

              while (v21);
            }

            v12 = v36 + 1;
          }

          while ((v36 + 1) != v34);
          v34 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v34);
      }

      v5 = v29;
      v4 = v30;
      self = v28;
    }

    v25 = [(PDDevEndpointServer *)self studentDB];
    [v25 insertOrUpdateObjects:v38];

    v26 = [(PDDevEndpointServer *)self teacherDB];
    [v26 insertOrUpdateObjects:v38];
  }

  else
  {
    v38 = &__NSArray0__struct;
  }

  return v38;
}

- (void)remote_publishCollaborationStateChanges:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDEndpointServer *)self client];
  if (v8 && (v9 = v8[26], v8, (v9 & 1) != 0))
  {
    v10 = [(PDDevEndpointServer *)self database];
    v11 = sub_1000711FC(v10);

    if (v11)
    {
      v12 = [(PDDevEndpointServer *)self _applyCollaborationStateChanges:v6];
      v7[2](v7, v12, &__NSArray0__struct, 0);
    }

    else
    {
      CLSInitLog();
      v13 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        v14[0] = 0;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Must be signed in to publish state changes.", v14, 2u);
      }

      v12 = [NSError cls_createErrorWithCode:2 description:@"Must be signed in to publish state changes."];
      (v7)[2](v7, 0, 0, v12);
    }
  }

  else
  {
    v10 = [NSError cls_createErrorWithCode:4 description:@"Changing assignment state not allowed. Not a Dashboard Client."];
    (v7)[2](v7, 0, 0, v10);
  }
}

- (void)handleCollaborationStateChangesForMarkActivityAsComplete:(id)a3
{
  v4 = a3;
  v5 = [PDSchoolworkCollaborationStateChangeManager alloc];
  v6 = [(PDEndpointServer *)self client];
  v7 = sub_1000B2528(v6);
  v8 = [(PDDevEndpointServer *)self database];
  v27 = sub_1001111CC(&v5->super.isa, v7, v8);

  v9 = [(PDDevEndpointServer *)self database];
  v10 = sub_1000711FC(v9);

  if (v10)
  {
    v11 = sub_1000711FC(v9);
    v12 = [v11 objectID];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    if (v4)
    {
      v13 = v4[2];
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [v9 select:objc_opt_class() identity:*(*(&v28 + 1) + 8 * i)];
          v20 = v19;
          if (v19)
          {
            [v19 setCompletionStatus:3];
            sub_100111334(v27, v20, v12);
            v21 = [(PDDevEndpointServer *)self studentDB];
            [v21 insertOrUpdateObject:v20];

            v22 = [(PDDevEndpointServer *)self teacherDB];
            [v22 insertOrUpdateObject:v20];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v16);
    }

    v23 = sub_100111548(v27);
    v24 = [(PDDevEndpointServer *)self _applyCollaborationStateChanges:v23];

    if (v4)
    {
      v25 = v4[4];
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;
    sub_100028D04(self, v26);
  }
}

- (void)remote_fetchAndCompleteActiveAssignedActivitiesForContextPath:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (sub_1000B280C())
  {
    sub_100023888(self, a2);
    v9 = [(PDDevEndpointServer *)self database];
    v10 = v9;
    if (v9)
    {
      v11 = (sub_1000717E8(v9) >> 1) & 1;
    }

    else
    {
      LODWORD(v11) = 0;
    }

    if (!sub_10007116C(v10) || v11)
    {
      v13 = 0;
      [NSError cls_assignError:&v13 code:323 description:@"Unable call to fetchAndCompleteAllAssignedActivitiesForContextPath. Progress tracking is not allowed."];
      (*(v8 + 2))(v8, 0, 0);
    }

    else
    {
      v12 = sub_100026D00(self, v7);
      [(PDDevEndpointServer *)self handleCollaborationStateChangesForMarkActivityAsComplete:v12];
      (*(v8 + 2))(v8, 1, 0);
    }
  }

  else
  {
    v14 = 0;
    [NSError cls_assignError:&v14 code:322 description:@"No-Op for mark all assigned activities complete. Schoolwork is not installed."];
    v10 = v14;
    (*(v8 + 2))(v8, 0, v10);
  }
}

- (BOOL)insertDefaultCollaborationStatesFor:(id)a3 forClassID:(id)a4 toPersonIDs:(id)a5 fromPersonID:(id)a6
{
  v9 = a3;
  v28 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v27 = [(PDDevEndpointServer *)self database];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = v10;
  v29 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v29)
  {
    v13 = *v31;
    p_info = &OBJC_METACLASS___PDCKRecordZone.info;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = sub_1000AC900((p_info + 296), v9, v16, v28);
          [v11 addObjectsFromArray:v17];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = [(PDEndpointServer *)self daemon];
          v19 = [v18 mode];

          if (v19 == 2)
          {
            v20 = [CLSCollaborationState alloc];
            v21 = sub_1000712CC(v27);
            v22 = [v20 initForObject:v9 ownerPersonID:v21 domain:5 state:1 flags:0];

            p_info = (&OBJC_METACLASS___PDCKRecordZone + 32);
            v23 = sub_1000712CC(v27);
            [v22 setSenderPersonID:v23];

            [v11 addObject:v22];
            v24 = [(PDDevEndpointServer *)self studentDB];
            [v24 insertOrUpdateObject:v22];
          }
        }
      }

      v29 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v29);
  }

  v25 = [v27 insertOrUpdateObjects:v11];
  return v25;
}

- (void)remote_fetchHandoutAttachmentForDocumentURL:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000BE314;
  v29[3] = &unk_1002047D0;
  v7 = a4;
  v31 = v7;
  v8 = v6;
  v30 = v8;
  v9 = objc_retainBlock(v29);
  v10 = [v8 lastPathComponent];
  v11 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  v12 = [v10 stringByAddingPercentEncodingWithAllowedCharacters:v11];

  v13 = [@"%/" stringByAppendingString:v12];
  if (v12)
  {
    v28 = v7;
    v14 = [(PDDevEndpointServer *)self database];
    v15 = objc_opt_class();
    v35 = v13;
    v16 = [NSArray arrayWithObjects:&v35 count:1];
    v17 = [v14 select:v15 where:@"devModeURL LIKE ?" bindings:v16];

    CLSInitLog();
    v18 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v34 = v13;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Looking up asset matching devModeFileName: %@", buf, 0xCu);
    }

    v19 = [v17 parentObjectID];

    if (v19)
    {
      v20 = [(PDDevEndpointServer *)self database];
      v21 = objc_opt_class();
      v22 = [v17 parentObjectID];
      v32 = v22;
      v23 = [NSArray arrayWithObjects:&v32 count:1];
      v24 = [v20 select:v21 where:@"objectID = ?" bindings:v23];

      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v27 = [v17 objectID];
        v25 = [NSError cls_createErrorWithCode:100 format:@"failed to find attachment for asset with id: %@", v27];

        [v25 cls_log:CLSLogDefault];
      }

      (v9[2])(v9, v24, v25);

      v7 = v28;
    }

    else
    {
      CLSInitLog();
      v26 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v34 = v13;
        _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "failed to find asset matching devModeFileName: %@", buf, 0xCu);
        v26 = CLSLogDefault;
      }

      [0 cls_info:v26];
      (v9[2])(v9, 0, 0);
      v25 = 0;
    }
  }

  else
  {
    v25 = [NSError cls_createErrorWithCode:2 description:@"URL is nil."];
    (v9[2])(v9, 0, v25);
  }
}

- (void)remote_validateAndCreateHandoutAssignedItem:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  sub_100023888(self, a2);
  v9 = [(PDDevEndpointServer *)self database];
  v10 = v9;
  if (v9)
  {
    v11 = (sub_1000717E8(v9) >> 1) & 1;
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (!sub_10007116C(v10) || v11)
  {
    CLSInitLog();
    v17 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Unable call to remote_validateAndCreateHandoutAssignedItem. Progress tracking is not allowed.", buf, 2u);
    }

    v32 = 0;
    [NSError cls_assignError:&v32 code:4 description:@"Not Authorized"];
    v16 = v32;
    v8[2](v8, 0, v16);
  }

  else
  {
    v12 = [(PDDevEndpointServer *)self database];
    v13 = objc_opt_class();
    v36 = v7;
    v14 = [NSArray arrayWithObjects:&v36 count:1];
    v15 = [v12 select:v13 where:@"parentObjectID = ?" bindings:v14];

    if (v15)
    {
      (v8)[2](v8, v15, 0);
      v16 = 0;
    }

    else
    {
      v18 = [(PDDevEndpointServer *)self database];
      v19 = objc_opt_class();
      v35 = v7;
      v20 = [NSArray arrayWithObjects:&v35 count:1];
      v21 = [v18 select:v19 where:@"objectID = ?" bindings:v20];

      if (v21)
      {
        v30 = 0;
        v22 = [(PDDevEndpointServer *)self _createHandoutAssignedItemFrom:v21 withError:&v30];
        v16 = v30;
        if ([v22 effectiveAuthorizationStatus] == 2)
        {
          v29 = v16;
          [NSError cls_assignError:&v29 code:4 description:@"Authorization Denied."];
          v23 = v29;

          v8[2](v8, 0, v23);
          v15 = 0;
          v16 = v23;
        }

        else
        {
          v25 = [(PDDevEndpointServer *)self database];
          v26 = objc_opt_class();
          v27 = [v22 objectID];
          v34 = v27;
          v28 = [NSArray arrayWithObjects:&v34 count:1];
          v15 = [v25 select:v26 where:@"objectID = ?" bindings:v28];

          (v8)[2](v8, v15, v16);
        }
      }

      else
      {
        CLSInitLog();
        v24 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Unable call to remote_validateAndCreateHandoutAssignedItem. Progress tracking is not allowed, failed to find handout attachment.", buf, 2u);
        }

        v31 = 0;
        [NSError cls_assignError:&v31 code:4 description:@"Not Authorized"];
        v16 = v31;
        v8[2](v8, 0, v16);
        v15 = 0;
      }
    }
  }
}

- (id)_createHandoutAssignedItemFrom:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [(PDEndpointServer *)self client];
  v8 = sub_1000B2528(v7);
  if (![v8 length])
  {
    [NSError cls_assignError:a4 code:2 description:@"Unable to determine bundle identifier."];
    v17 = 0;
    goto LABEL_12;
  }

  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_1000BAD08;
  v26[4] = sub_1000BAD18;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_1000BAD08;
  v24[4] = sub_1000BAD18;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_1000BAD08;
  v22[4] = sub_1000BAD18;
  v23 = 0;
  v9 = sub_1000B2528(v7);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000BEBF4;
  v21[3] = &unk_1002023D8;
  v21[4] = v26;
  v21[5] = v24;
  v21[6] = v22;
  [CLSUtil fetchInfoForAppWithBundleIdentifier:v9 completion:v21];

  v10 = [CLSHandoutAssignedItem alloc];
  v11 = [v6 type];
  v12 = [v6 title];
  v13 = [v6 objectID];
  v14 = [v10 initWithType:v11 title:v12 handoutAttachmentID:v13];

  v15 = [v14 effectiveAuthorizationStatus];
  CLSInitLog();
  v16 = CLSLogDatabase;
  if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v29 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Authorization Status %ld.", buf, 0xCu);
  }

  if (v15 == 2)
  {
    [NSError cls_assignError:a4 code:4 description:@"Authorization Denied."];
LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

  [v14 setAppIdentifier:v8];
  v18 = [(PDDevEndpointServer *)self database];
  v19 = [v18 insertObject:v14];

  if ((v19 & 1) == 0)
  {
    [NSError cls_assignError:a4 code:100 description:@"Unable to create CLSHandoutAssignedItem."];
    goto LABEL_10;
  }

  v17 = v14;
LABEL_11:

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);

  _Block_object_dispose(v26, 8);
LABEL_12:

  return v17;
}

- (id)database
{
  v3 = [(PDEndpointServer *)self client];
  v4 = [(PDEndpointServer *)self daemon];
  v5 = v4;
  if (v3)
  {
    if (*(v3 + 26) == 1)
    {
      v6 = [v4 mode];
      switch(v6)
      {
        case 2u:
          v7 = [(PDDevEndpointServer *)self teacherDB];
          goto LABEL_18;
        case 1u:
          v7 = [(PDDevEndpointServer *)self studentDB];
          goto LABEL_18;
        case 0u:
          v7 = [v5 database];
LABEL_18:
          v12 = v7;
          goto LABEL_21;
      }
    }

    v8 = *(v3 + 40);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 classKitEnvironment];

  if (!(v10 | CLSClassKitEnvironmentProduction) || v10 && CLSClassKitEnvironmentProduction && [v10 isEqualToString:?])
  {
    v11 = [v5 database];
  }

  else
  {
    if ([v5 mode] == 2)
    {
      [(PDDevEndpointServer *)self teacherDB];
    }

    else
    {
      [(PDDevEndpointServer *)self studentDB];
    }
    v11 = ;
  }

  v12 = v11;

LABEL_21:

  return v12;
}

- (PDDatabase)teacherDB
{
  v3 = [(PDEndpointServer *)self daemon];
  v4 = [v3 teacherDevDatabase];

  [(PDDevEndpointServer *)self populateDevDB:v4 forStudent:0];

  return v4;
}

- (PDDatabase)studentDB
{
  v3 = [(PDEndpointServer *)self daemon];
  v4 = [v3 studentDevDatabase];

  [(PDDevEndpointServer *)self populateDevDB:v4 forStudent:1];

  return v4;
}

- (void)remote_publishAdminRequests:(id)a3 withRequestor:(id)a4 adminRequestAccounts:(id)a5 completion:(id)a6
{
  v7 = a6;
  v8 = [(PDEndpointServer *)self client];
  if (v8 && (v9 = v8[26], v8, (v9 & 1) != 0))
  {
    CLSInitLog();
    v10 = CLSLogOnboarding;
    if (os_log_type_enabled(CLSLogOnboarding, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Feature unavailable.", buf, 2u);
    }

    v11 = [NSError cls_createErrorWithCode:1 description:@"Feature unavailable."];
    v7[2](v7, 0, v11);
  }

  else
  {
    v12 = [NSError cls_createErrorWithCode:4 description:@"Not authorized."];
    v7[2](v7, 0, v12);
  }
}

- (void)remote_deleteAdminRequestID:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(PDEndpointServer *)self client];
  if (v6 && (v7 = v6[26], v6, (v7 & 1) != 0))
  {
    CLSInitLog();
    v8 = CLSLogOnboarding;
    if (os_log_type_enabled(CLSLogOnboarding, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Feature unavailable.", buf, 2u);
    }

    v9 = [NSError cls_createErrorWithCode:1 description:@"Feature unavailable."];
    v5[2](v5, 0, v9);
  }

  else
  {
    v10 = [NSError cls_createErrorWithCode:4 description:@"Not authorized."];
    v5[2](v5, 0, v10);
  }
}

- (void)remote_publishSurveyAnswers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDEndpointServer *)self client];
  if (!v8 || (v9 = v8[26], v8, (v9 & 1) == 0))
  {
    v12 = @"Not authorized.";
    goto LABEL_14;
  }

  v10 = [(PDDevEndpointServer *)self database];
  v11 = [(PDDevEndpointServer *)self studentDB];

  if (v10 != v11)
  {
    v12 = @"Student only operation.";
LABEL_14:
    v26 = [NSError cls_createErrorWithCode:4 description:v12];
    v7[2](v7, 0, v26);

    goto LABEL_15;
  }

  v13 = [(PDDevEndpointServer *)self database];
  v14 = objc_opt_new();
  v15 = objc_opt_class();
  v16 = [v6 objectID];
  v34 = v16;
  v17 = [NSArray arrayWithObjects:&v34 count:1];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000BF414;
  v31[3] = &unk_1002047F8;
  v18 = v14;
  v32 = v18;
  [v13 selectAll:v15 where:@"surveyID = ?" bindings:v17 block:v31];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v28;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v27 + 1) + 8 * i);
        v25 = [(PDDevEndpointServer *)self teacherDB];
        [v25 insertOrUpdateObject:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v21);
  }

  (v7)[2](v7, v19, 0);
LABEL_15:
}

- (void)populateDevDB:(id)a3 forStudent:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [v5 lock];
  v6 = sub_1000711FC(v5);
  v7 = v6;
  if (v6 && [v6 sourceType])
  {
    [v5 unlock];
  }

  else
  {
    v8 = sub_100043B24(v5);
    if (v8)
    {
      *(v8 + 10) = 256;
      *(v8 + 9) = 0;
      *(v8 + 8) = v4;
    }

    v63 = v4;
    v64 = v7;
    v62 = v8;
    sub_100043BD0(v5, v8);
    v9 = sub_1000BA854(v5);
    if (v9)
    {
      *(v9 + 48) = 2;
      *(v9 + 8) = 1;
      *(v9 + 10) = 0;
    }

    v61 = v9;
    sub_1000BA900(v5, v9);
    v58 = v5;
    sub_100071764(v5, 1);
    v10 = [[CLSLocation alloc] _init];
    [v10 setLocationName:@"AppleSchool123"];
    [v10 setObjectID:@"AppleSchool123LocationID"];
    [v10 setSourceType:1];
    v11 = [[CLSRole alloc] _init];
    [v11 setObjectID:@"role-instructor"];
    [v11 setType:4];
    v84[0] = @"CAN_MANAGE_CLASSES";
    v84[1] = @"CAN_MANAGE_MANAGED_APPLE_ID";
    v84[2] = @"CAN_EASY_STUDENT_SIGN_IN";
    v12 = [NSArray arrayWithObjects:v84 count:3];
    [v11 setPrivileges:v12];

    v56 = [[CLSRole alloc] _init];
    [v56 setObjectID:@"role-student"];
    [v56 setType:6];
    v13 = [[CLSClass alloc] _init];
    [v13 setClassName:@"Dev Class"];
    v14 = [v13 className];
    v15 = [v14 sha224];
    [v13 setObjectID:v15];

    [v13 setSource:3];
    [v13 setOriginatingSource:1];
    v16 = [[CLSPerson alloc] _init];
    [v16 setGivenName:@"Johnny"];
    [v16 setFamilyName:@"Appleseed"];
    [v16 setOrgID:@"apple-school-org-id"];
    [v16 setAppleID:@"johnny.appleseed@apple.com"];
    [v16 setProgressTrackingAllowed:1];
    v17 = [v16 givenName];
    v18 = [v17 sha224];
    [v16 setObjectID:v18];

    [v16 setIsSearchable:1];
    [v16 setSourceType:1];
    v19 = [[CLSPerson alloc] _init];
    [v19 setGivenName:@"Jane"];
    [v19 setFamilyName:@"Appleseed"];
    [v19 setOrgID:@"apple-school-org-id"];
    [v19 setAppleID:@"jane.appleseed@apple.com"];
    [v19 setProgressTrackingAllowed:0];
    v20 = [v19 givenName];
    v21 = [v20 sha224];
    [v19 setObjectID:v21];

    [v19 setIsSearchable:1];
    [v19 setSourceType:1];
    v22 = [CLSClassMember alloc];
    v23 = [v13 objectID];
    v24 = [v19 objectID];
    v55 = [v22 initWithClassID:v23 personID:v24 roles:2];

    v25 = [CLSClassMember alloc];
    v26 = [v13 objectID];
    v27 = [v16 objectID];
    v54 = [v25 initWithClassID:v26 personID:v27 roles:1];

    v28 = [PDPersonRoleLocation alloc];
    v29 = [v19 objectID];
    v30 = [v11 objectID];
    v31 = [v10 objectID];
    v59 = v11;
    v32 = sub_1000C8F24(v28, v29, v30, v31, [v11 type]);

    v33 = [PDPersonRoleLocation alloc];
    v34 = [v16 objectID];
    v35 = [v56 objectID];
    v36 = [v10 objectID];
    v37 = sub_1000C8F24(v33, v34, v35, v36, [v56 type]);

    if (v63)
    {
      v51 = v16;

      v83 = v37;
      v38 = &v83;
    }

    else
    {
      v51 = v19;

      v82 = v32;
      v38 = &v82;
    }

    v39 = v32;
    v40 = [NSArray arrayWithObjects:v38 count:1];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_1000BFC00;
    v66[3] = &unk_100204820;
    v5 = v58;
    v41 = v58;
    v67 = v41;
    v57 = v56;
    v68 = v57;
    v60 = v59;
    v69 = v60;
    v53 = v10;
    v70 = v53;
    v52 = v16;
    v71 = v52;
    v42 = v37;
    v72 = v42;
    v43 = v19;
    v73 = v43;
    v44 = v39;
    v74 = v44;
    v65 = v51;
    v75 = v65;
    v45 = v40;
    v76 = v45;
    v46 = v13;
    v77 = v46;
    v47 = v55;
    v78 = v47;
    v48 = v54;
    v79 = v48;
    if (!v41 || ([v41 performTransaction:v66 forWriting:1] & 1) == 0)
    {
      CLSInitLog();
      v49 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
      {
        v50 = @"teacher";
        if (v63)
        {
          v50 = @"student";
        }

        *buf = 138412290;
        v81 = v50;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "Failed to populate dev database for %@.", buf, 0xCu);
      }
    }

    [v41 unlock];

    v7 = v65;
  }
}

@end