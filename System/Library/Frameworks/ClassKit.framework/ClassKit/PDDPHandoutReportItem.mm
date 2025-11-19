@interface PDDPHandoutReportItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsGranularity:(id)a3;
- (int)StringAsType:(id)a3;
- (int)granularity;
- (int)type;
- (unint64_t)hash;
- (void)addAdditionalReports:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsCompleted:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPHandoutReportItem

- (int)type
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasType:(BOOL)a3
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

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"BEFORE_DUE_DATE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AFTER_DUE_DATE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"AFTER_REVIEWED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"NO_DUE_DATE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)granularity
{
  if (*&self->_has)
  {
    return self->_granularity;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsGranularity:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_GRANULARITY"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"DAILY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"EVERY_7_DAY"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"EVERY_30_DAY"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"COMPLETE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsCompleted:(BOOL)a3
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

- (void)addAdditionalReports:(id)a3
{
  v4 = a3;
  additionalReports = self->_additionalReports;
  v8 = v4;
  if (!additionalReports)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_additionalReports;
    self->_additionalReports = v6;

    v4 = v8;
    additionalReports = self->_additionalReports;
  }

  [(NSMutableArray *)additionalReports addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPHandoutReportItem;
  v3 = [(PDDPHandoutReportItem *)&v7 description];
  v4 = [(PDDPHandoutReportItem *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    type = self->_type;
    if (type >= 5)
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v6 = *(&off_1002065F0 + type);
    }

    [v3 setObject:v6 forKey:@"type"];

    has = self->_has;
  }

  if (has)
  {
    granularity = self->_granularity;
    if (granularity >= 5)
    {
      v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_granularity];
    }

    else
    {
      v8 = *(&off_100206618 + granularity);
    }

    [v3 setObject:v8 forKey:@"granularity"];
  }

  handoutId = self->_handoutId;
  if (handoutId)
  {
    [v3 setObject:handoutId forKey:@"handout_id"];
  }

  studentId = self->_studentId;
  if (studentId)
  {
    [v3 setObject:studentId forKey:@"student_id"];
  }

  classId = self->_classId;
  if (classId)
  {
    [v3 setObject:classId forKey:@"class_id"];
  }

  startDate = self->_startDate;
  if (startDate)
  {
    v13 = [(PDDPDate *)startDate dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"start_date"];
  }

  endDate = self->_endDate;
  if (endDate)
  {
    v15 = [(PDDPDate *)endDate dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"end_date"];
  }

  attachmentId = self->_attachmentId;
  if (attachmentId)
  {
    [v3 setObject:attachmentId forKey:@"attachment_id"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v17 = [NSNumber numberWithBool:self->_isCompleted];
    [v3 setObject:v17 forKey:@"is_completed"];
  }

  report = self->_report;
  if (report)
  {
    v19 = [(PDDPActivityReport *)report dictionaryRepresentation];
    [v3 setObject:v19 forKey:@"report"];
  }

  if ([(NSMutableArray *)self->_additionalReports count])
  {
    v20 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_additionalReports, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v21 = self->_additionalReports;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v30;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          [v20 addObject:v26];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v23);
    }

    [v3 setObject:v20 forKey:@"additional_reports"];
  }

  reportItemId = self->_reportItemId;
  if (reportItemId)
  {
    [v3 setObject:reportItemId forKey:@"report_item_id"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    granularity = self->_granularity;
    PBDataWriterWriteInt32Field();
  }

  if (self->_handoutId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_studentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_classId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_startDate)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_endDate)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_attachmentId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    isCompleted = self->_isCompleted;
    PBDataWriterWriteBOOLField();
  }

  if (self->_report)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = self->_additionalReports;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  if (self->_reportItemId)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[22] = self->_type;
    *(v4 + 96) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[10] = self->_granularity;
    *(v4 + 96) |= 1u;
  }

  v10 = v4;
  if (self->_handoutId)
  {
    [v4 setHandoutId:?];
    v4 = v10;
  }

  if (self->_studentId)
  {
    [v10 setStudentId:?];
    v4 = v10;
  }

  if (self->_classId)
  {
    [v10 setClassId:?];
    v4 = v10;
  }

  if (self->_startDate)
  {
    [v10 setStartDate:?];
    v4 = v10;
  }

  if (self->_endDate)
  {
    [v10 setEndDate:?];
    v4 = v10;
  }

  if (self->_attachmentId)
  {
    [v10 setAttachmentId:?];
    v4 = v10;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 92) = self->_isCompleted;
    *(v4 + 96) |= 4u;
  }

  if (self->_report)
  {
    [v10 setReport:?];
  }

  if ([(PDDPHandoutReportItem *)self additionalReportsCount])
  {
    [v10 clearAdditionalReports];
    v6 = [(PDDPHandoutReportItem *)self additionalReportsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PDDPHandoutReportItem *)self additionalReportsAtIndex:i];
        [v10 addAdditionalReports:v9];
      }
    }
  }

  if (self->_reportItemId)
  {
    [v10 setReportItemId:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5[22] = self->_type;
    *(v5 + 96) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v5[10] = self->_granularity;
    *(v5 + 96) |= 1u;
  }

  v8 = [(NSString *)self->_handoutId copyWithZone:a3];
  v9 = v6[6];
  v6[6] = v8;

  v10 = [(NSString *)self->_studentId copyWithZone:a3];
  v11 = v6[10];
  v6[10] = v10;

  v12 = [(NSString *)self->_classId copyWithZone:a3];
  v13 = v6[3];
  v6[3] = v12;

  v14 = [(PDDPDate *)self->_startDate copyWithZone:a3];
  v15 = v6[9];
  v6[9] = v14;

  v16 = [(PDDPDate *)self->_endDate copyWithZone:a3];
  v17 = v6[4];
  v6[4] = v16;

  v18 = [(NSString *)self->_attachmentId copyWithZone:a3];
  v19 = v6[2];
  v6[2] = v18;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 92) = self->_isCompleted;
    *(v6 + 96) |= 4u;
  }

  v20 = [(PDDPActivityReport *)self->_report copyWithZone:a3];
  v21 = v6[7];
  v6[7] = v20;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = self->_additionalReports;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v32;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v31 + 1) + 8 * i) copyWithZone:{a3, v31}];
        [v6 addAdditionalReports:v27];
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v24);
  }

  v28 = [(NSString *)self->_reportItemId copyWithZone:a3];
  v29 = v6[8];
  v6[8] = v28;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  v5 = *(v4 + 96);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 96) & 2) == 0 || self->_type != *(v4 + 22))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 96) & 2) != 0)
  {
    goto LABEL_33;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 96) & 1) == 0 || self->_granularity != *(v4 + 10))
    {
      goto LABEL_33;
    }
  }

  else if (*(v4 + 96))
  {
    goto LABEL_33;
  }

  handoutId = self->_handoutId;
  if (handoutId | *(v4 + 6) && ![(NSString *)handoutId isEqual:?])
  {
    goto LABEL_33;
  }

  studentId = self->_studentId;
  if (studentId | *(v4 + 10))
  {
    if (![(NSString *)studentId isEqual:?])
    {
      goto LABEL_33;
    }
  }

  classId = self->_classId;
  if (classId | *(v4 + 3))
  {
    if (![(NSString *)classId isEqual:?])
    {
      goto LABEL_33;
    }
  }

  startDate = self->_startDate;
  if (startDate | *(v4 + 9))
  {
    if (![(PDDPDate *)startDate isEqual:?])
    {
      goto LABEL_33;
    }
  }

  endDate = self->_endDate;
  if (endDate | *(v4 + 4))
  {
    if (![(PDDPDate *)endDate isEqual:?])
    {
      goto LABEL_33;
    }
  }

  attachmentId = self->_attachmentId;
  if (attachmentId | *(v4 + 2))
  {
    if (![(NSString *)attachmentId isEqual:?])
    {
      goto LABEL_33;
    }
  }

  v12 = *(v4 + 96);
  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 96) & 4) == 0)
    {
      goto LABEL_26;
    }

