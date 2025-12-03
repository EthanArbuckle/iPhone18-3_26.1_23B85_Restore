@interface _INPBSearchForNotebookItemsIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSearchForNotebookItemsIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsDateSearchType:(id)type;
- (int)StringAsItemType:(id)type;
- (int)StringAsLocationSearchType:(id)type;
- (int)StringAsStatus:(id)status;
- (int)StringAsTaskPriority:(id)priority;
- (int)StringAsTemporalEventTriggerTypes:(id)types;
- (unint64_t)hash;
- (void)addTemporalEventTriggerType:(int)type;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setContent:(id)content;
- (void)setDateSearchType:(int)type;
- (void)setHasIncludeAllNoteContents:(BOOL)contents;
- (void)setHasItemType:(BOOL)type;
- (void)setHasLocationSearchType:(BOOL)type;
- (void)setHasStatus:(BOOL)status;
- (void)setHasTaskPriority:(BOOL)priority;
- (void)setItemType:(int)type;
- (void)setLocationSearchType:(int)type;
- (void)setNotebookItemIdentifier:(id)identifier;
- (void)setStatus:(int)status;
- (void)setTaskPriority:(int)priority;
- (void)writeTo:(id)to;
@end

@implementation _INPBSearchForNotebookItemsIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_content)
  {
    content = [(_INPBSearchForNotebookItemsIntent *)self content];
    v5 = [content copy];
    [dictionary setObject:v5 forKeyedSubscript:@"content"];
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasDateSearchType])
  {
    dateSearchType = [(_INPBSearchForNotebookItemsIntent *)self dateSearchType];
    if (dateSearchType > 19)
    {
      if (dateSearchType == 20)
      {
        v7 = @"BY_MODIFIED_DATE";
        goto LABEL_14;
      }

      if (dateSearchType == 30)
      {
        v7 = @"BY_CREATED_DATE";
        goto LABEL_14;
      }
    }

    else
    {
      if (!dateSearchType)
      {
        v7 = @"UNKNOWN_DATE_SEARCH_TYPE";
        goto LABEL_14;
      }

      if (dateSearchType == 10)
      {
        v7 = @"BY_DUE_DATE";
LABEL_14:
        [dictionary setObject:v7 forKeyedSubscript:@"dateSearchType"];

        goto LABEL_15;
      }
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", dateSearchType];
    goto LABEL_14;
  }

LABEL_15:
  dateTime = [(_INPBSearchForNotebookItemsIntent *)self dateTime];
  dictionaryRepresentation = [dateTime dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dateTime"];

  groupName = [(_INPBSearchForNotebookItemsIntent *)self groupName];
  dictionaryRepresentation2 = [groupName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"groupName"];

  if ([(_INPBSearchForNotebookItemsIntent *)self hasIncludeAllNoteContents])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSearchForNotebookItemsIntent includeAllNoteContents](self, "includeAllNoteContents")}];
    [dictionary setObject:v12 forKeyedSubscript:@"includeAllNoteContents"];
  }

  intentMetadata = [(_INPBSearchForNotebookItemsIntent *)self intentMetadata];
  dictionaryRepresentation3 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBSearchForNotebookItemsIntent *)self hasItemType])
  {
    itemType = [(_INPBSearchForNotebookItemsIntent *)self itemType];
    if (itemType > 19)
    {
      if (itemType == 20)
      {
        v16 = @"TASK_LIST";
        goto LABEL_28;
      }

      if (itemType == 30)
      {
        v16 = @"TASK";
        goto LABEL_28;
      }
    }

    else
    {
      if (!itemType)
      {
        v16 = @"UNKNOWN_NOTE_TYPE";
        goto LABEL_28;
      }

      if (itemType == 10)
      {
        v16 = @"NOTE";
LABEL_28:
        [dictionary setObject:v16 forKeyedSubscript:@"itemType"];

        goto LABEL_29;
      }
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", itemType];
    goto LABEL_28;
  }

LABEL_29:
  location = [(_INPBSearchForNotebookItemsIntent *)self location];
  dictionaryRepresentation4 = [location dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"location"];

  if ([(_INPBSearchForNotebookItemsIntent *)self hasLocationSearchType])
  {
    locationSearchType = [(_INPBSearchForNotebookItemsIntent *)self locationSearchType];
    if (locationSearchType)
    {
      if (locationSearchType == 10)
      {
        v20 = @"BY_LOCATION_TRIGGER";
      }

      else
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", locationSearchType];
      }
    }

    else
    {
      v20 = @"UNKNOWN_LOCATION_SEARCH_TYPE";
    }

    [dictionary setObject:v20 forKeyedSubscript:@"locationSearchType"];
  }

  if (self->_notebookItemIdentifier)
  {
    notebookItemIdentifier = [(_INPBSearchForNotebookItemsIntent *)self notebookItemIdentifier];
    v22 = [notebookItemIdentifier copy];
    [dictionary setObject:v22 forKeyedSubscript:@"notebookItemIdentifier"];
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasStatus])
  {
    status = [(_INPBSearchForNotebookItemsIntent *)self status];
    if (status)
    {
      if (status == 20)
      {
        v24 = @"COMPLETED";
      }

      else if (status == 10)
      {
        v24 = @"NOT_COMPLETED";
      }

      else
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", status];
      }
    }

    else
    {
      v24 = @"UNKNOWN_STATUS";
    }

    [dictionary setObject:v24 forKeyedSubscript:@"status"];
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasTaskPriority])
  {
    taskPriority = [(_INPBSearchForNotebookItemsIntent *)self taskPriority];
    if (taskPriority >= 3)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", taskPriority];
    }

    else
    {
      v26 = off_1E7283878[taskPriority];
    }

    [dictionary setObject:v26 forKeyedSubscript:@"taskPriority"];
  }

  if (self->_temporalEventTriggerTypes.count)
  {
    v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBSearchForNotebookItemsIntent temporalEventTriggerTypesCount](self, "temporalEventTriggerTypesCount")}];
    if ([(_INPBSearchForNotebookItemsIntent *)self temporalEventTriggerTypesCount])
    {
      v28 = 0;
      do
      {
        v29 = self->_temporalEventTriggerTypes.list[v28];
        if (v29 >= 4)
        {
          v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_temporalEventTriggerTypes.list[v28]];
        }

        else
        {
          v30 = off_1E7283890[v29];
        }

        [v27 addObject:v30];

        ++v28;
      }

      while (v28 < [(_INPBSearchForNotebookItemsIntent *)self temporalEventTriggerTypesCount]);
    }

    [dictionary setObject:v27 forKeyedSubscript:@"temporalEventTriggerType"];
  }

  title = [(_INPBSearchForNotebookItemsIntent *)self title];
  dictionaryRepresentation5 = [title dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"title"];

  return dictionary;
}

