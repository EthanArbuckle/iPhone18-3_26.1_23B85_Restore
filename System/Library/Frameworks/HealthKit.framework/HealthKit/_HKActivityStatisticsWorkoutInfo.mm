@interface _HKActivityStatisticsWorkoutInfo
- (BOOL)isEqual:(id)a3;
- (_HKActivityStatisticsWorkoutInfo)initWithCoder:(id)a3;
- (_HKActivityStatisticsWorkoutInfo)initWithStartDate:(id)a3 endDate:(id)a4 source:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKActivityStatisticsWorkoutInfo

- (void)encodeWithCoder:(id)a3
{
  startDate = self->_startDate;
  v5 = a3;
  v6 = NSStringFromSelector(sel_startDate);
  [v5 encodeObject:startDate forKey:v6];

  endDate = self->_endDate;
  v8 = NSStringFromSelector(sel_endDate);
  [v5 encodeObject:endDate forKey:v8];

  source = self->_source;
  v10 = NSStringFromSelector(sel_source);
  [v5 encodeObject:source forKey:v10];
}

- (_HKActivityStatisticsWorkoutInfo)initWithStartDate:(id)a3 endDate:(id)a4 source:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = _HKActivityStatisticsWorkoutInfo;
  v11 = [(_HKActivityStatisticsWorkoutInfo *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    startDate = v11->_startDate;
    v11->_startDate = v12;

    v14 = [v9 copy];
    endDate = v11->_endDate;
    v11->_endDate = v14;

    objc_storeStrong(&v11->_source, a5);
  }

  return v11;
}

- (_HKActivityStatisticsWorkoutInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = _HKActivityStatisticsWorkoutInfo;
  v5 = [(_HKActivityStatisticsWorkoutInfo *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_startDate);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    startDate = v5->_startDate;
    v5->_startDate = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_endDate);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    endDate = v5->_endDate;
    v5->_endDate = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_source);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    source = v5->_source;
    v5->_source = v16;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    v6 = [v5 startDate];
    v7 = [(_HKActivityStatisticsWorkoutInfo *)self startDate];
    if (v6 != v7)
    {
      v8 = [(_HKActivityStatisticsWorkoutInfo *)self startDate];
      if (!v8)
      {
        v11 = 0;
        goto LABEL_28;
      }

      v3 = v8;
      v9 = [v5 startDate];
      v10 = [(_HKActivityStatisticsWorkoutInfo *)self startDate];
      if (![v9 isEqualToDate:v10])
      {
        v11 = 0;
LABEL_27:

        goto LABEL_28;
      }

      v32 = v10;
      v33 = v9;
    }

    v12 = [v5 endDate];
    v13 = [(_HKActivityStatisticsWorkoutInfo *)self endDate];
    if (v12 != v13)
    {
      v14 = [(_HKActivityStatisticsWorkoutInfo *)self endDate];
      if (!v14)
      {
        v11 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v15 = v14;
      v16 = [v5 endDate];
      v17 = [(_HKActivityStatisticsWorkoutInfo *)self endDate];
      if (([v16 isEqualToDate:v17] & 1) == 0)
      {

        v11 = 0;
LABEL_25:
        v25 = v6 == v7;
        goto LABEL_26;
      }

      v28 = v17;
      v29 = v16;
      v30 = v15;
    }

    v18 = [v5 source];
    v19 = [(_HKActivityStatisticsWorkoutInfo *)self source];
    v20 = v19;
    v11 = v18 == v19;
    if (v18 == v19)
    {
    }

    else
    {
      v31 = v12;
      v21 = [(_HKActivityStatisticsWorkoutInfo *)self source];
      if (v21)
      {
        v22 = v21;
        v27 = v3;
        v23 = [v5 source];
        v24 = [(_HKActivityStatisticsWorkoutInfo *)self source];
        v11 = [v23 isEqual:v24];

        if (v31 != v13)
        {
        }

        v25 = v6 == v7;
        v3 = v27;
LABEL_26:
        v10 = v32;
        v9 = v33;
        if (!v25)
        {
          goto LABEL_27;
        }

LABEL_28:

        goto LABEL_29;
      }
    }

    if (v12 != v13)
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
  v5 = [(_HKActivityStatisticsWorkoutInfo *)self startDate];
  v6 = [(_HKActivityStatisticsWorkoutInfo *)self endDate];
  v7 = [(_HKActivityStatisticsWorkoutInfo *)self source];
  v8 = [v3 stringWithFormat:@"%@: Start Date: %@ End Date: %@; source: %@", v4, v5, v6, v7];;

  return v8;
}

@end