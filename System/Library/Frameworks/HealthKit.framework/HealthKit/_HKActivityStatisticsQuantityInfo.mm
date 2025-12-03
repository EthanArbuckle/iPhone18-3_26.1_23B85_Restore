@interface _HKActivityStatisticsQuantityInfo
- (BOOL)isEqual:(id)equal;
- (_HKActivityStatisticsQuantityInfo)initWithCoder:(id)coder;
- (_HKActivityStatisticsQuantityInfo)initWithStartDate:(id)date endDate:(id)endDate;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKActivityStatisticsQuantityInfo

- (void)encodeWithCoder:(id)coder
{
  startDate = self->_startDate;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_startDate);
  [coderCopy encodeObject:startDate forKey:v6];

  endDate = self->_endDate;
  v8 = NSStringFromSelector(sel_endDate);
  [coderCopy encodeObject:endDate forKey:v8];

  quantityValue = self->_quantityValue;
  v10 = NSStringFromSelector(sel_quantityValue);
  [coderCopy encodeObject:quantityValue forKey:v10];
}

- (_HKActivityStatisticsQuantityInfo)initWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v14.receiver = self;
  v14.super_class = _HKActivityStatisticsQuantityInfo;
  v8 = [(_HKActivityStatisticsQuantityInfo *)&v14 init];
  if (v8)
  {
    v9 = [dateCopy copy];
    startDate = v8->_startDate;
    v8->_startDate = v9;

    v11 = [endDateCopy copy];
    endDate = v8->_endDate;
    v8->_endDate = v11;
  }

  return v8;
}

- (_HKActivityStatisticsQuantityInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = _HKActivityStatisticsQuantityInfo;
  v5 = [(_HKActivityStatisticsQuantityInfo *)&v19 init];
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
    v15 = NSStringFromSelector(sel_quantityValue);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    quantityValue = v5->_quantityValue;
    v5->_quantityValue = v16;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    startDate = [equalCopy startDate];
    startDate2 = [(_HKActivityStatisticsQuantityInfo *)self startDate];
    if (startDate != startDate2)
    {
      startDate3 = [(_HKActivityStatisticsQuantityInfo *)self startDate];
      if (!startDate3)
      {
        v11 = 0;
        goto LABEL_28;
      }

      v3 = startDate3;
      startDate4 = [equalCopy startDate];
      startDate5 = [(_HKActivityStatisticsQuantityInfo *)self startDate];
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
    endDate2 = [(_HKActivityStatisticsQuantityInfo *)self endDate];
    if (endDate != endDate2)
    {
      endDate3 = [(_HKActivityStatisticsQuantityInfo *)self endDate];
      if (!endDate3)
      {
        v11 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v15 = endDate3;
      endDate4 = [equalCopy endDate];
      endDate5 = [(_HKActivityStatisticsQuantityInfo *)self endDate];
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

    quantityValue = [equalCopy quantityValue];
    quantityValue2 = [(_HKActivityStatisticsQuantityInfo *)self quantityValue];
    v20 = quantityValue2;
    v11 = quantityValue == quantityValue2;
    if (quantityValue == quantityValue2)
    {
    }

    else
    {
      v31 = endDate;
      quantityValue3 = [(_HKActivityStatisticsQuantityInfo *)self quantityValue];
      if (quantityValue3)
      {
        v22 = quantityValue3;
        v27 = v3;
        quantityValue4 = [equalCopy quantityValue];
        quantityValue5 = [(_HKActivityStatisticsQuantityInfo *)self quantityValue];
        v11 = [quantityValue4 isEqual:quantityValue5];

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
  v10.super_class = _HKActivityStatisticsQuantityInfo;
  v4 = [(_HKActivityStatisticsQuantityInfo *)&v10 description];
  startDate = [(_HKActivityStatisticsQuantityInfo *)self startDate];
  endDate = [(_HKActivityStatisticsQuantityInfo *)self endDate];
  quantityValue = [(_HKActivityStatisticsQuantityInfo *)self quantityValue];
  v8 = [v3 stringWithFormat:@"%@: Start Date: %@ End Date: %@; Quantity: %@", v4, startDate, endDate, quantityValue];;

  return v8;
}

@end