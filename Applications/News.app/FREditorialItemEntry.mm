@interface FREditorialItemEntry
- (FREditorialItemEntry)initWithEditorialItemID:(id)d title:(id)title subtitle:(id)subtitle subtitleColorString:(id)string image:(id)image actionUrlString:(id)urlString lastModifiedDate:(id)date documentVersion:(id)self0 lastSeenDocumentVersion:(id)self1 showBadge:(BOOL)self2;
- (FREditorialItemEntry)initWithEntryID:(id)d dictionaryRepresentation:(id)representation;
- (FREditorialItemEntry)initWithEntryID:(id)d editorialItemID:(id)iD title:(id)title subtitle:(id)subtitle subtitleColorString:(id)string image:(id)image actionUrlString:(id)urlString lastModifiedDate:(id)self0 documentVersion:(id)self1 lastSeenDocumentVersion:(id)self2 showBadge:(BOOL)self3;
- (id)dictionaryRepresentation;
@end

@implementation FREditorialItemEntry

- (FREditorialItemEntry)initWithEditorialItemID:(id)d title:(id)title subtitle:(id)subtitle subtitleColorString:(id)string image:(id)image actionUrlString:(id)urlString lastModifiedDate:(id)date documentVersion:(id)self0 lastSeenDocumentVersion:(id)self1 showBadge:(BOOL)self2
{
  dCopy = d;
  titleCopy = title;
  subtitleCopy = subtitle;
  stringCopy = string;
  imageCopy = image;
  urlStringCopy = urlString;
  dateCopy = date;
  versionCopy = version;
  documentVersionCopy = documentVersion;
  if (!dCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100072918();
  }

  v50.receiver = self;
  v50.super_class = FREditorialItemEntry;
  v27 = [(FREditorialItemEntry *)&v50 init];
  v28 = v27;
  if (dCopy && v27)
  {
    v29 = [(FREditorialItemEntry *)v27 _editorialEntryIDForIdentifier:dCopy];
    entryID = v28->_entryID;
    v28->_entryID = v29;

    v31 = [dCopy copy];
    editorialItemID = v28->_editorialItemID;
    v28->_editorialItemID = v31;

    v33 = [titleCopy copy];
    title = v28->_title;
    v28->_title = v33;

    v35 = [subtitleCopy copy];
    subtitle = v28->_subtitle;
    v28->_subtitle = v35;

    v37 = [stringCopy copy];
    subtitleColorString = v28->_subtitleColorString;
    v28->_subtitleColorString = v37;

    v39 = [urlStringCopy copy];
    actionUrlString = v28->_actionUrlString;
    v28->_actionUrlString = v39;

    v41 = [imageCopy copy];
    image = v28->_image;
    v28->_image = v41;

    v43 = [versionCopy copy];
    documentVersion = v28->_documentVersion;
    v28->_documentVersion = v43;

    v45 = [documentVersionCopy copy];
    lastSeenDocumentVersion = v28->_lastSeenDocumentVersion;
    v28->_lastSeenDocumentVersion = v45;

    v47 = [dateCopy copy];
    lastModifiedDate = v28->_lastModifiedDate;
    v28->_lastModifiedDate = v47;

    v28->_showBadge = badge;
  }

  return v28;
}

- (FREditorialItemEntry)initWithEntryID:(id)d editorialItemID:(id)iD title:(id)title subtitle:(id)subtitle subtitleColorString:(id)string image:(id)image actionUrlString:(id)urlString lastModifiedDate:(id)self0 documentVersion:(id)self1 lastSeenDocumentVersion:(id)self2 showBadge:(BOOL)self3
{
  dCopy = d;
  iDCopy = iD;
  titleCopy = title;
  subtitleCopy = subtitle;
  stringCopy = string;
  imageCopy = image;
  urlStringCopy = urlString;
  dateCopy = date;
  versionCopy = version;
  documentVersionCopy = documentVersion;
  if (!dCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000729D0();
  }

  v52.receiver = self;
  v52.super_class = FREditorialItemEntry;
  v27 = [(FREditorialItemEntry *)&v52 init];
  v28 = v27;
  if (dCopy && v27)
  {
    v29 = [dCopy copy];
    entryID = v28->_entryID;
    v28->_entryID = v29;

    v31 = [iDCopy copy];
    editorialItemID = v28->_editorialItemID;
    v28->_editorialItemID = v31;

    v33 = [titleCopy copy];
    title = v28->_title;
    v28->_title = v33;

    v35 = [subtitleCopy copy];
    subtitle = v28->_subtitle;
    v28->_subtitle = v35;

    v37 = [stringCopy copy];
    subtitleColorString = v28->_subtitleColorString;
    v28->_subtitleColorString = v37;

    v39 = [urlStringCopy copy];
    actionUrlString = v28->_actionUrlString;
    v28->_actionUrlString = v39;

    v41 = [imageCopy copy];
    image = v28->_image;
    v28->_image = v41;

    v43 = [versionCopy copy];
    documentVersion = v28->_documentVersion;
    v28->_documentVersion = v43;

    v45 = [documentVersionCopy copy];
    lastSeenDocumentVersion = v28->_lastSeenDocumentVersion;
    v28->_lastSeenDocumentVersion = v45;

    v47 = [dateCopy copy];
    lastModifiedDate = v28->_lastModifiedDate;
    v28->_lastModifiedDate = v47;

    v28->_showBadge = badge;
  }

  return v28;
}

