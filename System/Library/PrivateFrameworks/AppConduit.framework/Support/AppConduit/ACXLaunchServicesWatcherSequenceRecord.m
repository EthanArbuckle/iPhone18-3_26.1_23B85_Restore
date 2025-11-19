@interface ACXLaunchServicesWatcherSequenceRecord
- (ACXLaunchServicesWatcherSequenceRecord)initWithDictionaryRepresentation:(id)a3;
- (ACXLaunchServicesWatcherSequenceRecord)initWithLSSequenceNumber:(unint64_t)a3 acxSequenceNumber:(unint64_t)a4 counterpartIdentifiers:(id)a5;
- (id)dictionaryRepresentation;
@end

@implementation ACXLaunchServicesWatcherSequenceRecord

- (ACXLaunchServicesWatcherSequenceRecord)initWithLSSequenceNumber:(unint64_t)a3 acxSequenceNumber:(unint64_t)a4 counterpartIdentifiers:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = ACXLaunchServicesWatcherSequenceRecord;
  v9 = [(ACXLaunchServicesWatcherSequenceRecord *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_lsSequenceNumber = a3;
    v9->_acxSequenceNumber = a4;
    v11 = [v8 copy];
    counterpartIdentifiers = v10->_counterpartIdentifiers;
    v10->_counterpartIdentifiers = v11;
  }

  return v10;
}

- (ACXLaunchServicesWatcherSequenceRecord)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"LS"];
  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:@"ACX"];
    objc_opt_class();
    v9 = v8;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v12 = [v4 objectForKeyedSubscript:@"C"];
      objc_opt_class();
      v13 = v12;
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      if (v14 && (objc_opt_class(), (sub_100005D2C(v14) & 1) == 0))
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          MOLogWrite();
        }

        v11 = 0;
      }

      else
      {
        self = -[ACXLaunchServicesWatcherSequenceRecord initWithLSSequenceNumber:acxSequenceNumber:counterpartIdentifiers:](self, "initWithLSSequenceNumber:acxSequenceNumber:counterpartIdentifiers:", [v7 unsignedIntegerValue], objc_msgSend(v10, "unsignedIntegerValue"), v14);
        v11 = self;
      }
    }

    else
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }

      v11 = 0;
    }
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    v11 = 0;
  }

  return v11;
}

- (id)dictionaryRepresentation
{
  v3 = [(ACXLaunchServicesWatcherSequenceRecord *)self counterpartIdentifiers];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v12[0] = @"LS";
    v5 = [NSNumber numberWithUnsignedInteger:[(ACXLaunchServicesWatcherSequenceRecord *)self lsSequenceNumber]];
    v13[0] = v5;
    v12[1] = @"ACX";
    v6 = [NSNumber numberWithUnsignedInteger:[(ACXLaunchServicesWatcherSequenceRecord *)self acxSequenceNumber]];
    v13[1] = v6;
    v12[2] = @"C";
    v7 = [(ACXLaunchServicesWatcherSequenceRecord *)self counterpartIdentifiers];
    v13[2] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  }

  else
  {
    v10[0] = @"LS";
    v5 = [NSNumber numberWithUnsignedInteger:[(ACXLaunchServicesWatcherSequenceRecord *)self lsSequenceNumber]];
    v10[1] = @"ACX";
    v11[0] = v5;
    v6 = [NSNumber numberWithUnsignedInteger:[(ACXLaunchServicesWatcherSequenceRecord *)self acxSequenceNumber]];
    v11[1] = v6;
    v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  }

  return v8;
}

@end