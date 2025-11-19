@interface FREditorialItemEntry
- (FREditorialItemEntry)initWithEditorialItemID:(id)a3 title:(id)a4 subtitle:(id)a5 subtitleColorString:(id)a6 image:(id)a7 actionUrlString:(id)a8 lastModifiedDate:(id)a9 documentVersion:(id)a10 lastSeenDocumentVersion:(id)a11 showBadge:(BOOL)a12;
- (FREditorialItemEntry)initWithEntryID:(id)a3 dictionaryRepresentation:(id)a4;
- (FREditorialItemEntry)initWithEntryID:(id)a3 editorialItemID:(id)a4 title:(id)a5 subtitle:(id)a6 subtitleColorString:(id)a7 image:(id)a8 actionUrlString:(id)a9 lastModifiedDate:(id)a10 documentVersion:(id)a11 lastSeenDocumentVersion:(id)a12 showBadge:(BOOL)a13;
- (id)dictionaryRepresentation;
@end

@implementation FREditorialItemEntry

- (FREditorialItemEntry)initWithEditorialItemID:(id)a3 title:(id)a4 subtitle:(id)a5 subtitleColorString:(id)a6 image:(id)a7 actionUrlString:(id)a8 lastModifiedDate:(id)a9 documentVersion:(id)a10 lastSeenDocumentVersion:(id)a11 showBadge:(BOOL)a12
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  if (!v18 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100072918();
  }

  v50.receiver = self;
  v50.super_class = FREditorialItemEntry;
  v27 = [(FREditorialItemEntry *)&v50 init];
  v28 = v27;
  if (v18 && v27)
  {
    v29 = [(FREditorialItemEntry *)v27 _editorialEntryIDForIdentifier:v18];
    entryID = v28->_entryID;
    v28->_entryID = v29;

    v31 = [v18 copy];
    editorialItemID = v28->_editorialItemID;
    v28->_editorialItemID = v31;

    v33 = [v19 copy];
    title = v28->_title;
    v28->_title = v33;

    v35 = [v20 copy];
    subtitle = v28->_subtitle;
    v28->_subtitle = v35;

    v37 = [v21 copy];
    subtitleColorString = v28->_subtitleColorString;
    v28->_subtitleColorString = v37;

    v39 = [v23 copy];
    actionUrlString = v28->_actionUrlString;
    v28->_actionUrlString = v39;

    v41 = [v22 copy];
    image = v28->_image;
    v28->_image = v41;

    v43 = [v25 copy];
    documentVersion = v28->_documentVersion;
    v28->_documentVersion = v43;

    v45 = [v26 copy];
    lastSeenDocumentVersion = v28->_lastSeenDocumentVersion;
    v28->_lastSeenDocumentVersion = v45;

    v47 = [v24 copy];
    lastModifiedDate = v28->_lastModifiedDate;
    v28->_lastModifiedDate = v47;

    v28->_showBadge = a12;
  }

  return v28;
}

- (FREditorialItemEntry)initWithEntryID:(id)a3 editorialItemID:(id)a4 title:(id)a5 subtitle:(id)a6 subtitleColorString:(id)a7 image:(id)a8 actionUrlString:(id)a9 lastModifiedDate:(id)a10 documentVersion:(id)a11 lastSeenDocumentVersion:(id)a12 showBadge:(BOOL)a13
{
  v18 = a3;
  v51 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  if (!v18 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000729D0();
  }

  v52.receiver = self;
  v52.super_class = FREditorialItemEntry;
  v27 = [(FREditorialItemEntry *)&v52 init];
  v28 = v27;
  if (v18 && v27)
  {
    v29 = [v18 copy];
    entryID = v28->_entryID;
    v28->_entryID = v29;

    v31 = [v51 copy];
    editorialItemID = v28->_editorialItemID;
    v28->_editorialItemID = v31;

    v33 = [v19 copy];
    title = v28->_title;
    v28->_title = v33;

    v35 = [v20 copy];
    subtitle = v28->_subtitle;
    v28->_subtitle = v35;

    v37 = [v21 copy];
    subtitleColorString = v28->_subtitleColorString;
    v28->_subtitleColorString = v37;

    v39 = [v23 copy];
    actionUrlString = v28->_actionUrlString;
    v28->_actionUrlString = v39;

    v41 = [v22 copy];
    image = v28->_image;
    v28->_image = v41;

    v43 = [v25 copy];
    documentVersion = v28->_documentVersion;
    v28->_documentVersion = v43;

    v45 = [v26 copy];
    lastSeenDocumentVersion = v28->_lastSeenDocumentVersion;
    v28->_lastSeenDocumentVersion = v45;

    v47 = [v24 copy];
    lastModifiedDate = v28->_lastModifiedDate;
    v28->_lastModifiedDate = v47;

    v28->_showBadge = a13;
  }

  return v28;
}