- (FREditorialItemEntry)initWithEntryID:(id)d dictionaryRepresentation:(id)representation
{
  dCopy = d;
  representationCopy = representation;
  v22 = dCopy;
  if (!dCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100072A88();
  }

  v7 = [representationCopy objectForKeyedSubscript:@"FREditorialItemEntryEditorialItemID"];
  v8 = [representationCopy objectForKeyedSubscript:@"FREditorialItemEntryTitle"];
  v9 = [representationCopy objectForKeyedSubscript:@"FREditorialItemEntrySubtitle"];
  v19 = [representationCopy objectForKeyedSubscript:@"FREditorialItemEntrySubtitleColor"];
  v18 = [representationCopy objectForKeyedSubscript:@"FREditorialItemEntryImage"];
  v10 = [representationCopy objectForKeyedSubscript:@"FREditorialItemEntryActionURL"];
  v11 = [representationCopy objectForKeyedSubscript:@"FREditorialItemEntryLastModifiedDate"];
  v12 = [representationCopy objectForKeyedSubscript:@"FREditorialItemEntryDocumentVersion"];
  v13 = [representationCopy objectForKeyedSubscript:@"FREditorialItemEntryLastSeenDocumentVersion"];
  v14 = [representationCopy objectForKeyedSubscript:@"FREditorialItemEntryLastShowBadge"];
  bOOLValue = [v14 BOOLValue];

  LOBYTE(v17) = bOOLValue;
  v21 = [(FREditorialItemEntry *)self initWithEntryID:v22 editorialItemID:v7 title:v8 subtitle:v9 subtitleColorString:v19 image:v18 actionUrlString:v10 lastModifiedDate:v11 documentVersion:v12 lastSeenDocumentVersion:v13 showBadge:v17];

  return v21;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  entryID = [(FREditorialItemEntry *)self entryID];
  [v3 fc_safelySetObjectAllowingNil:entryID forKey:@"FREditorialItemEntryID"];

  editorialItemID = [(FREditorialItemEntry *)self editorialItemID];
  [v3 fc_safelySetObjectAllowingNil:editorialItemID forKey:@"FREditorialItemEntryEditorialItemID"];

  title = [(FREditorialItemEntry *)self title];
  [v3 fc_safelySetObjectAllowingNil:title forKey:@"FREditorialItemEntryTitle"];

  subtitle = [(FREditorialItemEntry *)self subtitle];
  [v3 fc_safelySetObjectAllowingNil:subtitle forKey:@"FREditorialItemEntrySubtitle"];

  subtitleColorString = [(FREditorialItemEntry *)self subtitleColorString];
  [v3 fc_safelySetObjectAllowingNil:subtitleColorString forKey:@"FREditorialItemEntrySubtitleColor"];

  image = [(FREditorialItemEntry *)self image];
  [v3 fc_safelySetObjectAllowingNil:image forKey:@"FREditorialItemEntryImage"];

  actionUrlString = [(FREditorialItemEntry *)self actionUrlString];
  [v3 fc_safelySetObjectAllowingNil:actionUrlString forKey:@"FREditorialItemEntryActionURL"];

  lastModifiedDate = [(FREditorialItemEntry *)self lastModifiedDate];
  [v3 fc_safelySetObjectAllowingNil:lastModifiedDate forKey:@"FREditorialItemEntryLastModifiedDate"];

  documentVersion = [(FREditorialItemEntry *)self documentVersion];
  [v3 fc_safelySetObjectAllowingNil:documentVersion forKey:@"FREditorialItemEntryDocumentVersion"];

  lastSeenDocumentVersion = [(FREditorialItemEntry *)self lastSeenDocumentVersion];
  [v3 fc_safelySetObjectAllowingNil:lastSeenDocumentVersion forKey:@"FREditorialItemEntryLastSeenDocumentVersion"];

  v14 = [NSNumber numberWithBool:[(FREditorialItemEntry *)self showBadge]];
  [v3 fc_safelySetObjectAllowingNil:v14 forKey:@"FREditorialItemEntryLastShowBadge"];

  v15 = [v3 copy];

  return v15;
}

@end