LABEL_33:
    v16 = 0;
    goto LABEL_34;
  }

  if ((*(v4 + 96) & 4) == 0)
  {
    goto LABEL_33;
  }

  v18 = *(v4 + 92);
  if (self->_isCompleted)
  {
    if ((*(v4 + 92) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (*(v4 + 92))
  {
    goto LABEL_33;
  }

LABEL_26:
  report = self->_report;
  if (report | *(v4 + 7) && ![(PDDPActivityReport *)report isEqual:?])
  {
    goto LABEL_33;
  }

  additionalReports = self->_additionalReports;
  if (additionalReports | *(v4 + 1))
  {
    if (![(NSMutableArray *)additionalReports isEqual:?])
    {
      goto LABEL_33;
    }
  }

  reportItemId = self->_reportItemId;
  if (reportItemId | *(v4 + 8))
  {
    v16 = [(NSString *)reportItemId isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_34:

  return v16;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_type;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if (*&self->_has)
    {
LABEL_3:
      v4 = 2654435761 * self->_granularity;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_handoutId hash];
  v6 = [(NSString *)self->_studentId hash];
  v7 = [(NSString *)self->_classId hash];
  v8 = [(PDDPDate *)self->_startDate hash];
  v9 = [(PDDPDate *)self->_endDate hash];
  v10 = [(NSString *)self->_attachmentId hash];
  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761 * self->_isCompleted;
  }

  else
  {
    v11 = 0;
  }

  v12 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  v13 = v11 ^ [(PDDPActivityReport *)self->_report hash];
  v14 = v13 ^ [(NSMutableArray *)self->_additionalReports hash];
  return v12 ^ v14 ^ [(NSString *)self->_reportItemId hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 96);
  if ((v6 & 2) != 0)
  {
    self->_type = v4[22];
    *&self->_has |= 2u;
    v6 = *(v4 + 96);
  }

  if (v6)
  {
    self->_granularity = v4[10];
    *&self->_has |= 1u;
  }

  if (*(v4 + 6))
  {
    [(PDDPHandoutReportItem *)self setHandoutId:?];
  }

  if (*(v5 + 10))
  {
    [(PDDPHandoutReportItem *)self setStudentId:?];
  }

  if (*(v5 + 3))
  {
    [(PDDPHandoutReportItem *)self setClassId:?];
  }

  startDate = self->_startDate;
  v8 = *(v5 + 9);
  if (startDate)
  {
    if (v8)
    {
      [(PDDPDate *)startDate mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PDDPHandoutReportItem *)self setStartDate:?];
  }

  endDate = self->_endDate;
  v10 = *(v5 + 4);
  if (endDate)
  {
    if (v10)
    {
      [(PDDPDate *)endDate mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(PDDPHandoutReportItem *)self setEndDate:?];
  }

  if (*(v5 + 2))
  {
    [(PDDPHandoutReportItem *)self setAttachmentId:?];
  }

  if ((v5[24] & 4) != 0)
  {
    self->_isCompleted = *(v5 + 92);
    *&self->_has |= 4u;
  }

  report = self->_report;
  v12 = *(v5 + 7);
  if (report)
  {
    if (v12)
    {
      [(PDDPActivityReport *)report mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(PDDPHandoutReportItem *)self setReport:?];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = *(v5 + 1);
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(PDDPHandoutReportItem *)self addAdditionalReports:*(*(&v18 + 1) + 8 * i), v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }

  if (*(v5 + 8))
  {
    [(PDDPHandoutReportItem *)self setReportItemId:?];
  }
}

@end