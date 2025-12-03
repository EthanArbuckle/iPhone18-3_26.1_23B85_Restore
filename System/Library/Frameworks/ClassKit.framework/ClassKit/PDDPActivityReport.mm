@interface PDDPActivityReport
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAttachmentType:(id)type;
- (int)attachmentType;
- (unint64_t)hash;
- (void)addAdditionalItems:(id)items;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPActivityReport

- (void)addAdditionalItems:(id)items
{
  itemsCopy = items;
  additionalItems = self->_additionalItems;
  v8 = itemsCopy;
  if (!additionalItems)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_additionalItems;
    self->_additionalItems = v6;

    itemsCopy = v8;
    additionalItems = self->_additionalItems;
  }

  [(NSMutableArray *)additionalItems addObject:itemsCopy];
}

- (int)attachmentType
{
  if (*&self->_has)
  {
    return self->_attachmentType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsAttachmentType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"URL_TYPE"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"CONTEXT_TYPE"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"ASSET_TYPE"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"APP_TYPE"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"HAND_IN_REQUEST_TYPE"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"SURVEY_TYPE"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"ASSESSMENT_TYPE"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPActivityReport;
  v3 = [(PDDPActivityReport *)&v7 description];
  dictionaryRepresentation = [(PDDPActivityReport *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  contextType = self->_contextType;
  if (contextType)
  {
    [v3 setObject:contextType forKey:@"context_type"];
  }

  contextTopic = self->_contextTopic;
  if (contextTopic)
  {
    [v4 setObject:contextTopic forKey:@"context_topic"];
  }

  contextTitle = self->_contextTitle;
  if (contextTitle)
  {
    [v4 setObject:contextTitle forKey:@"context_title"];
  }

  contextIdentifierPath = self->_contextIdentifierPath;
  if (contextIdentifierPath)
  {
    [v4 setObject:contextIdentifierPath forKey:@"context_identifier_path"];
  }

  contextObjectIdPath = self->_contextObjectIdPath;
  if (contextObjectIdPath)
  {
    [v4 setObject:contextObjectIdPath forKey:@"context_object_id_path"];
  }

  time = self->_time;
  if (time)
  {
    dictionaryRepresentation = [(PDDPAggregatedValue *)time dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"time"];
  }

  progress = self->_progress;
  if (progress)
  {
    dictionaryRepresentation2 = [(PDDPAggregatedValue *)progress dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"progress"];
  }

  primaryItem = self->_primaryItem;
  if (primaryItem)
  {
    dictionaryRepresentation3 = [(PDDPActivityReportItem *)primaryItem dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"primary_item"];
  }

  if ([(NSMutableArray *)self->_additionalItems count])
  {
    v16 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_additionalItems, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v17 = self->_additionalItems;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          dictionaryRepresentation4 = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          [v16 addObject:dictionaryRepresentation4];
        }

        v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v19);
    }

    [v4 setObject:v16 forKey:@"additional_items"];
  }

  contextUniversalLink = self->_contextUniversalLink;
  if (contextUniversalLink)
  {
    [v4 setObject:contextUniversalLink forKey:@"context_universal_link"];
  }

  contextStableObjectIdPath = self->_contextStableObjectIdPath;
  if (contextStableObjectIdPath)
  {
    [v4 setObject:contextStableObjectIdPath forKey:@"context_stable_object_id_path"];
  }

  handoutAuthorizedObjectId = self->_handoutAuthorizedObjectId;
  if (handoutAuthorizedObjectId)
  {
    [v4 setObject:handoutAuthorizedObjectId forKey:@"handout_authorized_object_id"];
  }

  if (*&self->_has)
  {
    attachmentType = self->_attachmentType;
    if (attachmentType >= 8)
    {
      v27 = [NSString stringWithFormat:@"(unknown: %i)", self->_attachmentType];
    }

    else
    {
      v27 = *(&off_100204868 + attachmentType);
    }

    [v4 setObject:v27 forKey:@"attachment_type"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_contextType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contextTopic)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contextTitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contextObjectIdPath)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_time)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_progress)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_primaryItem)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_additionalItems;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_contextUniversalLink)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contextIdentifierPath)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contextStableObjectIdPath)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_handoutAuthorizedObjectId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    attachmentType = self->_attachmentType;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_contextType)
  {
    [toCopy setContextType:?];
  }

  if (self->_contextTopic)
  {
    [toCopy setContextTopic:?];
  }

  if (self->_contextTitle)
  {
    [toCopy setContextTitle:?];
  }

  if (self->_contextObjectIdPath)
  {
    [toCopy setContextObjectIdPath:?];
  }

  if (self->_time)
  {
    [toCopy setTime:?];
  }

  if (self->_progress)
  {
    [toCopy setProgress:?];
  }

  if (self->_primaryItem)
  {
    [toCopy setPrimaryItem:?];
  }

  if ([(PDDPActivityReport *)self additionalItemsCount])
  {
    [toCopy clearAdditionalItems];
    additionalItemsCount = [(PDDPActivityReport *)self additionalItemsCount];
    if (additionalItemsCount)
    {
      v5 = additionalItemsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PDDPActivityReport *)self additionalItemsAtIndex:i];
        [toCopy addAdditionalItems:v7];
      }
    }
  }

  if (self->_contextUniversalLink)
  {
    [toCopy setContextUniversalLink:?];
  }

  v8 = toCopy;
  if (self->_contextIdentifierPath)
  {
    [toCopy setContextIdentifierPath:?];
    v8 = toCopy;
  }

  if (self->_contextStableObjectIdPath)
  {
    [toCopy setContextStableObjectIdPath:?];
    v8 = toCopy;
  }

  if (self->_handoutAuthorizedObjectId)
  {
    [toCopy setHandoutAuthorizedObjectId:?];
    v8 = toCopy;
  }

  if (*&self->_has)
  {
    v8[4] = self->_attachmentType;
    *(v8 + 112) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_contextType copyWithZone:zone];
  v7 = v5[8];
  v5[8] = v6;

  v8 = [(NSString *)self->_contextTopic copyWithZone:zone];
  v9 = v5[7];
  v5[7] = v8;

  v10 = [(NSString *)self->_contextTitle copyWithZone:zone];
  v11 = v5[6];
  v5[6] = v10;

  v12 = [(NSString *)self->_contextObjectIdPath copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(PDDPAggregatedValue *)self->_time copyWithZone:zone];
  v15 = v5[13];
  v5[13] = v14;

  v16 = [(PDDPAggregatedValue *)self->_progress copyWithZone:zone];
  v17 = v5[12];
  v5[12] = v16;

  v18 = [(PDDPActivityReportItem *)self->_primaryItem copyWithZone:zone];
  v19 = v5[11];
  v5[11] = v18;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = self->_additionalItems;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v35 + 1) + 8 * i) copyWithZone:{zone, v35}];
        [v5 addAdditionalItems:v25];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v22);
  }

  v26 = [(NSString *)self->_contextUniversalLink copyWithZone:zone];
  v27 = v5[9];
  v5[9] = v26;

  v28 = [(NSString *)self->_contextIdentifierPath copyWithZone:zone];
  v29 = v5[3];
  v5[3] = v28;

  v30 = [(NSString *)self->_contextStableObjectIdPath copyWithZone:zone];
  v31 = v5[5];
  v5[5] = v30;

  v32 = [(NSString *)self->_handoutAuthorizedObjectId copyWithZone:zone];
  v33 = v5[10];
  v5[10] = v32;

  if (*&self->_has)
  {
    *(v5 + 4) = self->_attachmentType;
    *(v5 + 112) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  contextType = self->_contextType;
  if (contextType | *(equalCopy + 8))
  {
    if (![(NSString *)contextType isEqual:?])
    {
      goto LABEL_30;
    }
  }

  contextTopic = self->_contextTopic;
  if (contextTopic | *(equalCopy + 7))
  {
    if (![(NSString *)contextTopic isEqual:?])
    {
      goto LABEL_30;
    }
  }

  contextTitle = self->_contextTitle;
  if (contextTitle | *(equalCopy + 6))
  {
    if (![(NSString *)contextTitle isEqual:?])
    {
      goto LABEL_30;
    }
  }

  contextObjectIdPath = self->_contextObjectIdPath;
  if (contextObjectIdPath | *(equalCopy + 4))
  {
    if (![(NSString *)contextObjectIdPath isEqual:?])
    {
      goto LABEL_30;
    }
  }

  time = self->_time;
  if (time | *(equalCopy + 13))
  {
    if (![(PDDPAggregatedValue *)time isEqual:?])
    {
      goto LABEL_30;
    }
  }

  progress = self->_progress;
  if (progress | *(equalCopy + 12))
  {
    if (![(PDDPAggregatedValue *)progress isEqual:?])
    {
      goto LABEL_30;
    }
  }

  primaryItem = self->_primaryItem;
  if (primaryItem | *(equalCopy + 11))
  {
    if (![(PDDPActivityReportItem *)primaryItem isEqual:?])
    {
      goto LABEL_30;
    }
  }

  additionalItems = self->_additionalItems;
  if (additionalItems | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)additionalItems isEqual:?])
    {
      goto LABEL_30;
    }
  }

  contextUniversalLink = self->_contextUniversalLink;
  if (contextUniversalLink | *(equalCopy + 9))
  {
    if (![(NSString *)contextUniversalLink isEqual:?])
    {
      goto LABEL_30;
    }
  }

  contextIdentifierPath = self->_contextIdentifierPath;
  if (contextIdentifierPath | *(equalCopy + 3))
  {
    if (![(NSString *)contextIdentifierPath isEqual:?])
    {
      goto LABEL_30;
    }
  }

  contextStableObjectIdPath = self->_contextStableObjectIdPath;
  if (contextStableObjectIdPath | *(equalCopy + 5))
  {
    if (![(NSString *)contextStableObjectIdPath isEqual:?])
    {
      goto LABEL_30;
    }
  }

  handoutAuthorizedObjectId = self->_handoutAuthorizedObjectId;
  if (handoutAuthorizedObjectId | *(equalCopy + 10))
  {
    if (![(NSString *)handoutAuthorizedObjectId isEqual:?])
    {
      goto LABEL_30;
    }
  }

  v17 = (*(equalCopy + 112) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 112) & 1) != 0 && self->_attachmentType == *(equalCopy + 4))
    {
      v17 = 1;
      goto LABEL_31;
    }