- (unint64_t)hash
{
  v16 = [(NSString *)self->_content hash];
  if ([(_INPBSearchForNotebookItemsIntent *)self hasDateSearchType])
  {
    v15 = 2654435761 * self->_dateSearchType;
  }

  else
  {
    v15 = 0;
  }

  v14 = [(_INPBDateTimeRange *)self->_dateTime hash];
  v3 = [(_INPBDataString *)self->_groupName hash];
  if ([(_INPBSearchForNotebookItemsIntent *)self hasIncludeAllNoteContents])
  {
    v4 = 2654435761 * self->_includeAllNoteContents;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBSearchForNotebookItemsIntent *)self hasItemType])
  {
    v6 = 2654435761 * self->_itemType;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(_INPBLocation *)self->_location hash];
  if ([(_INPBSearchForNotebookItemsIntent *)self hasLocationSearchType])
  {
    v8 = 2654435761 * self->_locationSearchType;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(NSString *)self->_notebookItemIdentifier hash];
  if ([(_INPBSearchForNotebookItemsIntent *)self hasStatus])
  {
    v10 = 2654435761 * self->_status;
  }

  else
  {
    v10 = 0;
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasTaskPriority])
  {
    v11 = 2654435761 * self->_taskPriority;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 ^ PBRepeatedInt32Hash();
  return v15 ^ v16 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ [(_INPBDataString *)self->_title hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_62;
  }

  content = [(_INPBSearchForNotebookItemsIntent *)self content];
  content2 = [equalCopy content];
  if ((content != 0) == (content2 == 0))
  {
    goto LABEL_61;
  }

  content3 = [(_INPBSearchForNotebookItemsIntent *)self content];
  if (content3)
  {
    v8 = content3;
    content4 = [(_INPBSearchForNotebookItemsIntent *)self content];
    content5 = [equalCopy content];
    v11 = [content4 isEqual:content5];

    if (!v11)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  hasDateSearchType = [(_INPBSearchForNotebookItemsIntent *)self hasDateSearchType];
  if (hasDateSearchType != [equalCopy hasDateSearchType])
  {
    goto LABEL_62;
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasDateSearchType])
  {
    if ([equalCopy hasDateSearchType])
    {
      dateSearchType = self->_dateSearchType;
      if (dateSearchType != [equalCopy dateSearchType])
      {
        goto LABEL_62;
      }
    }
  }

  content = [(_INPBSearchForNotebookItemsIntent *)self dateTime];
  content2 = [equalCopy dateTime];
  if ((content != 0) == (content2 == 0))
  {
    goto LABEL_61;
  }

  dateTime = [(_INPBSearchForNotebookItemsIntent *)self dateTime];
  if (dateTime)
  {
    v15 = dateTime;
    dateTime2 = [(_INPBSearchForNotebookItemsIntent *)self dateTime];
    dateTime3 = [equalCopy dateTime];
    v18 = [dateTime2 isEqual:dateTime3];

    if (!v18)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  content = [(_INPBSearchForNotebookItemsIntent *)self groupName];
  content2 = [equalCopy groupName];
  if ((content != 0) == (content2 == 0))
  {
    goto LABEL_61;
  }

  groupName = [(_INPBSearchForNotebookItemsIntent *)self groupName];
  if (groupName)
  {
    v20 = groupName;
    groupName2 = [(_INPBSearchForNotebookItemsIntent *)self groupName];
    groupName3 = [equalCopy groupName];
    v23 = [groupName2 isEqual:groupName3];

    if (!v23)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  hasIncludeAllNoteContents = [(_INPBSearchForNotebookItemsIntent *)self hasIncludeAllNoteContents];
  if (hasIncludeAllNoteContents != [equalCopy hasIncludeAllNoteContents])
  {
    goto LABEL_62;
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasIncludeAllNoteContents])
  {
    if ([equalCopy hasIncludeAllNoteContents])
    {
      includeAllNoteContents = self->_includeAllNoteContents;
      if (includeAllNoteContents != [equalCopy includeAllNoteContents])
      {
        goto LABEL_62;
      }
    }
  }

  content = [(_INPBSearchForNotebookItemsIntent *)self intentMetadata];
  content2 = [equalCopy intentMetadata];
  if ((content != 0) == (content2 == 0))
  {
    goto LABEL_61;
  }

  intentMetadata = [(_INPBSearchForNotebookItemsIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v27 = intentMetadata;
    intentMetadata2 = [(_INPBSearchForNotebookItemsIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v30 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v30)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  hasItemType = [(_INPBSearchForNotebookItemsIntent *)self hasItemType];
  if (hasItemType != [equalCopy hasItemType])
  {
    goto LABEL_62;
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasItemType])
  {
    if ([equalCopy hasItemType])
    {
      itemType = self->_itemType;
      if (itemType != [equalCopy itemType])
      {
        goto LABEL_62;
      }
    }
  }

  content = [(_INPBSearchForNotebookItemsIntent *)self location];
  content2 = [equalCopy location];
  if ((content != 0) == (content2 == 0))
  {
    goto LABEL_61;
  }

  location = [(_INPBSearchForNotebookItemsIntent *)self location];
  if (location)
  {
    v34 = location;
    location2 = [(_INPBSearchForNotebookItemsIntent *)self location];
    location3 = [equalCopy location];
    v37 = [location2 isEqual:location3];

    if (!v37)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  hasLocationSearchType = [(_INPBSearchForNotebookItemsIntent *)self hasLocationSearchType];
  if (hasLocationSearchType != [equalCopy hasLocationSearchType])
  {
    goto LABEL_62;
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasLocationSearchType])
  {
    if ([equalCopy hasLocationSearchType])
    {
      locationSearchType = self->_locationSearchType;
      if (locationSearchType != [equalCopy locationSearchType])
      {
        goto LABEL_62;
      }
    }
  }

  content = [(_INPBSearchForNotebookItemsIntent *)self notebookItemIdentifier];
  content2 = [equalCopy notebookItemIdentifier];
  if ((content != 0) == (content2 == 0))
  {
    goto LABEL_61;
  }

  notebookItemIdentifier = [(_INPBSearchForNotebookItemsIntent *)self notebookItemIdentifier];
  if (notebookItemIdentifier)
  {
    v41 = notebookItemIdentifier;
    notebookItemIdentifier2 = [(_INPBSearchForNotebookItemsIntent *)self notebookItemIdentifier];
    notebookItemIdentifier3 = [equalCopy notebookItemIdentifier];
    v44 = [notebookItemIdentifier2 isEqual:notebookItemIdentifier3];

    if (!v44)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  hasStatus = [(_INPBSearchForNotebookItemsIntent *)self hasStatus];
  if (hasStatus != [equalCopy hasStatus])
  {
    goto LABEL_62;
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasStatus])
  {
    if ([equalCopy hasStatus])
    {
      status = self->_status;
      if (status != [equalCopy status])
      {
        goto LABEL_62;
      }
    }
  }

  hasTaskPriority = [(_INPBSearchForNotebookItemsIntent *)self hasTaskPriority];
  if (hasTaskPriority != [equalCopy hasTaskPriority])
  {
    goto LABEL_62;
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasTaskPriority])
  {
    if ([equalCopy hasTaskPriority])
    {
      taskPriority = self->_taskPriority;
      if (taskPriority != [equalCopy taskPriority])
      {
        goto LABEL_62;
      }
    }
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_62;
  }

  content = [(_INPBSearchForNotebookItemsIntent *)self title];
  content2 = [equalCopy title];
  if ((content != 0) != (content2 == 0))
  {
    title = [(_INPBSearchForNotebookItemsIntent *)self title];
    if (!title)
    {

LABEL_65:
      v54 = 1;
      goto LABEL_63;
    }

    v50 = title;
    title2 = [(_INPBSearchForNotebookItemsIntent *)self title];
    title3 = [equalCopy title];
    v53 = [title2 isEqual:title3];

    if (v53)
    {
      goto LABEL_65;
    }
  }

  else
  {
LABEL_61:
  }

LABEL_62:
  v54 = 0;
LABEL_63:

  return v54;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSearchForNotebookItemsIntent allocWithZone:](_INPBSearchForNotebookItemsIntent init];
  v6 = [(NSString *)self->_content copyWithZone:zone];
  [(_INPBSearchForNotebookItemsIntent *)v5 setContent:v6];

  if ([(_INPBSearchForNotebookItemsIntent *)self hasDateSearchType])
  {
    [(_INPBSearchForNotebookItemsIntent *)v5 setDateSearchType:[(_INPBSearchForNotebookItemsIntent *)self dateSearchType]];
  }

  v7 = [(_INPBDateTimeRange *)self->_dateTime copyWithZone:zone];
  [(_INPBSearchForNotebookItemsIntent *)v5 setDateTime:v7];

  v8 = [(_INPBDataString *)self->_groupName copyWithZone:zone];
  [(_INPBSearchForNotebookItemsIntent *)v5 setGroupName:v8];

  if ([(_INPBSearchForNotebookItemsIntent *)self hasIncludeAllNoteContents])
  {
    [(_INPBSearchForNotebookItemsIntent *)v5 setIncludeAllNoteContents:[(_INPBSearchForNotebookItemsIntent *)self includeAllNoteContents]];
  }

  v9 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSearchForNotebookItemsIntent *)v5 setIntentMetadata:v9];

  if ([(_INPBSearchForNotebookItemsIntent *)self hasItemType])
  {
    [(_INPBSearchForNotebookItemsIntent *)v5 setItemType:[(_INPBSearchForNotebookItemsIntent *)self itemType]];
  }

  v10 = [(_INPBLocation *)self->_location copyWithZone:zone];
  [(_INPBSearchForNotebookItemsIntent *)v5 setLocation:v10];

  if ([(_INPBSearchForNotebookItemsIntent *)self hasLocationSearchType])
  {
    [(_INPBSearchForNotebookItemsIntent *)v5 setLocationSearchType:[(_INPBSearchForNotebookItemsIntent *)self locationSearchType]];
  }

  v11 = [(NSString *)self->_notebookItemIdentifier copyWithZone:zone];
  [(_INPBSearchForNotebookItemsIntent *)v5 setNotebookItemIdentifier:v11];

  if ([(_INPBSearchForNotebookItemsIntent *)self hasStatus])
  {
    [(_INPBSearchForNotebookItemsIntent *)v5 setStatus:[(_INPBSearchForNotebookItemsIntent *)self status]];
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasTaskPriority])
  {
    [(_INPBSearchForNotebookItemsIntent *)v5 setTaskPriority:[(_INPBSearchForNotebookItemsIntent *)self taskPriority]];
  }

  PBRepeatedInt32Copy();
  v12 = [(_INPBDataString *)self->_title copyWithZone:zone];
  [(_INPBSearchForNotebookItemsIntent *)v5 setTitle:v12];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSearchForNotebookItemsIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSearchForNotebookItemsIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSearchForNotebookItemsIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(_INPBSearchForNotebookItemsIntent *)self clearTemporalEventTriggerTypes];
  v3.receiver = self;
  v3.super_class = _INPBSearchForNotebookItemsIntent;
  [(_INPBSearchForNotebookItemsIntent *)&v3 dealloc];
}

