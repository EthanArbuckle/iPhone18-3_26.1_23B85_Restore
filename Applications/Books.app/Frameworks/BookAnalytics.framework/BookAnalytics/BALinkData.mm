@interface BALinkData
- (BALinkData)init;
- (BALinkData)initWithPreviousSectionID:(id)a3 previousSectionName:(id)a4 previousContentID:(id)a5 linkActionType:(int64_t)a6 previousSeriesID:(id)a7 previousGenreID:(id)a8 previousCollectionID:(id)a9 previousAuthorID:(id)a10 previousFlowcaseID:(id)a11 previousBrickID:(id)a12;
@end

@implementation BALinkData

- (BALinkData)initWithPreviousSectionID:(id)a3 previousSectionName:(id)a4 previousContentID:(id)a5 linkActionType:(int64_t)a6 previousSeriesID:(id)a7 previousGenreID:(id)a8 previousCollectionID:(id)a9 previousAuthorID:(id)a10 previousFlowcaseID:(id)a11 previousBrickID:(id)a12
{
  v16 = sub_1E1780();
  v50 = v17;
  v51 = v16;
  if (a4)
  {
    v49 = sub_1E1780();
    v48 = v18;
  }

  else
  {
    v49 = 0;
    v48 = 0;
  }

  if (a5)
  {
    v19 = sub_1E1780();
    v46 = v20;
    v47 = v19;
    if (a7)
    {
LABEL_6:
      v21 = sub_1E1780();
      v44 = v22;
      v45 = v21;
      goto LABEL_9;
    }
  }

  else
  {
    v46 = 0;
    v47 = 0;
    if (a7)
    {
      goto LABEL_6;
    }
  }

  v44 = 0;
  v45 = 0;
LABEL_9:
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  if (v23)
  {
    v43 = sub_1E1780();
    v29 = v28;

    if (v24)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v43 = 0;
    v29 = 0;
    if (v24)
    {
LABEL_11:
      v30 = sub_1E1780();
      v32 = v31;

      if (v25)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }
  }

  v30 = 0;
  v32 = 0;
  if (v25)
  {
LABEL_12:
    v33 = sub_1E1780();
    v35 = v34;

    if (v26)
    {
      goto LABEL_13;
    }

LABEL_18:
    v36 = 0;
    v38 = 0;
    if (v27)
    {
      goto LABEL_14;
    }

LABEL_19:
    v39 = 0;
    v41 = 0;
    return BridgedLinkData.init(previousSectionID:previousSectionName:previousContentID:linkActionType:previousSeriesID:previousGenreID:previousCollectionID:previousAuthorID:previousFlowcaseID:previousBrickID:)(v51, v50, v49, v48, v47, v46, a6, v45, v44, v43, v29, v30, v32, v33, v35, v36, v38, v39, v41);
  }

LABEL_17:
  v33 = 0;
  v35 = 0;
  if (!v26)
  {
    goto LABEL_18;
  }

LABEL_13:
  v36 = sub_1E1780();
  v38 = v37;

  if (!v27)
  {
    goto LABEL_19;
  }

LABEL_14:
  v39 = sub_1E1780();
  v41 = v40;

  return BridgedLinkData.init(previousSectionID:previousSectionName:previousContentID:linkActionType:previousSeriesID:previousGenreID:previousCollectionID:previousAuthorID:previousFlowcaseID:previousBrickID:)(v51, v50, v49, v48, v47, v46, a6, v45, v44, v43, v29, v30, v32, v33, v35, v36, v38, v39, v41);
}

- (BALinkData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end