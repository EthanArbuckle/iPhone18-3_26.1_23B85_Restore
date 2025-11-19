@interface CLSHandoutReportItem
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
+ (id)hashableColumnNames;
- (CLSHandoutReportItem)initWithDatabaseRow:(id)a3;
- (unint64_t)changeHash;
- (void)bindTo:(id)a3;
@end

@implementation CLSHandoutReportItem

+ (id)hashableColumnNames
{
  v4[0] = @"endDate";
  v4[1] = @"rowid";
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (unint64_t)changeHash
{
  if ([(CLSHandoutReportItem *)self isCompleted])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(CLSHandoutReportItem *)self endDate];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (CLSHandoutReportItem)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CLSHandoutReportItem;
  v5 = [(CLSHandoutReportItem *)&v23 init];
  if (v5)
  {
    v6 = sub_10016D778(v4, @"type");
    -[CLSHandoutReportItem setType:](v5, "setType:", [v6 intValue]);

    v7 = sub_10016D778(v4, @"granularity");
    -[CLSHandoutReportItem setGranularity:](v5, "setGranularity:", [v7 intValue]);

    v8 = sub_10016D778(v4, @"studentID");
    [(CLSHandoutReportItem *)v5 setStudentID:v8];

    v9 = sub_10016D778(v4, @"classID");
    [(CLSHandoutReportItem *)v5 setClassID:v9];

    v10 = sub_10016D778(v4, @"handoutID");
    [(CLSHandoutReportItem *)v5 setHandoutID:v10];

    v11 = sub_10016D6F0(v4, @"startDate");
    [(CLSHandoutReportItem *)v5 setStartDate:v11];

    v12 = sub_10016D6F0(v4, @"endDate");
    [(CLSHandoutReportItem *)v5 setEndDate:v12];

    v13 = sub_10016D778(v4, @"completed");
    -[CLSHandoutReportItem setCompleted:](v5, "setCompleted:", [v13 BOOLValue]);

    v14 = sub_10016D778(v4, @"attachmentID");
    [(CLSHandoutReportItem *)v5 setAttachmentID:v14];

    v15 = sub_10016D778(v4, @"reportID");
    [(CLSHandoutReportItem *)v5 setReportID:v15];

    v16 = objc_opt_class();
    v17 = [NSSet setWithObjects:v16, objc_opt_class(), 0];
    v18 = sub_10016D778(v4, @"primaryActivityReport");
    if (v18)
    {
      v19 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v17 withData:v18];
      [(CLSHandoutReportItem *)v5 setPrimaryActivityReport:v19];
    }

    v20 = sub_10016D778(v4, @"additionalActivityReports");

    if (v20)
    {
      v21 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v17 withData:v20];
      [(CLSHandoutReportItem *)v5 setAdditionalActivityReports:v21];
    }
  }

  return v5;
}

- (void)bindTo:(id)a3
{
  v4 = a3;
  v5 = [NSNumber numberWithInt:[(CLSHandoutReportItem *)self type]];
  sub_1000982FC(v4, v5, @"type");

  v6 = [NSNumber numberWithInt:[(CLSHandoutReportItem *)self granularity]];
  sub_1000982FC(v4, v6, @"granularity");

  v7 = [(CLSHandoutReportItem *)self studentID];
  sub_1000982FC(v4, v7, @"studentID");

  v8 = [(CLSHandoutReportItem *)self classID];
  sub_1000982FC(v4, v8, @"classID");

  v9 = [(CLSHandoutReportItem *)self handoutID];
  sub_1000982FC(v4, v9, @"handoutID");

  v10 = [(CLSHandoutReportItem *)self startDate];
  sub_1000982FC(v4, v10, @"startDate");

  v11 = [(CLSHandoutReportItem *)self endDate];
  sub_1000982FC(v4, v11, @"endDate");

  v12 = [NSNumber numberWithBool:[(CLSHandoutReportItem *)self isCompleted]];
  sub_1000982FC(v4, v12, @"completed");

  v13 = [(CLSHandoutReportItem *)self attachmentID];
  sub_1000982FC(v4, v13, @"attachmentID");

  v14 = [(CLSHandoutReportItem *)self reportID];
  sub_1000982FC(v4, v14, @"reportID");

  v15 = [(CLSHandoutReportItem *)self primaryActivityReport];
  if (v15)
  {
    v24 = 0;
    v16 = [NSKeyedArchiver archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v24];
    v17 = v24;
    v18 = v17;
    if (v17)
    {
      [v17 cls_debug:CLSLogDatabase];
    }

    sub_1000982FC(v4, v16, @"primaryActivityReport");
  }

  v19 = [(CLSHandoutReportItem *)self additionalActivityReports];
  if (v19)
  {
    v23 = 0;
    v20 = [NSKeyedArchiver archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v23];
    v21 = v23;
    v22 = v21;
    if (v21)
    {
      [v21 cls_debug:CLSLogDatabase];
    }

    sub_1000982FC(v4, v20, @"additionalActivityReports");
  }
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3 == 1)
  {
LABEL_7:
    if (sub_1000B9298(v8, @"create index CLSHandoutReportItem_studentID on CLSHandoutReportItem (studentID)", 0, 0, 0))
    {
      a3 = 2;
      goto LABEL_9;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSHandoutReportItem(   type                       integer not null,    granularity                integer not null,    studentID                  text not null,    classID                    text not null,    handoutID                  text not null,    completed                  integer not null,    attachmentID               text not null,    reportID                   text not null,    startDate                  real,    endDate                    real,    primaryActivityReport      blob,    additionalActivityReports  blob)", 0, 0, 0) || !sub_1000B9298(v8, @"create index CLSHandoutReportItem_handoutID on CLSHandoutReportItem (handoutID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index CLSHandoutReportItem_attachmentID on CLSHandoutReportItem (attachmentID)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index CLSHandoutReportItem_reportID on CLSHandoutReportItem (reportID)", 0, 0, 0))
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

LABEL_9:
  *a4 = a3;
  v9 = 1;
LABEL_11:

  return v9;
}

@end