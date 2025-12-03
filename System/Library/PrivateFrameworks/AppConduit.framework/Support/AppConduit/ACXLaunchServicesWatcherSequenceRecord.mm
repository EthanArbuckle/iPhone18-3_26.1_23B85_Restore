@interface ACXLaunchServicesWatcherSequenceRecord
- (ACXLaunchServicesWatcherSequenceRecord)initWithDictionaryRepresentation:(id)representation;
- (ACXLaunchServicesWatcherSequenceRecord)initWithLSSequenceNumber:(unint64_t)number acxSequenceNumber:(unint64_t)sequenceNumber counterpartIdentifiers:(id)identifiers;
- (id)dictionaryRepresentation;
@end

@implementation ACXLaunchServicesWatcherSequenceRecord

- (ACXLaunchServicesWatcherSequenceRecord)initWithLSSequenceNumber:(unint64_t)number acxSequenceNumber:(unint64_t)sequenceNumber counterpartIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v14.receiver = self;
  v14.super_class = ACXLaunchServicesWatcherSequenceRecord;
  v9 = [(ACXLaunchServicesWatcherSequenceRecord *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_lsSequenceNumber = number;
    v9->_acxSequenceNumber = sequenceNumber;
    v11 = [identifiersCopy copy];
    counterpartIdentifiers = v10->_counterpartIdentifiers;
    v10->_counterpartIdentifiers = v11;
  }

  return v10;
}

- (ACXLaunchServicesWatcherSequenceRecord)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"LS"];
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
    v8 = [representationCopy objectForKeyedSubscript:@"ACX"];
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
      v12 = [representationCopy objectForKeyedSubscript:@"C"];
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

        selfCopy = 0;
      }

      else
      {
        self = -[ACXLaunchServicesWatcherSequenceRecord initWithLSSequenceNumber:acxSequenceNumber:counterpartIdentifiers:](self, "initWithLSSequenceNumber:acxSequenceNumber:counterpartIdentifiers:", [v7 unsignedIntegerValue], objc_msgSend(v10, "unsignedIntegerValue"), v14);
        selfCopy = self;
      }
    }

    else
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }

      selfCopy = 0;
    }
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  counterpartIdentifiers = [(ACXLaunchServicesWatcherSequenceRecord *)self counterpartIdentifiers];
  v4 = counterpartIdentifiers;
  if (counterpartIdentifiers && [counterpartIdentifiers count])
  {
    v12[0] = @"LS";
    v5 = [NSNumber numberWithUnsignedInteger:[(ACXLaunchServicesWatcherSequenceRecord *)self lsSequenceNumber]];
    v13[0] = v5;
    v12[1] = @"ACX";
    v6 = [NSNumber numberWithUnsignedInteger:[(ACXLaunchServicesWatcherSequenceRecord *)self acxSequenceNumber]];
    v13[1] = v6;
    v12[2] = @"C";
    counterpartIdentifiers2 = [(ACXLaunchServicesWatcherSequenceRecord *)self counterpartIdentifiers];
    v13[2] = counterpartIdentifiers2;
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