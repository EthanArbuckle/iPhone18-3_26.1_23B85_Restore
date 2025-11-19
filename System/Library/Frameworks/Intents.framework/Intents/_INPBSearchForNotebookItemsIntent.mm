@interface _INPBSearchForNotebookItemsIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSearchForNotebookItemsIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsDateSearchType:(id)a3;
- (int)StringAsItemType:(id)a3;
- (int)StringAsLocationSearchType:(id)a3;
- (int)StringAsStatus:(id)a3;
- (int)StringAsTaskPriority:(id)a3;
- (int)StringAsTemporalEventTriggerTypes:(id)a3;
- (unint64_t)hash;
- (void)addTemporalEventTriggerType:(int)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setContent:(id)a3;
- (void)setDateSearchType:(int)a3;
- (void)setHasIncludeAllNoteContents:(BOOL)a3;
- (void)setHasItemType:(BOOL)a3;
- (void)setHasLocationSearchType:(BOOL)a3;
- (void)setHasStatus:(BOOL)a3;
- (void)setHasTaskPriority:(BOOL)a3;
- (void)setItemType:(int)a3;
- (void)setLocationSearchType:(int)a3;
- (void)setNotebookItemIdentifier:(id)a3;
- (void)setStatus:(int)a3;
- (void)setTaskPriority:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSearchForNotebookItemsIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_content)
  {
    v4 = [(_INPBSearchForNotebookItemsIntent *)self content];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"content"];
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasDateSearchType])
  {
    v6 = [(_INPBSearchForNotebookItemsIntent *)self dateSearchType];
    if (v6 > 19)
    {
      if (v6 == 20)
      {
        v7 = @"BY_MODIFIED_DATE";
        goto LABEL_14;
      }

      if (v6 == 30)
      {
        v7 = @"BY_CREATED_DATE";
        goto LABEL_14;
      }
    }

    else
    {
      if (!v6)
      {
        v7 = @"UNKNOWN_DATE_SEARCH_TYPE";
        goto LABEL_14;
      }

      if (v6 == 10)
      {
        v7 = @"BY_DUE_DATE";
LABEL_14:
        [v3 setObject:v7 forKeyedSubscript:@"dateSearchType"];

        goto LABEL_15;
      }
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    goto LABEL_14;
  }

LABEL_15:
  v8 = [(_INPBSearchForNotebookItemsIntent *)self dateTime];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"dateTime"];

  v10 = [(_INPBSearchForNotebookItemsIntent *)self groupName];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"groupName"];

  if ([(_INPBSearchForNotebookItemsIntent *)self hasIncludeAllNoteContents])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSearchForNotebookItemsIntent includeAllNoteContents](self, "includeAllNoteContents")}];
    [v3 setObject:v12 forKeyedSubscript:@"includeAllNoteContents"];
  }

  v13 = [(_INPBSearchForNotebookItemsIntent *)self intentMetadata];
  v14 = [v13 dictionaryRepresentation];
  [v3 setObject:v14 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBSearchForNotebookItemsIntent *)self hasItemType])
  {
    v15 = [(_INPBSearchForNotebookItemsIntent *)self itemType];
    if (v15 > 19)
    {
      if (v15 == 20)
      {
        v16 = @"TASK_LIST";
        goto LABEL_28;
      }

      if (v15 == 30)
      {
        v16 = @"TASK";
        goto LABEL_28;
      }
    }

    else
    {
      if (!v15)
      {
        v16 = @"UNKNOWN_NOTE_TYPE";
        goto LABEL_28;
      }

      if (v15 == 10)
      {
        v16 = @"NOTE";
LABEL_28:
        [v3 setObject:v16 forKeyedSubscript:@"itemType"];

        goto LABEL_29;
      }
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v15];
    goto LABEL_28;
  }