- (FREditorialItemEntry)initWithEntryID:(id)a3 dictionaryRepresentation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v22 = v5;
  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100072A88();
  }

  v7 = [v6 objectForKeyedSubscript:@"FREditorialItemEntryEditorialItemID"];
  v8 = [v6 objectForKeyedSubscript:@"FREditorialItemEntryTitle"];
  v9 = [v6 objectForKeyedSubscript:@"FREditorialItemEntrySubtitle"];
  v19 = [v6 objectForKeyedSubscript:@"FREditorialItemEntrySubtitleColor"];
  v18 = [v6 objectForKeyedSubscript:@"FREditorialItemEntryImage"];
  v10 = [v6 objectForKeyedSubscript:@"FREditorialItemEntryActionURL"];
  v11 = [v6 objectForKeyedSubscript:@"FREditorialItemEntryLastModifiedDate"];
  v12 = [v6 objectForKeyedSubscript:@"FREditorialItemEntryDocumentVersion"];
  v13 = [v6 objectForKeyedSubscript:@"FREditorialItemEntryLastSeenDocumentVersion"];
  v14 = [v6 objectForKeyedSubscript:@"FREditorialItemEntryLastShowBadge"];
  v15 = [v14 BOOLValue];

  LOBYTE(v17) = v15;
  v21 = [(FREditorialItemEntry *)self initWithEntryID:v22 editorialItemID:v7 title:v8 subtitle:v9 subtitleColorString:v19 image:v18 actionUrlString:v10 lastModifiedDate:v11 documentVersion:v12 lastSeenDocumentVersion:v13 showBadge:v17];

  return v21;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(FREditorialItemEntry *)self entryID];
  [v3 fc_safelySetObjectAllowingNil:v4 forKey:@"FREditorialItemEntryID"];

  v5 = [(FREditorialItemEntry *)self editorialItemID];
  [v3 fc_safelySetObjectAllowingNil:v5 forKey:@"FREditorialItemEntryEditorialItemID"];

  v6 = [(FREditorialItemEntry *)self title];
  [v3 fc_safelySetObjectAllowingNil:v6 forKey:@"FREditorialItemEntryTitle"];

  v7 = [(FREditorialItemEntry *)self subtitle];
  [v3 fc_safelySetObjectAllowingNil:v7 forKey:@"FREditorialItemEntrySubtitle"];

  v8 = [(FREditorialItemEntry *)self subtitleColorString];
  [v3 fc_safelySetObjectAllowingNil:v8 forKey:@"FREditorialItemEntrySubtitleColor"];

  v9 = [(FREditorialItemEntry *)self image];
  [v3 fc_safelySetObjectAllowingNil:v9 forKey:@"FREditorialItemEntryImage"];

  v10 = [(FREditorialItemEntry *)self actionUrlString];
  [v3 fc_safelySetObjectAllowingNil:v10 forKey:@"FREditorialItemEntryActionURL"];

  v11 = [(FREditorialItemEntry *)self lastModifiedDate];
  [v3 fc_safelySetObjectAllowingNil:v11 forKey:@"FREditorialItemEntryLastModifiedDate"];

  v12 = [(FREditorialItemEntry *)self documentVersion];
  [v3 fc_safelySetObjectAllowingNil:v12 forKey:@"FREditorialItemEntryDocumentVersion"];

  v13 = [(FREditorialItemEntry *)self lastSeenDocumentVersion];
  [v3 fc_safelySetObjectAllowingNil:v13 forKey:@"FREditorialItemEntryLastSeenDocumentVersion"];

  v14 = [NSNumber numberWithBool:[(FREditorialItemEntry *)self showBadge]];
  [v3 fc_safelySetObjectAllowingNil:v14 forKey:@"FREditorialItemEntryLastShowBadge"];

  v15 = [v3 copy];

  return v15;
}

@end