- (void)writeTo:(id)to
{
  toCopy = to;
  content = [(_INPBSearchForNotebookItemsIntent *)self content];

  if (content)
  {
    content = self->_content;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasDateSearchType])
  {
    dateSearchType = self->_dateSearchType;
    PBDataWriterWriteInt32Field();
  }

  dateTime = [(_INPBSearchForNotebookItemsIntent *)self dateTime];

  if (dateTime)
  {
    dateTime2 = [(_INPBSearchForNotebookItemsIntent *)self dateTime];
    PBDataWriterWriteSubmessage();
  }

  groupName = [(_INPBSearchForNotebookItemsIntent *)self groupName];

  if (groupName)
  {
    groupName2 = [(_INPBSearchForNotebookItemsIntent *)self groupName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasIncludeAllNoteContents])
  {
    includeAllNoteContents = self->_includeAllNoteContents;
    PBDataWriterWriteBOOLField();
  }

  intentMetadata = [(_INPBSearchForNotebookItemsIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSearchForNotebookItemsIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasItemType])
  {
    itemType = self->_itemType;
    PBDataWriterWriteInt32Field();
  }

  location = [(_INPBSearchForNotebookItemsIntent *)self location];

  if (location)
  {
    location2 = [(_INPBSearchForNotebookItemsIntent *)self location];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasLocationSearchType])
  {
    locationSearchType = self->_locationSearchType;
    PBDataWriterWriteInt32Field();
  }

  notebookItemIdentifier = [(_INPBSearchForNotebookItemsIntent *)self notebookItemIdentifier];

  if (notebookItemIdentifier)
  {
    notebookItemIdentifier = self->_notebookItemIdentifier;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasStatus])
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasTaskPriority])
  {
    taskPriority = self->_taskPriority;
    PBDataWriterWriteInt32Field();
  }

  if (self->_temporalEventTriggerTypes.count)
  {
    v22 = 0;
    do
    {
      v23 = self->_temporalEventTriggerTypes.list[v22];
      PBDataWriterWriteInt32Field();
      ++v22;
    }

    while (v22 < self->_temporalEventTriggerTypes.count);
  }

  title = [(_INPBSearchForNotebookItemsIntent *)self title];

  if (title)
  {
    title2 = [(_INPBSearchForNotebookItemsIntent *)self title];
    PBDataWriterWriteSubmessage();
  }
}

- (int)StringAsTemporalEventTriggerTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"UNKNOWN_TEMPORAL_TRIGGER_TYPE"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"NOT_SCHEDULED"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"SCHEDULED_NON_RECURRING"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"SCHEDULED_RECURRING"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addTemporalEventTriggerType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsTaskPriority:(id)priority
{
  priorityCopy = priority;
  if ([priorityCopy isEqualToString:@"UNKNOWN_PRIORITY"])
  {
    v4 = 0;
  }

  else if ([priorityCopy isEqualToString:@"NOT_FLAGGED"])
  {
    v4 = 1;
  }

  else if ([priorityCopy isEqualToString:@"FLAGGED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTaskPriority:(BOOL)priority
{
  if (priority)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setTaskPriority:(int)priority
{
  has = self->_has;
  if (priority == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xDF;
  }

  else
  {
    *&self->_has = has | 0x20;
    self->_taskPriority = priority;
  }
}

- (int)StringAsStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"UNKNOWN_STATUS"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"NOT_COMPLETED"])
  {
    v4 = 10;
  }

  else if ([statusCopy isEqualToString:@"COMPLETED"])
  {
    v4 = 20;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasStatus:(BOOL)status
{
  if (status)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setStatus:(int)status
{
  has = self->_has;
  if (status == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xEF;
  }

  else
  {
    *&self->_has = has | 0x10;
    self->_status = status;
  }
}

- (void)setNotebookItemIdentifier:(id)identifier
{
  v4 = [identifier copy];
  notebookItemIdentifier = self->_notebookItemIdentifier;
  self->_notebookItemIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, notebookItemIdentifier);
}

- (int)StringAsLocationSearchType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_LOCATION_SEARCH_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"BY_LOCATION_TRIGGER"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasLocationSearchType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setLocationSearchType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_locationSearchType = type;
  }
}

- (int)StringAsItemType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_NOTE_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"NOTE"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"TASK_LIST"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"TASK"])
  {
    v4 = 30;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasItemType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setItemType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_itemType = type;
  }
}

- (void)setHasIncludeAllNoteContents:(BOOL)contents
{
  if (contents)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsDateSearchType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_DATE_SEARCH_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"BY_DUE_DATE"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"BY_MODIFIED_DATE"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"BY_CREATED_DATE"])
  {
    v4 = 30;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDateSearchType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_dateSearchType = type;
  }
}

- (void)setContent:(id)content
{
  v4 = [content copy];
  content = self->_content;
  self->_content = v4;

  MEMORY[0x1EEE66BB8](v4, content);
}

@end