LABEL_29:
  v17 = [(_INPBSearchForNotebookItemsIntent *)self location];
  v18 = [v17 dictionaryRepresentation];
  [v3 setObject:v18 forKeyedSubscript:@"location"];

  if ([(_INPBSearchForNotebookItemsIntent *)self hasLocationSearchType])
  {
    v19 = [(_INPBSearchForNotebookItemsIntent *)self locationSearchType];
    if (v19)
    {
      if (v19 == 10)
      {
        v20 = @"BY_LOCATION_TRIGGER";
      }

      else
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v19];
      }
    }

    else
    {
      v20 = @"UNKNOWN_LOCATION_SEARCH_TYPE";
    }

    [v3 setObject:v20 forKeyedSubscript:@"locationSearchType"];
  }

  if (self->_notebookItemIdentifier)
  {
    v21 = [(_INPBSearchForNotebookItemsIntent *)self notebookItemIdentifier];
    v22 = [v21 copy];
    [v3 setObject:v22 forKeyedSubscript:@"notebookItemIdentifier"];
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasStatus])
  {
    v23 = [(_INPBSearchForNotebookItemsIntent *)self status];
    if (v23)
    {
      if (v23 == 20)
      {
        v24 = @"COMPLETED";
      }

      else if (v23 == 10)
      {
        v24 = @"NOT_COMPLETED";
      }

      else
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v23];
      }
    }

    else
    {
      v24 = @"UNKNOWN_STATUS";
    }

    [v3 setObject:v24 forKeyedSubscript:@"status"];
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasTaskPriority])
  {
    v25 = [(_INPBSearchForNotebookItemsIntent *)self taskPriority];
    if (v25 >= 3)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v25];
    }

    else
    {
      v26 = off_1E7283878[v25];
    }

    [v3 setObject:v26 forKeyedSubscript:@"taskPriority"];
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

    [v3 setObject:v27 forKeyedSubscript:@"temporalEventTriggerType"];
  }

  v31 = [(_INPBSearchForNotebookItemsIntent *)self title];
  v32 = [v31 dictionaryRepresentation];
  [v3 setObject:v32 forKeyedSubscript:@"title"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_62;
  }

  v5 = [(_INPBSearchForNotebookItemsIntent *)self content];
  v6 = [v4 content];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v7 = [(_INPBSearchForNotebookItemsIntent *)self content];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSearchForNotebookItemsIntent *)self content];
    v10 = [v4 content];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v12 = [(_INPBSearchForNotebookItemsIntent *)self hasDateSearchType];
  if (v12 != [v4 hasDateSearchType])
  {
    goto LABEL_62;
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasDateSearchType])
  {
    if ([v4 hasDateSearchType])
    {
      dateSearchType = self->_dateSearchType;
      if (dateSearchType != [v4 dateSearchType])
      {
        goto LABEL_62;
      }
    }
  }

  v5 = [(_INPBSearchForNotebookItemsIntent *)self dateTime];
  v6 = [v4 dateTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v14 = [(_INPBSearchForNotebookItemsIntent *)self dateTime];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBSearchForNotebookItemsIntent *)self dateTime];
    v17 = [v4 dateTime];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForNotebookItemsIntent *)self groupName];
  v6 = [v4 groupName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v19 = [(_INPBSearchForNotebookItemsIntent *)self groupName];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBSearchForNotebookItemsIntent *)self groupName];
    v22 = [v4 groupName];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v24 = [(_INPBSearchForNotebookItemsIntent *)self hasIncludeAllNoteContents];
  if (v24 != [v4 hasIncludeAllNoteContents])
  {
    goto LABEL_62;
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasIncludeAllNoteContents])
  {
    if ([v4 hasIncludeAllNoteContents])
    {
      includeAllNoteContents = self->_includeAllNoteContents;
      if (includeAllNoteContents != [v4 includeAllNoteContents])
      {
        goto LABEL_62;
      }
    }
  }

  v5 = [(_INPBSearchForNotebookItemsIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v26 = [(_INPBSearchForNotebookItemsIntent *)self intentMetadata];
  if (v26)
  {
    v27 = v26;
    v28 = [(_INPBSearchForNotebookItemsIntent *)self intentMetadata];
    v29 = [v4 intentMetadata];
    v30 = [v28 isEqual:v29];

    if (!v30)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v31 = [(_INPBSearchForNotebookItemsIntent *)self hasItemType];
  if (v31 != [v4 hasItemType])
  {
    goto LABEL_62;
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasItemType])
  {
    if ([v4 hasItemType])
    {
      itemType = self->_itemType;
      if (itemType != [v4 itemType])
      {
        goto LABEL_62;
      }
    }
  }

  v5 = [(_INPBSearchForNotebookItemsIntent *)self location];
  v6 = [v4 location];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v33 = [(_INPBSearchForNotebookItemsIntent *)self location];
  if (v33)
  {
    v34 = v33;
    v35 = [(_INPBSearchForNotebookItemsIntent *)self location];
    v36 = [v4 location];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v38 = [(_INPBSearchForNotebookItemsIntent *)self hasLocationSearchType];
  if (v38 != [v4 hasLocationSearchType])
  {
    goto LABEL_62;
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasLocationSearchType])
  {
    if ([v4 hasLocationSearchType])
    {
      locationSearchType = self->_locationSearchType;
      if (locationSearchType != [v4 locationSearchType])
      {
        goto LABEL_62;
      }
    }
  }

  v5 = [(_INPBSearchForNotebookItemsIntent *)self notebookItemIdentifier];
  v6 = [v4 notebookItemIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v40 = [(_INPBSearchForNotebookItemsIntent *)self notebookItemIdentifier];
  if (v40)
  {
    v41 = v40;
    v42 = [(_INPBSearchForNotebookItemsIntent *)self notebookItemIdentifier];
    v43 = [v4 notebookItemIdentifier];
    v44 = [v42 isEqual:v43];

    if (!v44)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v45 = [(_INPBSearchForNotebookItemsIntent *)self hasStatus];
  if (v45 != [v4 hasStatus])
  {
    goto LABEL_62;
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasStatus])
  {
    if ([v4 hasStatus])
    {
      status = self->_status;
      if (status != [v4 status])
      {
        goto LABEL_62;
      }
    }
  }

  v47 = [(_INPBSearchForNotebookItemsIntent *)self hasTaskPriority];
  if (v47 != [v4 hasTaskPriority])
  {
    goto LABEL_62;
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasTaskPriority])
  {
    if ([v4 hasTaskPriority])
    {
      taskPriority = self->_taskPriority;
      if (taskPriority != [v4 taskPriority])
      {
        goto LABEL_62;
      }
    }
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_62;
  }

  v5 = [(_INPBSearchForNotebookItemsIntent *)self title];
  v6 = [v4 title];
  if ((v5 != 0) != (v6 == 0))
  {
    v49 = [(_INPBSearchForNotebookItemsIntent *)self title];
    if (!v49)
    {

LABEL_65:
      v54 = 1;
      goto LABEL_63;
    }

    v50 = v49;
    v51 = [(_INPBSearchForNotebookItemsIntent *)self title];
    v52 = [v4 title];
    v53 = [v51 isEqual:v52];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSearchForNotebookItemsIntent allocWithZone:](_INPBSearchForNotebookItemsIntent init];
  v6 = [(NSString *)self->_content copyWithZone:a3];
  [(_INPBSearchForNotebookItemsIntent *)v5 setContent:v6];

  if ([(_INPBSearchForNotebookItemsIntent *)self hasDateSearchType])
  {
    [(_INPBSearchForNotebookItemsIntent *)v5 setDateSearchType:[(_INPBSearchForNotebookItemsIntent *)self dateSearchType]];
  }

  v7 = [(_INPBDateTimeRange *)self->_dateTime copyWithZone:a3];
  [(_INPBSearchForNotebookItemsIntent *)v5 setDateTime:v7];

  v8 = [(_INPBDataString *)self->_groupName copyWithZone:a3];
  [(_INPBSearchForNotebookItemsIntent *)v5 setGroupName:v8];

  if ([(_INPBSearchForNotebookItemsIntent *)self hasIncludeAllNoteContents])
  {
    [(_INPBSearchForNotebookItemsIntent *)v5 setIncludeAllNoteContents:[(_INPBSearchForNotebookItemsIntent *)self includeAllNoteContents]];
  }

  v9 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSearchForNotebookItemsIntent *)v5 setIntentMetadata:v9];

  if ([(_INPBSearchForNotebookItemsIntent *)self hasItemType])
  {
    [(_INPBSearchForNotebookItemsIntent *)v5 setItemType:[(_INPBSearchForNotebookItemsIntent *)self itemType]];
  }

  v10 = [(_INPBLocation *)self->_location copyWithZone:a3];
  [(_INPBSearchForNotebookItemsIntent *)v5 setLocation:v10];

  if ([(_INPBSearchForNotebookItemsIntent *)self hasLocationSearchType])
  {
    [(_INPBSearchForNotebookItemsIntent *)v5 setLocationSearchType:[(_INPBSearchForNotebookItemsIntent *)self locationSearchType]];
  }

  v11 = [(NSString *)self->_notebookItemIdentifier copyWithZone:a3];
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
  v12 = [(_INPBDataString *)self->_title copyWithZone:a3];
  [(_INPBSearchForNotebookItemsIntent *)v5 setTitle:v12];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSearchForNotebookItemsIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSearchForNotebookItemsIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSearchForNotebookItemsIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)dealloc
{
  [(_INPBSearchForNotebookItemsIntent *)self clearTemporalEventTriggerTypes];
  v3.receiver = self;
  v3.super_class = _INPBSearchForNotebookItemsIntent;
  [(_INPBSearchForNotebookItemsIntent *)&v3 dealloc];
}

