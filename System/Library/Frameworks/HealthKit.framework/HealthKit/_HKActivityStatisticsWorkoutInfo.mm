@interface _HKActivityStatisticsWorkoutInfo
- (BOOL)isEqual:(id)equal;
- (_HKActivityStatisticsWorkoutInfo)initWithCoder:(id)coder;
- (_HKActivityStatisticsWorkoutInfo)initWithStartDate:(id)date endDate:(id)endDate source:(id)source;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKActivityStatisticsWorkoutInfo

- (void)encodeWithCoder:(id)coder
{
  startDate = self->_startDate;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_startDate);
  [coderCopy encodeObject:startDate forKey:v6];

  endDate = self->_endDate;
  v8 = NSStringFromSelector(sel_endDate);
  [coderCopy encodeObject:endDate forKey:v8];

  source = self->_source;
  v10 = NSStringFromSelector(sel_source);
  [coderCopy encodeObject:source forKey:v10];
}

- (_HKActivityStatisticsWorkoutInfo)initWithStartDate:(id)date endDate:(id)endDate source:(id)source
{
  dateCopy = date;
  endDateCopy = endDate;
  sourceCopy = source;
  v17.receiver = self;
  v17.super_class = _HKActivityStatisticsWorkoutInfo;
  v11 = [(_HKActivityStatisticsWorkoutInfo *)&v17 init];
  if (v11)
  {
    v12 = [dateCopy copy];
    startDate = v11->_startDate;
    v11->_startDate = v12;

    v14 = [endDateCopy copy];
    endDate = v11->_endDate;
    v11->_endDate = v14;

    objc_storeStrong(&v11->_source, source);
  }

  return v11;
}

- (_HKActivityStatisticsWorkoutInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = _HKActivityStatisticsWorkoutInfo;
  v5 = [(_HKActivityStatisticsWorkoutInfo *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_startDate);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    startDate = v5->_startDate;
    v5->_startDate = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_endDate);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    endDate = v5->_endDate;
    v5->_endDate = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_source);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    source = v5->_source;
    v5->_source = v16;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    startDate = [equalCopy startDate];
    startDate2 = [(_HKActivityStatisticsWorkoutInfo *)self startDate];
    if (startDate != startDate2)
    {
      startDate3 = [(_HKActivityStatisticsWorkoutInfo *)self startDate];
      if (!startDate3)
      {
        v11 = 0;
        goto LABEL_28;
      }

      v3 = startDate3;
      startDate4 = [equalCopy startDate];
      startDate5 = [(_HKActivityStatisticsWorkoutInfo *)self startDate];
      if (![startDate4 isEqualToDate:startDate5])
      {
        v11 = 0;
LABEL_27:

        goto LABEL_28;
      }

      v32 = startDate5;
      v33 = startDate4;
    }

    endDate = [equalCopy endDate];
    endDate2 = [(_HKActivityStatisticsWorkoutInfo *)self endDate];
    if (endDate != endDate2)
    {
      endDate3 = [(_HKActivityStatisticsWorkoutInfo *)self endDate];
      if (!endDate3)
      {
        v11 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v15 = endDate3;
      endDate4 = [equalCopy endDate];
      endDate5 = [(_HKActivityStatisticsWorkoutInfo *)self endDate];
      if (([endDate4 isEqualToDate:endDate5] & 1) == 0)
      {

        v11 = 0;
LABEL_25:
        v25 = startDate == startDate2;
        goto LABEL_26;
      }

      v28 = endDate5;
      v29 = endDate4;
      v30 = v15;
    }

    source = [equalCopy source];
    source2 = [(_HKActivityStatisticsWorkoutInfo *)self source];
    v20 = source2;
    v11 = source == source2;
    if (source == source2)
    {
    }

    else
    {
      v31 = endDate;
      source3 = [(_HKActivityStatisticsWorkoutInfo *)self source];
      if (source3)
      {
        v22 = source3;
        v27 = v3;
        source4 = [equalCopy source];
        source5 = [(_HKActivityStatisticsWorkoutInfo *)self source];
        v11 = [source4 isEqual:source5];

        if (v31 != endDate2)
        {
        }

        v25 = startDate == startDate2;
        v3 = v27;
LABEL_26:
        startDate5 = v32;
        startDate4 = v33;
        if (!v25)
        {
          goto LABEL_27;
        }

LABEL_28:

        goto LABEL_29;
      }
    }

    if (endDate != endDate2)
    {
    }

    goto LABEL_24;
  }

  v11 = 0;
LABEL_29:

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = _HKActivityStatisticsWorkoutInfo;
  v4 = [(_HKActivityStatisticsWorkoutInfo *)&v10 description];
  startDate = [(_HKActivityStatisticsWorkoutInfo *)self startDate];
  endDate = [(_HKActivityStatisticsWorkoutInfo *)self endDate];
  source = [(_HKActivityStatisticsWorkoutInfo *)self source];
  v8 = [v3 stringWithFormat:@"%@: Start Date: %@ End Date: %@; source: %@", v4, startDate, endDate, source];;

  return v8;
}

@end