LABEL_30:
    v17 = 0;
  }

LABEL_31:

  return v17;
}

- (unint64_t)hash
{
  v16 = [(NSString *)self->_contextType hash];
  v15 = [(NSString *)self->_contextTopic hash];
  v14 = [(NSString *)self->_contextTitle hash];
  v3 = [(NSString *)self->_contextObjectIdPath hash];
  v4 = [(PDDPAggregatedValue *)self->_time hash];
  v5 = [(PDDPAggregatedValue *)self->_progress hash];
  v6 = [(PDDPActivityReportItem *)self->_primaryItem hash];
  v7 = [(NSMutableArray *)self->_additionalItems hash];
  v8 = [(NSString *)self->_contextUniversalLink hash];
  v9 = [(NSString *)self->_contextIdentifierPath hash];
  v10 = [(NSString *)self->_contextStableObjectIdPath hash];
  v11 = [(NSString *)self->_handoutAuthorizedObjectId hash];
  if (*&self->_has)
  {
    v12 = 2654435761 * self->_attachmentType;
  }

  else
  {
    v12 = 0;
  }

  return v15 ^ v16 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 8))
  {
    [(PDDPActivityReport *)self setContextType:?];
  }

  if (*(fromCopy + 7))
  {
    [(PDDPActivityReport *)self setContextTopic:?];
  }

  if (*(fromCopy + 6))
  {
    [(PDDPActivityReport *)self setContextTitle:?];
  }

  if (*(fromCopy + 4))
  {
    [(PDDPActivityReport *)self setContextObjectIdPath:?];
  }

  time = self->_time;
  v6 = *(fromCopy + 13);
  if (time)
  {
    if (v6)
    {
      [(PDDPAggregatedValue *)time mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PDDPActivityReport *)self setTime:?];
  }

  progress = self->_progress;
  v8 = *(fromCopy + 12);
  if (progress)
  {
    if (v8)
    {
      [(PDDPAggregatedValue *)progress mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PDDPActivityReport *)self setProgress:?];
  }

  primaryItem = self->_primaryItem;
  v10 = *(fromCopy + 11);
  if (primaryItem)
  {
    if (v10)
    {
      [(PDDPActivityReportItem *)primaryItem mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(PDDPActivityReport *)self setPrimaryItem:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = *(fromCopy + 1);
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(PDDPActivityReport *)self addAdditionalItems:*(*(&v16 + 1) + 8 * i), v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }

  if (*(fromCopy + 9))
  {
    [(PDDPActivityReport *)self setContextUniversalLink:?];
  }

  if (*(fromCopy + 3))
  {
    [(PDDPActivityReport *)self setContextIdentifierPath:?];
  }

  if (*(fromCopy + 5))
  {
    [(PDDPActivityReport *)self setContextStableObjectIdPath:?];
  }

  if (*(fromCopy + 10))
  {
    [(PDDPActivityReport *)self setHandoutAuthorizedObjectId:?];
  }

  if (*(fromCopy + 112))
  {
    self->_attachmentType = *(fromCopy + 4);
    *&self->_has |= 1u;
  }
}

@end