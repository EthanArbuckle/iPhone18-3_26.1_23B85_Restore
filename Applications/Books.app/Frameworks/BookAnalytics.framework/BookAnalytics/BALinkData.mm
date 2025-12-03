@interface BALinkData
- (BALinkData)init;
- (BALinkData)initWithPreviousSectionID:(id)d previousSectionName:(id)name previousContentID:(id)iD linkActionType:(int64_t)type previousSeriesID:(id)seriesID previousGenreID:(id)genreID previousCollectionID:(id)collectionID previousAuthorID:(id)self0 previousFlowcaseID:(id)self1 previousBrickID:(id)self2;
@end

@implementation BALinkData

- (BALinkData)initWithPreviousSectionID:(id)d previousSectionName:(id)name previousContentID:(id)iD linkActionType:(int64_t)type previousSeriesID:(id)seriesID previousGenreID:(id)genreID previousCollectionID:(id)collectionID previousAuthorID:(id)self0 previousFlowcaseID:(id)self1 previousBrickID:(id)self2
{
  v16 = sub_1E1780();
  v50 = v17;
  v51 = v16;
  if (name)
  {
    v49 = sub_1E1780();
    v48 = v18;
  }

  else
  {
    v49 = 0;
    v48 = 0;
  }

  if (iD)
  {
    v19 = sub_1E1780();
    v46 = v20;
    v47 = v19;
    if (seriesID)
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
    if (seriesID)
    {
      goto LABEL_6;
    }
  }

  v44 = 0;
  v45 = 0;
LABEL_9:
  genreIDCopy = genreID;
  collectionIDCopy = collectionID;
  authorIDCopy = authorID;
  flowcaseIDCopy = flowcaseID;
  brickIDCopy = brickID;
  if (genreIDCopy)
  {
    v43 = sub_1E1780();
    v29 = v28;

    if (collectionIDCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v43 = 0;
    v29 = 0;
    if (collectionIDCopy)
    {
LABEL_11:
      v30 = sub_1E1780();
      v32 = v31;

      if (authorIDCopy)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }
  }

  v30 = 0;
  v32 = 0;
  if (authorIDCopy)
  {
LABEL_12:
    v33 = sub_1E1780();
    v35 = v34;

    if (flowcaseIDCopy)
    {
      goto LABEL_13;
    }

LABEL_18:
    v36 = 0;
    v38 = 0;
    if (brickIDCopy)
    {
      goto LABEL_14;
    }

LABEL_19:
    v39 = 0;
    v41 = 0;
    return BridgedLinkData.init(previousSectionID:previousSectionName:previousContentID:linkActionType:previousSeriesID:previousGenreID:previousCollectionID:previousAuthorID:previousFlowcaseID:previousBrickID:)(v51, v50, v49, v48, v47, v46, type, v45, v44, v43, v29, v30, v32, v33, v35, v36, v38, v39, v41);
  }

LABEL_17:
  v33 = 0;
  v35 = 0;
  if (!flowcaseIDCopy)
  {
    goto LABEL_18;
  }

LABEL_13:
  v36 = sub_1E1780();
  v38 = v37;

  if (!brickIDCopy)
  {
    goto LABEL_19;
  }

LABEL_14:
  v39 = sub_1E1780();
  v41 = v40;

  return BridgedLinkData.init(previousSectionID:previousSectionName:previousContentID:linkActionType:previousSeriesID:previousGenreID:previousCollectionID:previousAuthorID:previousFlowcaseID:previousBrickID:)(v51, v50, v49, v48, v47, v46, type, v45, v44, v43, v29, v30, v32, v33, v35, v36, v38, v39, v41);
}

- (BALinkData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end