- (void)writeTo:(id)a3
{
  v26 = a3;
  v4 = [(_INPBSearchForNotebookItemsIntent *)self content];

  if (v4)
  {
    content = self->_content;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasDateSearchType])
  {
    dateSearchType = self->_dateSearchType;
    PBDataWriterWriteInt32Field();
  }

  v7 = [(_INPBSearchForNotebookItemsIntent *)self dateTime];

  if (v7)
  {
    v8 = [(_INPBSearchForNotebookItemsIntent *)self dateTime];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_INPBSearchForNotebookItemsIntent *)self groupName];

  if (v9)
  {
    v10 = [(_INPBSearchForNotebookItemsIntent *)self groupName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasIncludeAllNoteContents])
  {
    includeAllNoteContents = self->_includeAllNoteContents;
    PBDataWriterWriteBOOLField();
  }

  v12 = [(_INPBSearchForNotebookItemsIntent *)self intentMetadata];

  if (v12)
  {
    v13 = [(_INPBSearchForNotebookItemsIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasItemType])
  {
    itemType = self->_itemType;
    PBDataWriterWriteInt32Field();
  }

  v15 = [(_INPBSearchForNotebookItemsIntent *)self location];

  if (v15)
  {
    v16 = [(_INPBSearchForNotebookItemsIntent *)self location];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSearchForNotebookItemsIntent *)self hasLocationSearchType])
  {
    locationSearchType = self->_locationSearchType;
    PBDataWriterWriteInt32Field();
  }

  v18 = [(_INPBSearchForNotebookItemsIntent *)self notebookItemIdentifier];

  if (v18)
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

  v24 = [(_INPBSearchForNotebookItemsIntent *)self title];

  if (v24)
  {
    v25 = [(_INPBSearchForNotebookItemsIntent *)self title];
    PBDataWriterWriteSubmessage();
  }
}

- (int)StringAsTemporalEventTriggerTypes:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_TEMPORAL_TRIGGER_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NOT_SCHEDULED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SCHEDULED_NON_RECURRING"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SCHEDULED_RECURRING"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addTemporalEventTriggerType:(int)a3
{
  if (a3 != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsTaskPriority:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_PRIORITY"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NOT_FLAGGED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"FLAGGED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTaskPriority:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setTaskPriority:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xDF;
  }

  else
  {
    *&self->_has = has | 0x20;
    self->_taskPriority = a3;
  }
}

- (int)StringAsStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_STATUS"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NOT_COMPLETED"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"COMPLETED"])
  {
    v4 = 20;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setStatus:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xEF;
  }

  else
  {
    *&self->_has = has | 0x10;
    self->_status = a3;
  }
}

- (void)setNotebookItemIdentifier:(id)a3
{
  v4 = [a3 copy];
  notebookItemIdentifier = self->_notebookItemIdentifier;
  self->_notebookItemIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, notebookItemIdentifier);
}

- (int)StringAsLocationSearchType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_LOCATION_SEARCH_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"BY_LOCATION_TRIGGER"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasLocationSearchType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setLocationSearchType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_locationSearchType = a3;
  }
}

- (int)StringAsItemType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_NOTE_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NOTE"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"TASK_LIST"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"TASK"])
  {
    v4 = 30;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasItemType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setItemType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_itemType = a3;
  }
}

- (void)setHasIncludeAllNoteContents:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsDateSearchType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_DATE_SEARCH_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"BY_DUE_DATE"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"BY_MODIFIED_DATE"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"BY_CREATED_DATE"])
  {
    v4 = 30;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDateSearchType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_dateSearchType = a3;
  }
}

- (void)setContent:(id)a3
{
  v4 = [a3 copy];
  content = self->_content;
  self->_content = v4;

  MEMORY[0x1EEE66BB8](v4, content);
}

@end